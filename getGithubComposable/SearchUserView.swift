//
//  ContentView.swift
//  getGithubComposable
//
//  Created by riiid on 2020/07/29.
//  Copyright © 2020 songzi. All rights reserved.
//

import SwiftUI
import Combine
import ComposableArchitecture
import KingfisherSwiftUI

struct AppState: Equatable {
    var count = 0
    var numberFactAlert: String?
}

enum AppAction: Equatable {
    case factAlertDismissed
    case decrementButtonTapped
    case incrementButtonTapped
    case numberFactButtonTapped
    case numberFactResponse(Result<String, ApiError>)
}

struct ApiError: Error, Equatable {}

struct AppEnvironment {
    var mainQueue: AnySchedulerOf<DispatchQueue>
    var numberFact: (Int) -> Effect<String, ApiError>
}

struct SearchUserView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct GithubUser: Identifiable {
    let id: Int
    let name: String
    let reposCount: Int
}

struct UserRow: View {
    @State var user: User
    
    var body: some View {
        HStack {
            KFImage(user.avatar_url)
            .resizable()
            .scaledToFit()
            .frame(width: 50, height: 50)
            VStack(alignment: .leading) {
                Text("\(user.login)")
                    .font(.system(size: 20))
                Spacer()
                    .frame(height: 5)
                Text("Number of repos: \(user.public_repos)")
                    .font(.system(size: 15))
                    .foregroundColor(Color.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 90)
    }
}

struct SearchUserView_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserView()
    }
}
