/*
Created by Damiano Oldoni (INBO)
*/

SELECT
  o."ObservationIdentifier"             AS eventID,
-- RECORD-LEVEL
  'HumanObservation'                    AS basisOfRecord,
-- OCCURRENCE
  o."ObservationIdentifier"             AS occurrenceID,
  o."QuantificationOfInvasion"          AS individualCount,
-- IDENTIFICATION
  CASE
    WHEN o."ValidationStatus" = 'approved by experts' THEN 'verified by experts'
    ELSE NULL
  END                                   AS identificationVerificationStatus,

-- TAXON
  CASE
    WHEN o."ScientificName" = 'Rutilus Rutilus' THEN 'Rutilus rutilus'
    WHEN o."ScientificName" = 'Scardinius erythrophthalmus' THEN 'Scardinius erythrophthalmus'
    WHEN o."ScientificName" = 'Abramis bjoerkna' THEN 'Abramis bjoerkna'
    WHEN o."ScientificName" = 'Tinca tinca' THEN 'Tinca tinca'
    WHEN o."ScientificName" = 'Esox lucius' THEN 'Esox lucius'
    WHEN o."ScientificName" = 'Abramis Brama' THEN 'Abramis Brama'
    WHEN o."ScientificName" = 'Perca fluviatilis' THEN 'Perca fluviatilis'
    WHEN o."ScientificName" = 'Gasterosteus aculeatus' THEN 'Gasterosteus aculeatus'
    WHEN o."ScientificName" = 'Pungitius pungitius' THEN 'Pungitius pungitius'
    WHEN o."ScientificName" = 'Carassius auratus gibelio' THEN 'Carassius auratus gibelio'
    WHEN o."ScientificName" = 'Cyprinus carpio' THEN 'Cyprinus carpio'
    WHEN o."ScientificName" = 'Gobio gobio' THEN 'Gobio gobio'
    WHEN o."ScientificName" = 'Carassius auratus auratus' THEN 'Carassius auratus auratus'
    WHEN o."ScientificName" = 'Pseudorasbora parva' THEN 'Pseudorasbora parva'
    WHEN o."ScientificName" = 'Oncorhynchus mykiss' THEN 'Oncorhynchus mykiss'
    WHEN o."ScientificName" = 'Pimephales promelas' THEN 'Pimephales promelas'
    WHEN o."ScientificName" = 'Gymnocephalus cernua' THEN 'Gymnocephalus cernua'
    WHEN o."ScientificName" = 'Neogobius melanostomus' THEN 'Neogobius melanostomus'
    WHEN o."ScientificName" = 'Stizostedion lucoperca' THEN 'Stizostedion lucoperca'
    WHEN o."ScientificName" = 'Lepomis gibbosus' THEN 'Lepomis gibbosus'
    WHEN o."ScientificName" = 'Solea solea' THEN 'Solea solea'
    WHEN o."ScientificName" = 'Carassius carassius' THEN 'Carassius carassius'
    WHEN o."ScientificName" = 'Ctenopharyngodon idella' THEN 'Ctenopharyngodon idella'
    WHEN o."ScientificName" = 'Hypophthalmichthys molitrix' THEN 'Hypophthalmichthys molitrix'
    WHEN o."ScientificName" = 'Dicentrarchus labrax' THEN 'Dicentrarchus labrax'
    WHEN o."ScientificName" = 'Procambarus clarkii' THEN 'Procambarus clarkii'
    WHEN o."ScientificName" = 'Eriocheir sinensis' THEN 'Eriocheir sinensis'
    WHEN o."ScientificName" = 'Pleuronectes platessa' THEN 'Pleuronectes platessa'
    WHEN o."ScientificName" = 'Pomatoschistus minutus' THEN 'Pomatoschistus minutus'
    WHEN o."ScientificName" = 'Aspius aspius' THEN 'Aspius aspius'
    WHEN o."ScientificName" = 'Faxonius limosus' THEN 'Faxonius limosus'
    WHEN o."ScientificName" = 'Lithobates catesbeianus' THEN 'Lithobates catesbeianus'
    WHEN o."ScientificName" = 'Anarhichas lupus' THEN 'Anarhichas lupus'
    ELSE NULL
  END                                   AS scientificName,
  o."Kingdom"                           AS kingdom, -- Animalia
  CASE
    WHEN o.DutchName = 'Blankvoorn' THEN 'blankvoorn'
    WHEN o.DutchName = 'rietvoorn' THEN 'rietvoorn'
    WHEN o.DutchName = 'kolblei' THEN 'kolblei'
    WHEN o.DutchName = 'zeelt' THEN 'zeelt'
    WHEN o.DutchName = 'snoek' THEN 'snoek'
    WHEN o.DutchName = 'brasem' THEN 'brasem'
    WHEN o.DutchName = 'Baars' THEN 'baars'
    WHEN o.DutchName = '3-doornige stekelbaars' THEN 'driedoornige stekelbaars'
    WHEN o.DutchName = '10-doornige stekelbaars' THEN 'tiendoornige stekelbaars'
    WHEN o.DutchName = 'Giebel' THEN 'giebel'
    WHEN o.DutchName = 'Karper' THEN 'karper'
    WHEN o.DutchName = 'riviergrondel' THEN 'riviergrondel'
    WHEN o.DutchName = 'Goudvis' THEN 'goudvis'
    WHEN o.DutchName = 'Blauwbandgrondel' THEN 'blauwbandgrondel'
    WHEN o.DutchName = 'regenboogforel' THEN 'regenboogforel'
    WHEN o.DutchName = 'Dikkopelrits' THEN 'dikkopelrits'
    WHEN o.DutchName = 'Pos' THEN 'pos'
    WHEN o.DutchName = 'zwartbekgrondel' THEN 'zwartbekgrondel'
    WHEN o.DutchName = 'snoekbaars' THEN 'snoekbaars'
    WHEN o.DutchName = 'Zonnebaars' THEN 'zonnebaars'
    WHEN o.DutchName = 'Tong' THEN 'tong'
    WHEN o.DutchName = 'Kroeskarper' THEN 'kroeskarper'
    WHEN o.DutchName = 'Graskarper' THEN 'graskarper'
    WHEN o.DutchName = 'Zilverkarper' THEN 'zilverkarper'
    WHEN o.DutchName = 'zeebaars' THEN 'zeebaars'
    WHEN o.DutchName = 'Rode Amerikaanse rivierkreeft' THEN 'rode Amerikaanse rivierkreeft'
    WHEN o.DutchName = 'Chinese wolhandkrab' THEN 'Chinese wolhandkrab'
    WHEN o.DutchName = 'Schol' THEN 'schol'
    WHEN o.DutchName = 'Dikkopje' THEN 'dikkopje'
    WHEN o.DutchName = 'roofblei' THEN 'roofblei'
    WHEN o.DutchName = 'Gevlekte Amerikaanse rivierkreeft' THEN 'gevlekte Amerikaanse rivierkreeft'
    WHEN o.DutchName = 'Amerikaanse stierkikker' THEN 'Amerikaanse stierkikker'
    WHEN o.DutchName = 'Europese meerval' THEN 'Europese meerval'
    ELSE NULL
  END                                   AS vernacularName
  FROM occurrences AS o