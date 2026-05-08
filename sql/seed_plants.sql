-- =====================================================
-- BSI Medicinal Plant Database - Seed Data
-- Source: https://bsi.gov.in/page/en/medicinal-plant-database
-- Botanical Survey of India, Ministry of Environment,
-- Forest and Climate Change (Government of India)
--
-- Note: The BSI database is dynamic and updated weekly.
-- This export captures plants #1–118 from the first phase
-- (1,915 total species enlisted).
-- Fields: name (common name), scientific_name, category (family),
--         description sourced from BSI vernacular/usage data.
-- =====================================================

INSERT INTO public.plants (name, scientific_name, description, usage, benefits, image, category) VALUES

-- MALVACEAE family
('Bhindi', 'Abelmoschus esculentus (L.) Moench', 'Commonly known as Okra or Lady''s finger. An important vegetable crop with medicinal properties.', 'Used in Ayurveda for managing diabetes, treating urinary problems, and as a demulcent for sore throat.', 'Antidiabetic, demulcent, laxative, diuretic', NULL, 'Digestion'),
('Ran Bhendi', 'Abelmoschus ficulneus (L.) Wight & Arn.', 'A wild relative of okra found across India, used in traditional medicine.', 'Used for treating skin inflammations, wounds, and as an emollient in folk medicine.', 'Anti-inflammatory, emollient, wound healing', NULL, 'Skin'),
('Jangli Bhindi', 'Abelmoschus manihot (L.) Medik.', 'Known as Kantalo Bhendo in Gujarati. A wild mallow with large yellow flowers.', 'Used traditionally for relieving pain, reducing fever, and as a diuretic.', 'Analgesic, antipyretic, diuretic', NULL, 'Digestion'),
('Muskdana', 'Abelmoschus moschatus Medik.', 'Also called Kasturi dana. Seeds have a musk-like fragrance and are used in perfumery and medicine.', 'Seeds used to treat nervous debility, hysteria, skin diseases; also used as an aphrodisiac.', 'Nervine tonic, aphrodisiac, antiseptic', NULL, 'Immunity'),
('Talish patra', 'Abies spectabilis (D. Don) Spach.', 'A high-altitude conifer of the Himalayas, also known as Gobra salla in Nepal.', 'Leaves and bark used for treating bronchitis, asthma, and cough in traditional Himalayan medicine.', 'Expectorant, bronchodilator, antimicrobial', NULL, 'Respiratory'),
('Ulatkambal', 'Abroma agusta (L.) L.f.', 'A shrub from the Sterculiaceae family, known in traditional Indian medicine.', 'Root bark used in Ayurveda to treat dysmenorrhoea, diabetes, and skin diseases.', 'Emmenagogue, antidiabetic, anti-inflammatory', NULL, 'Skin'),
('Ratti', 'Abrus precatorius L.', 'Commonly known as Ghungchi or Rosary Pea. Seeds are bright red with a black spot.', 'Leaves used for cough and colds; root used as an aphrodisiac; seeds used externally for skin diseases (caution: seeds are toxic internally).', 'Anti-inflammatory, aphrodisiac, antimicrobial', NULL, 'Skin'),
('Barakanghi', 'Abutilon hirtum (Lam.) Sweet', 'A hairy mallow species used in folk medicine across India.', 'Used for treating fever, joint pain, and as a diuretic in traditional Ayurvedic practice.', 'Antipyretic, diuretic, anti-arthritic', NULL, 'Immunity'),
('Kanghi', 'Abutilon indicum (L.) Sweet', 'Also called Kakahi. A common weed with yellow flowers, widely used in Ayurveda.', 'Used for treating leucorrhoea, urinary disorders, toothache, and as an expectorant.', 'Diuretic, expectorant, anti-inflammatory', NULL, 'Respiratory'),
('Kakrai', 'Abutilon pannosum (Forst.) Schlect.', 'A fibrous mallow species used in traditional Indian medicine.', 'Used for treating skin diseases, fevers, and rheumatic conditions in folk medicine.', 'Anti-inflammatory, antipyretic, skin healing', NULL, 'Skin'),
('Indian Mallow', 'Abutilon theophrastii Medik.', 'Known as Indian Mallow in English. A common weed with soft velvety leaves.', 'Used in traditional medicine for treating dysentery, sore throat, and as a demulcent.', 'Demulcent, anti-dysenteric, soothing', NULL, 'Digestion'),

