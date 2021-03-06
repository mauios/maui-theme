/****************************************************************************
 * This file is part of PSS Shell.
 *
 * Copyright (C) 2013-2014 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
 *
 * Author(s):
 *    Pier Luigi Fiorini
 *
 * $BEGIN_LICENSE:LGPL2.1+$
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 * $END_LICENSE$
 ***************************************************************************/

import QtQuick 2.0
import QtGraphicalEffects 1.0
import PSS.Components 1.0 as Components
import PSS.Shell.Controls.Styles 1.0 as Styles
import org.kde.plasma.core 2.0 as PlasmaCore
import "private/Utils.js" as Utils

Styles.NotificationStyle {
    background: Item {
        implicitWidth: units.gridUnit * 24
        implicitHeight: units.gridUnit * 5

        Components.NoiseBackground {
            id: noise
            anchors.fill: parent
            color: PlasmaCore.ColorScope.backgroundColor
            visible: false
        }

        Rectangle {
            id: border
            anchors.fill: parent
            border.color: Utils.rgba(Qt.darker(PlasmaCore.ColorScope.backgroundColor, 1.35), 0.5)
            radius: units.gridUnit
            antialiasing: true
            visible: false
        }

        OpacityMask {
            anchors.fill: parent
            source: noise
            maskSource: border
            opacity: 0.85
        }
    }
}
