https://platform.stratascratch.com/coding/10166-reviews-of-hotel-arena?code_type=5

select hotel_name, reviewer_score, count(*) as no_of_rows 
from hotel_reviews
where hotel_name = 'Hotel Arena'
group by hotel_name, reviewer_score
