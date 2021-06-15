                gnt analysis for Cadence Virtuoso


What is it?
-----------
This tool integrates Middlebrook's General Network Theorem (GNT) and its
descendants, the General Feedback Theorem (GFT), Extra Element Theorem (EET) and
Chain Theorem (CT) as a new analysis for Spectre/APS in Cadence Virtuoso's ADE L
and ADE XL. Multiple transfer function can be considered in one pass (MIMO support).
Arbitrary nesting of analyses is possible. Analyze multiple-loop feedback circuits
by calculating the total Mason's loop gain.


If you encounter a bug, please add an issue to the public issue tracker at

https://bitbucket.org/analogdesign/gnt/issues?status=new&status=open

Alternatively, send us an email. See the Contact section.


The latest version
-------------------
The latest version can be found at http://www.analogdesign.be.

In Virtuoso's CIW, run GNTCheckForUpdates() to automatically check for updates
(you need internet connectivity).

Run GNTGetReleaseName() to find out the installed release.


Installation
------------
  
* Prerequisites

  Cadence Virtuoso IC 6.1.6 ISR 1 or higher. Virtuoso IC 6.1.5 is supported with minor
  GUI degradation.
  Any reasonably recent MMSIM version.

* Installation procedure

  1. untar the archive to a directory, say <gntpath>: 
     cd <gntpath>
     tar xzvf gnt-IC6.1-0.2-0-gdc70455-43.tar.gz

  2. add the following to your .cdsinit file (replace <gntpath> with the correct path):
     
     load( "<gntpath>/IDGNTLoader.ile" )

  3. add the gnt library to your libraries:
     add the following line to cds.lib (replace <gntpath> with the correct path)

     DEFINE gnt <gntpath>/library/OA

     Alternatively, you can start Virtuoso and run GNTCreateLibrary() in the CIW.

* Check for correct installation. Start Virtuoso, in the CIW you should see messages similar to

    GNT: release gnt-IC6.1-0.2-0-gdc70455-43
    GNT: for terms of usage, see <gntpath>/LICENSE.txt
    GNT: this release is tested on the following Virtuoso versions: ((6 1 6 500 1))
    GNT: this release is tested on current Virtuoso version (6 1 6 500 1)
    GNT: run GNTCheckForUpdates() in the CIW to check for updates 
    
    Check for correct functionality by opening one of the examples in the gnt
    library and loading a Spectre state in ADE L.

* Debug mode: you can obtain more runtime information by typing 
    __gnt_info_level = 3
    in the CIW or by adding it to .cdsinit.

Releases are named gnt-<IC version>-<release version>-<build string>.tar.gz
E.g. gnt-IC6.1-0.2-0-gdc70455-43.tar.gz

  
Getting started & documentation
-------------------------------
A getting started document is included in the archive.
Further documentation is available at http://www.analogdesign.be.


Licensing
---------
Please see the file called LICENSE.txt.


Contact
-------

For further information, contact the authors:
  bart.moeneclaey@analogdesign.be
  jochen.verbrugghe@analogdesign.be 


That's all folks!
