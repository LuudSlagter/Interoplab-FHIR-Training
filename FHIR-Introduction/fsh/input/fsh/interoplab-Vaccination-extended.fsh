// Profile on Immunization

Profile: InteroplabVaccinationExtended
Parent: Immunization
Id: interoplab-Vaccination-extended
Title: "Interoplab Vaccination Extended"
* ^purpose = "Dit profiel is een uitwerking van opdracht C, onderdeel e."
* extension contains http://hl7.org/fhir/StructureDefinition/immunization-procedure named procedure 0..1
  * valueCodeableReference
    * ^short = "Verrichting"
    * ^definition = "De verrichting als onderdeel waarvan de vaccinatie is uitgevoerd."
* identifier 1..*
  * ^short = "Identificatienummer"
  * ^definition = "Nummer dat de (instantiatie van de) vaccindatie wereldwijk uniek identificeert"
* status
  * ^patternCode = #completed
* vaccineCode from InteroplabProductCode (required)
  * ^short = "Productcode"
  * ^definition = "De productcode van het toegediende vaccin."
* administeredProduct only CodeableReference(InteroplabMedication)
  * ^comment = "Het gebruik van de Medication-resource is noodzakelijk wanneer de bestandsdelen van het vaccin uitgewisseld moeten worden."
* occurrenceDateTime 1..1
  * ^short = "Vaccinatiedatum"
  * ^definition = "Datum (en eventueel tijd) dat het vaccin is toegediend."
* doseQuantity
  * ^short = "Dosis"
  * ^definition = "De hoeveelheid gegeven vaccin."
  * ^patternQuantity = http://unitsofmeasure.org#ml
* performer 0..1
  * ^slicing.discriminator.type = #type
  * ^slicing.discriminator.path = "actor.resolve()"
  * ^slicing.rules = #closed
  * ^short = "Toediener"
  * ^definition = "De zorgverlener of zorgaanbieder door wie de vaccinatie is uitgevoerd."
* performer contains
    healthProfessional 0..1 and
    healthcareProvider 0..1
* performer[healthProfessional]
  * function 1..1
    * ^patternCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0443#AP
  * actor only Reference(Practitioner or PractitionerRole)
* performer[healthcareProvider]
  * function 1..1
    * ^patternCodeableConcept = http://terminology.hl7.org/CodeSystem/v2-0443#AP
  * actor only Reference(Organization)

Profile: InteroplabMedication
Parent: Medication
Id: interoplab-Medication
Title: "Interoplab Medication"
* code from InteroplabProductCode (required)
  * ^short = "Productcode"
  * ^definition = "De productcode van het toegediende vaccin."
  * ^comment = "De waarde van dit element moet overeenkomen met `Immunization.vaccineCode`."
* ingredient
  * ^short = "Bestandsdeel"
  * ^definition = "Bestandsdeel van het vaccin."

Mapping: InteroplabVaccinationExtendedMapping
Source: InteroplabVaccinationExtended
Id: interoplab-vaccinatie-dataset
Title: "Interoplab Dataset Vaccinatie"
* extension[procedure].valueCodeableReference -> "interoplab-vaccinatie-dataelement-6" "Verrichting"
* identifier -> "interoplab-vaccinatie-dataelement-1" "Identificatienummer"
* vaccineCode -> "interoplab-vaccinatie-dataelement-3" "Productcode"
* occurrenceDateTime -> "interoplab-vaccinatie-dataelement-2" "Vaccinatiedatum"
* doseQuantity -> "interoplab-vaccinatie-dataelement-5" "Dosis"
* performer -> "interoplab-vaccinatie-dataelement-4" "Toediener"

Mapping: InteroplabMedicationMapping
Source: InteroplabMedication
Id: interoplab-vaccinatie-dataset
Title: "Interoplab Dataset Vaccinatie"
* code -> "interoplab-vaccinatie-dataelement-3" "Productcode"
* ingredient -> "interoplab-vaccinatie-dataelement-7" "Bestandsdeel"