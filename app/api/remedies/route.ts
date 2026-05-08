import { createAdminClient } from "@/lib/supabase/admin";
import { NextResponse } from "next/server";

// GET all remedies
export async function GET(request: Request) {
  try {
    const supabase = createAdminClient();
    const { searchParams } = new URL(request.url);
    const category = searchParams.get("category");

    let query = supabase.from("remedies").select("*").order("title");
    
    if (category) {
      query = query.eq("category", category);
    }

    const { data, error } = await query;

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error("Get remedies error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}

// POST create a new remedy
export async function POST(request: Request) {
  try {
    const supabase = createAdminClient();
    const body = await request.json();

    const { title, category, ingredients, instructions } = body;

    if (!title) {
      return NextResponse.json(
        { error: "Remedy title is required" },
        { status: 400 }
      );
    }

    const { data, error } = await supabase
      .from("remedies")
      .insert({
        title,
        category,
        ingredients,
        instructions,
      })
      .select()
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    console.error("Create remedy error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
