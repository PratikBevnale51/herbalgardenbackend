import { createAdminClient } from "@/lib/supabase/admin";
import { createClient } from "@supabase/supabase-js";
import { NextResponse } from "next/server";

// GET all feedback
export async function GET() {
  try {
    const supabase = createAdminClient();

    const { data, error } = await supabase
      .from("feedback")
      .select("*, profiles(name)")
      .order("created_at", { ascending: false });

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error("Get feedback error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}

// POST create feedback
export async function POST(request: Request) {
  try {
    const body = await request.json();
    const { rating, message } = body;

    if (!rating || !message) {
      return NextResponse.json(
        { error: "Rating and message are required" },
        { status: 400 }
      );
    }

    // Get user from token if provided
    const authHeader = request.headers.get("authorization");
    let userId = null;

    if (authHeader && authHeader.startsWith("Bearer ")) {
      const token = authHeader.split(" ")[1];
      const supabaseAuth = createClient(
        process.env.NEXT_PUBLIC_SUPABASE_URL!,
        process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!
      );
      
      const { data: { user } } = await supabaseAuth.auth.getUser(token);
      userId = user?.id || null;
    }

    const supabase = createAdminClient();
    const { data, error } = await supabase
      .from("feedback")
      .insert({
        user_id: userId,
        rating,
        message,
      })
      .select()
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    console.error("Create feedback error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
