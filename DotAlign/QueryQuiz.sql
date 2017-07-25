-- QUESTION ONE: lists of each domain in system
SELECT d.UrlText
FROM Domain d
WHERE 1 = 1

-- QUESTION TWO: lists of each email along with owner's name
SELECT e.AddressText, p.Name
FROM 	EmailAddress e,
		Person p
WHERE 1 = 1
	AND e.PersonId = p.Id


-- QUESTION THREE: lists each domain and total number of emails sent ...

--Query 1 filters All Participants to To, CC and BCC

SELECT 	p.Id, p.EmailAddressId, p.MessageId, pt.Type
FROM 	Participant p,
		ParticipantType pt
INTO #Temp1
WHERE 1 = 1
	AND p.ParticipantTypeId = pt.Id
	AND pt.Type IN ("To", "CC", "BCC")


--Query 2 join URLText to All emails

SELECT e.Id, d.UrlText
FROM EmailAddress e,
Domain d
INTO #Temp1
WHERE 1 = 1
AND e.DomainId = d.Id

--Query 3 join both temp tables and count by domain url texts 
-- and order by number of emails descending

SELECT t2.UrlText, COUNT (t1.Id)
FROM 	#Temp1 t1,
		#Temp2 t2
WHERE 1 = 1
	AND t1.EmailAddressId = t2.Id
GROUP BY t2.UrlText
ORDER BY COUNT (t1.Id) DESC;