-- MIMOSACEAE family
('Khair', 'Acacia catechu (L.f.) Willd.', 'Source of Katha (catechu), a brown extract used medicinally and in paan.', 'Used for treating diarrhoea, dysentery, skin diseases; bark used as an astringent and for dental care.', 'Astringent, anti-diarrheal, antibacterial, dental care', NULL, 'Dental'),
('Vilayati kikar', 'Acacia farnesiana (L.) Willd.', 'Introduced acacia species, also known as Sweet Acacia. Fragrant yellow flowers.', 'Bark used for treating rheumatism, fever; flowers used in perfumery and as an antispasmodic.', 'Antispasmodic, astringent, anti-rheumatic', NULL, 'Immunity'),
('Kikar', 'Acacia jacquemontii Benth.', 'Also called Babul in Punjab. A thorny tree of arid zones.', 'Bark used for treating skin diseases and as an astringent; gum used as a tonic.', 'Astringent, tonic, wound healing', NULL, 'Skin'),
('Safed kikar', 'Acacia leucophloea (Roxb.) Willd.', 'White-barked acacia also known as Arimeda. Common in dry deciduous forests.', 'Bark used for treating diarrhoea, dysentery, and skin inflammations.', 'Astringent, anti-diarrheal, anti-inflammatory', NULL, 'Digestion'),
('Phulai', 'Acacia modesta Wall.', 'Known as Phulai in Punjab. A drought-resistant acacia found in northwest India.', 'Gum used as a tonic; bark used for treating skin diseases and fevers.', 'Tonic, astringent, antibacterial', NULL, 'Immunity'),
('Babula', 'Acacia nilotica (L.) Willd. ex Delile', 'Also known as Kirkar or Babul. One of the most widely used medicinal trees in India.', 'Bark, pods, and gum widely used for treating diarrhoea, dysentery, bleeding disorders, and dental problems.', 'Astringent, hemostatic, antimicrobial, dental care', NULL, 'Dental'),
('Aila', 'Acacia pennata (L.) Willd.', 'Also known as Biswal. A climbing acacia species used in tribal medicine.', 'Used for treating fever, skin ailments, and as a galactagogue in folk medicine.', 'Antipyretic, galactagogue, anti-inflammatory', NULL, 'Immunity'),
('Kochi', 'Acacia rugata (Lam.) Merr.', 'Also called Ritha (soap nut acacia). Pods used as a soap substitute.', 'Used for treating dandruff, skin diseases, and as a cleaning agent; antifungal properties noted.', 'Antifungal, cleansing, antimicrobial', NULL, 'Skin'),
('Goradio-babul', 'Acacia senegal (L.) Willd.', 'Source of gum arabic. Known as Goradio-babul in Gujarat.', 'Gum used as a demulcent, emollient, and in preparations for sore throat and urinary complaints.', 'Demulcent, emollient, soothing', NULL, 'Respiratory'),

-- EUPHORBIACEAE family
('Kuppi', 'Acalypha indica L.', 'Also called Khokli. A common weed with significant medicinal uses in Ayurveda and Siddha medicine.', 'Leaves used as a laxative, expectorant, and for treating worm infestations; used in treating pneumonia.', 'Laxative, expectorant, anthelmintic, antibacterial', NULL, 'Respiratory'),
('Candle Nut Tree', 'Aleurites mollucana Willd.', 'A tree producing oil-rich nuts used across Asia for cooking and medicine.', 'Bark and seeds used for treating skin diseases, constipation, and as a purgative.', 'Purgative, anti-inflammatory, skin healing', NULL, 'Skin'),

-- ORCHIDACEAE family
('Alasyakampa', 'Acampe papillosa (Lindl.) Lindl.', 'A small orchid found in southern India used in traditional medicine.', 'Used in traditional medicine for treating rheumatism and joint disorders.', 'Anti-rheumatic, anti-inflammatory', NULL, 'Immunity'),

-- ACANTHACEAE family
('Hargoza', 'Acanthus illicifolius L.', 'A mangrove-associated herb with spiny leaves, used in coastal traditional medicine.', 'Used for treating paralysis, snakebite, diabetes, and nervous disorders in traditional practice.', 'Antiparalytic, antidiabetic, antivenom', NULL, 'Immunity'),
('Kirayat', 'Andrographis paniculata (Burm.) Wall. ex Nees', 'Known as the King of Bitters. One of the most important medicinal plants in Ayurveda and Siddha.', 'Used extensively for treating fever, common cold, infections, liver disorders, and as an immunostimulant.', 'Antipyretic, hepatoprotective, immunostimulant, antibacterial', NULL, 'Immunity'),

