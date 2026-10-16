# Exercises

Tip: use [Markdown Live Preview](https://markdownlivepreview.com/) (or something similar) to make the contents of this file more readable. Use the [FHIR Shorthand Overview](https://build.fhir.org/ig/HL7/fhir-shorthand/overview.html) and [FHIR Shorthand Language Reference](https://build.fhir.org/ig/HL7/fhir-shorthand/reference.html) for the FSH-related exercises below.

## Exercise 0 - Setup

a. Checkout the _main_ branch of the [Interoplab-FHIR-training](https://github.com/LuudSlagter/Interoplab-FHIR-Training/tree/main) repository locally. Copy the contents of the `Exercise-0` folder to the `fsh/input/fsh` folder.

b. Try to run SUSHI. Solve the error that occurs (taking into account that FHIR R4 is used within these exercises) and rerun SUSHI. If the error has been solved correctly, a table _SUSHI RESULTS_ (including fish-related pun) will be generated as output.

c. Fix any remaining errors or warnings (and appreciate the puns in the process).

d. Briefly check the generated FHIR resources. One CodeSystem resource contains two metadata elements whose values are not in line with the FHIR specification (and apparently, these are not picked up by SUSHI). Correct these metadata elements such that they are technically valid and functionally make sense.

## Exercise 1 - Example resources (Practitioner)
> Copy the contents of the `Exercise-1` folder to the `fsh/input/fsh` folder.

In the _Kanto_ region of Japan there live different species of animals that cannot be found anywhere else in the world. In this exercise (and the ones that follow) the animals of species _Pokémon_ are considered. The Kanto region has an extensive network of so-called _Pokémon Centers_ (a type of animal hospitals) to provide healthcare to wounded and sick Pokémon. In this exercise, the administrative data of _Nurse Joy_ is represented in FHIR.

a. Use the existing Practitioner resource of Nurse Joy as basis for this exercise. Enrich this resource by adding the data specified below to the corresponding FSH file (if possible). Moreover, explicitly indicate that the Practitioner record of Nurse Joy is active.

| **Concept** | **Value** | **Comment** |
| --- | --- | --- |
| First name | Joy | |
| Gender | Female | |
| Title | Nurse | |
| Work address | Pokémon center in a city of choice in the Kanto region | This address is _not_ used for mailing purposes.<br/>Fill the address as structured as possible.<br/>Use a different city than your neighbours. |
| Date of birth | 01-04-1990 |
| Specialty | Animal health attendant | Search a suitable SNOMED CT code e.g. via the [Nictiz terminology browser](https://terminologie.nictiz.nl/art-decor/snomed-ct).<br/>Consult the [Terminology Code Systems](https://hl7.org/fhir/R5/terminologies-systems.html) for the corresponding URI.<br/>Add both the SNOMED code and a suitable display value. |

b. One of the concepts specified in _a_ could not be added to the Practitioner resource. Determine a suitable FHIR resource to convey this concept (the [Resource Index](https://hl7.org/fhir/R5/resourcelist.html) might be useful) and create an instance of that resource that contains the missing concept. Also make sure to link the latter instance to the already existing Practitioner instance, and include a proper display in the Practitioner reference.

c. Nurse Joy has her own companion Pokémon _Chansey_ that helps her while attending sick Pokémon. Thus, this Chansey can be viewed as a health professional as well (for the purpose of this exercise, you may consider Chansey to be a service animal, even though the definition of a service animal is slightly different). Create a Practitioner resource for Chansey that indicates the fact that it is a Pokémon. Moreover, add the following data in this resource.

| **Concept** | **Value** | **Comment** |
| --- | --- | --- |
| Regular name | Chansey | |
| Nickname | Chan | |
| Gender | See comment | Consult the Kanto Pokédex for the applicable gender(s). |
| Work address | Pokémon center in a city of choice in the Kanto region | Use the same address as used for Nurse Joy. |

## Exercise 2 - Profile conformance (Practitioner)
> Copy the contents of the `Exercise-2` folder to the `fsh/input/fsh` folder.

The _**Ka**nto **R**egion **A**nimal Health **Age**ncy_ (abbreviated as _KARAAGE_) decides to standardise the registration of health professionals by creating a Kanto-specific Practitioner profile that all data should conform to.

a. Indicate the Practitioner instances of Nurse Joy and Chansey to be conformant to the _kanto-Practitioner_ profile, and rerun SUSHI. In what way should these instances be tweaked so that they actually conform to the kanto-Practitioner profile? For any identifier values that you need to specify, use _H[DDMM]_ and _P[DDMM]_ for Nurse Joy and Chansey, respectively, where _DDMM_ is your own date of birth (this (probably) ensures uniqueness of all identifier values).

b. How is the conformance to the kanto-Practitioner profile indicated in the generated FHIR resources?

c. The FSH file of the kanto-Practitioner uses a so-called _alias_ to refer to the _IdentifierType_ code system. Create aliases for other code systems that are invoked in the FSH files, and check if the generated resources are not affected by this finetuning of the FSH files. (An alias might not seem very useful in this exercise, but it makes managing a larger repository of FSH files a lot easier!)

d. Whenever a profile makes use of slicing, it is possible to use the slice name in FSH whenever creating instances conforming to that profile. Finetune the FSH files by using slice names where possible, and check if the generated resources are not affected by this change. Note that an extension is a special case of slicing.

e. Determine a suitable element from the [StructureDefinition](https://hl7.org/fhir/R4/structuredefinition.html) resource to specify the author of a profile. Add KARAAGE as author of the kanto-Practitioner profile.

## Exercise 3 - Create a profile (Patient)

KARAAGE also would like to standardise the registration of Pokémon that are treated at Pokémon Centers. For this purpose a new profile on Patient needs to be created. Note that every Pokémon has precisely one owner, who is also called a _Pokémon trainer_ (since Pokémon are trained to perform in battles and contests).

a. Create a new _kanto-Patient_ profile, and take into account the following criteria. Note that all criteria listed below can be profiled without introducing a custom extension.

* Precisely one name of the Pokémon must be registered, and that name has to be the nickname.
* Up to two primary health professionals (whose corresponding FHIR resources conform to the kanto-Practitioner profile) may be specified.
* It is mandatory to convey the gender of the Pokémon.
* It is mandatory to specify the nationality of the Pokémon, which is expressed as a region of Japan (if possible).
* It is mandatory to indicate that the treated animal is a Pokémon. Moreover, it is mandatory to indicate the kind/breed of Pokémon. Note that all Pokémon native to the Kanto region are listed in the _Kanto Pokédex_.
* It is mandatory to exchange the trainer of the Pokémon. Search a suitable SNOMED CT code to indicate the Pokémon trainer e.g. via the [Nictiz terminology browser](https://terminologie.nictiz.nl/art-decor/snomed-ct). Make sure that other persons related to the treated Pokémon (such as someone working at a _Pokémon Day Care_) can be specified as well.
* The profile should contain a proper description, for instance 'A Pokémon receiving health care.'. Moreover, KARAAGE has to be added as author of the kanto-Patient profile.

b. It is time to choose your Pokémon! Pick a Pokémon from the Kanto Pokédex and create a Patient resource conforming to the kanto-Patient profile. Moreover, add the following data.

| **Concept** | **Value** | **Comment** |
| --- | --- | --- |
| Gender | See comment | Consult the Kanto Pokédex for the applicable gender(s). |
| Nationality | Kanto region | |
| Trainer | Yourself | Add at least your name and telephone number. |
| Primary health professionals | Nurse Joy and Chansey | Use the corresponding resources created in Exercise 1 and 2. |

Make sure that the Patient resource is indeed conformant to the kanto-Patient profile.

## Exercise 4 - Create a ValueSet

Sometimes a Pokémon that is brought into a Pokémon Center after a battle with another Pokémon has a _status condition_. A Pokémon could be either burned, poisoned, frozen, paralysed or confused (no other status conditions are possible).

a. Create a StatusConditions ValueSet that contains SNOMED CT codes for each of the indicated status conditions.

b. Create a profile (on a suitable FHIR resource) for status conditions registrations of Pokémon treated by health professionals. Make sure to add references to other profiles, where applicable. Think about which elements need to be mandatory. Moreover, make this profile as consistent as possible with the other profiles (for instance, with respect to naming conventions or certain metadata).

c. Unfortunately, your own Pokémon has a status condition after the latest battle this morning! Create a resource conforming to the profile made in the previous question. Moreover, add the following data.

| **Concept** | **Value** | **Comment** |
| --- | --- | --- |
| Status condition | One of the possible values | |
| Diagnosed by | Nurse Joy | |
| Start of the condition | Today, 9:37 AM | |
| Recorded by | Chansey | |
| Time of recording | Today, current time | |

Make sure that the resource is indeed conformant to the profile made in the previous question.

## Exercise 5 - Resources on a FHIR server

Interoplab is asked by KARAAGE to host a FHIR server that is used for the exchange of data between the Pokémon Centers. This server has url _https://fhir.test.interoplab.eu/r4/fhir/_.

a. Create the Patient resource corresponding to your Pokémon on this server (for instance via Postman). What issues do arise? After the Patient resource has been created successfully, what differences between the original resource and the created resource do you see?

b. Try to retrieve the Patient resource corresponding to your Pokémon in XML format by using the following:

* The id of the Patient resource;
* The nickname of your Pokémon;
* The name of the Pokémon trainer (i.e. your name);
* The kind/breed of Pokémon;
* The date of birth of your Pokémon.

Why is it not possible to retrieve the Patient resource for some of these criteria/elements? 

c. Is it possible to delete all Patient resources on the server via a single request?

d. What would be necessary to retrieve all Patient resources on the server corresponding to Pokémon?

e. Create the resource corresponding to the status condition of your Pokémon on the Pokémon Center server.

## Exercise 6 - Communication via FHIR

Your neighbour (another Pokémon trainer) enters a Pokémon Center they are normally not visiting. In order to retrieve the health record of their Pokémon, Nurse Joy needs some basic information to consult the Pokémon Center server.

a. Ask the date of birth of your neighbour. Use this information to determine in which city of Kanto the Pokémon Center is located at which their Pokémon has been treated previously. Hint: read exercise 2a.

b. Ask your neighbour for the nickname of their Pokémon. Use this information to determine the kind/breed of their Pokémon.

c. For what status condition is your neighbour's Pokémon treated?

## Exercise 7 - Manipulating FHIR resources on a server

a. Good news! Nurse Joy has completed the treatment of your Pokémon and it has recovered from their status condition. Update the resource corresponding to your Pokémon's status condition by updating the clinical status and end date.

b. Since you are moving to another region, you have requested the Pokémon Center to delete all data they have stored on your Pokémon. What requests do they need to perform on their server?