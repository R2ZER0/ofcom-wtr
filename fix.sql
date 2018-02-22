update wtr set "Area Code/Country" = "thing" where thing<>'';
update wtr set thing=NULL;

create index on wtr ("TX/Rx", "Azimuth");

create view data as select id, "Freq" as f, "Azimuth" as a, "Latitiude" as lat, "Longitude" as lon, "Product" as product, "Channel_Width" a
s cw, "Gain" as g from wtr;
