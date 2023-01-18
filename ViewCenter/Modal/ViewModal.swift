//
//  ViewModal.swift
//  dailyWordRemember
//
//  Created by VB on 4.09.2022.
//

import Foundation
import SwiftUI

class ViewModal : ObservableObject{
    init(){
        MustafaKemal = arbiterModal.MustafaKemalAtaturk
        FatihTerim = arbiterModal.FatihTerim
    }
    
    @Published var MustafaKemal : [arbiterModal]
    @Published var FatihTerim : [arbiterModal]
}
/*
 //
 //  ViewModal.swift
 //  dailyWordRemember
 //
 //  Created by VB on 4.09.2022.
 //

 import Foundation
 import SwiftUI

 class ViewModal : ObservableObject{
     init(){
         MustafaKemal = arbiterModal.MustafaKemalAtaturk
        // FatihTerim = arbiterModal.FatihTerim
     }
     
     @Published var MustafaKemal : [arbiterModal]
    // @Published var FatihTerim : [arbiterModal]
 }
*/
