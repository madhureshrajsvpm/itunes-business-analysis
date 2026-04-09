-- RETRIEVING INSIGHTS REGARDING EVERY COLUMN FROM ALL DATASETS --
select
	table_name,
    column_name,
    data_type,
    is_nullable,
    column_key
from information_schema.columns
where table_schema = 'itunes_analysis'
order by table_name, ordinal_position;

alter table itunes_analysis.artist
change column `ï»¿artist_id` artist_id int;

alter table itunes_analysis.customer
change column `ï»¿customer_id` customer_id int;

alter table itunes_analysis.employee
change column `ï»¿employee_id` employee_id int;

alter table itunes_analysis.genre
change column `ï»¿genre_id` genre_id int;

alter table itunes_analysis.invoice
change column `ï»¿invoice_id` invoice_id int;

alter table itunes_analysis.invoice_line
change column `ï»¿invoice_line_id` invoice_line_id int;

alter table itunes_analysis.media_type
change column `ï»¿media_type_id` media_type_id int;

alter table itunes_analysis.media_type
change column `ï»¿media_type_id` media_type_id int;

alter table itunes_analysis.playlist
change column `ï»¿playlist_id` playlist_id int;

alter table itunes_analysis.playlist_track
change column `ï»¿playlist_id` playlist_id int;

alter table itunes_analysis.playlist_track
change column `ï»¿playlist_id` playlist_id int;

select
	table_name,
    column_name,
    data_type,
    is_nullable,
    column_key
from information_schema.columns
where table_schema = 'itunes_analysis'
order by table_name, ordinal_position;

select 
	sum(case when album_id is null or album_id = '' then 1 else 0 end) as null_album_id,
    sum(case when title is null or title = '' then 1 else 0 end) as null_title,
    sum(case when artist_id is null or artist_id = '' then 1 else 0 end) as null_artist_id
from itunes_analysis.album;

select 
	sum(case when artist_id is null  or artist_id = '' then 1 else 0 end) as null_artist_id,
    sum(case when `name` is null or `name` = '' then 1 else 0 end) as null_name
from itunes_analysis.artist;

select 
	sum(case when customer_id is null or customer_id = '' then 1 else 0 end) as null_customer_id,
    sum(case when first_name is null or first_name = '' then 1 else 0 end) as null_first_name,
    sum(case when last_name is null or last_name = ''  then 1 else 0 end) as null_last_name,
    sum(case when company is null  or company = '' then 1 else 0 end) as null_company,
    sum(case when address is null or address = '' then 1 else 0 end) as null_address,
    sum(case when city is null or city = ''  then 1 else 0 end) as null_city,
    sum(case when state is null or state = ''  then 1 else 0 end) as null_state,
    sum(case when country is null or country = ''  then 1 else 0 end) as null_country,
    sum(case when postal_code is null or postal_code = ''  then 1 else 0 end) as null_postal_code,
    sum(case when phone is null or phone = ''  then 1 else 0 end) as null_phone,
    sum(case when fax is null or fax = ''  then 1 else 0 end) as null_fax,
    sum(case when email is null or email = ''  then 1 else 0 end) as null_email,
    sum(case when support_rep_id is null or support_rep_id = ''  then 1 else 0 end) as null_support_rep_id
from itunes_analysis.customer;

select 
	sum(case when employee_id is null or employee_id = '' then 1 else 0 end) as null_employee,
    sum(case when first_name is null or first_name = '' then 1 else 0 end) as null_first_name,
    sum(case when last_name is null or last_name = '' then 1 else 0 end) as null_last_name,
    sum(case when title is null or title = '' then 1 else 0 end) as null_title,
    sum(case when reports_to is null or reports_to = '' then 1 else 0 end) as null_reports_to,
    sum(case when levels is null or levels = '' then 1 else 0 end) as null_levels,
    sum(case when birthdate is null or birthdate = '' then 1 else 0 end) as null_birthdate,
	sum(case when hire_date is null or hire_date = '' then 1 else 0 end) as null_hire_date,
    sum(case when address is null or address = '' then 1 else 0 end) as null_address,
    sum(case when city is null or city = '' then 1 else 0 end) as null_city,
    sum(case when state is null or state = '' then 1 else 0 end) as null_state,
    sum(case when country is null or country = '' then 1 else 0 end) as null_country,    
    sum(case when postal_code is null or postal_code = '' then 1 else 0 end) as null_postal_code,
    sum(case when phone is null or phone = '' then 1 else 0 end) as null_phone,
    sum(case when fax is null or fax = '' then 1 else 0 end) as null_fax,
    sum(case when email is null  or fax ='' then 1 else 0 end) as null_email