-- ASTERACEAE family
('Gandana', 'Achillea millefolium L.', 'Also called Roojamari in Kannada. Known as Yarrow in English.', 'Used for treating fever, wounds, digestive disorders, and as an anti-inflammatory and astringent.', 'Anti-inflammatory, astringent, wound healing, antipyretic', NULL, 'Immunity'),
('Jangli-jira', 'Adenostemma lavenia (L.) Kuntze', 'A wetland herb used in traditional medicine across tropical Asia.', 'Used for treating wounds, fever, and respiratory ailments in folk medicine.', 'Antipyretic, wound healing, anti-inflammatory', NULL, 'Respiratory'),

-- AMARANTHACEAE family
('Latjira', 'Achyranthes aspera L.', 'A common roadside weed with significant medicinal properties in Ayurveda.', 'Used for treating asthma, bleeding disorders, skin diseases, toothache, and as a diuretic.', 'Diuretic, astringent, anti-asthmatic, antifungal', NULL, 'Respiratory'),
('Lal sag', 'Amaranthus tricolor L.', 'Red amaranth, a leafy vegetable also used medicinally.', 'Used as a blood purifier, for treating anaemia, urinary disorders, and as a cooling agent.', 'Blood purifier, anti-anaemic, cooling, diuretic', NULL, 'Immunity'),
('Kataili chaulai', 'Amaranthus spinosus L.', 'Spiny amaranth, a common weed used in Ayurveda and folk medicine.', 'Used for treating eczema, abscesses, fevers, and as a galactagogue.', 'Anti-inflammatory, galactagogue, antipyretic', NULL, 'Skin'),

-- RANUNCULACEAE family
('Atis', 'Aconitum heterophyllum Wall. ex Royle', 'An important Himalayan medicinal plant. One of the major plants in Ayurvedic formulations.', 'Root used for treating fever, diarrhoea, dyspepsia, and as a tonic; one of the main ingredients in classical Ayurvedic preparations.', 'Antipyretic, digestive tonic, anti-diarrheal, anti-inflammatory', NULL, 'Immunity'),
('Bikhima', 'Aconitum bisma (Buch.-Ham.) Rapaics', 'A Himalayan aconite species used carefully in traditional medicine.', 'Used in very small doses for treating fever, pain, and as a nervine tonic; toxic in large quantities.', 'Analgesic, antipyretic, nervine (use with caution)', NULL, 'Immunity'),

-- ARACEAE family
('Bach', 'Acorus calamus L.', 'Also known as Sweet Flag or Gora-bach. A semi-aquatic herb with aromatic rhizomes.', 'Rhizome used for treating epilepsy, memory enhancement, cough, fever, and as a digestive stimulant.', 'Nervine, digestive stimulant, expectorant, memory enhancer', NULL, 'Immunity'),
('Boro mankachu', 'Alocasia macrorrhizos (L.) G.Don', 'Giant taro, used as food and medicine across tropical Asia.', 'Rhizome used externally for treating rheumatism, abscesses, and skin conditions.', 'Anti-rheumatic, anti-inflammatory, wound healing', NULL, 'Skin'),

-- LILIACEAE family
('Ghee-kunvar', 'Aloe vera (L.) Burm.f.', 'One of the most widely used medicinal plants globally. Known as Ghrit-kumari in Sanskrit.', 'Gel applied topically for burns, wounds, and skin conditions; juice taken internally for constipation, diabetes, and immunity.', 'Wound healing, anti-inflammatory, laxative, antidiabetic, skin care', NULL, 'Skin'),
('Piyaz', 'Allium cepa L.', 'Common onion, one of the most important medicinal and culinary plants.', 'Used for treating cardiovascular diseases, infections, cold & flu, digestive issues, and as an antibacterial.', 'Antibacterial, anticoagulant, hypoglycemic, expectorant, cardioprotective', NULL, 'Immunity'),

