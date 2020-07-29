//
//  User.swift
//  getGithubComposable
//
//  Created by riiid on 2020/07/29.
//  Copyright © 2020 songzi. All rights reserved.
//

import Foundation
import Combine
import ComposableArchitecture

struct UserState: Equatable {
    var user: User
}

enum UserAction: Equatable {
    case setUser
    case fetchUser(Result<User, ApiError>)
}

struct UserEnvironment {
  var mainQueue: AnySchedulerOf<DispatchQueue>
  var publicRepos: (String) -> Effect<Int, ApiError>
}

struct ApiError: Error, Equatable {}
