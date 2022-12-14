
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Ram', 'Deepak', 9, '2021-04-08 18:08:56'),
(3, 'Namami', 'Juhi', 100, '2021-04-08 14:55:43'),
(4, 'Ram', 'Tarun', 1, '2021-04-08 14:58:55'),
(5, 'Adil', 'Kamlesh', 5000, '2021-06-03 21:49:16'),
(6, 'Kamlesh', 'Adil', 5000, '2021-06-05 20:41:06'),
(7, 'Adil', 'Kamlesh', 5000, '2021-06-05 23:34:40'),
(8, 'Kamlesh', 'Adil', 5000, '2021-06-06 10:42:24');

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Adil', 'adilkhan@gmail.com', 50000),
(2, 'Kamlesh', 'kamlesh85@gmail.com', 30000),
(3, 'Namami', 'namamishah@gmail.com', 39900),
(4, 'Priyanka', 'priyanka12@gmail.com', 10000),
(5, 'Shobhit', 'shobhitjain@gmail.com', 40000),
(6, 'Ram', 'singhram@gmail.com', 19990),
(7, 'Deepak', 'deepak1298@gmail.com', 50009),
(8, 'Juhi', 'sharmajuhi99@gmail.com', 40100),
(9, 'Naman', 'dixitnaman88@gmail.com', 30000),
(10, 'Tarun', 'tarunk34@gmail.com', 50001);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;
