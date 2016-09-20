require './models/activities'
require './models/strains'

Strain.create({
	name: "Purple Haze",
	kind: "Hybrid",
	media: "url",
	rating: '5',
	review: "llalala"
	})

activity = Activity.create({
		name: 'skiing'
	})

activity.strains = [Strain.last]
