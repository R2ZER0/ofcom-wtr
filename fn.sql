create or replace function safe_mod(a numeric, d numeric) returns numeric
returns null on null input immutable parallel safe
language sql as $$
         select mod(d + mod(a, d), d);
$$;

create or replace function degrees_within(a numeric, b numeric, range numeric) returns boolean
returns null on null input immutable parallel safe
language sql as $$
         select (180 - abs(abs(safe_mod(a, 360) - safe_mod(b, 360)) - 180)) <= range;
$$;
 
