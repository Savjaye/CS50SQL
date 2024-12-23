SELECT episode_in_season, topic FROM episodes WHERE (episode_in_season % 2 = 0) AND topic LIKE '%_ata %';
