-- Tables 

CREATE TABLE BusinessDay (
	business_date datetime NOT NULL,
    PRIMARY KEY (business_date)
);

CREATE TABLE Holiday (
	business_date datetime NOT NULL,
    holiday_name varchar(50) NOT NULL,
    employeeID int(7) NOT NULL,
    date_added datetime NOT NULL,
    PRIMARY KEY (business_date)
);

CREATE TABLE AuditLog (
	employeeID_view_report int(7) NOT NULL,
    time_stamp datetime NOT NULL,
    report_name varchar(50) NOT NULL,
    employeeID_view_log int(7) NOT NULL,
    PRIMARY KEY (employeeID_VIEW_REPORT, time_stamp)
);

-- Constraints   Foreign Keys: FK_ChildTable_childColumn_ParentTable_parentColumn
  
ALTER TABLE Holiday
  ADD CONSTRAINT fk_Holiday_business_date_BusinessDay_business_date FOREIGN KEY (business_date) REFERENCES BusinessDay (business_date);
  
ALTER TABLE AuditLog
  ADD CONSTRAINT fk_AuditLog_User_employeeID FOREIGN KEY (employeeID_VIEW_REPORT) REFERENCES `User` (employeeID);