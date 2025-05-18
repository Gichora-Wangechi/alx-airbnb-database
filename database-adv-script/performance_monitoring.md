# Monitoring and Refining Database Performance

## Objective
To monitor query performance and refine database schema to reduce execution cost and improve response time.

## Methods Used
- SQL `EXPLAIN ANALYZE` was used to monitor slow queries.
- Bottlenecks identified in filters and joins that lacked proper indexing.

## Changes Implemented
- Added indexes on:
  - `User.username`
  - `Property.city`
  - `Review.property_id`
- These were selected based on their frequent appearance in WHERE clauses and JOIN conditions.

## Results
| Query | Before | After |
|-------|--------|-------|
| Join on Booking & User | Seq Scan | Index Scan |
| Filter on Property.city | Seq Scan | Index Scan |

## Conclusion
Schema-level optimizations (indexing) significantly enhanced query performance for common and costly operations. Future improvements will monitor write-performance tradeoffs due to indexing.
