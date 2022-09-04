//
//  Userhandler.swift
//  CarInsurance
//
//  Created by Apple on 7/3/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

import Alamofire


class userhandler {
   class func getEpisods(Success: @escaping ([EpisodesModel]?) -> Void, Failure: @escaping(NetworkError) -> Void){
    let url = Constant.MainUrl + Constant.URLs.episodes
       
        Networkhandler.GetRequiest(url: url, parameters: nil,success: {(successResponse)  in

            do {
                print(successResponse)
                let responseModel = try JSONDecoder().decode([EpisodesModel].self, from: successResponse.data!)
                Success(responseModel)
            }
            catch {
                print("Response Error")
            }


        } , Falioure: {(Error) in
            Failure(Error)
        })
    }
    
}






struct APIResponse<T: Decodable>: Decodable {
    var data: T?
    var code: Int
    var success: Bool
    var http_response: Int
}

func decode<T: Decodable>(data: Data, ofType: T.Type) -> T? {
    do {
        let decoder = JSONDecoder()
        let res = try decoder.decode(APIResponse<T>.self, from: data)
        return res.data
    } catch let parsingError {
        print("Error", parsingError)
    }
    return nil
}
