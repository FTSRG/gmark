MATCH (x0)-[:pcontentSize]->()<-[:pmovement]-()-[:pperformer]->()<-[:pjobTitle]-(x1), (x0)-[:pkeywords]->()<-[:purl]-(x2), (x1)-[:pdescription]->()<-[:pdescription]-()-[:pcaption]->()<-[:purl]-(x3) RETURN DISTINCT x0, x1;