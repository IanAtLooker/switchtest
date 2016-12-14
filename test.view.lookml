
- explore: test
- view: test
  # Or, you could make this view a derived table, like this:
  derived_table:
    sql: |
      select drive.drive_id as driver, * from drive cross join game cross join meta cross join play cross join player 

  # Define your dimensions and measures here, like this:
  fields:
   - dimension: driver
     type: number
     sql: ${TABLE}.driver
