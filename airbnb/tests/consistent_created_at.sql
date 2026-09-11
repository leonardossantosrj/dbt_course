SELECT  
    r.listing_id,
    r.review_date,
    l.created_at 
FROM {{ref('fct_reviews')}} r
JOIN {{ref ('dim_listing_clean')}} l
    ON r.listing_id = l.listing_id
WHERE r.review_date <= l.created_at