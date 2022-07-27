import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 600
    height: 500
    title: "HelloApp"
    color: "black"

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
            id: inputText
            anchors.left: parent.right
            anchors.bottom: parent.bottom
            text: "Text here"
            font.pixelSize: 30
            color: "white"
            padding: 2

            onAccepted:
            {
                terminal.text = terminal.text + "\n" + inputText.text
                inputText.clear()
            }
        }
    }

}
