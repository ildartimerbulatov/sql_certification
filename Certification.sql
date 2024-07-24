USE LESSON_2;

DELIMITER //

CREATE PROCEDURE FormatTime(IN Seconds INT)
BEGIN
    DECLARE Days INT;
    DECLARE Hours INT;
    DECLARE Minutes INT;
    DECLARE RemainingSeconds INT;

    -- Вычисляем количество дней, часов, минут и оставшихся секунд
    SET Days = Seconds DIV 86400;
    SET Hours = (Seconds MOD 86400) DIV 3600;
    SET Minutes = (Seconds MOD 3600) DIV 60;
    SET RemainingSeconds = Seconds MOD 60;

    -- Выводим результат
    SELECT CONCAT(Days, ' days ', Hours, ' hours ', Minutes, ' minutes ', RemainingSeconds, ' seconds') AS FormattedTime;

    -- Выводим чётные числа от 1 до 10
    SELECT GROUP_CONCAT(number ORDER BY number SEPARATOR ', ') AS even_numbers
    FROM (
        SELECT 2 AS number UNION ALL
        SELECT 4 UNION ALL
        SELECT 6 UNION ALL
        SELECT 8 UNION ALL
        SELECT 10
    ) AS numbers;
END //

DELIMITER ;

CALL FormatTime(100000);




