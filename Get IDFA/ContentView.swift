//
//  ContentView.swift
//  Get IDFA
//
//  Created by Banu Antoro on 17/03/20.
//  Copyright © 2020 Banu Antoro. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var idfa: String = identifierForAdvertising() ?? ""
    var body: some View {
        Text(idfa)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import AdSupport

func identifierForAdvertising() -> String? {
    // check if advertising tracking is enabled in user’s setting
    if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
        return ASIdentifierManager.shared().advertisingIdentifier.uuidString
    } else {
        return nil
    }
}
