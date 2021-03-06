# Rigel

ri browser using ncurses
(based on `ribhu` which uses rbcurse gem)

Hopes to make your ruby documentation experience faster. This is a two pane application, with
Classes on the left list, and details on the right.
You may press Enter on a class to see its documention. Pressing ENTER over a method in the right will
fetch its details.

M-x gives a Ctrl-P like list displaying classes, and one can filter from them and select just as one does
with Ctrl-P. Pressing "/" in the classes list, also lets you type in a string to search from.

You may mark classes with an upper case alphabet (vim style by pressing 'm' in the left list) and access them directly using single-quote.
Several classes have been bookmarked such as Array, String, Hash, File. You may place more in a file named "~/.rigel.conf" in the form:

    $bookmarks[:Z] = "Zlib"

A list of visited classes is also maintained and can be accessed and selected from. You may prepopulate it
from the conf file as:

    $visited.concat %w{Abbrev GC ARGF}

Pressing Alt-c ('ask-class') and type in any class or method or portion. If `ri` does not return data or returns
choices, a popup will allows selection of choices. If you have used the Alt-c already, pressing Alt-h inside the ask-class popup will show history of previous searches.

In the right window, pressing Alt-m will allow selection of methods from a popup. Space and ENTER select, use j/k/gg/G for navigation, or 'f' following by a char to go to the first or next method starting with that char. e.g. pressing 'fm' jumps to 'match' for String.

Search through the current window using "/". You may use "Alt-h" to access history (previous searches).

Browser style, one may backspace through earlier results, or use Alt-n and Alt-p  to go back and forth
between previous and next pages viewed.

Please get back to me if there are cases where it's unhelpful in finding the ridocs.


## Installation

    gem install rigel

## Usage

Ensure you have ri documentation working. On the command line you may do, "ri String". You should get documentation for the String class. If not proceed as follows:

To get ri documentation, you would do 

     rvm docs generate-ri

If you use any gems for development, e.g. highline or rbcurse-core, use the `--ri` flag while installing the gem (this assumes you've switched off ri and rdocs in your .gemrc).

This gem depends on 'canis' 

## Gem name

   The first two letters are for "ri", the name is that of a star.

   https://rubygems.org/gems/rigel

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
