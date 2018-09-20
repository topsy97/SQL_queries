SELECT Cast(avg( prices) as decimal(5,2))as avg_cost FROM (SELECT cat, min(price) as prices FROM yrb_book yb, yrb_offer yo WHERE yb.title = yo.title AND yb.year = yo.year GROUP BY cat)
