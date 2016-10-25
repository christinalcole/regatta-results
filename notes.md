revised CLI:

type "regatta-results"

get greeting (e.g., "here are the 2106 AYC Wednesday Night Race Series:")
1. April 27 - June 1	WNR Series 1
2.  June 8 - July 20	WNR Series 2
3.  July 27 - Aug 31	WNR Series 3

"For which series would you like to see the PHRF 1 results?"
user enters series, is prompted for second-level details:
"the following boats raced under PHRF 1.  Select the boat to see its standings in the series:"
user enters boat name (sail number?), gem returns third-level detailed view of boat's overall standings in the series (no individual race/heat results)

Scraper class instantiates a Boat; third-level view is of Boat attributes

Boat attributes: overall_position, sail_number, name, raceX_standing (e.g, 1-2-3-etc), total_points


misc scraping notes:

address: http://www.annapolisyc.com/files/2016WNRSeries1.html
to get handicap: doc.css("p.divisionheader a").first #-> Alberg 30
to get table of standings: 

<!-- preferred CLI:

type "regatta-results"

get greeting (e.g., "here are the 2016 regattas hosted/sponsored (?) by AYC:")
1. Jan. 1	Hangover Bowl
2. Jan 31 - Mar 20	Frostbite - Second Half
3. April 23	Spring One Design Regatta
4. April 27 - June 1	WNR Series 1
5. May 14	Spring Harbor Regatta
etc

for which race would you like details?  enter number/date/name
user enters race, prompts for second-level details:
"the following divisions were scored in #{race.name}.  which division results would you like to see" -- option for all?

user enters division name/number, gives second-level details:
"select a series (1, 2, 3, 4, 5) for finish order, finish time, etc"
user enters series number, finds third-level details (individual times for that particular race) -->

UI, AYC site:
Results -(URL change/new page)->handicap (e.g., PHRF 1) -(URL chg/same page)-> series standing (overall) -(URL chg/new page)-> individual race finish times

user: 1. picks race
      2. picks handicap/division
      3. picks individual race in series, if applicable
      4. views individual race results

each regatta has: name, URL (new), division(s), date/time scored, number_of_races scored, number_of_boats(?)
each division has: name, URL (bookmarked), overall_standing, race(s), notes
each race has: name(number), URL (new) standings (finish time, etc), details (date/time scored, course length)

#future option?: each boat has: overall_standing in series, finish time in race

future notes: Regattas have many Boats; Boats have one Handicap; Regatta has many Handicaps through Boats; Boats have many Regattas (Races?) through Handicaps
