package app.rbac

import future.keywords.contains
import future.keywords.if
import future.keywords.in

# By default, deny requests.
default allow := false

# Allow admins to do anything.
allow if user_is_admin


allow if normal_user {
	# Find grants for the user.
	some grant in user_is_granted
	some permission in permission_is_granted
    
    input.resource == permission.resource
    input.action == permission.action
    grant.actor == permission.actor

}

normal_user if not "admin" in data.role[input.user]
user_is_admin if "admin" in data.role[input.user]

user_is_granted contains grant if {
    some grant in data.user_roles[input.user]
}
permission_is_granted contains permission if {
	some permission in data.permission
}	
