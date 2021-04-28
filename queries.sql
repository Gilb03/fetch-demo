-================================================-
-== BUSINESS QUERY 
-================================================-

SELECT r.rewardsReceiptStatus, r.purchasedItemCount, r.totalSpent
FROM receipts r 
INNER JOIN brands b ON r.id = b.id
ORDER BY b.BrandCode DESC;



-================================================-
-== DATA QUALITY QUERY 
-================================================-
 config {
     type: "receipts",
     assertions: {
         uniqueKey: ["userID"],
         nonNull: ["userID"]
     }
 }