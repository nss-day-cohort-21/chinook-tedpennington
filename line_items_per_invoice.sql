SELECT InvoiceId, count(*) as LineItemsCount
FROM InvoiceLine
GROUP BY InvoiceId;

