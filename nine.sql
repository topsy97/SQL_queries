SELECT final.cid as cid, final.avg as avg_gap FROM(SELECT distinct maxandmin.cid,days(maxandmin.maximum)as large,days(maxandmin.minimum) as min,noofpur.mycount as counts,(days(maxandmin.maximum)-days(maxandmin.minimum))as diff,cast((cast((days(maxandmin.maximum)-days(maxandmin.minimum)) as decimal(7,2))/(noofpur.mycount-1))as decimal(7,2)) as avg FROM yrb_purchase yrbp,(SELECT yp.cid as cid, max(cast(yp.when as date))as maximum, min(cast(yp.when as date))as minimum from yrb_purchase yp group by cid)maxandmin,(SELECT cid,count (distinct cast(yp.when as date)) as mycount from yrb_purchase yp group by cid)noofpur WHERE noofpur.mycount>'1'AND yrbp.cid = maxandmin.cid AND yrbp.cid = noofpur.cid)final


