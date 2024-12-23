
-- *** The Lost Letter ***
SELECT address, type FROM addresses WHERE id IN (
    SELECT address_id FROM scans WHERE id IN (
        SELECT id FROM scans WHERE package_id = (
            SELECT id FROM packages WHERE from_address_id =(
                SELECT id FROM addresses WHERE address = '900 Somerville Avenue'
            )
        )
    )
);
-- *** The Devious Delivery ***
SELECT addresses.type, contents
FROM addresses JOIN (SELECT scans.address_id, contents
FROM scans JOIN packages ON scans.package_id = packages.id
WHERE packages.from_address_id IS NULL) AS t1 ON addresses.id = t1.address_id;

-- *** The Forgotten Gift ***
SELECT name, contents, timestamp FROM drivers JOIN (
    SELECT driver_id, contents, timestamp
    FROM scans JOIN (
        SELECT id, contents FROM packages WHERE to_address_id = (
            SELECT id FROM addresses WHERE address = '728 Maple Place'
        )
    ) AS t1 ON scans.package_id = t1.id) AS t2 ON drivers.id = t2.driver_id
;

