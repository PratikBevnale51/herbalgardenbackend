-- =====================================================
-- Digital Herbal Garden - Remedies Seed Data
-- Run this in Supabase SQL Editor after schema.sql
-- =====================================================

INSERT INTO public.remedies (title, category, ingredients, instructions) VALUES
('Tulsi Tea for Cold & Cough', 'cold', 'Tulsi leaves, Ginger, Water, Honey', 'Boil tulsi leaves and ginger in water for 10 minutes. Strain, add honey, drink warm twice daily.'),
('Ginger Tea for Sore Throat', 'cold', 'Ginger slices, Water, Honey, Lemon', 'Boil ginger in water for 10 minutes. Add honey and lemon. Drink warm to ease throat irritation.'),
('Turmeric Milk for Cold', 'cold', 'Turmeric powder (1 tsp), Warm milk, Black pepper, Honey', 'Mix turmeric and a pinch of black pepper in warm milk. Add honey to taste. Drink before bed.'),
('Steam Inhalation for Congestion', 'cold', 'Hot water, Eucalyptus oil (2-3 drops)', 'Add eucalyptus oil to a bowl of hot water. Cover head with towel and inhale steam for 10 minutes.'),
('Ashwagandha Milk for Stress', 'stress', 'Ashwagandha powder (1 tsp), Warm milk', 'Mix ashwagandha powder in warm milk. Drink before bed to reduce stress and improve sleep.'),
('Brahmi Tea for Anxiety', 'stress', 'Brahmi leaves (fresh or dried), Water, Honey', 'Boil brahmi leaves in water for 5-7 minutes. Strain and add honey. Drink twice daily for mental calm.'),
('Lavender Aromatherapy', 'stress', 'Lavender essential oil, Diffuser or warm bath', 'Add 5-6 drops to a diffuser or bath water. Inhale deeply and relax for 20-30 minutes.'),
('Ajwain Water for Indigestion', 'digestion', 'Ajwain seeds (1 tsp), Water', 'Boil ajwain seeds in a glass of water. Strain and drink warm to relieve gas and indigestion.'),
('Jeera Water for Bloating', 'digestion', 'Cumin seeds (1 tsp), Water', 'Soak cumin seeds in water overnight. Strain and drink in the morning on an empty stomach.'),
('Triphala for Constipation', 'digestion', 'Triphala powder (1 tsp), Warm water', 'Mix triphala powder in warm water. Drink before bed for regular bowel movements.'),
('Ginger-Lemon Digestive Tonic', 'digestion', 'Fresh ginger juice (1 tsp), Lemon juice (1 tsp), Warm water, Rock salt', 'Mix ginger and lemon juice in warm water. Add a pinch of rock salt. Drink before meals.'),
('Neem Paste for Acne', 'skin', 'Fresh neem leaves, Water', 'Crush fresh neem leaves into a paste. Apply to affected areas for 15 minutes then rinse.'),
('Aloe Vera Gel for Burns', 'skin', 'Fresh aloe vera leaf', 'Cut aloe leaf and extract gel. Apply directly to minor burns or skin irritations. Leave for 20 minutes.'),
('Turmeric Face Mask', 'skin', 'Turmeric powder (1/2 tsp), Gram flour (1 tbsp), Milk or rose water', 'Mix ingredients into a paste. Apply to face, leave for 15 minutes, rinse with lukewarm water.'),
('Sandalwood Paste for Skin Glow', 'skin', 'Sandalwood powder, Rose water', 'Mix sandalwood powder with rose water to form paste. Apply to face, leave until dry, rinse off.'),
('Clove Oil for Toothache', 'dental', 'Clove oil, Cotton ball', 'Dab a cotton ball in clove oil and apply to the aching tooth for instant pain relief.'),
('Salt Water Rinse for Gums', 'dental', 'Warm water, Salt (1/2 tsp)', 'Dissolve salt in warm water. Rinse mouth thoroughly for 30 seconds. Repeat 2-3 times daily.'),
('Neem Twig for Oral Health', 'dental', 'Fresh neem twig', 'Chew the end of a neem twig until soft. Use as a natural toothbrush to clean teeth and gums.'),
('Honey + Ginger for Respiratory', 'respiratory', 'Honey (1 tbsp), Ginger juice (1 tsp)', 'Mix honey and fresh ginger juice. Take once daily to strengthen lungs.'),
('Mulethi Tea for Cough', 'respiratory', 'Mulethi (licorice) root, Water, Honey', 'Boil mulethi root in water for 10 minutes. Strain, add honey, drink warm for cough relief.'),
('Black Pepper-Honey Syrup', 'respiratory', 'Black pepper powder (1/4 tsp), Honey (1 tbsp)', 'Mix black pepper in honey. Take once daily for respiratory health and clearing phlegm.'),
('Tulsi-Ginger Kadha', 'respiratory', 'Tulsi leaves, Ginger, Black pepper, Cloves, Water, Jaggery', 'Boil all ingredients in water for 15 minutes. Strain, add jaggery. Drink warm twice daily.'),
('Giloy Juice for Immunity', 'immunity', 'Giloy stem, Water', 'Boil giloy stem in water, strain, and drink regularly to purify blood and boost immunity.'),
('Amla Juice Morning Tonic', 'immunity', 'Fresh amla juice (2 tbsp), Water, Honey', 'Mix amla juice with water and honey. Drink on empty stomach for vitamin C boost.'),
('Chyawanprash Daily Dose', 'immunity', 'Chyawanprash (1 tbsp), Warm milk', 'Take chyawanprash with warm milk daily in winter to boost overall immunity.'),
('Haldi-Adrak Shot', 'immunity', 'Fresh turmeric juice (1 tsp), Ginger juice (1 tsp), Lemon juice, Honey', 'Mix all ingredients. Take as a shot every morning for immune support.')
ON CONFLICT DO NOTHING;
