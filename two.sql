SELECT yc.name, num from yrb_customer yc, (SELECT cid, max(counted) as num  FROM(SELECT yc.cid, yc.name, yp.club, count(*) as counted FROM yrb_customer yc, yrb_purchase yp WHERE yc.cid = yp.cid GROUP BY yc.cid,yc.name, yp.club)sub GROUP BY cid) sub2 WHERE yc.cid = sub2.cid 


