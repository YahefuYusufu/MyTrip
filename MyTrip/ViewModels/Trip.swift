//
//  Item.swift
//  MyTrip
//
//  Created by yusufyakuf on 2024-01-05.
//

import SwiftUI
import SwiftData

@Model
class Trip {
   var country: String
   var city: String
   var summary: String = ""
   var tripAdded: Date
   var tripStarted: Date
   var tripCompleted: Date
   var totalDays: Int?
   var satisfaction: Int?
   var status: Status
   
   init(
      country: String,
      city: String,
      summary: String = "",
      tripAdded: Date = Date.now,
      tripStarted: Date = Date.distantPast,
      tripCompleted: Date = Date.distantPast,
      totalDays: Int? = nil,
      satisfaction: Int? = nil,
      status: Status = .inPlan
   ) {
      self.country = country
      self.city = city
      self.summary = summary
      self.tripAdded = tripAdded
      self.tripStarted = tripStarted
      self.tripCompleted = tripCompleted
      self.totalDays = totalDays
      self.satisfaction = satisfaction
      self.status = status
   }
   
   
   
   
   var icon: Image {
      switch status {
         case .inPlan:
            Image(systemName:"airplane.departure")
         case .inProgress:
            Image(systemName:"airplane.arrival")
         case .completed:
            Image(systemName: "house")
      }
   }
   
   
   

}

enum Status: Int, Identifiable, Codable, CaseIterable  {
   case inPlan, inProgress,completed
   var id: Self {
      self
   }
   var desc: String {
      switch self{
         case .inPlan: "In Planning"
         case .inProgress: "In Progress"
         case .completed: "Completed"
      }
   }
}
