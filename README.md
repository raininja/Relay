# ![logo](https://cdn.rawgit.com/agronick/Relay/master/src/ui/relay.svg)  Relay 
*Created by Kyle Agronick <agronick@gmail.com>*
*D34dc0d3 rescued by denkijin <dandenkijin at gmail dot com>*

This is a fork of Relay, I have a TO-DO list 

- ~~asset management~~ 
- proper password field
- use side panel for settings/names list
- hiding side panels
- SSL connection, TLS certs
- reconnection after sleep
- toggle timestamps for messages
- proper colors for indicators
- SASL authentication
- modularization
- modify README.md 
- fix bug where nickname is not shown on successive messages, and misalignment
- handle various user commands such as /me /join correctly, do not sent to message tab, send to server tab
- handle unicode characters properly
- fix the topic, ?show topic in panel?
- ~~fix panel icons~~
- address colors of nicknames
- address warnings for deprecations in GTK/Vala code
- fix layout
- fix arrow events in text entry area, in main_entry.vala
- correct printing of unicode glyphs
- font chooser dialog 
- hardening
- remove or option-ate the hastebin code

This was a fun little project I made a few years ago. I don't have the time right now to maintain it. If anyone wants to take it over I'd be happy to give them access.

Relay is an IRC client that attemps to be small, quick, easy to use, elegant, and functional. 
The Github and Launchpad repos are mirrored. You can find up-to-date information about Relay on Launchpad and Github.

If Relay displays with a light interface please open up an issue and let me know what displays when you type
`echo $XDG_CURRENT_DESKTOP`. I will need to add some code to detect and load a suitable dark theme preloaded
in your distro.

![screenshot](http://bit.ly/1M6dYGZ)

* **Installation and Licensing**  
Please consult the `INSTALL` and `COPYING` files for more information.
If you would rather not install from source you can use the following
commands on a platform that uses apt-get:

```
    sudo apt-add-repository "ppa:agronick/relay"
    sudo apt-get update
    sudo apt-get install relay
```    

* **Website**  
The project's oficial website is https://poisonpacket.wordpress.com/relay/

* **Bugs**  
Please report bugs at https://github.com/agronick/Relay

* **Translations**  
To contribute translations please visit http://translations.launchpad.net/relay

* **Donations**  
If you want to support the project, please consider a donation at https://poisonpacket.wordpress.com/relay/

* **Further documentation**  
For more documentation visit https://poisonpacket.wordpress.com/relay/
