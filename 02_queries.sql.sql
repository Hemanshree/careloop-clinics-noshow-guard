
-- 1. Appointment status distribution
SELECT status, COUNT(*) AS total_appointments
FROM appointments
GROUP BY status;

-- 2. No-show rate by clinic
SELECT c.clinic_name,
       COUNT(*) AS total_appointments,
       SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END) AS no_shows,
       ROUND(100.0 * SUM(CASE WHEN a.status = 'No-Show' THEN 1 ELSE 0 END)
       / COUNT(*), 2) AS no_show_rate
FROM appointments a
JOIN clinics c ON a.clinic_id = c.clinic_id
GROUP BY c.clinic_id, c.clinic_name
ORDER BY no_show_rate DESC;

-- 3. No-show rate by booking channel
SELECT booking_channel,
       COUNT(*) AS total,
       ROUND(100.0 * AVG(CASE WHEN status = 'No-Show' THEN 1.0 ELSE 0 END), 2)
       AS no_show_rate
FROM appointments
GROUP BY booking_channel
ORDER BY no_show_rate DESC;

-- 4. No-show rate by reminder status
SELECT reminder_sent,
       COUNT(*) AS total,
       ROUND(100.0 * AVG(CASE WHEN status = 'No-Show' THEN 1.0 ELSE 0 END), 2)
       AS no_show_rate
FROM appointments
GROUP BY reminder_sent;

-- 5. No-show rate by previous no-show history
SELECT prior_no_shows,
       COUNT(*) AS total,
       ROUND(100.0 * AVG(CASE WHEN status = 'No-Show' THEN 1.0 ELSE 0 END), 2)
       AS no_show_rate
FROM appointments
GROUP BY prior_no_shows
ORDER BY prior_no_shows;

-- 6. Follow-up notes count
SELECT COUNT(*) AS total_followup_notes
FROM followup_notes;
