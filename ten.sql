SELECT newtable.title, newtable.year FROM(SELECT title, year, weight FROM yrb_book ORDER BY weight DESC ) newtable LIMIT 1 OFFSET 21



