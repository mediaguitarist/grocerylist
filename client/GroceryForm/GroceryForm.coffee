Template.GroceryForm.events 
	"submit .new-item": (e) ->
		event.preventDefault()
		user = Meteor.user()
		date = new Date()
		Meteor.call "addItem", e.target.item.value, user.username, date
		e.target.item.value = ""
		