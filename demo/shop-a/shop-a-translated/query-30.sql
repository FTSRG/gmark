WITH RECURSIVE c0(src, trg) AS ((SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = price AND s1.label = bookEdition  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = price AND s1.label = printSection  AND s2.label = printPage  AND s3.label = isbn  UNION SELECT s0.src, s3.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = price AND s1.label = contentRating  AND s2.label = contentRating  AND s3.label = contentRating )) , c1(src, trg) AS ((SELECT s0.src, s3.trg FROM edge s0, edge s1, edge s2, (SELECT trg as src, src as trg, label FROM edge) as s3 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s2.trg = s3.src AND s0.label = purchaseFor AND s1.label = author  AND s2.label = telephone  AND s3.label = contentRating )) , c2(src, trg) AS ((SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = price AND s1.label = contentSize  UNION SELECT s0.src, s2.trg FROM edge s0, edge s1, (SELECT trg as src, src as trg, label FROM edge) as s2 WHERE s0.trg = s1.src AND s1.trg = s2.src AND s0.label = purchaseFor AND s1.label = published  AND s2.label = keywords )) , c3(src, trg) AS ((SELECT s0.src, s1.trg FROM edge s0, (SELECT trg as src, src as trg, label FROM edge) as s1 WHERE s0.trg = s1.src AND s0.label = price AND s1.label = contentRating )) SELECT "true" FROM edge WHERE EXISTS (SELECT * FROM c0, c1, c2, c3 WHERE c0.src = c1.src AND c0.src = c2.src AND c0.src = c3.src);