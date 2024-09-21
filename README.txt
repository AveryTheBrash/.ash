~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~        

        #.ASH LIBRARY IS MY HOBBY PROJECT! Cli ZSH.
        #Goal: Create tools and toys in an interlinked script.
        #Design: Easy to read code, segmented into a file directory
        #        so all objects and actions may be stored in a
        #        static text format.
        #Execute install.ash to install (WIP)   
        #Read .ashes/install.outline.ash for a loose install guide.
        
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    #Current libraries on my dev machine include:

        #OS Mint22, gnome-desktop, 
        #zsh,
        #oh-my-zsh,
        #powerlevel10k,  
        #distrobox, 
        #git,
       
    #Currently includes: 

        #Distrobox tools, manage containers and images
        #with speed and visual cues:

    #View distroboxes.
    # - db aliases and functions
    # - dbls list name of Distroboxes through distrobox ls
    # - dbln list names of Distroboxes in ~/.db/db.names.ash

    #Use dbc to create a container with an alias.
    # - dbc [IMAGE] [NAME] [ALIAS] [FLAGS] (E.g., dbc $mint MintBox mbox -r)
    # - dbe [NAME] (E.g., dbe $mbox)
    # - dbrm [NAME]

    #Use dbenum to view containers. Enter the container number.
    # - dbenum, opens menu of db names

        #.ANS Terminal Art Splashcreen, display .ANS
        #art on terminal every time ZSH runs.

    #ANS art:
    # - .ANS mist0524
    # - .ANS mist0624
    # - .ash ash library

    #PNG to ANS:
    # - https://dom111.github.io/image-to-ansi/

        #GIF backgrounds through VLC, display an animated
        #GIF behind all other applications.

    # - gifwall

    #Git push and pull system
    # - gush $name, push a repo
    # - gull $name, pull a repo
