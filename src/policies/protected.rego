package asertodemo.GET.api.protected

import rego.v1

import input.policy.path
import input.user.properties.roles as user_roles

default allowed := false

allowed if {
	some index
	data.roles[user_roles[index]].perms[path].allowed
}
