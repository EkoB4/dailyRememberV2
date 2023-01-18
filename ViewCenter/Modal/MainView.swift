//
//  MainView.swift
//  dailyWordRemember
//
//  Created by Ekin Bacik on 18.01.2023.
//

import SwiftUI

struct MainView<MustafaKemalView:View,FatihTerimView : View>: View {
    @State var AtaturkView : MustafaKemalView
    @State var FtView : FatihTerimView
    var body: some View {
        NavigationView {
            VStack{
                VStack{
                    BannerShape()
                    .foregroundColor(Color("RedColor3"))
                    .frame(height: 600).offset(y:50)
                    VStack{
                        Text("Find Your Favorite leader Words")
                            .font(.system(size:30)).bold().foregroundColor(.white).multilineTextAlignment(.leading)
                            .frame(height:80)
                        Text("Seeing me doesn't necessarily mean seeing my face. If you understand and feel my ideas, my feelings, that's enough. - Ataturk")
                            .foregroundColor(.white)
                            .bold()
                            .padding()
                            .frame(width: 400,height: 150)
                        LeadersScroll(GoToView: AtaturkView, GoToFtView: FtView)
                            .offset(y:-80)

                    }.offset(y:-250)

                }
            }.background(Color("GrayColor1"))
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(AtaturkView: MustafaKemalView(), FtView: FatihTerimView())
    }
}

/*
 //
 //  WorldLeaders.swift
 //  dailyWordRemember
 //
 //  Created by VB on 31.08.2022.
 //
 /*
  dateComps
  */
 import Foundation
 import SwiftUI
 import UserNotifications
 struct MustafaKemalView : View{
     @StateObject var viewModal : ViewModal = ViewModal()
     @State private var isButtonTapped :Bool = false

     var body: some View{
         VStack{
             VStack{
                 Text("Mustafa Kemal Ataturk")
                     .font(.title)
                     .bold()
                 Text("'The Father of the Turks'")
                     .font(.title2)
                 Text("1881-1938")
                 
             }
             Spacer(minLength: 20)
             HStack{
                 Image("MustafaKemalPasa")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
             }.frame(width: 400,height: 300)
                 .background(CircleView().foregroundColor(.red))
             //Spacer(minLength: 200)
             VStack{
                 List(){
                     ForEach(viewModal.MustafaKemal){ ata in
                         Button{
                             let content = UNMutableNotificationContent()
                             content.title = "Ata diyor ki;"
                             content.subtitle = "\(ata.wordVal)"
                             let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                             
                             let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                             
                             UNUserNotificationCenter.current().add(request)
                             isButtonTapped = true
                         } label: {
                             rowList(value: ata)
                                 .foregroundColor(.black)
                         }/*.alert("Word scheduled⌛", isPresented: $isButtonTapped) {
                             Button("yeep",role: .cancel){}
                         }*/
                     }
                 }.clipShape(RoundedRectangle(cornerRadius: 20))
                     .padding()
                     .offset(y:-25)
             }
         }.accentColor(Color.red)
     }
 }
 /*struct FatihTerimView : View{
     @StateObject var viewModal : ViewModal = ViewModal()
     @State var isFtButtonTapped :Bool = false

     var body: some View{
         VStack{
             VStack{
                 Text("Fatih Terim")
                     .font(.title)
                     .bold()
                 Text("'Emperor'")
                     .font(.title2)
                 Text("1953")
                 
             }
             Spacer(minLength: 20)
             HStack{
                 Image("FatihTerim")
                     .resizable()
                     .aspectRatio(contentMode: .fit)
             }.frame(width: 500,height: 300)
                 .background(CircleView().foregroundColor(Color("OrangeColor1")))
             //Spacer(minLength: 200)
             VStack{
                 List(){
                     ForEach(viewModal.FatihTerim){ Ft in
                         Button{
                             let content = UNMutableNotificationContent()
                             content.title = "Fatih Terim;"
                             content.subtitle = "\(Ft.wordVal)"
                             let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                             
                             let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                             
                             UNUserNotificationCenter.current().add(request)
                             isFtButtonTapped = true
                         } label: {
                             rowList(value: Ft)
                                 .foregroundColor(.black)
                         }.alert("Word scheduled⌛", isPresented: $isFtButtonTapped) {
                             Button("yeep",role: .cancel){}
                         }
                     }
                 }.clipShape(RoundedRectangle(cornerRadius: 20))
                     .padding()
                     .offset(y:-40)
             }
         }.accentColor(Color("OrangeColor1"))
     }
 }*/

 struct request : View{
     var body: some View{
         
         Button("sa"){
             UNUserNotificationCenter.current().requestAuthorization(options: [.sound,.alert,.sound]){succes , error in
                 if succes{
                     print("Permission Succesfull")
                 }else if let error = error{
                     print(error.localizedDescription)
                 }
             }
         }
     }
 }

 struct Previews : PreviewProvider{
     static var previews: some View{
         MustafaKemalView()
       //  FatihTerimView()
     }
 }

*/
