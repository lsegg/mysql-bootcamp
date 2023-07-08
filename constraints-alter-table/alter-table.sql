ALTER TABLE companies
ADD COLUMN phone VARCHAR(15);
ALTER TABLE companies
ADD COLUMN employee_count INT NOT NULL DEFAULT 1;
ALTER TABLE companies DROP COLUMN phone;
RENAME TABLE companies TO suppliers;
-- same as
ALTER TABLE companies
  RENAME TO suppliers;
ALTER TABLE suppliers CHANGE biz_name business VARCHAR(50);
ALTER TABLE houses
ADD CONSTRAINT positive_pprice CHECK (purchase_price >= 0);
ALTER TABLE houses DROP CONSTRAINT positive_pprice;