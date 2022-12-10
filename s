CREATE TABLE "product" ("id" SERIAL NOT NULL, "description" character varying NOT NULL, CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY ("id"));
CREATE TABLE "order" ("id" uuid NOT NULL, CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY ("id"));
CREATE TABLE "order_products_product" ("orderId" uuid NOT NULL, "productId" integer NOT NULL, CONSTRAINT "PK_59f5d41216418eba313ed3c7d7c" PRIMARY KEY ("orderId", "productId"));
ALTER TABLE "order_products_product" ADD CONSTRAINT "FK_1f9ea0b0e59e0d98ade4f2d5e99" FOREIGN KEY ("orderId") REFERENCES "order"("id") ON DELETE CASCADE;
ALTER TABLE "order_products_product" ADD CONSTRAINT "FK_d6c66c08b9c7e84a1b657797dff" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE CASCADE;

ALTER TABLE "order_products_product" DROP CONSTRAINT "FK_d6c66c08b9c7e84a1b657797dff";

ALTER TABLE "product" DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
ALTER TABLE "product" DROP COLUMN "id"
  ALTER TABLE "product" ADD "id" uuid NOT NULL DEFAULT uuid_generate_v4();

ALTER TABLE "product" ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY ("id");

ALTER TABLE "order_products_product" DROP CONSTRAINT "PK_59f5d41216418eba313ed3c7d7c";

ALTER TABLE "order_products_product" ADD CONSTRAINT "PK_1f9ea0b0e59e0d98ade4f2d5e99" PRIMARY KEY ("orderId");

ALTER TABLE "order_products_product" DROP COLUMN "productId";

ALTER TABLE "order_products_product" ADD "productId" uuid NOT NULL;

ALTER TABLE "order_products_product" DROP CONSTRAINT "PK_1f9ea0b0e59e0d98ade4f2d5e99";

ALTER TABLE "order_products_product" ADD CONSTRAINT "PK_59f5d41216418eba313ed3c7d7c" PRIMARY KEY ("orderId" "productId");

ALTER TABLE "order_products_product" ADD CONSTRAINT "FK_d6c66c08b9c7e84a1b657797dff" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE CASCADE
    
  
ALTER TABLE "order_products_product" DROP CONSTRAINT "FK_d6c66c08b9c7e84a1b657797dff"

ALTER TABLE "order_products_product" DROP CONSTRAINT "PK_59f5d41216418eba313ed3c7d7c"

ALTER TABLE "order_products_product" ADD CONSTRAINT "PK_1f9ea0b0e59e0d98ade4f2d5e99" PRIMARY KEY ("orderId")

ALTER TABLE "order_products_product" DROP COLUMN "productId"

ALTER TABLE "order_products_product" ADD "productId" integer NOT NULL
ALTER TABLE "order_products_product" DROP CONSTRAINT "PK_1f9ea0b0e59e0d98ade4f2d5e99"
ALTER TABLE "order_products_product" ADD CONSTRAINT "PK_59f5d41216418eba313ed3c7d7c" PRIMARY KEY ("orderId" "productId")
ALTER TABLE "product" DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82"
ALTER TABLE "product" DROP COLUMN "id"
ALTER TABLE "product" ADD "id" SERIAL NOT NULL
ALTER TABLE "product" ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY ("id")
ALTER TABLE "order_products_product" ADD CONSTRAINT "FK_d6c66c08b9c7e84a1b657797dff" FOREIGN KEY ("productId") REFERENCES "product"("id") ON DELETE CASCADE ON UPDATE NO ACTION
CREATE TABLE "employee" ("id" SERIAL NOT NULL, "firstName" character varying(100) NOT NULL, "middleName" character varying(100), "lastName" character varying(100) NOT NULL, "secondLastName" character varying(100), "displayName" character varying(100), "companyEmail" character varying(50) NOT NULL DEFAULT '', "personalEmail" character varying(50) DEFAULT '', "birthdate" TIMESTAMP, "startDate" TIMESTAMP NOT NULL, "address" character varying(200), "phoneNumber" character varying(100), "bankName" character varying(100), "accountNumber" character varying(100), "gender" character varying, "tags" json NOT NULL DEFAULT '{}', "country" character varying(100) NOT NULL, "region" character varying(100) NOT NULL, "city" character varying(100) NOT NULL, "effectiveDate" TIMESTAMP NOT NULL, "salary" numeric NOT NULL, "salaryType" character varying NOT NULL, "isActive" boolean NOT NULL DEFAULT true, "workingHoursPerWeek" integer NOT NULL DEFAULT 40, CONSTRAINT "PK_3c2bc72f03fd5abbbc5ac169498" PRIMARY KEY ("id"))
CREATE INDEX "IDX_1f9ea0b0e59e0d98ade4f2d5e9" ON "order_products_product" ("orderId") 
CREATE INDEX "IDX_d6c66c08b9c7e84a1b657797df" ON "order_products_product" ("productId") 
DROP INDEX "IDX_d6c66c08b9c7e84a1b657797df"
DROP INDEX "IDX_1f9ea0b0e59e0d98ade4f2d5e9"
DROP TABLE "employee"