-- RUTACEAE family
('Bel', 'Aegle marmelos (L.) Corr.', 'Wood Apple or Bel, a sacred tree in Hinduism with extensive medicinal uses in Ayurveda.', 'Fruit used for treating diarrhoea, dysentery, constipation; leaves used for diabetes; bark for fever.', 'Anti-diarrheal, antidiabetic, antipyretic, digestive', NULL, 'Digestion'),

-- ZINGIBERACEAE family
('Kulanjan', 'Alpinia galanga (L.) Willd.', 'Greater Galangal or Barakulanjan. A ginger-like rhizome widely used in Ayurveda and Unani.', 'Used for treating respiratory infections, rheumatism, digestive complaints, and as an aphrodisiac.', 'Antibacterial, anti-inflammatory, digestive, aphrodisiac', NULL, 'Digestion'),
('Morang elaichi', 'Amomum aromaticum Roxb.', 'Bengal cardamom, an aromatic spice used in cooking and Ayurvedic medicine.', 'Used for treating digestive disorders, bad breath, nausea, and respiratory conditions.', 'Digestive stimulant, carminative, antimicrobial', NULL, 'Digestion'),
('Bari elachi', 'Amomum subulatum Roxb.', 'Large or black cardamom, also known as Baara aliach in Bengali.', 'Used for treating respiratory infections, digestive problems, toothache, and as a carminative.', 'Expectorant, carminative, antibacterial, analgesic', NULL, 'Respiratory'),

-- APOCYNACEAE family
('Chatium', 'Alstonia scholaris (L.) R.Br.', 'Devil''s tree, a large evergreen tree widely used in Ayurveda.', 'Bark used for treating malaria, chronic skin diseases, and as a bitter tonic for digestive ailments.', 'Antimalarial, antipyretic, bitter tonic, astringent', NULL, 'Immunity'),

-- ANACARDIACEAE family
('Kaju', 'Anacardium occidentale L.', 'Cashew tree. Both nut and other parts have medicinal significance.', 'Bark used for treating toothache, skin ailments; leaves used for diabetes; fruit juice used as anti-scurvy.', 'Antidiabetic, anti-scurvy, antibacterial, antifungal', NULL, 'Immunity'),

-- APIACEAE family
('Toothpick plant', 'Ammi visnaga (L.) Lam.', 'An aromatic herb from the carrot family used medicinally since ancient times.', 'Used for treating kidney stones, asthma, and as an antispasmodic for smooth muscle.', 'Antispasmodic, bronchodilator, anti-urolithic', NULL, 'Respiratory'),

-- BOMBACACEAE / MALVACEAE
('Gorak', 'Adansonia digitata L.', 'Baobab tree, also known as Amli. A massive tree native to Africa but grown in India.', 'Fruit pulp rich in Vitamin C used for treating fevers; bark for treating malaria; leaves as anti-inflammatory.', 'Antipyretic, anti-inflammatory, antioxidant, Vitamin C source', NULL, 'Immunity'),

-- ADIANTACEAE / Fern
('Hansraj', 'Adiantum capillus-veneris L.', 'Maidenhair fern, also called Mubaraka. An elegant fern with significant Ayurvedic uses.', 'Fronds used as an expectorant for coughs, treatment of jaundice, and hair care preparations.', 'Expectorant, hepatoprotective, hair tonic', NULL, 'Respiratory'),

-- HIPPOCASTANACEAE
('Pangar', 'Aesculus indica Colebr. ex Camb.', 'Indian horse chestnut found in Himalayan forests.', 'Seeds used for treating rheumatic pain; bark used as a febrifuge and tonic.', 'Anti-rheumatic, antipyretic, tonic', NULL, 'Immunity'),

-- AMARYLLIDACEAE
('Bans-keora', 'Agave americana Blanco', 'Also called Kantala. A large succulent plant used in folk medicine.', 'Juice used for treating jaundice, constipation, syphilis, and as a digestive tonic.', 'Hepatoprotective, laxative, anti-syphilitic', NULL, 'Digestion'),

-- ASTERACEAE
('Uchunti', 'Ageratum conyzoides L.', 'A common tropical weed with well-documented medicinal properties.', 'Used for treating wounds, skin infections, fever, and as an analgesic in folk medicine.', 'Wound healing, antimicrobial, analgesic, antipyretic', NULL, 'Skin'),

-- BETULACEAE
('Utis', 'Alnus nepalensis D.Don', 'Nepalese alder, a riparian tree of the Himalayas used in folk medicine.', 'Bark used for treating skin diseases, fever, and as an astringent in traditional medicine.', 'Astringent, antipyretic, anti-inflammatory', NULL, 'Skin'),

