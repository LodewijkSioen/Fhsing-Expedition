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