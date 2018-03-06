using Gtk;
using Granite;

namespace ValaTutorial {

  class HelloWorldGtkApp : Gtk.Window {

    public HelloWorldGtkApp() {

      var button = new Gtk.Button.with_label("Click me, bro!");
      add(button);

      button.clicked.connect( () => {
        stdout.printf("You clicked me, dude!\n");
      });
    }

    public static int main(string[] args) {
      Gtk.init(ref args);

      var app = new HelloWorldGtkApp();
      app.show_all();
      app.destroy.connect(Gtk.main_quit);

      foreach( string value in args ) {
        stdout.printf("This value is: %s\n", value);
      }

      Gtk.main();

      return 0;
    }
  }
}