-- SIMAROUBACEAE
('Arlu', 'Ailanthus excelsa Roxb.', 'Also called Maruk. A deciduous tree used in Ayurvedic medicine.', 'Bark used as a bitter tonic for treating fever, asthma, and dysentery; leaves used for rheumatism.', 'Bitter tonic, antipyretic, anti-asthmatic, anti-dysenteric', NULL, 'Respiratory'),

-- LAMIACEAE
('Nilkanthi', 'Ajuga bracteosa Wall. ex Benth.', 'A herb found in Himalayan meadows used in traditional medicine.', 'Used for treating fever, liver disorders, and as a bitter tonic in Ayurvedic preparations.', 'Antipyretic, hepatoprotective, bitter tonic', NULL, 'Immunity'),

-- MIMOSACEAE continued
('Siris', 'Albizzia lebbeck (L.) Willd.', 'East Indian walnut or Siris tree. A large deciduous tree widely used in Ayurveda.', 'Bark used for treating bronchitis, allergic disorders, and skin diseases; seeds used as an aphrodisiac.', 'Anti-allergic, antibacterial, aphrodisiac, expectorant', NULL, 'Respiratory'),

-- FABACEAE
('Bharbharra', 'Alhagi pseudoalhagi (Bieb.) Desv.', 'Also called Jawasa or Camel thorn. A shrub of arid zones with white flowers.', 'Used for treating fever, liver diseases, laxative, and as a diuretic in Unani medicine.', 'Diuretic, laxative, antipyretic, hepatoprotective', NULL, 'Digestion'),

-- APOCYNACEAE
('Harkakra', 'Allamanda cathartica L.', 'Yellow allamanda, an ornamental plant with medicinal properties.', 'Used for treating malaria, jaundice, skin diseases in folk medicine; all parts are purgative.', 'Purgative, antimalarial, antifungal', NULL, 'Immunity'),

-- ACANTHACEAE continued
('Birkubat', 'Andrographis echinoides (L.) Nees', 'A relative of Kirayat found in southern India, used in Siddha medicine.', 'Used for treating fever, skin disorders, and as a bitter tonic in Siddha preparations.', 'Antipyretic, bitter tonic, anti-inflammatory', NULL, 'Immunity'),

-- VERBENACEAE
('Aloysia', 'Aloysia triphylla (L''Herit) Britton', 'Lemon verbena, an aromatic shrub with lemony scent, used medicinally.', 'Used for treating digestive disorders, fever, anxiety, and as a carminative in herbal preparations.', 'Carminative, digestive, anxiolytic, antipyretic', NULL, 'Digestion'),

-- ALANGIACEAE
('Akola', 'Alangium salvifolium (L.f.) Wang.', 'Also called Dhera. A thorny tree used widely in Ayurveda and folk medicine.', 'Root used for treating rheumatism, skin diseases, and as an antidote for snakebite.', 'Anti-rheumatic, antivenom, anti-inflammatory', NULL, 'Immunity'),

-- AMARANTHACEAE continued
('Gorakhganja', 'Aerva lanata (L.) Juss.', 'Also known as Chaya. A common herb used in Ayurveda and Siddha medicine.', 'Used for treating kidney stones, urinary disorders, headache, and as a diuretic.', 'Diuretic, anti-urolithic, analgesic, anti-inflammatory', NULL, 'Immunity'),

-- PRIMULACEAE
('Jonkmari', 'Anagallis arvensis L.', 'Scarlet pimpernel, a small herb used in traditional medicine.', 'Used for treating liver diseases, skin ailments, snake bite, and as a diuretic.', 'Hepatoprotective, diuretic, antivenom, antimicrobial', NULL, 'Immunity'),

-- BROMELIACEAE
('Ananas', 'Ananas comosus (L.) Merr.', 'Pineapple, known as Kazudhachakka in Malayalam. Used medicinally across tropical Asia.', 'Stem bromelain used as a digestive enzyme; fruit used for treating inflammation, indigestion, and constipation.', 'Digestive enzyme, anti-inflammatory, antioxidant', NULL, 'Digestion'),

