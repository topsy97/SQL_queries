SELECT * FROM yrb_customer y1 WHERE y1.cid NOT IN (SELECT yp.cid FROM yrb_purchase yp)
