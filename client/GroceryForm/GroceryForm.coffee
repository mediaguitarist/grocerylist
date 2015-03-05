Template.GroceryForm.events 
	"submit .new-item": (e) ->
		event.preventDefault()
		user = Meteor.user()
		Meteor.call "addItem", e.target.item.value, user.username
		e.target.item.value = ""
		