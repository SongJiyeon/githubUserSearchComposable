//
//  fetchAPI.swift
//  getGithubComposable
//
//  Created by riiid on 2020/07/29.
//  Copyright © 2020 songzi. All rights reserved.
//

import Foundation

class GithubAPI {
    var baseURL = "https://api.github.com"
    
    func searchUsers(_ keyword: String, _ page: Int) {
        var urlComponents = URLComponents(string: "\(baseURL)/search/users")
        urlComponents.queryItems = [
            URLQueryItem(name: "q", value: keyword),
            URLQueryItem(name: "per_page", value: "20"),
            URLQueryItem(name: "page", value: "\(page)")
        ]
        
        var request = URLrequest(url: urlComponents.url)
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("token \(GITHUB_TOKEN)", forHTTPHeaderField: "Authorization")
    }
}
