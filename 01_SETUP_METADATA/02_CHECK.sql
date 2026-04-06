SELECT *
FROM banking.metadata.tables;

SELECT *
FROM banking.metadata.table_parameters;

SELECT *
FROM banking.metadata.pipeline_runs 
ORDER BY start_time DESC;

SELECT *
FROM banking.metadata.table_parameters
WHERE table_id = 4;

SELECT t.table_name, table_parameters.parameter_value
FROM banking.metadata.tables t
LEFT JOIN banking.metadata.table_parameters
ON t.table_id = table_parameters.table_id
WHERE table_parameters.parameter_name='load_type';

SELECT *
FROM banking.metadata.table_watermarks;