import Foundation

struct Movie : Codable {
    
	let video : Bool?
	let voteAverage : Double?
	let overview : String?
	let releaseDate : String?
	let adult : Bool?
	let backdropPath : String?
	let voteCount : Int?
	let genre_ids : [Int]?
	let title : String?
	let original_language : String?
	let originalTitle : String?
	let poster_path : String?
	let id : Int?
	let popularity : Double?
	let media_type : String?

	enum CodingKeys: String, CodingKey {

		case video = "video"
		case voteAverage = "vote_average"
		case overview = "overview"
		case releaseDate = "release_date"
		case adult = "adult"
		case backdropPath = "backdrop_path"
		case voteCount = "vote_count"
		case genre_ids = "genre_ids"
		case title = "title"
		case original_language = "original_language"
		case originalTitle = "original_title"
		case poster_path = "poster_path"
		case id = "id"
		case popularity = "popularity"
		case media_type = "media_type"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		video = try values.decodeIfPresent(Bool.self, forKey: .video)
        voteAverage = try values.decodeIfPresent(Double.self, forKey: .voteAverage)
		overview = try values.decodeIfPresent(String.self, forKey: .overview)
        releaseDate = try values.decodeIfPresent(String.self, forKey: .releaseDate)
		adult = try values.decodeIfPresent(Bool.self, forKey: .adult)
        backdropPath = try values.decodeIfPresent(String.self, forKey: .backdropPath)
        voteCount = try values.decodeIfPresent(Int.self, forKey: .voteCount)
		genre_ids = try values.decodeIfPresent([Int].self, forKey: .genre_ids)
		title = try values.decodeIfPresent(String.self, forKey: .title)
		original_language = try values.decodeIfPresent(String.self, forKey: .original_language)
        originalTitle = try values.decodeIfPresent(String.self, forKey: .originalTitle)
		poster_path = try values.decodeIfPresent(String.self, forKey: .poster_path)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		popularity = try values.decodeIfPresent(Double.self, forKey: .popularity)
		media_type = try values.decodeIfPresent(String.self, forKey: .media_type)
	}

}
