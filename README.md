# usgsNWISfloodtracker
Searches through discharge data from USGS NWIS to retrieve flood dates

<h1>How to use</h1>
In order to use the floodTracker.sh script you need to first obtain data tab seperated data from nwis, an example is as such
<a href=https://waterdata.usgs.gov/nwis/dv?cb_00060=on&format=rdb&site_no=03297900&referred_module=sw&period=&begin_date=2016-05-07&end_date=2017-05-07>https://waterdata.usgs.gov/nwis/dv?cb_00060=on&format=rdb&site_no=03297900&referred_module=sw&period=&begin_date=2016-05-07&end_date=2017-05-07</a>

Script can be run against multiple files

<h3>Command</h3>
bash floodTracker.sh [FileNames]

<h4>For ie.</h4>
bash floodTracker.sh USGS*.txt

<h3>Output</h3>
Creates a file called flooddate.txt that contains the filename, max discharge date, and max discharge amount from every file the script is used against
