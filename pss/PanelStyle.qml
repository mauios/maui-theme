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
import PSS.Shell.Controls.Styles 1.0 as Styles
import org.kde.plasma.core 2.0 as PlasmaCore

Styles.PanelStyle {
    panel: Rectangle {
        gradient: Gradient {
            GradientStop { position: 0.0; color: Qt.lighter(PlasmaCore.ColorScope.backgroundColor, 1.2) }
            GradientStop { position: 0.2; color: Qt.lighter(PlasmaCore.ColorScope.backgroundColor, 1.2) }
            GradientStop { position: 1.0; color: Qt.darker(PlasmaCore.ColorScope.backgroundColor, 1.3) }
        }
        opacity: 0.9
    }
}