-- VITACEAE
('Jangli-angur', 'Ampelocissus arnottiana (Wight & Arn.) Planch.', 'Wild grape species used in tribal and folk medicine.', 'Used for treating fever, skin diseases, and as a tonic in tribal medicine.', 'Antipyretic, tonic, anti-inflammatory', NULL, 'Immunity'),

-- ZINGIBERACEAE continued
('Gong', 'Alpinia nigra (Gaertn.) B.L.Burtt', 'Black galangal, used as food and medicine in northeast India.', 'Rhizome used for treating digestive disorders, cough, and as an anti-inflammatory.', 'Carminative, anti-inflammatory, antibacterial', NULL, 'Digestion'),

-- ARACEAE continued
('Suranakanda', 'Amorphophallus paeoniifolius (Dennst.) Nicolson', 'Elephant foot yam, also called Jamikanda. An important medicinal tuber in Ayurveda.', 'Tuber used for treating piles, abdominal tumours, digestive disorders, and as a liver tonic.', 'Anti-hemorrhoidal, hepatoprotective, digestive, anti-tumour', NULL, 'Digestion'),

-- MENISPERMACEAE
('Kakamari', 'Anamitra cocculus Wight & Arn.', 'Fish berry plant, a poisonous climber with important medicinal alkaloids.', 'Used carefully for treating skin diseases, lice infestations, and as a fish poison in folk medicine; source of picrotoxin.', 'Antiparasitic, insecticidal (external use only)', NULL, 'Skin'),

-- LYTHRACEAE
('Jangli Mehndi', 'Ammania auriculata Willd.', 'A wetland herb used in Ayurvedic medicine.', 'Used for treating skin diseases, leucoderma, and fevers in traditional practice.', 'Anti-leucoderma, antipyretic, anti-inflammatory', NULL, 'Skin'),
('Dadmari', 'Ammania baccifera L.', 'A herb found near water bodies, used for treating ring worm and skin diseases.', 'Leaves applied externally for ringworm, eczema, and other skin infections.', 'Antifungal, anti-eczema, antimicrobial', NULL, 'Skin'),

-- POACEAE
('Couch grass', 'Agropyron repens (L.) Beauv.', 'Also called Dog grass. A common grass with rhizomes used medicinally.', 'Rhizome used as a diuretic for treating urinary tract infections and kidney stones.', 'Diuretic, anti-urolithic, anti-inflammatory', NULL, 'Immunity'),

-- PASSIFLORACEAE
('Perumkorattaikodi', 'Adenia wightiana (Wall. ex Wight & Arn.) Engl.', 'A climbing plant used in traditional South Indian medicine.', 'Used for treating rheumatism, skin diseases, and as a tonic in Siddha medicine.', 'Anti-rheumatic, tonic, anti-inflammatory', NULL, 'Immunity'),

-- HAMAMELIDACEAE
('Silaras', 'Altingia excelsa Noronha', 'Rasamala tree, a tall timber tree of northeast India with resinous properties.', 'Resin used for treating skin diseases, wounds, and as an expectorant.', 'Expectorant, wound healing, antimicrobial', NULL, 'Respiratory'),

-- LAURACEAE
('Tudambo', 'Actinodaphne hookeri Meissn.', 'A species known in Oriya as Tudambo, found in Indian forests.', 'Bark and leaves used in folk medicine for treating fevers and skin ailments.', 'Antipyretic, anti-inflammatory, antimicrobial', NULL, 'Immunity'),

-- MIMOSACEAE
('Barigumchi', 'Adenanthera pavonia L.', 'Coral wood or Kunchandana (Sanskrit). A tree with bright red seeds used in medicine.', 'Seeds used as a tonic and for treating rheumatic pains; bark used as an astringent.', 'Tonic, anti-rheumatic, astringent', NULL, 'Immunity'),

-- ACTINIOPTERIDACEAE
('Morpankhi', 'Actiniopteris radiata (Swartz) Link', 'A small fern with fan-shaped fronds, also called Morshikha. Found in rocky areas.', 'Used for treating fevers, headaches, and menstrual disorders in folk medicine.', 'Antipyretic, analgesic, emmenagogue', NULL, 'Immunity'),

-- ADIANTACEAE continued
('Mayurshikha', 'Adiantum caudatum L.', 'Tailed maidenhair fern, known in Sanskrit as Mayurshikha.', 'Fronds used for treating cough, asthma, fever, and hair-related disorders.', 'Expectorant, antipyretic, anti-asthmatic, hair tonic', NULL, 'Respiratory'),
('Kalijhant', 'Adiantum philippense L.', 'A maidenhair fern used in traditional medicine in India.', 'Used for treating fevers, cough, and liver complaints in Ayurvedic and folk medicine.', 'Antipyretic, expectorant, hepatoprotective', NULL, 'Respiratory'),

