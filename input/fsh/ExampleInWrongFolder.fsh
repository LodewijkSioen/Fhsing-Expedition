Profile: MyOrganization
Parent: Organization
Title: "Test Organization"
Id: my-organization
Description: "Test where this ends up"
* name 1..1

Instance: TestMyOrganization
InstanceOf: MyOrganization
Description: "This one ends up in the examples folder"
Usage: #definition
* name = "Test My Org"

Instance: TestOrganization
InstanceOf: Organization
Description: "This one ends up in the root folder"
Usage: #definition
* name = "Test Org"

Instance: TestMyOrganization-Example
InstanceOf: MyOrganization
Description: "This one should end up in the examples folder"
Usage: #example
* name = "Example My Organization"

Instance: TestOrganization-Example
InstanceOf: Organization
Description: "This one should end up in the examples folder"
Usage: #example
* name = "Example Organization"
