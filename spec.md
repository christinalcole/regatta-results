# Specifications for the CLI Assessment

Specs:
- [x] Have a CLI for interfacing with the application: created RegattaResults::CLI class; executable bin/regatta-results contains RegattaResults::CLI.new.call to launch interface
- [x] Pull data from an external source: gem scrapes data from 3 pages maintained by the Annapolis Yacht Club, http://www.annapolisyc.com/files/2016WNRSeries1.html, http://www.annapolisyc.com/files/2016WNRSeries2_751.html, http://www.annapolisyc.com/files/2016WNRSeries3_751.html
- [x] Implement both list and detail views: first level, displays 3 WNR series; second level, displays handicaps raced in the selected series; third level, displays boats racing under selected handicap; fourth level, displays series performance details of selected boat
