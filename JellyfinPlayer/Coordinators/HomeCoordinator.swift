//
/*
 * SwiftFin is subject to the terms of the Mozilla Public
 * License, v2.0. If a copy of the MPL was not distributed with this
 * file, you can obtain one at https://mozilla.org/MPL/2.0/.
 *
 * Copyright 2021 Aiden Vigue & Jellyfin Contributors
 */

import Foundation
import Stinsen
import SwiftUI

final class HomeCoordinator: NavigationCoordinatable {
    var navigationStack = NavigationStack()

    enum Route: NavigationRoute {
        case settings
    }

    func resolveRoute(route: Route) -> Transition {
        switch route {
        case .settings:
            return .modal(SettingsCoordinator().eraseToAnyCoordinatable())
        }
    }

    @ViewBuilder
    func start() -> some View {
        HomeView()
    }
}