from itunes_analysis.employee;

select
	sum(case when genre_id is null or genre_id = '' then 1 else 0 end) as null_genre_id,
    sum(case when `name` is null or `name` = ''  then 1 else 0 end) as null_name
from itunes_analysis.genre;

select 
	sum(case when invoice_id is null or invoice_id = ''  then 1 else 0 end) as null_invoice_id,
    sum(case when customer_id is null or customer_id = ''  then 1 else 0 end) as null_customer_id,
    sum(case when invoice_date is null or invoice_date = ''  then 1 else 0 end) as null_invoice_date,
    sum(case when billing_address is null or billing_address = '' then 1 else 0 end) as null_billing_address,
    sum(case when billing_city is null or billing_city = ''  then 1 else 0 end) as null_billing_city,
    sum(case when billing_state is null or billing_state = ''  then 1 else 0 end) as null_billing_state,
    sum(case when billing_country is null or billing_country = ''  then 1 else 0 end) as null_billing_country,
	sum(case when billing_postal_code is null or billing_postal_code = ''  then 1 else 0 end) as null_billing_postal_code,
    sum(case when total is null or total = ''  then 1 else 0 end) as null_total
from itunes_analysis.invoice;

select 
	sum(case when invoice_line_id is null or invoice_line_id = ''  then 1 else 0 end) as null_invoice_line_id,
    sum(case when invoice_id is null  or invoice_id = ''  then 1 else 0 end) as null_invoice_id,
    sum(case when track_id is null  or track_id = ''   then 1 else 0 end) as null_track_id,
    sum(case when unit_price is null  or unit_price = ''   then 1 else 0 end) as null_unit_price,
    sum(case when quantity is null or quantity = '' then 1 else 0 end) as null_quantity
from itunes_analysis.invoice_line;

select
	sum(case when media_type_id is null  or media_type_id = '' then 1 else 0 end) as null_media_type_id,
    sum(case when `name` is null  or `name` = '' then 1 else 0 end) as null_name
from itunes_analysis.media_type;

select
	sum(case when playlist_id is null  or playlist_id = '' then 1 else 0 end) as null_playlist_id,
    sum(case when `name` is null or `name` = '' then 1 else 0 end) as null_name
from itunes_analysis.playlist;

select
	sum(case when playlist_id is null or playlist_id = '' then 1 else 0 end) as null_playlist_id,
    sum(case when track_id is null or track_id = '' then 1 else 0 end) as null_track_id
from itunes_analysis.playlist_track;

select 
	sum(case when track_id is null  or track_id = '' then 1 else 0 end) as null_track_id,
    sum(case when `name` is null or `name` = '' then 1 else 0 end) as null_name,
    sum(case when album_id is null  or album_id = '' then 1 else 0 end) as null_album_id,
    sum(case when media_type_id is null or media_type_id = '' then 1 else 0 end) as null_media_type_id,
    sum(case when genre_id is null or genre_id = '' then 1 else 0 end) as null_genre_id,
    sum(case when composer is null or composer = '' then 1 else 0 end) as null_composer,
    sum(case when milliseconds is null or milliseconds = '' then 1 else 0 end) as null_milliseconds,
	sum(case when bytes is null or bytes = '' then 1 else 0 end) as null_bytes,
    sum(case when unit_price is null or unit_price = '' then 1 else 0 end) as null_unit_price
from itunes_analysis.track;

-- CHECKING FOR DUPLICATES IN CERTAIN COLUMNS --

select invoice_id, count(*) as count
from itunes_analysis.invoice
group by invoice_id
having count >1;

select invoice_line_id, count(*) as count
from itunes_analysis.invoice_line
group by invoice_line_id
having count >1;

select customer_id, count(*) as count
from itunes_analysis.customer
group by customer_id
having  count >1;

select  track_id, count(*) as count
from itunes_analysis.track
group by track_id
having count >1;

