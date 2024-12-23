SELECT schools.name FROM districts LEFT JOIN schools ON districts.id = schools.district_id WHERE districts.name = 'Cambridge';
