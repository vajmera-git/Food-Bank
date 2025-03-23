BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES('Account-1','Sample Account for Entitlements','');
INSERT INTO "Account" VALUES('Account-2','Havmor','');
CREATE TABLE "Delivery__c" (
	id VARCHAR(255) NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES('Delivery__c-1','Deliver 30 waffles','2025-04-05T06:30:00.000+0000','Scheduled','Account-2');
INSERT INTO "Delivery__c" VALUES('Delivery__c-2','Deliver 10 Ice-creams','2025-03-28T06:30:00.000+0000','Scheduled','Account-2');
COMMIT;
