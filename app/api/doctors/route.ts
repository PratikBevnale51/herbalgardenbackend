import { createAdminClient } from "@/lib/supabase/admin";
import { NextResponse } from "next/server";

// GET all doctors
export async function GET(request: Request) {
  try {
    const supabase = createAdminClient();
    const { searchParams } = new URL(request.url);
    const specialization = searchParams.get("specialization");

    let query = supabase.from("doctors").select("*").order("name");
    
    if (specialization) {
      query = query.eq("specialization", specialization);
    }

    const { data, error } = await query;

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error("Get doctors error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}

// POST create a new doctor
export async function POST(request: Request) {
  try {
    const supabase = createAdminClient();
    const body = await request.json();

    const { name, specialization, experience, image, contact } = body;

    if (!name) {
      return NextResponse.json(
        { error: "Doctor name is required" },
        { status: 400 }
      );
    }

    const { data, error } = await supabase
      .from("doctors")
      .insert({
        name,
        specialization,
        experience,
        image,
        contact,
      })
      .select()
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    console.error("Create doctor error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