select artist_id, count(*) as count
from itunes_analysis.artist
group by artist_id
having count >1;

select album_id, count(*) as count
from itunes_analysis.album
group by album_id
having count >1;

select genre_id, count(*) as count
from itunes_analysis.genre
group by genre_id
having count >1;

select employee_id, count(*) as count
from itunes_analysis.employee
group by employee_id
having count >1;

select playlist_id, track_id, count(*) as count
from itunes_analysis.playlist_track
group by playlist_id, track_id
having count >1;

-- TOTAL REVENUE GENERATED --
select
	round(sum(total), 2) as total_revenue,
    count(invoice_id) as total_invoices,
    round(avg(total), 2) as avg_invoices_value,
    round(min(total), 2) as min_invoice_value,
    round(max(total), 2) as max_invoice_value
from itunes_analysis.invoice;


-- FINDING POPULAR GENRE--
select 
	g.name as genre,
	count(il.invoice_line_id) as  tracks_sold,
	round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.genre g
join itunes_analysis.track t on g.genre_id = t.genre_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by g.genre_id, g.name
order by tracks_sold desc;

select 
	g.name as genre,
	count(il.invoice_line_id) as  tracks_sold,
	round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.genre g
join itunes_analysis.track t on g.genre_id = t.genre_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by g.genre_id, g.name
order by tracks_sold asc;

-- FINDING POPULAR TRACK--
select
	t.name as track,
    g.name as genre,
    ar.name as artist,
    count(il.invoice_line_id) as times_purchased,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.track t
join itunes_analysis.invoice_line il on t.track_id = il.track_id
join itunes_analysis.genre g on t.genre_id = g.genre_id
join itunes_analysis.album al on t.album_id = al.album_id
join itunes_analysis.artist ar on al.artist_id = ar.artist_id
group by t.track_id, t.name, g.name, ar.name
order by times_purchased desc
limit 10;

select
    t.name as track,
    g.name as genre,
    ar.name as artist
from itunes_analysis.track t
left join itunes_analysis.invoice_line il on t.track_id = il.track_id
join itunes_analysis.genre g on t.genre_id = g.genre_id
join itunes_analysis.album al on t.album_id = al.album_id
join itunes_analysis.artist ar on al.artist_id = ar.artist_id
where il.track_id is null
order by ar.name;

select count(t.track_id) as total_never_purchased
from itunes_analysis.track t
left join itunes_analysis.invoice_line il on t.track_id = il.track_id
where il.track_id is null;

-- FINDING POPULAR ARTIST--
select
	ar.name as artist,
    count(il.invoice_line_id) as tracks_sold,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.artist ar
join itunes_analysis.album al on ar.artist_id = al.artist_id
join itunes_analysis.track t on al.album_id = t.album_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by ar.artist_id, ar.name
order by tracks_sold desc;

select
	ar.name as artist,
    count(il.invoice_line_id) as tracks_sold,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.artist ar
join itunes_analysis.album al on ar.artist_id = al.artist_id
join itunes_analysis.track t on al.album_id = t.album_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by ar.artist_id, ar.name
having tracks_sold = 1
order by ar.name;

select count(*) as total_artists_1_track_sold
from ( 
	select ar.artist_id
    from itunes_analysis.artist ar
    join itunes_analysis.album al on ar.artist_id =  al.artist_id
    join itunes_analysis.track t on al.album_id = t.album_id
    join itunes_analysis.invoice_line il on t.track_id = il.track_id
    group by ar.artist_id, ar.name
    having count(il.invoice_line_id) = 1
) as least_popular;

-- EVALUATING SALES PERFORMANCE BY EMPLOYEES--
select
	e.employee_id,
    concat(e.first_name, ' ', e.last_name) as employee_name,
    e.title,
    count(distinct c.customer_id) as total_customers,
    count(i.invoice_id) as tota_invoices,
    round(sum(i.total), 2) as total_revenue,
    round(avg(i.total), 2) as avg_invoice_value
from itunes_analysis.employee e
join itunes_analysis.customer c on e.employee_id = c.support_rep_id
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by e.employee_id, e.first_name, e.last_name, e.title
order by total_revenue desc;

