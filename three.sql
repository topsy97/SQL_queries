SELECT yc.title, other.year, yc.cat FROM yrb_book yc,(SELECT min(yb.year) as year, yb.cat FROM yrb_book yb GROUP BY yb.cat) other WHERE yc.cat = other.cat AND yc.year = other.year


