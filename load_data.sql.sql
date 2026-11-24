-- CareLoop database schema

CREATE TABLE "appointments" (
"appointment_id" TEXT,
  "patient_id" TEXT,
  "clinic_id" TEXT,
  "booked_on" TEXT,
  "appt_date" TEXT,
  "age" REAL,
  "gender" TEXT,
  "distance_km" REAL,
  "fee_inr" INTEGER,
  "booking_channel" TEXT,
  "visit_type" TEXT,
  "reminder_sent" TEXT,
  "prior_no_shows" INTEGER,
  "status" TEXT
);

CREATE TABLE "clinics" (
"clinic_id" TEXT,
  "clinic_name" TEXT,
  "city" TEXT,
  "tier" TEXT,
  "latitude" REAL,
  "longitude" REAL
);

CREATE TABLE "followup_notes" (
"note_id" TEXT,
  "appointment_id" TEXT,
  "note_text" TEXT
);

CREATE INDEX idx_appt_clinic ON appointments(clinic_id);

CREATE INDEX idx_appt_patient ON appointments(patient_id);

CREATE INDEX idx_followup_appt ON followup_notes(appointment_id);

