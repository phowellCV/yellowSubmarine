import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    id: window
    visible: true
    width: 600
    height: 500
    title: "Submarine"
    color: "black"

    property string command: ""

    Text
    {
        id: terminal
        anchors.fill: parent
        font.pixelSize: 30
        color: "white"
        padding: 2
    }

    Text
    {
        id: inputBox
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        width: 30
        text: ">"
        font.pixelSize: 30
        color: "white"
        padding: 2

        TextInput
        {
            id: commandTextBox
            anchors.left: parent.right
            anchors.bottom: parent.bottom
            width: terminal.width
            text: ""
            font.pixelSize: 30
            color: "white"
            padding: 2

            onAccepted:
            {
                command = commandTextBox.text
                commandTextBox.clear()
            }
        }
    }
}
