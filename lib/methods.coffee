Meteor.methods
	"removeItem": (e) -> Items.remove {_id: e._id}
	"addItem": (e, id, date) -> Items.insert {name: e, owner: id, date: date} 
	"editItem": (id, name) -> Items.update {_id: id}, {name: name}