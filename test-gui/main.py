import sys

from PyQt5.QtCore import QObject, QTimer
from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine


app = QGuiApplication(sys.argv)

engine = QQmlApplicationEngine()
engine.quit.connect(app.quit)
engine.load('main.qml')

class Backend(QObject):

    def __init__(self):
        super().__init__()
        self.m_command = ""

        self.timer = QTimer()
        self.timer.setInterval(100)
        self.timer.timeout.connect(self.update)
        self.timer.start()

    def update(self):
        command = engine.rootObjects()[0].property('command')
        if command == self.m_command:
            return
        else:
            self.m_command = command 
            print(command)

backend = Backend()

sys.exit(app.exec())