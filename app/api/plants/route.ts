import { createAdminClient } from "@/lib/supabase/admin";
import { NextResponse } from "next/server";

// GET all plants
export async function GET(request: Request) {
  try {
    const supabase = createAdminClient();
    const { searchParams } = new URL(request.url);
    const category = searchParams.get("category");

    let query = supabase.from("plants").select("*").order("name");
    
    if (category) {
      query = query.eq("category", category);
    }

    const { data, error } = await query;

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data);
  } catch (error) {
    console.error("Get plants error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}

// POST create a new plant
export async function POST(request: Request) {
  try {
    const supabase = createAdminClient();
    const body = await request.json();

    const { name, scientific_name, description, usage, benefits, image, category } = body;

    if (!name) {
      return NextResponse.json(
        { error: "Plant name is required" },
        { status: 400 }
      );
    }

    const { data, error } = await supabase
      .from("plants")
      .insert({
        name,
        scientific_name,
        description,
        usage,
        benefits,
        image,
        category,
      })
      .select()
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json(data, { status: 201 });
  } catch (error) {
    console.error("Create plant error:", error);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