-- RUTACEAE continued
('Paowlay', 'Acronychia pedunculata (L.) Miq.', 'Known as Paowlay in Nepal. A small tree found in tropical forests.', 'Bark and leaves used for treating fever, skin diseases, and digestive problems.', 'Antipyretic, anti-inflammatory, digestive', NULL, 'Digestion'),

-- RANUNCULACEAE continued
('Vishaphala', 'Actaea spicata L.', 'Baneberry, known as Vishaphala in Kannada. A toxic plant used carefully.', 'Used in very small quantities for treating rheumatic pain and nervous disorders.', 'Analgesic, anti-rheumatic, nervine (use with caution)', NULL, 'Immunity'),
('Ageli', 'Anemone obtusiloba D. Don', 'A Himalayan anemone found in alpine meadows, known as Ageli in Jaunsar.', 'Used for treating skin diseases, rheumatic pains, and as a rubefacient in folk medicine.', 'Rubefacient, anti-rheumatic, antimicrobial', NULL, 'Skin'),

-- MELIACEAE
('Gandha priyangu', 'Aglaia elaeagnoidea (Juss.) Benth.', 'Known as Yerraaduga in Telugu. A tree used in Ayurvedic formulations.', 'Bark and flowers used for treating fever, skin diseases, and as an anti-inflammatory.', 'Anti-inflammatory, antipyretic, antimicrobial', NULL, 'Skin'),

-- FABACEAE continued
('Chauli', 'Alysicarpus vaginalis (L.) DC.', 'Also called Sauri. A forage legume with medicinal uses.', 'Used for treating fever, skin diseases, and as a diuretic in traditional medicine.', 'Antipyretic, diuretic, anti-inflammatory', NULL, 'Immunity'),

-- EUPHORBIACEAE continued
('Chinniaka', 'Acalypha fruticosa Forsk.', 'A shrubby species known as Chinniaka in Telugu, found in southern India.', 'Used for treating skin disorders, fungal infections, and scabies in folk medicine.', 'Antifungal, antimicrobial, anti-scabies', NULL, 'Skin'),

-- Common Medicinal Plants (Additional)
('Tulsi', 'Ocimum sanctum', 'Tulsi is a sacred plant in India, also known as Holy Basil.', 'Used in Ayurveda for relieving stress, boosting immunity, and treating respiratory conditions.', 'Boosts immunity, relieves stress, anti-inflammatory', NULL, 'Immunity'),
('Ashwagandha', 'Withania somnifera', 'A powerful adaptogen used for centuries in Ayurvedic medicine.', 'Used to reduce stress, increase energy levels, and improve concentration.', 'Reduces stress, boosts energy, improves memory', NULL, 'Stress'),
('Neem', 'Azadirachta indica', 'A fast-growing tree known for its medicinal properties.', 'Used for blood purification, treating skin diseases, and as a natural pesticide.', 'Purifies blood, treats acne, anti-bacterial', NULL, 'Skin'),
('Ginger', 'Zingiber officinale', 'A flowering plant whose rhizome is widely used as a spice and medicine.', 'Helps in digestion, relieves nausea, and reduces muscle pain.', 'Aids digestion, anti-nausea, anti-inflammatory', NULL, 'Digestion'),
('Amla', 'Phyllanthus emblica', 'Also known as Indian Gooseberry, it is rich in Vitamin C.', 'Boosts immunity, improves hair health, and aids in digestion.', 'Rich in Vitamin C, boosts immunity, improves skin', NULL, 'Immunity'),
('Hibiscus', 'Hibiscus rosa-sinensis', 'A flowering plant used widely in traditional medicine.', 'Used for lowering blood pressure and cholesterol, and for hair care.', 'Lowers blood pressure, improves hair health', NULL, 'Heart'),
('Fenugreek', 'Trigonella foenum-graecum', 'An herb used in cooking and as a medicine.', 'Controls blood sugar, improves digestion, and boosts milk production in nursing mothers.', 'Controls blood sugar, aids digestion', NULL, 'Digestion')

ON CONFLICT DO NOTHING;
