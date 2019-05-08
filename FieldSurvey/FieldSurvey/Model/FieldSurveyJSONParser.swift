//
//  FieldSurveyJSONParser.swift
//  FieldSurvey
//
//  Created by Brady Webb on 5/3/19.
//  Copyright © 2019 Brady Webb. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser{
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        DateFormatter.dateFormat = "YYYY-MM-dd HH:MM"
        
        if let json = try? JSONSerialization.jsonObject(with: <#T##Data#>, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            if let events = root["events"] as? [Any]{
                for event in events{
                    if let event = event as? [String: String]{
                        if let classification = event["classification"],
                            let title = event["title"],
                            let description = event["description"],
                            let dateString = event["date"],
                            let date = DateFormatter.date(from: dateString){
                            if let fieldSurveys = FieldSurvey(classification: classification, title: title, description: description, date: date){
                                fieldSurveys.append(fieldSurveys)
                            }
                        }
                    }
                }
            }
        }
        return fieldSurveys
    }
}
