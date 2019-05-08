//
//  FieldSurveryJSONLoader.swift
//  FieldSurvey
//
//  Created by Brady Webb on 5/3/19.
//  Copyright © 2019 Brady Webb. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey]{
        var events = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
                events = FieldSurveyJSONParser.parse(data)
        }
        return events
    }
}
