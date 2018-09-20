
(SELECT DISTINCT yo.title FROM yrb_offer yo WHERE NOT Exists( SELECT yc.club FROM yrb_club yc WHERE NOT Exists( SELECT yo1.title FROM yrb_offer yo1 WHERE yo1.title = yo.title AND yo1.club = yc.club AND yo1.year = yo.year)))

