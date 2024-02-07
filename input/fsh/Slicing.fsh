Profile: MyParameters
Parent: Parameters
Title: "Parameters Sliced"
Id: my-parameters
Description: "Slicing tests"
* parameter ^short = "Slices containing subscription status information"
* parameter ^slicing.discriminator.type = #value
* parameter ^slicing.discriminator.path = "name"
* parameter ^slicing.rules = #open
* parameter ^slicing.ordered = false
* parameter ^slicing.description = "Slice on parameter name"
* parameter 
    contains param 0..1
* parameter[param].name = "param" (exactly)
* parameter[param].part 0..*
* parameter[param].part ^slicing.discriminator.type = #value
* parameter[param].part ^slicing.discriminator.path = "name"
* parameter[param].part ^slicing.rules = #open
* parameter[param].part ^slicing.ordered = false
* parameter[param].part ^slicing.description = "Slice part name"
* parameter[param].part
    contains prt 0..1
* parameter[param].part[prt].name = "part" (exactly)
* parameter[param].part[prt].value[x] 0..1
* parameter[param].part[prt].value[x] only string

Profile: MyParametersRestricted
Parent: MyParameters
Title: "Parameters sliced and restricted"
Id: my-parameters-restricted
Description: "Slicing tests"
* parameter[param] 1..1 MS
* parameter[param].part[prt] 1..1 MS //adding this rule crashes the publisher