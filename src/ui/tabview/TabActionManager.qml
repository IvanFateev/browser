/*
 * This file is part of Liri Browser
 *
 * Copyright (C) 2016 Tim Süberkrüb <tim.sueberkrueb@web.de>
 *
 * $BEGIN_LICENSE:GPL3+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
*/

import QtQuick 2.7
import SlimeEngine 0.2

QtObject {
    property QtObject internal: QtObject {
        property var uid
        property var tabController
    }

    signal newWebViewRequested(var request)
    signal closeRequested()
    signal fullScreenRequested(var request)

    onFullScreenRequested: {
        internal.tabController.fullScreenRequested(request);
    }

    onNewWebViewRequested: {
        switch (request.destination) {
            case NewViewRequest.NewViewInTab:
            case NewViewRequest.NewViewInBackgroundTab:
                internal.tabController.openNewViewRequest(request);
                break;
            case NewViewRequest.NewViewInDialog:
            case NewViewRequest.NewViewInWindow:
                internal.tabController.newWindowRequested(request);
                break;
        }
    }

    onCloseRequested: {
        tabController.removeTab(internal.uid);
    }
}
