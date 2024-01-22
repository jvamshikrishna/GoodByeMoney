//
//  Categories.swift
//  GoodByeMoney
//
//  Created by Vamshi Krishna on 1/15/24.
//

import SwiftUI

struct Categories: View {
    //@State private var categoriesPresent = ["Groceries", "Gas", "Bills", "Subscriptions", "Hobbies"]
    @State private var newCategoryColor = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    @State private var categories: [Category] = [
        Category(id: 0, name: "Groceries", color: .green),
        Category(id: 1, name: "Bills", color: .red),
        Category(id: 2, name: "Subscriptions", color: .blue),
    ]
    @State private var isShowingAlert = false
    
    //@State private var selectedCategory: String?
    @State private var newCategoryName : String = ""
    @FocusState var inputFocused: Bool
    
    
    
    func handleSubmit(){
        if newCategoryName.count > 0{
            categories.append(Category(id: categories.count, name: newCategoryName, color: newCategoryColor))
            newCategoryName = ""
        }
        else{
            isShowingAlert = true
        }
    }
    
    var body: some View {
        VStack{
            List{
                ForEach(categories){ category in
                    HStack{
                        Circle()
                            .frame(width: 12)
                            .foregroundColor(category.color)
                            .border(.gray, width: 1)
                            .cornerRadius(6)
                        Text(category.name)
                    }
                    
                }
            }
            
            .scrollContentBackground(.hidden)
            
            Spacer()
            
            HStack{
                
                ColorPicker("", selection: $newCategoryColor)
                    .labelsHidden()
                    .accessibilityLabel("")
                
                ZStack(alignment: .trailing){
                    TextField("Type new category name",text: $newCategoryName)
                        .focused($inputFocused)
                        .textFieldStyle(.roundedBorder)
                        .onSubmit {
                            handleSubmit()
                        }
                    
                    
                    if newCategoryName.count > 0 {
                        Button{
                            newCategoryName = ""
                        }label: {
                            Label("", systemImage: "xmark.circle.fill")
                            //.labelStyle(.iconOnly)
                                .foregroundColor(.gray)
                                .padding(.trailing,6)
                        }
                    }
                    
                }
                
                Button{
                    handleSubmit()
                }label: {
                    Label("Submit", systemImage: "paperplane.fill")
                }
                //                .background(.blue)
                //                .foregroundColor(.white)
                .padding(6)
                .alert("Must Provide Category Name", isPresented: $isShowingAlert) {
                    Button("OK", role: .cancel){
                        isShowingAlert = false
                    }
                }
            }
            .padding()
            .navigationTitle("Categories")
        }
        
    }
}

#Preview {
    Categories()
}
