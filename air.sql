SELECT 
	date_trunc('day', fli.scheduled_departure) as date_dep,
	air_d.model['en'] AS model2,
	air_d.aircraft_code,
	tic.ticket_no,
	tic_f.amount
FROM
	tickets AS tic
LEFT JOIN
		ticket_flights AS tic_f
		ON tic.ticket_no = tic_f.ticket_no
LEFT JOIN
		flights AS fli
		ON tic_f.flight_id = fli.flight_id
LEFT JOIN
		aircrafts_data AS air_d
		ON fli.aircraft_code = air_d.aircraft_code