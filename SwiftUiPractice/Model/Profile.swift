//
//  Profile.swift
//  SwiftUiPractice
//
//  Created by Papon Supamongkonchai on 28/3/2564 BE.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "JARNBOY")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { self.rawValue }
    }
}
