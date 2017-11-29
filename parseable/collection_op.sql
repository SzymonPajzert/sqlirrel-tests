-- IN -- Membership test
SELECT * FROM ChirpMessages cm 
WHERE cm.user.lang IN ["en", "de"];

-- NOT IN -- Non-membership test
SELECT * FROM ChirpMessages cm 
WHERE cm.user.lang NOT IN ["en”];

-- EXISTS -- Check whether a collection is not empty
SELECT * FROM ChirpMessages cm 
WHERE EXISTS cm.referredTopics;

-- NOT EXISTS -- Check whether a collection is empty
SELECT * FROM ChirpMessages cm 
WHERE NOT EXISTS cm.referredTopics;
