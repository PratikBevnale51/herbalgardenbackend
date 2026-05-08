-- =====================================================
-- Digital Herbal Garden - Doctors Seed Data
-- Run this in Supabase SQL Editor after schema.sql
-- =====================================================

INSERT INTO public.doctors (name, specialization, email, phone, bio) VALUES
('Dr. Sanjay Algude', 'Homeopathy & Ayurvedic Medicine', 'sanjayalgude1977@herbalcare.com', '+91 9850615151', 'Dr. Sanjay Algude is an experienced practitioner with over 20 years of experience in integrating Homeopathy and Ayurvedic treatments. He specializes in chronic disease management and preventive healthcare using natural remedies.'),
('Dr. Amit Sheth', 'MBBS, Homeopathy & Herbal Wellness', 'amit.sheth@herbalcare.com', '+91 8275960639', 'Dr. Amit Sheth combines modern medicine with traditional herbal wellness approaches. He has expertise in treating lifestyle disorders and promoting holistic health through plant-based therapies.'),
('Dr. Priya Sharma', 'Ayurvedic Medicine & Panchakarma', 'priya.sharma@herbalcare.com', '+91 9876543210', 'Dr. Priya Sharma is a renowned Ayurvedic physician specializing in Panchakarma detoxification therapies. She has helped thousands of patients achieve wellness through traditional Indian medicine.'),
('Dr. Rajesh Kumar', 'Naturopathy & Yoga Therapy', 'rajesh.kumar@herbalcare.com', '+91 9123456789', 'Dr. Rajesh Kumar is a certified Naturopath and Yoga therapist with expertise in treating stress-related disorders, digestive issues, and chronic pain through natural healing methods.'),
('Dr. Meena Patel', 'Herbal Dermatology', 'meena.patel@herbalcare.com', '+91 9988776655', 'Dr. Meena Patel specializes in treating skin conditions using herbal and Ayurvedic formulations. She has developed several effective natural treatments for acne, eczema, and psoriasis.'),
('Dr. Arun Krishnan', 'Traditional Siddha Medicine', 'arun.krishnan@herbalcare.com', '+91 9445566778', 'Dr. Arun Krishnan is an expert in Siddha medicine, one of the oldest medical systems in India. He specializes in respiratory ailments and digestive disorders using traditional Tamil Nadu healing practices.')
ON CONFLICT DO NOTHING;
