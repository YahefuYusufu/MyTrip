//
//  BooksView.swift
//  MyTrip
//
//  Created by yusufyakuf on 2024-01-05.
//

import SwiftUI
import SwiftData

enum Sorting: String, Identifiable, CaseIterable {
   case status, country, city
   
   var id: Self {
      self
   }
}

struct TripListView: View {
   @Environment(\.modelContext) private var context
   @Query(sort: \Trip.status) private var trips: [Trip]
   @State private var createNewTrip = false
   @State private  var sorting = Sorting.status
   @State private var filter = ""
   @Environment(\.horizontalSizeClass) var horizontalSizeClass
   @Environment(\.verticalSizeClass) var verticalSizeClass
   
   var body: some View {
      NavigationStack {
         Picker("",selection: $sorting) {
            ForEach(Sorting.allCases) { sort in
               Text("Sort by \(sort.rawValue)")
            }
         }
         .pickerStyle(.palette)
         .padding()
         TripList(sorting: sorting, filterString: filter)
            .searchable(text: $filter,prompt: Text("Filter on Country or City..."))
            .navigationTitle("My trips")
            .toolbar {
               Button {
                  createNewTrip = true
               } label: {
                  Image(systemName: "plus.circle.fill")
                     .imageScale(.large)
               }
            }
            .sheet(isPresented: $createNewTrip) {
               NewTripView()
                  .presentationDetents([.medium,.fraction(0.75)])
                  .presentationCornerRadius(28)
            }
      }
      .padding(devicePadding())
      
   }
   
   private func devicePadding() -> EdgeInsets {
      if horizontalSizeClass == .compact && verticalSizeClass == .regular {
         // iPad portrait orientation
         return EdgeInsets(top: 20, leading: 20, bottom: 20, trailing: 20)
      } else {
         // Default padding for other orientations or devices
         return EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
      }
   }
}
#Preview {
   let preview = Preview(Trip.self)
   let trips = Trip.sampleTrips
   let genres = Genre.sampleGenres
   preview.addExamples(trips)
   preview.addExamples(genres)
   return TripListView()
      .modelContainer(preview.container)
}
