//
//  TripSample.swift
//  MyTrip
//
//  Created by yusufyakuf on 2024-01-13.
//

import Foundation
/**
 country: String,
 city: String,
 summary: String = "",
 tripAdded: Date = Date.now,
 tripStarted: Date = Date.distantPast,
 tripCompleted: Date = Date.distantPast,
 totalDays: Int? = nil,
 satisfaction: Int? = nil,
 status: Status = .inPlan
 */
extension Trip {
   static let lastWeek = Calendar.current.date(byAdding: .day, value: -7 ,to: Date.now)!
   static let lastMonth = Calendar.current.date(byAdding: .month, value: -1 ,to: Date.now)!
   static var sampleTrips: [Trip] {
      [
         Trip(country: "Turkey", city: "Istanbul",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 4,status: Status.inPlan),
         Trip(country: "Germany", city: "Berlin",satisfaction: 3),
         Trip(country: "Turkey", city: "Istanbul",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 3,status: Status.inProgress),
         Trip(country: "China", city: "GuangZhou",satisfaction: 3),
         Trip(country: "England", city: "London",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 4,status: Status.completed),
         Trip(country: "Norway", city: "Oslo",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 2,status: Status.inPlan),

         Trip(country: "France", city: "Paris",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 4,status: Status.inProgress),

         Trip(country: "Canada", city: "Vancover",sysnopsis: "Inheriting Ian Fleming's long-lost account of his spy activities during World War II, young American academic Amy Greenberg finds herself targeted by unknown assailants and must race to finish the manuscript in order to save her life and reveal the actions of a traitor.",tripAdded: lastWeek,tripStarted: lastWeek,tripCompleted: Date.now,satisfaction: 3,status: Status.completed),


      ]
   }
}
