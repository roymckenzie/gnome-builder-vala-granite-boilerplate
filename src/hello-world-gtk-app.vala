using Gtk;
using Granite;

public class GraniteValaBuilderDemo : Granite.Application {

    construct {
        application_id = "io.elementary.GraniteTemplate";
        flags = ApplicationFlags.FLAGS_NONE;
        program_name = "Granite, Vala GNOME Builder Demo";
        build_version = "0.1";
    }

    public override void activate () {
        var window          = new Gtk.Window();
        var header_label    = new Granite.HeaderLabel("Build apps with GNOME Builder");
        var message_dialog  = new Granite.MessageDialog.with_image_from_icon_name(
          "Ready to get started?",
          "Let's go!",
          "applications-development",
          Gtk.ButtonsType.CLOSE
        );


        header_label.set_halign(Align.CENTER);
        window.add(header_label);

        window.set_default_size(900, 600);
        window.set_size_request(750, 500);
        window.title = "Granite, Vala GNOME Builder Demo";
        window.show_all();

        add_window(window);

        message_dialog.run();
        message_dialog.destroy();
    }

    public static int main(string[] args) {
        var application = new GraniteValaBuilderDemo();
        return application.run(args);
    }
}