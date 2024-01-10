-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: post_crud
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `author` varchar(50) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `createdAt` datetime DEFAULT NULL,
  `imageUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Hồ Hùng','Bảo vệ động vật','Bảo tồn động vật hoang dã là việc thực hành bảo vệ các loài động vật hoang dã và môi trường sống của chúng. Mục tiêu của việc này là để đảm bảo rằng giới tự nhiên sẽ được bảo vệ để che chở cho các thế hệ tương lai và giúp loài người nhận ra tầm quan trọng của động vật hoang dã và môi trường hoang dã đối với con người và các loài khác nhau trên hành tinh này.\n\nNhiều quốc gia có các cơ quan chính phủ và các tổ chức, thiết chế dành riêng cho bảo tồn động vật hoang dã, để hỗ trợ thực hiện chính sách được thiết kế để bảo vệ động vật hoang dã. Nhiều tổ chức phi lợi nhuận độc lập cũng góp phần thúc đẩy việc bảo tồn động vật hoang dã. Ngày nay, bảo tồn động vật hoang dã đã trở thành một thực tế ngày càng quan trọng do những tác động tiêu cực của các hoạt động của con người đối với động vật hoang dã.\n\nCác nỗ lực nhằm tăng cường bảo vệ những loài quan trọng như tê giác, voi, hổ, tê tê, ngoài việc đóng góp trực tiếp cho hoạt động bảo tồn các loài động vật này còn mang ý nghĩa biểu tượng, tạo động lực cho việc bảo tồn tất cả các loài động vật hoang dã khác, góp phần ngăn chặn các loại thảm họa thiên nhiên, duy trì các dịch vụ sinh thái quan trọng đối với đời sống và sự phát triển kinh tế-xã hội của cộng đồng người dân, địa phương, quốc gia và quốc tế[1]','2023-01-10 21:01:39','https://upload.wikimedia.org/wikipedia/commons/thumb/a/a3/Kgalagadi_National_Park%2C_South_Africa_%283187521176%29.jpg/450px-Kgalagadi_National_Park%2C_South_Africa_%283187521176%29.jpg'),(2,'Hồng Hạnh','Chăm sóc sức khỏe','Theo chuyên gia dinh dưỡng Clare Thornton-Wood, lời khuyên hàng đầu của cô là ăn ít đường, nhiều thực phẩm lên men và tuân theo chế độ ăn Địa Trung Hải. Đây là chế độ ăn chứa nhiều trái cây và rau quả, ngũ cốc nguyên hạt, dầu ô liu, cá, trứng và một lượng nhỏ thịt nạc.\n\n\"Khoa học đã chứng minh vi khuẩn đường ruột khỏe mạnh tác động đến sức khỏe tinh thần và tâm trạng. Hãy ăn nhiều thực phẩm có nguồn gốc thực vật và ăn ít nhất một loại thực phẩm lên men mỗi ngày\", Thornton-wood nói.\n\nCác loại thực phẩm cô khuyên mọi người nên ăn là carbohydrate nguyên hạt như gạo lứt hoặc lúa mạch, cũng như các thực phẩm lên men như nấm sữa kefir, dưa muối hoặc kim chi.\n\nBên cạnh đó, giảm lượng đường và thực phẩm chế biến sẵn có thể giúp da và răng khỏe hơn. Sức khỏe răng miệng kém có liên quan đến bệnh tim, có thể khiến việc ăn uống trở nên khó khăn hơn khi về già.','2021-01-10 23:03:00','https://i1-suckhoe.vnecdn.net/2024/01/10/DTH-2319-1704851691.png?w=1020&h=0&q=100&dpr=1&fit=crop&s=8X4WsG9NGEpPJF0d3Vogmw'),(3,'Vũ Thinh',' Nguồn gốc của TDTT','TDTT ra đời phát triển theo sự phát triển của xã hội loài người. Lao động sản xuất là nguồn gốc cơ bản của TDTT. Nói cách khác, đó là cơ sở sinh tồn của tất cả mọi hoạt động, là hoạt động thực tiễn cơ bản nhất. Trong quá trình tiến hóa từ vượn thành người, lao động là nhân tố quyết định. Cơ thể từ loài vượn thành người, bàn tay dùng để lao động, vỏ đại não để tư duy và ngôn ngữ để giao tiếp… đều từ lao động mà phát triển thành như ngày nay.\n\nThật đúng như Ănghen đã nói trong tác phẩm “Tác dụng của lao động trong quá trình chuyển biến từ vượn thành người”: “Lao động là điều kiện thứ nhất của toàn bộ đời sống con người, thậm chí đến mức, trên một số ý nghĩa nào đó, không thể không nói rằng: Lao động sáng tạo ra bản thân con người”.\n\nTrong quá trình sản xuất lâu dài, loài người thời nguyên thuỷ đã chế tạo ra và sử dụng các công cụ lao động. Ngay trong quá trình giải quyết những vấn đề thiết thân về ăn, ở, mặc, con người đã đồng thời nâng cao trí lực và thể lực của mình. Thời đó, điều kiện lao động rất gian khổ, nguy hiểm, hoàn cảnh khắc nghiệt, công cụ rất thô sơ, lao động thể lực cực kỳ nặng nhọc. Do đó, muốn kiếm ăn và sống an toàn, họ phải luôn đấu tranh với thiên tai và dã thú. Thực tế đấu tranh khốc liệt để sinh tồn đó buộc con người phải biết chạy, nhảy, leo trèo, ném, bơi, mang vác nặng và chịu đựng được trong điều kiện sống khắc nghiệt. Bởi vậy, những năng lực hoạt động đó cùng với kinh nghiệm đã trở thành tiêu chuẩn hàng đầu để đánh giá trình độ, uy tín của con người lúc bấy giờ. Mầm mống của TDTT đã nẩy sinh chính từ thực tế của những hoạt động ấy và kết hợp tự nhiên ngay trong quá trình lao động.','2024-01-10 21:04:23','https://th.bing.com/th/id/R.2146de6daf097bb6bc774c232ebb6fd5?rik=DUbM9BfGs6i7Wg&pid=ImgRaw&r=0&sres=1&sresct=1');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-10 21:34:26
