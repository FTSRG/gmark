MATCH (x0)-[:previewer]->()-[:plike]->()<-[:plike]-()<-[:pemployee]-(x1), (x0)-[:previewer]->()-[:plike]->()<-[:plike]-()<-[:pemployee]-(x2), (x0)-[:previewer]->()-[:pfollows]->()<-[:pfollows]-()<-[:pemployee]-(x3), (x0)-[:previewer]->()-[:plike]->()<-[:plike]-()<-[:pcontactPoint]-(x4) RETURN DISTINCT x0, x1;