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
    WHEN o."ScientificName" = 'Abramis bjoerkna' THEN 'Blicca bjoerkna'
    WHEN o."ScientificName" = 'Abramis brama' THEN 'Abramis brama'
    WHEN o."ScientificName" = 'Alburnus alburnus' THEN 'Alburnus alburnus'
    WHEN o."ScientificName" = 'Ameiurus nebulosus' THEN 'Ameiurus nebulosus'
    WHEN o."ScientificName" = 'Anarhichas lupus' THEN 'Anarhichas lupus'
    WHEN o."ScientificName" = 'Barbatula barbatula' THEN 'Barbatula barbatula'
    WHEN o."ScientificName" = 'Blicca bjoerkna' THEN 'Blicca bjoerkna'
    WHEN o."ScientificName" = 'Carassius auratus auratus' THEN 'Carassius auratus auratus'
    WHEN o."ScientificName" = 'Carassius carassius' THEN 'Carassius carassius'
    WHEN o."ScientificName" = 'Carassius gibelio' THEN 'Carassius gibelio'
    WHEN o."ScientificName" = 'Chelon ramada' THEN 'Chelon ramada'
    WHEN o."ScientificName" = 'Ctenopharyngodon idella' THEN 'Ctenopharyngodon idella'
    WHEN o."ScientificName" = 'Cyprinus carpio' THEN 'Cyprinus carpio'
    WHEN o."ScientificName" = 'Dicentrarchus labrax' THEN 'Dicentrarchus labrax'
    WHEN o."ScientificName" = 'Eriocheir sinensis' THEN 'Eriocheir sinensis'
    WHEN o."ScientificName" = 'Esox lucius' THEN 'Esox lucius'
    WHEN o."ScientificName" = 'Faxonius limosus' THEN 'Faxonius limosus'
    WHEN o."ScientificName" = 'Gasterosteus aculeatus' THEN 'Gasterosteus aculeatus'
    WHEN o."ScientificName" = 'Gobio gobio' THEN 'Gobio gobio'
    WHEN o."ScientificName" = 'Gymnocephalus cernua' THEN 'Gymnocephalus cernua'
    WHEN o."ScientificName" = 'Hypophthalmichthys molitrix' THEN 'Hypophthalmichthys molitrix'
    WHEN o."ScientificName" = 'Lepomis gibbosus' THEN 'Lepomis gibbosus'
    WHEN o."ScientificName" = 'Leucaspius delineatus' THEN 'Leucaspius delineatus'
    WHEN o."ScientificName" = 'Leuciscus idus' THEN 'Leuciscus idus'
    WHEN o."ScientificName" = 'Leuciscus aspius' THEN 'Leuciscus aspius'
    WHEN o."ScientificName" = 'Leuciscus leuciscus' THEN 'Leuciscus leuciscus'
    WHEN o."ScientificName" = 'Lithobates catesbeianus' THEN 'Lithobates catesbeianus'
    WHEN o."ScientificName" = 'Neogobius melanostomus' THEN 'Neogobius melanostomus'
    WHEN o."ScientificName" = 'Oncorhynchus mykiss' THEN 'Oncorhynchus mykiss'
    WHEN o."ScientificName" = 'Osmerus eperlanus' THEN 'Osmerus eperlanus'
    WHEN o."ScientificName" = 'Perca fluviatilis' THEN 'Perca fluviatilis'
    WHEN o."ScientificName" = 'Pimephales promelas' THEN 'Pimephales promelas'
    WHEN o."ScientificName" = 'Platichthys flesus' THEN 'Platichthys flesus'
    WHEN o."ScientificName" = 'Pleuronectes platessa' THEN 'Pleuronectes platessa'
    WHEN o."ScientificName" = 'Pomatoschistus microps' THEN 'Pomatoschistus microps'
    WHEN o."ScientificName" = 'Pomatoschistus minutus' THEN 'Pomatoschistus minutus'
    WHEN o."ScientificName" = 'Procambarus clarkii' THEN 'Procambarus clarkii'
    WHEN o."ScientificName" = 'Pseudorasbora parva' THEN 'Pseudorasbora parva'
    WHEN o."ScientificName" = 'Pungitius pungitius' THEN 'Pungitius pungitius'
    WHEN o."ScientificName" = 'Rhodeus sericeus' THEN 'Rhodeus sericeus'
    WHEN o."ScientificName" = 'Rutilus rutilus' THEN 'Rutilus rutilus'
    WHEN o."ScientificName" = 'Sander lucioperca' THEN 'Sander lucioperca'
    WHEN o."ScientificName" = 'Scardinius erythrophthalmus' THEN 'Scardinius erythrophthalmus'
    WHEN o."ScientificName" = 'Solea solea' THEN 'Solea solea'
    WHEN o."ScientificName" = 'Sprattus sprattus' THEN 'Sprattus sprattus'
    WHEN o."ScientificName" = 'Squalius cephalus' THEN 'Squalius cephalus'
    WHEN o."ScientificName" = 'Tinca tinca' THEN 'Tinca tinca'
    WHEN o."ScientificName" = 'Trisopterus luscus' THEN 'Trisopterus luscus'
    WHEN o."ScientificName" = 'Umbra pygmaea' THEN 'Umbra pygmaea'
    ELSE NULL
  END                                   AS scientificName,
  o."Kingdom"                           AS kingdom, -- Animalia
  CASE
    WHEN o.DutchName = '3-doornige stekelbaars' THEN 'driedoornige stekelbaars'
    WHEN o.DutchName = '10-doornige stekelbaars' THEN 'tiendoornige stekelbaars'
    WHEN o.DutchName = 'Alver' THEN 'alver'
    WHEN o.DutchName = 'Amerikaanse hondsvis' THEN 'Amerikaanse hondsvis'
    WHEN o.DutchName = 'Amerikaanse stierkikker' THEN 'Amerikaanse stierkikker'
    WHEN o.DutchName = 'Baars' THEN 'baars'
    WHEN o.DutchName = 'bermpje' THEN 'bermpje'
    WHEN o.DutchName = 'Bittervoorn' THEN 'bittervoorn'
    WHEN o.DutchName = 'Blankvoorn' THEN 'blankvoorn'
    WHEN o.DutchName = 'Blauwbandgrondel' THEN 'blauwbandgrondel'
    WHEN o.DutchName = 'Bot' THEN 'bot'
    WHEN o.DutchName = 'brakwatergrondel' THEN 'brakwatergrondel'
    WHEN o.DutchName = 'brasem' THEN 'brasem'
    WHEN o.DutchName = 'bruine Amerikaanse dwergmeerval' THEN 'bruine Amerikaanse dwergmeerval'
    WHEN o.DutchName = 'Chinese wolhandkrab' THEN 'Chinese wolhandkrab'
    WHEN o.DutchName = 'Dikkopelrits' THEN 'dikkopelrits'
    WHEN o.DutchName = 'Dikkopje' THEN 'dikkopje'
    WHEN o.DutchName = 'Dunlipharder' THEN 'dunlipharder'
    WHEN o.DutchName = 'Europese meerval' THEN 'Europese meerval'
    WHEN o.DutchName = 'Gevlekte Amerikaanse rivierkreeft' THEN 'gevlekte Amerikaanse rivierkreeft'
    WHEN o.DutchName = 'Giebel' THEN 'giebel'
    WHEN o.DutchName = 'Goudvis' THEN 'goudvis'
    WHEN o.DutchName = 'Graskarper' THEN 'graskarper'
    WHEN o.DutchName = 'Karper' THEN 'karper'
    WHEN o.DutchName = 'kolblei' THEN 'kolblei'
    WHEN o.DutchName = 'kopvoorn' THEN 'kopvoorn'
    WHEN o.DutchName = 'Kopvoorn' THEN 'kopvoorn'
    WHEN o.DutchName = 'Kroeskarper' THEN 'kroeskarper'
    WHEN o.DutchName = 'Pos' THEN 'pos'
    WHEN o.DutchName = 'regenboogforel' THEN 'regenboogforel'
    WHEN o.DutchName = 'rietvoorn' THEN 'rietvoorn'
    WHEN o.DutchName = 'riviergrondel' THEN 'riviergrondel'
    WHEN o.DutchName = 'Rode Amerikaanse rivierkreeft' THEN 'rode Amerikaanse rivierkreeft'
    WHEN o.DutchName = 'roofblei' THEN 'roofblei'
    WHEN o.DutchName = 'Schol' THEN 'schol'
    WHEN o.DutchName = 'serpeling' THEN 'serpeling'
    WHEN o.DutchName = 'Serpeling' THEN 'serpeling'
    WHEN o.DutchName = 'Snoekbaars' THEN 'snoekbaars'
    WHEN o.DutchName = 'snoekbaars' THEN 'snoekbaars'
    WHEN o.DutchName = 'snoek' THEN 'snoek'
    WHEN o.DutchName = 'spiering' THEN 'spiering'
    WHEN o.DutchName = 'Spiering' THEN 'spiering'
    WHEN o.DutchName = 'Sprot' THEN 'sprot'
    WHEN o.DutchName = 'Steenbolk' THEN 'steenbolk'
    WHEN o.DutchName = 'Tong' THEN 'tong'
    WHEN o.DutchName = 'Vetje' THEN 'vetje'
    WHEN o.DutchName = 'winde' THEN 'winde'
    WHEN o.DutchName = 'Zeebaars' THEN 'zeebaars'
    WHEN o.DutchName = 'zeebaars' THEN 'zeebaars'
    WHEN o.DutchName = 'zeelt' THEN 'zeelt'
    WHEN o.DutchName = 'Zeewolf' THEN 'zeewolf'
    WHEN o.DutchName = 'Zilverkarper' THEN 'zilverkarper'
    WHEN o.DutchName = 'Zonnebaars' THEN 'zonnebaars'
    WHEN o.DutchName = 'zwartbekgrondel' THEN 'zwartbekgrondel'
    ELSE NULL
  END                                   AS vernacularName
  FROM occurrences AS o
