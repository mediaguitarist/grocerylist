Meteor.subscribe 'groceryList'

Template.GroceryList.helpers 
	items: -> Items.find {}

Template.GroceryList.events
	"click .delete": (e) -> Meteor.call "removeItem", this
	"click .found": (e) -> $("li[key=#{this._id}]").toggleClass 'greyed'
				
			
