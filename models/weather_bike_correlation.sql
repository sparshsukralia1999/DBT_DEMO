WITH CTE AS (
    SELECT
    t.*,
    W.*
    FROM {{ ref('trip_fact') }} t
    LEFT JOIN {{ ref('daily_weather') }} w
    ON t.TRIP_DATE = w.DAILY_WEATHER
    ORDER BY t.TRIP_DATE DESC
)

SELECT * FROM CTE