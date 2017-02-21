#!/bin/sh
set -e
set -x
mkdir mytmp
cd mytmp
wget http://download.microsoft.com/download/E/6/7/E675FFFC-2A6D-4AB0-B3EB-27C9F8C8F696/PowerPointViewer.exe
cabextract -L -F ppviewer.cab PowerPointViewer.exe
cabextract -L -F 'CONSOL*.TTF' ppviewer.cab
