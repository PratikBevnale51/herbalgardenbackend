# Supabase Database Setup

This folder contains SQL files to set up your Herbal Garden database in Supabase.

## How to Run

1. Go to your Supabase project dashboard
2. Navigate to **SQL Editor** in the left sidebar
3. Run the files in this order:

### Step 1: Create Schema (if not already created)
```
schema.sql
```
This creates all tables, indexes, RLS policies, and triggers.

### Step 2: Seed Plants Data
```
seed_plants.sql
```
This adds 90+ medicinal plants from the BSI (Botanical Survey of India) database.

### Step 3: Seed Remedies Data
```
seed_remedies.sql
```
This adds 25+ home remedies for various health conditions.

### Step 4: Seed Doctors Data
```
seed_doctors.sql
```
This adds sample doctor profiles.

## Tables Overview

| Table | Description |
|-------|-------------|
| `profiles` | User profiles (linked to Supabase Auth) |
| `plants` | Medicinal plant database |
| `remedies` | Home remedies organized by category |
| `doctors` | Healthcare practitioner profiles |
| `feedback` | User feedback and ratings |
| `contact_messages` | Contact form submissions |

## Categories

### Plants Categories
- Immunity
- Skin
- Digestion
- Respiratory
- Dental
- Stress
- Heart

### Remedies Categories
- cold
- stress
- digestion
- skin
- dental
- respiratory
- immunity

## Notes

- All seed data uses `ON CONFLICT DO NOTHING` to prevent duplicate entries
- RLS (Row Level Security) is enabled on all tables
- Plants and remedies are publicly readable
- Admin users can manage all data
- Regular users can only submit feedback and contact messages
