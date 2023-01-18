//
//  ItemGroup.swift
//  dailyWordRemember
//
//  Created by VB on 3.10.2022.
//

import Foundation
import SwiftUI

struct MustafaKemalRectangle<MustafaKemalView : View> : View {
    @State var GoToView : MustafaKemalView
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(.white)
                .frame(width:250,height: 400)
                .overlay {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.red)
                        .frame(width: 200,height: 300)
                        .padding(.bottom,60)
                    VStack{
                        Image("MustafaKemal").resizable()
                            .frame(width: 200,height: 300)
                        NavigationLink(destination: GoToView) {
                            Text("go ATATURK")
                                .bold()
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .background(RoundedRectangleView())
                                .foregroundColor(Color("RedColor2"))
                                .padding(.leading,10)
                        }
                    }
                }
        }
    }
}

/*struct FatihTerimRectangle<FatihTerimView : View> : View {
    @State var GoToFtView : FatihTerimView
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 50)
                .foregroundColor(.white)
                .frame(width:250,height: 400)
                .overlay {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.red)
                        .frame(width: 200,height: 300)
                        .padding(.bottom,60)
                        .overlay {
                            Image("FatihTerimF")
                                .resizable()
                                .frame(width: 200,height: 300)
                                .padding(.bottom,80)
                            VStack{
                                NavigationLink(destination: GoToFtView) {
                                    Text("go ATATURK")
                                        .bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.center)
                                        .background(RoundedRectangleView())
                                        .foregroundColor(Color("RedColor2"))
                                        .padding(.leading,10)
                                }
                                
                            }.padding([.top],300)
                        }
                }
        }
    }
}*/

struct LeadersScroll<MustafaKemalView : View/*,FatihTerimView : View*/> : View{
    @State var GoToView : MustafaKemalView
    //@State var GoToFtView : FatihTerimView


    var body: some View{
        
        ScrollView(.horizontal){
            HStack{
                MustafaKemalRectangle(GoToView: GoToView )
               // FatihTerimRectangle(GoToFtView: GoToFtView)
            }
        }.padding(70)
    }
}
struct RoundedRectangleView : View {
    var body: some View{
        VStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 130,height:40)
                .padding()
        }
    }
}
struct CircleView : View {
    var body: some View{
        VStack{
            Circle()
                .frame(width: 200, height: 250, alignment: .center)
                .padding()
        }
    }
}

struct BannerShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.move(to: CGPoint.zero)
        path.addLine(to: CGPoint(x: rect.maxX, y: 0))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addQuadCurve(to: CGPoint(x: 0, y: rect.maxY), control: CGPoint(x: rect.midX, y: rect.maxY + 100))

        return path
    }
}

struct ElementsPreviews : PreviewProvider{
    static var previews: some View{
        CircleView()
        MustafaKemalRectangle(GoToView: MustafaKemalView())
     //   FatihTerimRectangle(GoToFtView: FatihTerimView())
        BannerShape()
            .frame(height:300)
        LeadersScroll(GoToView: MustafaKemalView()/*,GoToFtView: FatihTerimView()*/)
    }
}


/*
 RoundedRectangle(cornerRadius: 20).foregroundColor(Color("OrangeColor1"))
     .frame(width: 350, height: 180, alignment: .center)
     .overlay {
         HStack{Image("FatihTerimF")
                 .resizable()
                 .aspectRatio(contentMode: .fit)
                 .frame(width: 180,height: 180)
                 .padding(.leading, 240)
         }
         HStack{
             Text("Fatih Terim")
                 .font(.title3)
                 .foregroundColor(.white)
                 .bold()
                 .padding(.horizontal,60)
             Spacer()
         }.padding([.leading, .bottom],70)
         VStack{
             NavigationLink(destination: GoToFtView) {
                 Text("go Fatih Terim")
                     .bold()
                     .foregroundColor(.white)
                     .multilineTextAlignment(.center)
                     .background(RoundedRectangleView())
                     .foregroundColor(Color("OrangeColor2"))
                     .padding(.trailing)
             }
         }.padding([.top, .trailing],40)
     }
     }*/
