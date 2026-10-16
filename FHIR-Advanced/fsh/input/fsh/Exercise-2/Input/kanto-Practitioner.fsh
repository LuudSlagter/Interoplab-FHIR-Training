Profile: KantoPractitioner
Parent: Practitioner
Id: kanto-Practitioner
Title: "kanto Practitioner"
Description: "A person or Pokémon that provides health care for Pokémon in the Kanto region."
* ^status = #active
* extension contains 
    http://hl7.org/fhir/StructureDefinition/practitioner-animalSpecies named pokemon 0..1
* extension[pokemon]
  * valueCodeableConcept
    * ^patternCodeableConcept = AnimalSpecies#PKMN
* identifier 1..*
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "type"
  * ^slicing.rules = #open
* identifier contains
    providerNumber 1..1
* identifier[providerNumber]
  * ^short = "Provider number"
  * ^definition = "Globally unique number that identifies the health professional."
  * use
    * ^patternCode = #official
  * type
    * ^patternCodeableConcept = $IdentifierType#PRN
  * system
    * ^patternUri = "http://kanto.jp/healthprofessional"
  * value 1..1
* name 1..1
  * ^short = "Name information"
  * ^definition = "Name of the health professional."