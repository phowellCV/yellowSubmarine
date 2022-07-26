from kivy.app import App
from kivy.uix.gridlayout import GridLayout
from kivy.uix.label import Label
from kivy.uix.textinput import TextInput


class Terminal(GridLayout):

    def __init__(self, **kwargs):
        super(Terminal, self).__init__(**kwargs)
        self.cols = 1
        self.add_widget(Label(text="Page"))
        self.commandLine = TextInput(multiline=False)
        self.add_widget(self.commandLine)


class MyApp(App):

    def build(self):
        return Terminal()


if __name__ == '__main__':
    MyApp().run()