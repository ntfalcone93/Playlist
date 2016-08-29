playlists : {
	(Playlist Id) : {
		title : String
		description : String
		date : Double
		members : {
			(User Id)
		}
	}
}

songs : {
	(Playlist Id) : {
		(Song Id) : {
			title : String
			artist : String
			artworkUrl : String
			duration : Double
			artistId : Int
			albumId : Int
			id : Int
			albumName : String
			explicit : Bool
			streamable : Bool
			genre : String
			addedBy : String
		}
	}
}

users : {
	(User Id) : {
		phoneNumber : String
		firstName : String
		lastName : String
	}
}

usersPlaylists : {
	(User Id) : {
		(Playlist Id) : Bool
	}
}