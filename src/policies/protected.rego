package asertodemo.GET.api.protected

default allowed = false

allowed {
	some index
	input.user.properties.roles[index] == "admin"
}
