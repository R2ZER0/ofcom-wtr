copy wtr ("Lic No", "Licensee", "Product","Publish_Flag","Trade_Flag","Issue Date", "lic status", "Latitiude", "Longitude", "NGR", "TX/Rx", "Freq", "Channel_Width", "Height", "Max Radiated Power ERP", "Antenna Type", "Gain", "Azimuth", "An Code H", "An Code V", "Antenna Height", "Antenna Location", "EFL_UPPER_LOWER", "Ant Elevation", "Ant Polarisation", "Antenna Name", "Ant Feeding Loss", "Fade Margin", "EMI Code", "Area Code/Country", "thing") FROM '/data/WTR-Register-Report-12012018.csv' csv header delimiter ',' quote '"';

update wtr set "Area Code/Country" = "thing" where thing<>'';
update wtr set thing=NULL;

create index on wtr ("TX/Rx", "Azimuth");

create view data as select id, "Freq" as f, "Azimuth" as a, "Latitiude" as lat, "Longitude" as lon, "Product" as product, "Channel_Width" a
s cw, "Gain" as g from wtr;
