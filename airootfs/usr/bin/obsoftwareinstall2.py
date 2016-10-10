#!/usr/bin/env python2



# Importing Modules
import pygtk
import gtk
import os

# This is a software selection tool for OBRevenge
# written by Jody James

# Creating base class (base window)

class Base:

    def destroy(self, widget, data=None):
        gtk.main_quit()

    def internet(self, widget):
        os.system("internetlist2.sh")

    def media(self, widget):
        os.system("medialist2.sh")

    def office(self, widget):
        os.system("officelist2.sh")

    def install(self, widget):
        os.system("installapps2.sh")

    def __init__(self):
        self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        self.window.set_position(gtk.WIN_POS_CENTER)
        self.window.set_size_request(600, 400)
        self.window.set_title("OBRevenge Software Installation Tool")


# Making Buttons for Software Categories
        self.internetbutton = gtk.Button("Internet")
        self.internetbutton.connect("clicked", self.internet)
        self.internetbutton.set_tooltip_text("Select Internet Applications to Install")
        self.mediabutton = gtk.Button("Media")
        self.mediabutton.connect("clicked", self.media)
        self.mediabutton.set_tooltip_text("Select Media Applicatons to Install")
        self.officebutton = gtk.Button("Office")
        self.officebutton.connect("clicked", self.office)
        self.officebutton.set_tooltip_text("Select Office Applicatons to Install")
        self.installbutton = gtk.Button("Install your selcted software with one click!")
        self.installbutton.connect("clicked", self.install)
        self.installbutton.set_tooltip_text("Click to Begin Installation")

# Making Labels
        self.label = gtk.Label("Please select the software that you would like to install by clicking on each of the below categories and clicking on the boxes for your desired programs.")
        self.label.set_line_wrap(True)
        self.label.set_justify(gtk.JUSTIFY_CENTER)

        self.label2 = gtk.Label("When you are finished selecting the software that you would like to install, simply click the \"Install your selected software with one click\" button below.")
        self.label2.set_line_wrap(True)
        self.label.set_justify(gtk.JUSTIFY_CENTER)
        
# Making Image
        self.pix = gtk.gdk.pixbuf_new_from_file_at_size("/usr/share/Icons/obrevenge-redhd.png", 100, 100)
        self.image = gtk.Image()
        self.image.set_from_pixbuf(self.pix)

# Making Box containers
        self.vbox = gtk.VBox()
        self.hbox = gtk.HBox()
        self.hbox.pack_start(self.image)
        self.vbox1 = gtk.VBox()
        self.vbox1.pack_start(self.label)
        self.hbox1 = gtk.HBox()
        self.hbox1.pack_start(self.internetbutton)
        self.hbox1.pack_start(self.mediabutton)
        self.hbox1.pack_start(self.officebutton)
        self.vbox2 = gtk.VBox()
        self.vbox2.pack_start(self.label2)
        self.hbox3 = gtk.HBox()
        self.hbox3.pack_start(self.installbutton)


# Placing Items
        self.window.add(self.vbox)
        self.vbox.add(self.hbox)
        self.vbox.add(self.vbox1)
        self.vbox.add(self.hbox1)
        self.vbox.add(self.vbox2)
        self.vbox.add(self.hbox3)
        self.window.show_all()
        self.window.connect("destroy", self.destroy)


    def main(self):
        gtk.main()

# Running Main Window
if __name__== "__main__":
    base = Base()
    base.main()
