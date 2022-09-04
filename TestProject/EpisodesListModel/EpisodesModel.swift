/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct EpisodesModel : Codable {
	let id : Int?
	let url : String?
	let name : String?
	let season : Int?
	let number : Int?
	let type : String?
	let airdate : String?
	let airtime : String?
	let airstamp : String?
	let runtime : Int?
	let rating : Rating?
	let image : Image?
	let summary : String?
	

	enum CodingKeys: String, CodingKey {

		case id = "id"
		case url = "url"
		case name = "name"
		case season = "season"
		case number = "number"
		case type = "type"
		case airdate = "airdate"
		case airtime = "airtime"
		case airstamp = "airstamp"
		case runtime = "runtime"
		case rating = "rating"
		case image = "image"
		case summary = "summary"
		
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		url = try values.decodeIfPresent(String.self, forKey: .url)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		season = try values.decodeIfPresent(Int.self, forKey: .season)
		number = try values.decodeIfPresent(Int.self, forKey: .number)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		airdate = try values.decodeIfPresent(String.self, forKey: .airdate)
		airtime = try values.decodeIfPresent(String.self, forKey: .airtime)
		airstamp = try values.decodeIfPresent(String.self, forKey: .airstamp)
		runtime = try values.decodeIfPresent(Int.self, forKey: .runtime)
		rating = try values.decodeIfPresent(Rating.self, forKey: .rating)
		image = try values.decodeIfPresent(Image.self, forKey: .image)
		summary = try values.decodeIfPresent(String.self, forKey: .summary)
		
	}

}

struct Image : Codable {
    let medium : String?
    let original : String?

    enum CodingKeys: String, CodingKey {

        case medium = "medium"
        case original = "original"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        medium = try values.decodeIfPresent(String.self, forKey: .medium)
        original = try values.decodeIfPresent(String.self, forKey: .original)
    }

}



struct Rating : Codable {
    let average : Double?

    enum CodingKeys: String, CodingKey {

        case average = "average"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        average = try values.decodeIfPresent(Double.self, forKey: .average)
    }

}



