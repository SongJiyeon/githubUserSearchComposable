//
//  Users.swift
//  getGithubComposable
//
//  Created by riiid on 2020/07/29.
//  Copyright © 2020 songzi. All rights reserved.
//

import Foundation
import Combine
import ComposableArchitecture

struct UsersState: Equatable {
    var users: [User]
}

enum UsersAction: Equatable {
    case fetchNewUsers
    case fetchNextUsers
}