-- PERFORMANCE BY REGION --
select
	c.country,
    c.city,
    count(distinct c.customer_id) as total_customers,
    count(i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as total_revenue,
    round(avg(i.total), 2) as avg_invoice_value,
    round(sum(i.total) / count(distinct c.customer_id), 2) as revenue_per_customer
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.country, c.city
order by total_revenue desc;

select
	c.country,
    c.city,
    count(distinct c.customer_id) as total_customers,
    count(i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as total_revenue,
    round(avg(i.total), 2) as avg_invoice_value,
    round(sum(i.total) / count(distinct c.customer_id), 2) as revenue_per_customer
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.country, c.city
order by total_revenue asc;


-- ANALYZING REVENUE TRENDS ACROSS TIME--
select invoice_date
from itunes_analysis.invoice;

update itunes_analysis.invoice
set invoice_date = str_to_date(invoice_date, '%Y-%m-%d %H:%i');

select invoice_date
from itunes_analysis.invoice;

describe itunes_analysis.invoice;

alter table itunes_analysis.invoice
modify column invoice_date datetime;

select
	invoice_date,
    date_format(invoice_date, '%Y-%m-%d') as formatted_date,
    year(invoice_date) as year,
    month(invoice_date) as month
    from itunes_analysis.invoice;
    
select
	year(invoice_date) as year,
    count(invoice_id) as total_invoices,
    round(sum(total), 2) as total_revenue,
    round(avg(total), 2) as avg_invoice_value
from itunes_analysis.invoice
group by year(invoice_date)
order by year;

select
	year(invoice_date) as year,
    quarter(invoice_date) as quarter,
    concat('q', quarter(invoice_date), ' ', year(invoice_date)) as quarter_label,
    count(invoice_id) as total_invoices,
    round(sum(total), 2) as total_revenue,
    round(avg(total), 2) as avg_invoice_value
from itunes_analysis.invoice
group by year(invoice_date), quarter(invoice_date), concat('q', quarter(invoice_date), ' ', year(invoice_date))
order by year, quarter;

-- PERFORMANCE BASED ON MEDIA TYPE--alter--
select
	mt.name as media_type,
    count(distinct t.track_id) as total_tracks,
    count(il.invoice_line_id) as total_purchases,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue,
    round(avg(il.unit_price * il.quantity), 2) as avg_revenue_per_purchase
from itunes_analysis.media_type mt
join itunes_analysis.track t on mt.media_type_id = t.media_type_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by mt.media_type_id, mt.name
order by total_revenue desc;

-- CUSTOMERS THAT SPENT THE MOST MONEY-- 
select
	c.customer_id,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    c.email,
    c.country,
    c.city,
    count(distinct i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as total_spent,
    round(avg(i.total), 2) as abg_invoice_value
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.customer_id, c.first_name, c.last_name, c.email, c.country, c.city
order by total_spent desc;

-- AVERAGE CUSTOMER LIFETIME VALUE --
select
	round(avg(total_spent), 2) as avg_customer_lifetime_value,
    round(max(total_spent), 2) as highest_customer_value,
    round(min(total_spent), 2) as lowest_customer_value,
    round(avg(total_invoices), 2) as avg_invoices_per_customer,
    round(avg(avg_invoice_value), 2) as avg_invoice_value,
    round(avg(customer_lifespan_days), 0) as avg__lifespan_days
from (
	select
    c.customer_id,
    count(distinct i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as total_spent,
    round(avg(i.total), 2) as avg_invoice_value,
    datediff(max(i.invoice_date), min(i.invoice_date)) as customer_lifespan_days
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.customer_id
) as customer_summary;

-- RETURNING CUSTOMERS VS ONE TIME CUSTOMERS --
select
	purchase_type,
    count(customer_id) as total_customers,
    round(count(customer_id) * 100.0 / sum(count(customer_id)) over (), 2) as percentage,
    round(avg(total_spent), 2) as avg_spent,
    round(avg(total_invoices), 2) as avg_invoices
from (
	select
		c.customer_id,
        count(distinct i.invoice_id) as total_invoices,
        round(sum(i.total), 2) as total_spent,
        case
			when count(distinct i.invoice_id) = 1 then 'One-Time Purchase'
            else 'Repeat Purchase'
		end as purchase_type
	from itunes_analysis.customer c
    join itunes_analysis.invoice i on c.customer_id = i.customer_id
    group by c.customer_id
) as customer_summary
group by purchase_type
order by total_customers desc;

-- MOST REVENUE PER CUSTOMER BY COUNTRY --
select
	c.country,
    count(distinct c.customer_id) as total_customers,
    count(distinct i.invoice_id) as total_invoices,
    round(sum(i.total), 2)  as total_revenue,
    round(avg(i.total), 2) as avg_invoice_value,
    round(sum(i.total) / count(distinct c.customer_id), 2) as revenue_per_customer
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.country
order by revenue_per_customer desc;

-- CUSTOMERS THAT HAVE NOT PURCHASED IN THE LAST 6 MONTHS --
select	
	c.customer_id,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    c.email,
    c.country,
    c.city,
    max(date(i.invoice_date)) as last_purchase_date,
    datediff(max(i.invoice_date), min(i.invoice_date)) as customer_lifespan_days,
    count(distinct i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as total_spent,
    datediff(
		(select max(invoice_date) from itunes_analysis.invoice),
        max(i.invoice_date)
	) as days_since_last_purchase
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.customer_id, c.first_name, c.last_name, c.email, c.country, c.city
having days_since_last_purchase > 180
order by days_since_last_purchase desc;

-- AVERAGE INVOICE PURCHASE VALUE --
select
	round(avg(total), 2) as avg_invoice_value,
    round(min(total), 2) as min_invoice_value,
    round(max(total), 2) as max_invoice_value,
    count(invoice_id) as total_invoices,
    round(sum(total), 2 ) as total_revenue
from itunes_analysis.invoice;

-- MONTHS THAT HAVE PEAK MUSIC SALES -- 
select
	month(invoice_date) as month_number,
    monthname(invoice_date) as month_name,
    count(invoice_id) as total_invoices,
    round(sum(total), 2) as total_revenue,
    round(avg(total), 2) as avg_invoice_value,
    round(sum(total) / (select sum(total) from itunes_analysis.invoice) * 100, 2) as revenue_percentage
from itunes_analysis.invoice
group by month(invoice_date), monthname(invoice_date)
order by total_revenue desc;

-- MOST PURCHASED ALBUMS--
select
	al.title as album,
    ar.name as artist,
    count(il.invoice_line_id) as times_purchased,
    count(distinct i.invoice_id) as unique_invoices,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.album al
join itunes_analysis.artist ar on al.artist_id = ar.artist_id
join itunes_analysis.track t on al.album_id = t.album_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
join itunes_analysis.invoice i on il.invoice_id = i.invoice_id
group by al.album_id, al.title, ar.name
order by times_purchased desc;

-- MOST PURCHASED PLAYLISTS--
select
	p.name as playlist,
    count(distinct pt.track_id) as total_tracks,
    count(il.invoice_line_id) as times_purchased,
    count(distinct i.invoice_id) as unique_invoices,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.playlist p
join itunes_analysis.playlist_track pt on p.playlist_id = pt.playlist_id
join itunes_analysis.track t on pt.track_id = t.track_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
join itunes_analysis.invoice i on il.invoice_id = i.invoice_id
group by p.playlist_id, p.name
order by times_purchased desc;

-- AVERAGE PRICE PER TRACK ACROSS DIFFERENT GENRE --
select
	g.name as genre,
    count(distinct t.track_id) as total_tracks,
    count(il.invoice_line_id) as times_purchased,
    round(avg(t.unit_price), 2) as avg_price_per_track,
    round(min(t.unit_price), 2) as min_price,
    round(max(t.unit_price), 2) as max_price,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue
from itunes_analysis.genre g
join itunes_analysis.track t on g.genre_id = t.genre_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by g.genre_id, g.name
order by avg_price_per_track desc;

-- TRACKS IN STORE PER GENRE AND THE CORRELATION WITH SALES --
select
	g.name as genre,
    count(distinct t.track_id) as total_tracks,
    count(il.invoice_line_id) as total_sales,
    round(sum(il.unit_price * il.quantity), 2) as total_revenue,
	round(count(il.invoice_line_id) / count(distinct t.track_id), 2) as sales_per_track,
    round(sum(il.unit_price * il.quantity) / count(distinct t.track_id), 2) as revenue_per_track,
    round(count(il.invoice_line_id) / (select count(*) from itunes_analysis.invoice_line) * 100, 2) as sales_percentage,
    round(count(distinct t.track_id) / (select count(*) from itunes_analysis.track) * 100, 2) as catalog_percentage
from itunes_analysis.genre g
join itunes_analysis.track t on g.genre_id = t.genre_id
join itunes_analysis.invoice_line il on t.track_id = il.track_id
group by g.genre_id, g.name
order by total_tracks desc;

-- TOP GENRE PER COUNTRY --
select
	country,
    genre,
    total_sales,
    total_revenue,
    country_sales_percentage
from (
    select
        i.billing_country as country,
        g.name as genre,
        count(il.invoice_line_id) as total_sales,
        round(sum(il.unit_price * il.quantity), 2) as total_revenue,
        round(count(il.invoice_line_id) * 100.0 / sum(count(il.invoice_line_id)) over(partition by i.billing_country), 2) as country_sales_percentage,
        rank() over(partition by i.billing_country order by count(il.invoice_line_id) desc) as genre_rank
    from itunes_analysis.invoice i
    join itunes_analysis.invoice_line il on i.invoice_id = il.invoice_id
    join itunes_analysis.track t on il.track_id = t.track_id
    join itunes_analysis.genre g on t.genre_id = g.genre_id
    group by i.billing_country, g.genre_id, g.name
) as ranked_genres
where genre_rank = 1
order by total_sales desc;

-- EMPLOYEE THAT MANAGES THE HIGHEST SPENDING CUSTOMER --
	select
    concat(e.first_name, ' ', e.last_name) as employee_name,
    e.title,
    concat(c.first_name, ' ', c.last_name) as customer_name,
    c.country,
    c.city,
    count(distinct i.invoice_id) as total_invoices,
    round(sum(i.total), 2) as customer_total_spent,
    rank() over(partition by e.employee_id order by SUM(i.total) desc) as customer_rank
from itunes_analysis.employee e
join itunes_analysis.customer c on e.employee_id = c.support_rep_id
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by e.employee_id, e.first_name, e.last_name, e.title, c.customer_id, c.first_name, c.last_name, c.country, c.city
order by employee_name, customer_total_spent desc;

-- SENOIR MOST EMPLOYEE --
select
	employee_id,
    concat(first_name, ' ', last_name) as employee_name,
    title,
    levels,
    hire_date,
    concat(city, ' ', country) as location
from itunes_analysis.employee
order by levels desc;

-- MOST COMMON COMBINATIONS OF TRACKS PURCHASED TOGETHER --
select
	t1.name as track_1,
    ar1.name as artist_1,
    t2.name as track_2,
    ar2.name as artist_2,
    count(*) as times_purchased_together,
    round(count(*) * 100.0 / (select count(*) from itunes_analysis.invoice), 2) as purchase_percentage
    from itunes_analysis.invoice_line il1
    join itunes_analysis.invoice_line il2
		on il1.invoice_id = il2.invoice_id
        and il1.invoice_line_id < il2.invoice_line_id
        and il1.track_id <> il2.track_id
	join itunes_analysis.track t1 on il1.track_id = t1.track_id
    join itunes_analysis.track t2 on il2.track_id = t2.track_id
    join itunes_analysis.album al1 on t1.album_id = al1.album_id
    join itunes_analysis.album al2 on t2.album_id = al2.album_id
    join itunes_analysis.artist ar1 on al1.artist_id = ar1.artist_id
    join itunes_analysis.artist ar2 on al2.artist_id = ar2.artist_id
    group by il1.track_id, il2.track_id, t1.name, ar1.name, t2.name, ar2.name
    order by times_purchased_together desc;

-- AVG TIME BETWEEN CUSTOMER PURCHASES --
select
	round(avg(avg_days_between_purchases), 0) as overall_avg_days_between_purchases,
    round(min(avg_days_between_purchases), 0) as min_days_between_purchases,
    round(max(avg_days_between_purchases), 0) as max_days_between_purchases
from (
	select
	c.customer_id,
    round(datediff(max(i.invoice_date), min(i.invoice_date))/nullif(count(distinct i.invoice_id) - 1,0), 0) as avg_days_between_purchases
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
group by c.customer_id
) as customer_gaps;

--  PERCENTAGE OF CUSTOMERS THAT PURCHASE TRACKS FROM MORE THAN 1 GENRE --
select
    total_customers,
    multi_genre_customers,
    single_genre_customers,
    round(multi_genre_customers * 100.0 / total_customers, 2) as multi_genre_percentage,
    round(single_genre_customers * 100.0 / total_customers, 2) as single_genre_percentage
from (
    select
        count(distinct customer_id) as total_customers,
        sum(case when total_genres > 1 then 1 else 0 end) as multi_genre_customers,
        SUM(case when total_genres = 1 then 1 else 0 end) as single_genre_customers
    from (
        select
            c.customer_id,
            count(distinct g.genre_id) as total_genres
        from itunes_analysis.customer c
        join itunes_analysis.invoice i on c.customer_id = i.customer_id
        join itunes_analysis.invoice_line il on i.invoice_id = il.invoice_id
        join itunes_analysis.track t on il.track_id = t.track_id
        join itunes_analysis.genre g on t.genre_id = g.genre_id
        group by c.customer_id
    ) as customer_genres
) as summary;

-- CUSTOMER SPENDING BASED ON ARTIST --
select
    concat(c.first_name, ' ', c.last_name) as customer_name,
    ar.name as artist_name,
    round(sum(il.unit_price * il.quantity), 2) as total_spent
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
join itunes_analysis.invoice_line il on i.invoice_id = il.invoice_id
join itunes_analysis.track t on il.track_id = t.track_id
join itunes_analysis.album al on t.album_id = al.album_id
join itunes_analysis.artist ar on al.artist_id = ar.artist_id
group by c.customer_id, c.first_name, c.last_name, ar.artist_id, ar.name
order by customer_name, total_spent desc;

-- SONGS LONGER THAN AVERAGE --
select
	name,
    milliseconds,
    round(milliseconds / 60000, 2) as minutes,
    round(milliseconds / 1000, 2) as seconds
from itunes_analysis.track
where milliseconds > (select avg(milliseconds) from itunes_analysis.track)
order by milliseconds desc;

-- TOP 10 ARTISTS WITH THE MOST ROCK MUSIC --
select
	ar.name as artist_name,
    count(t.track_id) as total_tracks
from itunes_analysis.artist ar
join itunes_analysis.album al on ar.artist_id = al.artist_id
join itunes_analysis.track t on al.album_id = t.album_id
join itunes_analysis.genre g on t.genre_id = g.genre_id
where g.name = 'Rock'
group by ar.artist_id, ar.name
order by total_tracks desc
limit 10;

-- ROCK MUSIC LISTENERS --
select distinct
	c.email,
    c.first_name,
    c.last_name,
    g.name as genre
from itunes_analysis.customer c
join itunes_analysis.invoice i on c.customer_id = i.customer_id
join itunes_analysis.invoice_line il on i.invoice_id = il.invoice_id
join itunes_analysis.track t on il.track_id = t.track_id
join itunes_analysis.genre g on t.genre_id = g.genre_id
where g.name = 'Rock'
order by c.email asc;

-- MONTHLY REVENUE TRENDS FOR THE LAST 2 YEARS -- 
select
    year(invoice_date) as year,
    month(invoice_date) as month_number,
    monthname(invoice_date) as month_name,
    date_format(invoice_date, '%Y-%m') as `year_month`,
    count(invoice_id) as total_invoices,
    round(sum(total), 2) as total_revenue,
    round(avg(total), 2) as avg_invoice_value,
    round(sum(total) - lag(sum(total)) over (order by year(invoice_date), month(invoice_date)), 2) as revenue_change,
    round((sum(total) - lag(sum(total)) over (order by year(invoice_date), month(invoice_date))) /
          lag(sum(total)) over (order by year(invoice_date), month(invoice_date)) * 100, 2) as growth_percentage
from itunes_analysis.invoice
where invoice_date >= (
    select date_sub(max(invoice_date), interval 2 year)
    from itunes_analysis.invoice
)
group by year(invoice_date), month(invoice_date), monthname(invoice_date), date_format(invoice_date, '%Y-%m')
order by year, month_number;
