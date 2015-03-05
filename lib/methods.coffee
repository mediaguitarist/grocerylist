Meteor.methods
	"getList": -> Items.find {}
	"removeItem": (e) -> Items.remove {_id: e._id}
	"addItem": (e, id) -> Items.insert {name: e, owner: id}