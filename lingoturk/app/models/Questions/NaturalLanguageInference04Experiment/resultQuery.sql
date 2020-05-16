SELECT fileName, listNumber, assignmentId, hitId, workerId, origin, timestamp, partId, questionId, answer::TEXT, (data->>'index') as index, (data->>'sent') as sent, (data->>'sentence') as sentence, (data->>'sentence') as sentence, (data->>'statement') as statement, (data->>'statement') as statement, (data->>'n') as n, (data->>'source1') as source1, (data->>'visibility1') as visibility1, (data->>'source2') as source2, (data->>'visibility2') as visibility2, (data->>'source3') as source3, (data->>'visibility3') as visibility3, (data->>'sources') as sources, id FROM (
	(SELECT * FROM Results WHERE experimentType='NaturalLanguageInference04Experiment') as tmp1
	LEFT OUTER JOIN Questions USING (QuestionId)
	LEFT OUTER JOIN Groups USING (PartId)
) as tmp
WHERE LingoExpModelId = 181
ORDER BY partId, questionId, workerId