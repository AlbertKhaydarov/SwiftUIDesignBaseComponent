//
//  ContentView.swift
//  SwiftUIDesignBaseComponent
//
//  Created by Альберт Хайдаров on 22.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var date = Date()
    @State private var isOn = false
    @State private var speed = 50.0
    @State private var isEditing = false
    
    @State private var developerType: Developer = .intern
    
    enum Developer: String, CaseIterable, Identifiable {
        
        case intern, junior, middle, senior, teamlead
        var id: Self {self}
    }
    
    @State private var userName: String = ""
    @FocusState private var emailFieldFocused: Bool
    @State private var isEmailValid: Bool = true
    
    var body: some View {
        
        //        NavigationView {
        //
        //            List {
        Form {
            VStack {
                Text(emailFieldFocused ? "We're typing" : "Not typing")
                TextField("User name (email address)",
                          text: $userName,
                          //                      prompt: Text("Promt")
                          onEditingChanged: { (isChanged) in
                    if userName.contains("@") {
                        isEmailValid = true
                    } else {
                        isEmailValid = false
                        userName = ""
                    }
                }
                          
                )
                
                .padding(16)
                
                .textFieldStyle(.roundedBorder)
                .focused($emailFieldFocused)
                .textInputAutocapitalization(.words)
                .autocorrectionDisabled(true)
                
                if !isEmailValid {
                    Text("Email is Not valid")
                        .font(.callout)
                        .foregroundColor(.red )
                }
            }
            
            
//            Picker("Developer type", selection: $developerType) {
//                Text(Developer.intern.rawValue.capitalized).tag(Developer.intern)
//                Text(Developer.junior.rawValue.capitalized).tag(Developer.junior)
//                Text(Developer.middle.rawValue.capitalized).tag(Developer.middle)
//                Text(Developer.senior.rawValue.capitalized).tag(Developer.senior)
//                Text(Developer.teamlead.rawValue.capitalized).tag(Developer.teamlead)
//            }
//
//            .padding(16)
//            //            }
//
//            //        }
//            //                    .pickerStyle(.wheel)
//            .pickerStyle(.segmented)
//
//
//            DatePicker("Start Date",
//                       selection: $date,
//                       displayedComponents: [.date])
//
//            .padding(16)
//            .datePickerStyle(.graphical)
//
          
      
            //            Text("Selected speed: \(speed)")
            //                .padding(16)
            //                .foregroundColor(isEditing ? .red : .blue)
            //
            //            Slider(
            //                value: $speed,
            //                in: 0...100) { editing in
            //                    isEditing = editing
            //                }
            //                .padding(16)
            //
            //            Slider(value: $speed,
            //                   in: 0...100,
            //                   step: 5) {
            //                Text("Speed")
            //            } minimumValueLabel: {
            //                Text("0")
            //            } maximumValueLabel: {
            //                Text("100")
            //            } onEditingChanged: { editing in
            //                isEditing = editing
            //            }
            //            .padding(16)
            
            
            
            
            //            Toggle(isOn: $isOn) {
            //                Text("Vibrate on ring")
            //            }
            //            .padding(16)
            //            .toggleStyle(.button)
            //
            //            Toggle("Vibrate on ring", isOn: $isOn)
            //
            //            .padding(16)
            //            .toggleStyle(.switch)
            //
            //            Button("Dismiss") {
            //
            //            }
            //            Button {
            //
            //            } label: {
            //                Label("Hello, world new!", systemImage: "bolt.fill")
            //            }
            //            .buttonStyle(.borderless)
            //
            //            Button(role: .destructive) {
            //                print("3")
            //            } label: {
            //                Label("Sign in", systemImage: "bolt.fill")
            //            }
            //            .buttonStyle(.bordered)
            //            .buttonBorderShape(.roundedRectangle(radius: 8))
            //            .frame(width: 150, height: 30, alignment: .center)
            //            .font(.system(size: 23, design: .serif))
            //            Label("Hello, world new!", systemImage: "bolt.fill")
            //
            ////                .padding()
            //
            //            Label {
            //                Text("First")
            //                    .font(.body)
            //                    .foregroundColor(.primary)
            //                Text("Second")
            //                    .font(.subheadline)
            //                    .foregroundColor(.secondary)
            //            } icon: {
            //                Circle()
            //                    .fill(.blue)
            //                    .frame(width: 24, height: 24, alignment: .center)
            //            }
            ////            .labelStyle(.iconOnly)
            //            .labelStyle(.titleOnly)
            
            
            //            Text("Hello, world new!")
            //
            //                            .font(.system(size: 23, design: .serif))
            //                                        .bold()
            //                                        .italic()
            //                                        .underline(true, color: .red)
            //                                        .frame(width: 200, alignment: .leading)
            //                                        .lineLimit(3)
            //                                        .foregroundColor(.accentColor)
            //                                        .truncationMode(.middle)
            //                    .padding()
            //                        Text(date, format: Date.FormatStyle(date: .abbreviated, time: .shortened))
            
            //            Text(verbatim: "Hello, world new!") // без перевода
//            Text("Text padded by 10 points on each edge.")
//                    .padding(10)
//                    .border(.gray)
//                Text("Unpadded text for comparison.")
//
//                    .border(.yellow)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
