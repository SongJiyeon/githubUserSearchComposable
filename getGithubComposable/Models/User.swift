//
//  User.swift
//  getGithubComposable
//
//  Created by riiid on 2020/07/29.
//  Copyright © 2020 songzi. All rights reserved.
//

import Foundation

struct User: Hashable, Identifiable, Decodable {
    var id: Int
    var login: String
    var avatar_url: URL
    var public_repos: Int
}
