-- Clears application data (NOT schema) for CertiAI.
-- WARNING: This permanently deletes ALL users, verifications, and audit logs.
-- Intended for dev/staging resets.

BEGIN;

TRUNCATE TABLE
  public.verifications,
  public.audit_logs,
  public.users
RESTART IDENTITY
CASCADE;

COMMIT;
