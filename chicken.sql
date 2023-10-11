	--to preview data
--select * from
--hatch
--select * from
--lay

--	--join to see all data from 2 tables
--select * from
--lay
--right join hatch
--on lay.year = hatch.year

--select lay.year, imports  from
--lay
--right join hatch
--on lay.year = hatch.year


		--1 compare production to consumption *discludes military consumption due to years missing: will correct with avg military added to missing tiles in tableau
select year, Total_civilian_consumption, Total_egg_production
from lay

		--2 prices over the years
select year, Average_Price_of_Baby_Chicks_Per_100_Dollars
from hatch

		--3 get hatches by type
Select year, Chicks_Hatched_broiler_type, Chicks_hatched_egg_type, Chicks_hatched_all from hatch

		--4  years x hatched + egg production
Select lay.year, chicks_hatched_all, total_egg_production
from lay
right join hatch
on lay.year = hatch.year


	--5 get import export and chickens hatched (note: imports and exports are in dz.million)
Select lay.year, Chicks_hatched_all, imports, exports_and_shipments_to_territories
from lay
right join hatch
on lay.year = hatch.year

select *
from hatch