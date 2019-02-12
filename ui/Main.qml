import QtQuick.Layouts 1.4
import QtQuick 2.4
import QtQuick.Controls 2.0
import org.kde.kirigami 2.4 as Kirigami

import Mycroft 1.0 as Mycroft

Mycroft.PaginatedDelegate {
    property alias title: title.text
    property alias image: img.source
    //Summary not used for now
    property alias summary: summary.text
    property alias content: content.text

    //a minute of gracetime
    graceTime: 60 * 1000
    backgroundImage: img.source
    switchHeight: height
    switchWidth: width

    Kirigami.Page {
    GridLayout {
        width: parent.width
        columns: 2
        columnSpacing: Kirigami.Units.largeSpacing

        Kirigami.Heading {
            id: title
            level: 1
            Layout.columnSpan: 2
            Layout.fillWidth: true
            wrapMode: Text.WordWrap
        }
        Image {
            id: img
            Layout.alignment: Qt.AlignHCenter
            fillMode: Image.PreserveAspectCrop
            Layout.preferredWidth: Kirigami.Units.gridUnit * 8
            Layout.preferredHeight: Kirigami.Units.gridUnit * 8
        }
        Label {
            id: summary
            Layout.alignment: Qt.AlignTop
            Layout.fillWidth: true
            width: parent.width
            wrapMode: Text.WordWrap
        }
    }
    }
    Kirigami.ScrollablePage {
        Label {
            id: content
            textFormat: Text.RichText
            Layout.columnSpan: 2
            Layout.fillWidth: true
            width: parent.width
            wrapMode: Text.WordWrap
        }
    }
}
