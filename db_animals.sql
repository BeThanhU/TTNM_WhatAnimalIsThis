-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 24, 2022 lúc 07:33 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_animals`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `animals`
--

CREATE TABLE `animals` (
  `NgayCapNhat` datetime(6) NOT NULL,
  `TenKhoaHoc` varchar(100) NOT NULL,
  `TenTiengViet` varchar(100) NOT NULL,
  `TenDiaPhuong` varchar(100) NOT NULL,
  `Gioi` varchar(100) NOT NULL,
  `Nganh` varchar(100) NOT NULL,
  `Lop` varchar(100) NOT NULL,
  `Bo` varchar(100) NOT NULL,
  `Ho` varchar(100) NOT NULL,
  `HinhThai` varchar(3000) NOT NULL,
  `SinhThai` varchar(3000) NOT NULL,
  `GiaTri` varchar(100) NOT NULL,
  `BaoTonIUCN` varchar(100) NOT NULL,
  `BaoTonVN` varchar(100) NOT NULL,
  `BaoTon32` varchar(100) NOT NULL,
  `BaoTonCITES` varchar(100) NOT NULL,
  `PhanBo` varchar(100) NOT NULL,
  `TinhTrang` varchar(100) NOT NULL,
  `SinhCanh` varchar(100) NOT NULL,
  `DiaDiem` varchar(100) NOT NULL,
  `NgayThuMau` varchar(100) NOT NULL,
  `NguoiThuMau` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `animals`
--

INSERT INTO `animals` (`NgayCapNhat`, `TenKhoaHoc`, `TenTiengViet`, `TenDiaPhuong`, `Gioi`, `Nganh`, `Lop`, `Bo`, `Ho`, `HinhThai`, `SinhThai`, `GiaTri`, `BaoTonIUCN`, `BaoTonVN`, `BaoTon32`, `BaoTonCITES`, `PhanBo`, `TinhTrang`, `SinhCanh`, `DiaDiem`, `NgayThuMau`, `NguoiThuMau`) VALUES
('2018-08-04 02:07:15.000000', 'Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012', 'Ếch giun nguyễn', 'Rắn trun đĩa', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'GYMNOPHIONA (Muller, 1832)', 'Ichthyophiidae Taylor, 1968', 'Đặc điểm chẩn loại: cơ thể tròn, dẹt mặt bụng; chóp đuôi cùn, không có dạng mũ; không có đốm màu vàng mặt bụng; đầu rộng nhất ở góc mép miệng, hẹp dần về trước; mút mõm tròn; lỗ mũi nằm gần bờ trước mép miệng; số vòng quanh thân: 312 – 318; sọc vàng rộng chạy liên tục từ sau mắt đến huyệt (Nishikawa et al.,2012). \n	Đặc điểm hình thái: SVL 201,3 mm. Dài đuôi: 2,6 – 3,5; rộng đuôi: 2,8 – 3,5. Rộng đầu (HW: 6,6). Dài đầu hơn rộng đầu (HL/HW: 1,25-1,47). Cơ thể hơi tròn, dài, dạng rắn. Đầu dẹp, láng; rộng nhất ở mép miệng, hẹo về phía đầu. Mút mõm tròn; dài mõm bằng với ngang đầu ở vị trí mắt. Mắt nhỏ, không mi mắt, có một đôi râu (tentacle) ngắn nằm phía trước mắt. Hai bên thân có sọc  màu vàng bắt đầu từ sau mép miệng đến lỗ huyệt. Số nếp gấp quanh thân: 280 – 300; ở đuôi: 7-8. Đuôi ngắn hơi dẹt ở mặt bụng, phần đỉnh cùn, không có đốm màu cam hay vàng  ở mặt bụng. Mặt lưng có màu tím đen, bụng màu hoa cà nhạt, hai bên sườn có sọc màu vàng liên tục, không đứt quãng, chạy từ khoảng giữa hàm trên (mấu xúc - tu) đến gần mút đuôi. Mắt có viền mỏng màu trắng đục.\n	Ghi chú:  Loài Ichthyophis bannanicus phân biệt với Ichthyophis nguyenorum dựa trên các đặc điểm: số nếp vòng quanh cơ thể của I. nguyenorum (312 – 318) ít hơn so với I. bannanicus (340); sọc bên thân của I. nguyenorum kéo dài đến mút đuôi so với sọc bị đứt quãng ở phía sau đuôi của I. bannanicus Nishikawa et al. (2012).', 'Sống ở các vực nước (ao, vũng...) có nhiều bùn và lá mục, hay các khu vực đất nông nghiệp. Thức ăn gồm côn trùng, giun đất, nhện và những loài không xương sống nhỏ khác.', 'Chưa xác định', 'LC (Least concern)', 'Sắp nguy cấp', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng,  rừng tràm trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '13/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 02:16:22.000000', 'Duttaphrynus melanostictus (Schneider, 1799)', 'Cóc nhà', 'Cóc', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Bufonidae Gray, 1825', 'Đặc điểm chẩn loại: Kích thước cơ thể trung bình, mắt khỏe; phía trên ổ mắt, phía sau ổ mắt, phía trên màng nhĩ và phía trước mắt có nhiều gai nhọn; mõm nhọn, tuyến mang tai lớn, có chều dài hơn chiều rộng; cơ thể có nhiều nốt sần lớn và nhỏ; ngón tay thứ I dài hơn ngón tay thứ II; khớp cổ chân chạm giữa tuyến mang tai khi xếp dọc theo thân', 'Duttaphrynus melanostictus là loài phổ biến, được bắt gặp trên sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác; phân bố rộng khắp khu vực khảo sát .Là loài hoạt động về đêm, kiếm mồi trên nền rừng và trú ngụ trong các hốc cây. Đầu mùa mưa thường tập trung ở các vũng nước đọng trong khu vực và các con đực gọi bạn tình suốt từ tối đến khoảng 8 giờ sáng.', 'Làm thực phẩm', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '13/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 02:24:39.000000', 'Kaloula pulchra Gray, 1831', 'Ễn ương', 'Ễn ương', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Microhylidae (Cóc miệng nhỏ)', 'Đặc điểm chẩn loại: Ngón chi dẹp và đầu ngón tay mở rộng; toàn bộ mặt lưng màu nâu với 2 dãy màu vàng sáng hoặc vàng nâu chạy dọc từ giữa 2 mắt qua phía trên mắt và kéo dai đến háng; trên ngón có vết tích của màng bơi.\nĐặc điểm hình thái: Kích thước trung bình (SVL: 80.3). Cơ thể có hình tam giác khi nhìn từ bên trên, đầu ngắn so với chiều dài thân (HL/SVL: 0,24); chiều dài đầu nhỏ hơn chiều rộng đầu (HL/HW: 0,74); khóe mắt nhỏ; vùng má xiên và hướng lên; mũi tù và ngắn, lỗ mũi nằm gần chóp mỏ và hướng sang 2 bên; khoảng cách giữa hai lỗ mũi tương đương mí mắt trên; màng nhĩ không rõ ràng; nếp gấp mờ vòng qua chẩm đến sau mắt và kết thúc ở ngay trước cánh tay.\nDa trơn láng với các nốt sần rải rác trên lưng, nhiều nhất ở phần dưới của mặt lưng, phía sau đùi và một số trên cánh tay. Mặt lưng màu nâu sẫm. Hai dảy màu vàng sáng được bao bọc bởi viền màu nâu đậm hoặc đen bắt đầu từ giữa hai mắt và kéo dài đến háng; hai dảy màu liền nhau ở giữa 2 mắt, hẹp ở sau mắt và nở rộng trên mặt lưng. Một số cá thể giữa lưng có vệt đen hoặc nâu sậm kéo dài từ giữa 2 mắt đến tận xương cụt. Các nốt sần trên lưng có màu tương tự màu của hai dảy màu trên lưng. Trên các chi có màu không đều, các mảng nhỏ màu vàng sáng không đều xen lẫn trên nền màu nâu sẫm; một vệt màu sáng không liên tục phía trên mặt lưng của ống chân sau. Mặt bụng màu trắng sáng với các hoa văn xám dạng khói, phần da trên cổ họng màu đậm hơn trên bụng.\nCánh tay hơi dài; ngón tay dài và có vết tích của màng bơi; to dần từ gốc ngón đến đầu ngón, đĩa ngón rộng theo chiều ngang. Ngón thứ nhất ngắn hơn ngón thứ 2; củ bàn vừa phải; có 3 củ bàn, củ bàn ngoài dài, củ bàn giữa nhỏ nhất, bàn tay trơn và không có nốt sần phụ. Thứ tự chiều dài tương đối của các ngón tay: III>IV>II>I.\nChân ngắn, chỉ 1/3 xương đùi tự do; cổ chân chạm đến nách khi xếp song song với trục cơ thể. Hai gót chân không chạm nhau khi gập gối và xếp vuông góc trục cơ thể. Bàn chân dài hơn bàn tay nhưng các ngón chân mảnh khảnh hơn; đĩa ngón chân nhỏ tròn, không rộng theo chiều ngang như đĩa ngón tay; ngón chân có vết tích của màng bơi. Có 2 củ bàn chân; củ bàn chân trong dài, nhô cao, cạnh không rõ ràng; củ bàn chân ngoài nhỏ tròn. Thứ tự chiều dài tương đối các ngón chân: IV>III>V>II>I.', 'Một mẫu cái duy nhất của loài này được tìm thấy trên nền rừng trong khu vực rừng tràm Mỹ Phước khai thác vào mùa mưa (tháng 7). Là loài hoạt động về đêm, thường ẩn nấp trong các hốc cây, hoặc bên dưới lớp lá mục trong mùa khô. Thường ra ngoài kiếm ăn khi độ ẩm không khí cao hoặc sau cơn mưa. Sinh sản vào mùa mưa, con đực thường phát tiếng kêu đặc trưng khi đang ngâm mình trên mặt nước (Kalamadi et al. 2002).\nGhi chú: qua phỏng vấn, người dân sinh sống xung quanh khu vực nghiên cứu cho biết trước đây chưa từng tìm thấy loài này trong tự nhiên.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Ít gặp', 'Thu được mẫu', 'Rừng tràm trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '03/07/2018', 'Nguyễn Quang Cường'),
('2018-08-04 02:24:39.000000', 'Microhyla heymonsii Vogt, 1911', 'Nhái bầu heymon', 'Nhóc nhen', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', ' Microhylidae (cóc miệng nhỏ)', 'Kích thước cơ thể nhỏ; lưng phẳng, màu xám hoặc nâu ở trên, thường có đường kẻ giữa lưng và một hoặc 2 đốm đen ở ngay trung tâm của lưng. Mặt bên của đầu và thân có vệt đen kéo dài đến háng. Màng nhĩ ẩn; ba củ bàn tay lớn và rõ ràng; kích thước gần bằng nhau. Hai củ bàn chân, củ bàn ngoài lớn hơn. Màng bơi giữa các ngón nhỏ và mảnh. Đầu ngón mở rộng thành các đĩa', 'Vào mùa mưa, các các thể của Microhyla heymonsi thường được tìm thấy trên nền rừng, trên các thảm lá mục hoặc cỏ. Chúng thường tập trung nhiều ở các vũng nước đọng hoặc các khu vực ngập nước cạn vào mùa mưa. Con đực cótiếng kêu đặc trưng nhờ túi âm ở cổ họng. Các sinh cảnh trong khu vực có sự hiện diện của loài này gồm rừng tràm đặc dụng và rừng tràm khai thác.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác, rừng tràm trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '04/07/2018', 'Nguyễn Quang Cường'),
('2018-08-04 02:46:07.000000', 'Hylarana erythraea (Schlegel, 1837)', 'Chàng xanh', 'Bù tọt', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Ranidae Rafinesque, 1814', 'Cơ thể có kích thước tương đối lớn, thường có màu xanh với nếp gấp da trên lưng rộng màu vàng, dảy màu đen ở mặt bên của đầu và cơ thể, mũi nhọn và nhô ra, ngón tay mảnh khảnh, ngón thứ nhất hơi ngắn hơn ngón thứ 2, ngón chân gần như có màng bao phủ hoàn toàn, đĩa nhỏ trên đầu ngón, cổ chân chạm chóp mũi, không có hoa văn vòng quanh chi nhưng có các dấu song song chân, có túi thanh âm, con đực có chai sinh dục trên ngón tay thứ 1.', 'Chàng xanh được tìm thấy trên các sinh cảnh rừng tràm đặc dụng, rừng dừa nước và lung ở Rừng tràm Mỹ Phước. Là loài hoạt động về đêm, chúng được tìm thấy nhiều vào mùa mưa ở ven các kênh nước, ao nước nhỏ, trên lớp thực vật nổi hoặc cả trên cành cây cách mặt đất từ 1-1,5m.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng dừa nước, lung', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '17/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 03:05:35.000000', 'Polypedates megacephalus Hallowell, 1861', 'Ếch cây mép trắng', 'Hót cổ', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Rhacophoridae Hoffman, 1932', 'Loài có kích thước lớn, chiều dài đầu thân lên đến 75mm (Taylor); được đặc trưng bởi phần da trên đầu dính chặt với vùng mũi và xương trán; con đực có túi thanh âm; chiều rộng gian ổ mắt rộng hơn chiều rộng mí mắt trên; màng nhĩ rõ ràng; ngón tay có màng rất ít, ngón chân có màng bao phủ 2/3 hoặc nhiều hơn; chiều rộng đĩa ngón nhỏ hơn màng nhĩ; cổ bàn chân chạm giữa mắt với lỗ mũi hoặc chóp mũi khi gập sát thân; răng lá mía phát triển; hoa văn chữ x trên vùng đầu – vai.', 'Là loài phân bố đa dạng trong các sinh cảnh từ rừng tràm đặc dụng, rừng tràm trồng, rừng dừa nước trong khu vực Rừng tràm Mỹ Phước. Các cá thể được phát hiện ở các vị trí ven các vũng nước nhỏ, trên cành cây hoặc bụi cây cách mặt đất khoảng 1m. Thường tìm thấy nhiều vào mùa mưa, có tập tính đẻ trứng vào các tổ bọt tự tạo bên trên hoặc cạnh các vũng nước.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác, rừng dừa nước', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '14/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 04:02:09.000000', 'Calotes versicolor (Daudin, 1802)', 'Nhông xanh, Nhông hàng rào, Kì nhông', 'Kì nhông', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Agamidae Gray, 1827', 'Chiều dài đầu thân (SVL) đến 95mm (quần thể ở Đông Nam Á); cơ thể mạnh mẽ, dẹp; đầu khá lớn (đặc biệt ở con đực trưởng thành); vảy nhọn ở phía sau và bên trên; không có nếp gấp trước cánh tay hoặc lỗ trước vai, có 2 gai khá rõ trên màng nhĩ; có 40-45 hàng vảy giữa thân. Màu sắc trên thân đa dạng, đầu màu vàng cam hoặc đỏ sáng, con đực có thêm mảng đen ở cổ, và mờ dần đến màu hơi xám ở các thời điểm khác nhau. Con cái cũng có màu vàng đến xám sau khi giao phối', 'Trong khu vực nghiên cứu, Calotes versicolor (DAUDIN, 1802) là loài phổ biến, có mặt ở các sinh cảnh rừng tràm khai thác, rừng tràm đặc dụng; hoạt động ban ngày, thường được phát hiện nhiều nhất trong khoảng thời gian từ 8 giờ sáng đến 10 giờ.  Ban đêm chúng thường ngủ trên các cành cây nhỏ cách mặt đất từ 1m - 3m. Con non được phát hiện nhiều vào đầu mùa mưa trong các tháng 7 và 8.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác, rừng tràm đặc dụng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '18/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 05:26:10.000000', 'Gehyra multilata (Weigmann,1835)', 'Thằn lằn 4 móng', 'Thằn lằn nhà', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Gekkonidae Gray, 1825', 'Vảy dưới ngón rộng, phân chia, 2 hàng vảy nhỏ hoăc nhiều hơn, màng giữa ngón rất nhỏ, màng giữa ngón chân lớn hơn, 2-3 cặp vảy sau hàm, 25-41 vảy mang lỗ feromol trước huyệt xếp hình vòng cung, giữa tạo thành góc; vảy trên mũi hơi lớn tiếp xúc với các vảy khác ở giữa; đuôi dẹp, thường phẳng ở mặt dưới, mặt bên có nhiều hoặc ít răng cưa, da dễ đứt.', 'Là loài hoạt động về đêm, được tìm thấy trên các thân gỗ lớn, trên các tường và công trình xây dựng nhân tạo trong khu rừng tràm Mỹ Phước. Chia sẻ môi trường sống với các loài Hemidactylus frenatus, Hemidactylus platyurus, Hemidactylus garnotii.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '14/04/2018', 'Nguyễn Quang Cường'),
('2018-08-04 06:26:10.000000', 'Hemidactylus garnotii (Conant and Collins, 1991)', 'Thạch sùng garnot', 'Thằn lằn', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Gekkonidae Gray, 1825', 'Đặc điểm chẩn loại:  mút mõm tù, dài mõm-mắt lớn hơn khoảng cách giữa mắt-tai (SnEye 5,13; EyeEar 3,66); lỗ mũi ở giữa tấm mõm.; đường kính tai không quá 1/2 lần đường kính mắt (EarL 1,87; OrbD4,28); 11 tấm mép trên, 10 tấm mép dưới; tấm cằm gấp hai lần tấm mép; tấm mõm rộng bằng cao.\n\nĐặc điểm hình thái: Đầu lớn (HL 7,91; HW 6,43; HH 4,18).  Lỗ tai bé, gần tròn, đường kính tai không quá 1/2 lần đường kính mắt. Tấm cằm có dạng hình tam giác, dài hơn 2 lần các tấm mép bên cạnh. Hai đôi tấm sau cằm, đôi I lớn hơn đôi II và  tiếp xúc nhau. Vảy vùng họng dạng hạt. Đuôi rất dẹp, sắc, có răng cưa ở hai bên, phía trên phủ các vảy nhỏ đồng dạng, mặt dưới phẳng với những vảy lớn xếp gối lên nhau và một hàng vảy ngang mở rộng ở giữa đùi. Thân màu nâu xám với các đốm hoặcvết không rõ ràng, thường có những điểm nhỏ màu trắng; có vạch tối dọc theo haibên đầu. Bụng trắng.  \n', 'Ban ngày thường trú trong các hốc cây nhỏ hoặc bên trong lớp vỏ cây mục, ban đêm kiếm mồi trên thân tràm và các thân gỗ lớn trong khu vực rừng tràm Mỹ Phước. Là loài ít gặp; chia sẻ sinh cảnh với loài Hemidactylys frenatus và Hemidactylus platyurus. ', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Ít gặp', 'Thu được mẫu', 'Rừng tràm đặc dụng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '03/07/2018', 'Nguyễn Quang Cường'),
('2018-09-04 04:26:10.000000', 'Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836', 'Thạch sùng đuôi sần', 'Thạch sùng', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Gekkonidae Gray, 1825', 'Cơ thể được bao phủ bởi các vảy dạng hạt nhỏ lẫn với một vài vảy trơn tròn hoặc hơi có dạng sóng, nốt sần hình nón; con đực có một chuỗi liên tiếp các lỗ trước huyệt, 14-19 lỗ ở mỗi bên; 2 cặp vảy sau môi dưới, cặp bên ngoài lớn tương tự cặp bên trong, cả 2 đều chạm vảy hàm dưới; trên đuôi có các nốt sần dạng gai cao xếp theo hình xoắn ốc ', 'Là loài hoạt động về đêm, sinh sống cùng với con người, thương tìm thấy trong tường nhà hoặc các công trình nhân tạo. Trong tự nhiên, loài này kiếm ăn trên các thân cây gỗ lớn, thức ăn là các loài côn trùng sống trong khu vực. Chúng thường đẻ trứng vào các hốc cây khô, kín đáo, trứng nhỏ, màu trắng ngà và không dính.', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm trồng, nơi ở của con người', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '16/04/2018', 'Nguyễn Quang Cường'),
('2018-09-04 04:26:10.000000', 'Fejervarya limnocharis (Gravenhorst, 1829)', 'Nhái ngóe', 'Nhái ', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871 ', 'Đầu ngón hơi phồng, không hoặc hơi rộng hơn chữa số, ngón đầu tên dài hơn ngón thứ 2, ngón chân có màng bao phủ từ 1/2 tới 2/3, củ bàn chân ngoài tách biệt với màng, củ bàn chân trong dẹp và củ bàn chân ngoài nhỏ, lung có nhiều nếp gấp và nốt sần nhỏ, con đực có túi kêu màu đen', 'Là loài phổ biến trong khu vực rừng tràm Mỹ Phước, thường được tìm thấy trong sinh cảnh rừng tràm khai thác, rừng tràm đặc dụng. Nhái sọc hoạt động ban đêm, thức ăn là các loài côn trùng sống trong khu vực. Xuất hiện nhiều vào đầu mùa mưa, con đực có túi thanh âm phát tiếng kêu đặc trưng thu hút con cái. Con đực và con cái có hiện tượng \"bắt cặp\" khi giao phối; con cái đẻ trứng vào các ao hoặc vũng nước đọng trong khu vực; trứng dính vào nhau thành mảng lớn nổi trên mặt nước.', 'Làm thực phẩm', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác, rừng tràm đặc dụng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '13/04/2018', 'Nguyễn Quang Cường'),
('2018-09-04 02:26:10.000000', 'Fejervarya cancrivora (Gravenhorst, 1829)', 'Ếch cua', 'Ếch', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871 ', '	Đặc điểm chẩn loại:  lỗ mũi hướng thẳng lên, khoảng gian mắt rộng ½ độ rộng mi mắt. Lỗ mũi lệch về phía mút mõm. Vùng má lõm, xiên. Màng nhĩ rõ. Ngón tay I dài hơn ngón tay II. Khớp cổ bàn tiếp xúc mắt, hai gối chạm nhau khi gập hai chân lại. Mép ngoài các ngón chân có rìa da mỏng, nếp gấp vùng xương cổ bàn mỏng. Củ bàn trong mảnh, dài, không có củ bàn ngoài. Lưng có nhiều nếp da ngắn, gián đoạn; các nếp da ngắn hai bên lưng nối nhau thành hàng. Răng xương lá mía xiên. Màng da ¾ . Giữa vùng trán có một điểm mắt nhỏ, màu trắng. \n\nĐặc điểm hình thái: Cơ thể có kích thước trung bình, đầu hẹp.  (SVL: 48.5-57.5 mm) Dài đầu lớn hơn rộng đầu (HL/HW: 1,13-1,24 ). Mút mõm tròn.  Lỗ mũi hình oval, có van nhỏ. Dài mũi lớn hơn đường kính mắt (ED/SNL: 0,59 – 0,71 mm). Lưỡi lớn; con ngươi mắt tròn. Chủy khóe mắt tròn, vùng gian mắt- mũi lõm, vùng gian ổ mắt phẳng. chiều rộng mi mắt trên lớn hơn khoảng cách giữa 2 hốc mắt (IO/UEW: 0,53-0,64). U lồi vùng thái dương tròn. Đường kính màng nhĩ lớn hơn khoảng cách từ màng nhĩ đến mắt (E-T/TD: 0,48-0,65); đường kính màng nhĩ nhỏ hơn đường kính mắt (TD/ED: 0,7-0,72), có một nếp gấp da chạy từ sau mắt vòng lên trên màng nhĩ và kéo xuống đến trước cánh tay. \nCơ thể có màu nâu, xanh nâu, xám với những vệt đậm, không đều, nằm rải rác quanh mép miệng và chi sau. Bụng có màu trắng đôi khi có những vệt đậm màu nằm rải rác, da trơn, láng. Mặt lưng có nhiều nếp da ngắn, chạy dọc cơ thể. Hai bên đầu và phần hông sau có các mụn tuyến nhỏ. Các ngón tay dài, mút nhọn, một số ngón có rèm da. Thứ tự các ngón chi trước: III>IV>I>II.  Ngón chân dài có màng da và rèm da, độ dài các ngón theo thứ tự: IV>III>V>II>I. \n', 'F. cancrivora là loài lưỡng cư có sự thích nghi cao với nồng độ muối ổn định trong môi trường nước.  Chúng chỉ cần vài giờ để thích nghi với môi trường sống khi chuyển từ nước ngọt sang nước mặn nhờ quá trình tích lũy ure làm tăng nồng độ các chất trong tế bào. F. cancrivora có thể sống ở môi trường có nồng độ muối 650 - 950 mOsm/L trong nhiều tháng. ', 'Làm thực phẩm', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '03/07/2018', 'Nguyễn Quang Cường'),
('2018-09-04 08:26:10.000000', 'Fejervarya sp.', 'Nhái cơm', 'Nhái cơm', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'BỘ ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871 ', 'Đặc điểm chẩn loại:  Lỗ mũi hướng lên trên; khoảng gian mắt hơi rộng hơn một nữa chiều rộng mi mắt trên; lỗ mũi gần chóp mũi hơn gần mắt; vùng má phẳng, xiên; màng nhĩ rõ ràng; ngón tai thứ I dài hơn ngón thứ II; khớp xương chài chạm vùng má khi xếp chân dọc cơ thể; khi xếp chân 2 đầu gối xếp chồng nhau; có nếp gấp cổ chân mờ; có củ bàn trong chân, không có củ bàn ngoài; nhiều nếp gấp trên lưng; nếp gấp mặt bên trên lưng thấp, dài hơi các nếp gấp ở phần giữa lưng; ngón chân có màng kéo dài đến ¾ chiều dài ngón.\n	Đặc điểm hình thái: Kích thước cơ thể nhỏ (SVL: 48,5-57,5); chiều dài đầu hơi lớn hơn chiều ngang (HL/HW: 1,13 – 1,24). Mũi nhọn; lỗ mũi tròn, có viền xung quanh, gần chóp mũi hơn gần mắt; gốc mắt rõ ràng, vùng má xiên, hơi lõm với một gờ trơn; chiều rộng mi mắt lớn hơn khoảng gian mắt (IO/UEW: 0,53-0,64); nếp gấp bên trên màng nhĩ nhỏ, mở rộng về phía trên màng nhĩ và xéo xuống dưới ở phía sau; đường kính màng nhĩ không lớn hơn khoảng cách mắt tới màng nhĩ (E-T/TD: 0,48-0,65); tuyến gốc mõm dài, thấp, không chạm màng nhĩ.\nDa trên lưng nhiều gờ dạng tuyến, một vài cái có dạng gờ dài, nhiều nốt sần nhỏ; các hàng ở hai bên nhiều hoặc ít rõ ràng. Da cằm, bụng và mặt dưới của đùi trơn; thỉnh thoảng có các nốt sần nhỏ ở mặt sau của đùi; cánh tay ngắn, ngón tay không có màng, đầu ngón hơi phồng thành nốt nhỏ; ngón thứ I hơi dài hơn ngón thứ II; củ ngón rõ ràng; 2 củ bàn rõ ràng, củ dưới ngón tay cái phát triển, chai sinh dục phát triển ở con đực; ngón chân có màng ¾; củ bàn trong dài, rõ ràng, củ bàn ngoài nhỏ, tròn; củ ngón phát triển; chân ngắn, khớp chày chạm vùng má; khi xếp chân vuông góc cơ thể, hai đầu gối chồng lên nhau.\nMặt trên màu nâu đến nâu - vàng nhạt với các đốm màu xám đen; các đốm trên cánh tay và chân ít phân biệt; các vệt ở hàm trên rõ ràng; hầu hết các hàng gờ da lớn ở bên ngoài của phần phía bên lưng; cằm với các đốm đen nhạt không đều dạng lavender, mặt dưới cơ thể màu trắng xám khói; cạnh trước và mặt dưới của bàn chân màu lavender, đầu ngón tay và chân màu kem.\n', 'Chúng có sinh cảnh chung với 2 loài lưỡng cư khác là ếch cua (F. cancrivora) và nhái ngóe (F. limnocharis). Trong khu vực nghiên cứu, đây là loài phổ biến, phân bố trên các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. Được tìm thấy nhiều vào đầu mùa mưa trên nền rừng ẩm ướt, ven các kênh dẫn nước hoặc xung quanh các vũng nước đọng.', 'Làm thực phẩm', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '13/04/2018', 'Nguyễn Quang Cường'),
('2018-09-04 08:26:10.000000', 'Hoplobatrachus rugulosus (Wiegmann, 1834)', 'Ếch đồng', 'Ếch', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871 ', 'Kích thước lớn, chân và tay tương đối ngắn, ngón chân có màng bao phủ gần như hoàn toàn, đầu ngón không có đĩa ngón, hơi phồng ở đầu ngón; không có củ bàn trong ở chân, khoảng 10 hàng nếp gấp da trên lưng, gian ổ mắt nhỏ hơn nhiều so với chiều rộng mi mắt trên.', 'Ếch đồng là loài phổ biến trong khu vực rừng tràm Mỹ Phước; được tìm thấy nhiều vào mùa mưa, đặc biệt vào đầu mùa mưa. Ếch đồng sinh sản vào đầu mùa mưa, con đực phát âm thanh to thu hút con cái. Ếch đực và ếch cái có hiện tượng \"bắt cặp\" khi giao phối. Trong khu vực rừng tràm Mỹ Phước, ếch đồng được tìm thấy trong sinh cảnh rừng tràm khai thác và rừng tràm đặc dụng.', 'Làm thực phẩm', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác, rừng tràm đặc dụng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '17/04/2018', 'Nguyễn Quang Cường'),
('2018-09-04 09:26:10.000000', 'Occidozyga lima (Gravenhorst, 1829)', 'Cóc nước sần', 'Nhái bầu', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Bufonidae Gray, 1825', 'Là một loài cóc nước nhỏ; lưỡi dài, tự do, đầu lưỡi tròn; ngón tay nhọn, ngón thứ nhất bằng ngón thứ 2, 2 hoặc 3 củ bàn tay; 2 củ bàn chân, và 1 nốt sần rõ ràng ở cuối xương chày; da rất nhám, có nhiều nốt sần hoặc gai nhỏ, có nhiều hàng nốt sần tạo thành các đường dọc hai bên thân, trên lưng và cằm; con đực với túi âm ở trong miệng; các vệt sẫm màu vắt ngang trên đùi và lưng; ngón tay có màng bơi nhỏ trong gốc ngón, ngón chân có màng bơi phủ hết ngón', 'Các mẫu của loài cóc nước sần được tìm thấy trong mùa mưa ở các sinh cảnh rừng tràm đặc dụng, rừng dừa nước, lung. Vào đầu mùa mưa, chúng thường tập trung trong các ao nước nhỏ vào ban đêm, các con đực phát tiếng kêu thu hút con cái. ', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, lung, rừng dừa nước', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '05/05/2018', 'Nguyễn Quang Cường'),
('2018-09-04 09:56:10.000000', 'Occidozyga martensii (Peters, 1867)', 'Cóc nước marten', 'Nhái nhớt', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'AMPHIBIA (Linnaeus, 1758)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871 ', 'Cơ thể có kích thước nhỏ, ngắn và mập; các chi tương đối ngắn; bàn tay không có màng; bàn chân có màng phát triển chạm 2/3 chiều dài ngón; chóp ngón mở rộng thành dạng đệm tròn. Cấu trúc da khá đa dạng từ dạng trơn đến có nhiều nốt sần trên lưng; mặt dưới luôn trơn. Đầu nhỏ, mũi hình tam giác ngắn; màng nhĩ nhỏ vừa đủ nhận biết; nếp gấp trên màng nhĩ rõ ràng. Mắt phồng lên và hướng sang 2 bên. Màu sắc mặt lưng đa dạng; phần lớn màu xám hoặc nâu, thường có sọc màu vàng hoặc cam rõ ràng trên lưng, hoặc một vệt rộng màu xám đen dọc viền đen với 2 sọc cam; phổ biến là màu đỏ - rỉ sét ở sau đầu. Mặt dưới màu trắng sáng, cổ họng có các đốm đen li ti màu xám mờ. Con ngươi hình thoi với mống mắt có các sọc màu đồng xếp đồng quy', 'Occcidozyga martensii là loài phổ biến trong rừng tràm Mỹ Phước, được tìm thấy nhiều vào đầu mùa mưa. Chúng thường được tìm thấy trên nền rừng, xung quanh các vũng nước đọng hoặc ở khu vực nước nông có lớp thực vật nổi dày, rậm rạp. Trong rừng tràm Mỹ Phước chúng phân bố trong các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. ', 'Chưa xác định', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '06/05/2018', 'Nguyễn Quang Cường'),
('2018-09-10 01:26:10.000000', 'Hemidactylus platyurus (Schneider, 1797)', 'Thạch sùng đuôi dẹp', 'Thằn lằn', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Gekkonidae Gray, 1825', 'Các ngón chân có màng và mở rộng; tấm dưới ngón chân không phân chia; đốt ngón xa dài, mỏng, mọc tại bên trên phần mở rộng của đầu ngón; 2 cặp vảy sau hàm mở rộng, cặp thứ 2 ở bên lớn hơn cặp thứ nhất ở trong; nếp gấp bụng rõ ràng, được vảy nhỏ bao phủ; có màng da rộng ở phía sau chân sau; 16-20 lỗ đùi mỗi bên, xếp thành hàng thẳng và tiếp xúc ở giữa thân', 'Thạch sùng đuôi dẹp là loài phổ biến sinh sống trong hoặc xung quanh khu dân cư. Trong tự nhiên, chúng thường được tìm thấy trên các thân cây gỗ lớn, kiếm ăn cả ngày và đêm; thức ăn là các loài côn trùng nhỏ sinh sống trong khu vực. Trong rừng tràm Mỹ Phước, loài này được tìm thấy trong sinh cảnh rừng tràm khai thác. ', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '07/05/2018', 'Nguyễn Quang Cường'),
('2018-09-10 05:26:10.000000', 'Takydromus sexlineatus Daudin, 1802', 'Thằn lằn đuôi dài', 'Thằn lằn đuôi dài', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Lacertidae Gray, 1825', 'Loài thằn lằn cỡ nhỏ, dài đuôi dài gấp sáu lần chiều dài thân. Dài thân 30 - 60mm, dài đuôi 160 - 180mm. Mõm nhọn, tấm mõm rộng. Hai tấm trán ở đỉnh tiếp xúc với nhau, rộng và ngắn hơn tấm trước trán. Tấm đỉnh lớn, cách nhau rõ bởi tấm gian đỉnh và tấm chẩm bé hơn. Có 2 - 3 tấm thái dương chạm tấm đỉnh.Các vảy vùng thái dương nổi gờ rất rõ. Có 3 cặp tấm sau cằm.\n\nThân có 6 hàng vảy dọc, rộng, nổi gờ rõ, 4 hàng vảy ở giữa tiếp tục kéo dài đến đuôi. Vảy bên thân bé, có 12 hàng vảy rộng ở bụng, các vảy này cũng nổi gờ rõ. Từ nếp gấp vai đến bẹn có 26 vảy. Tấm hậu môn lớn và có 2 vảy dài, bé hơn nằm ở hai bên.Ở con đực và con cái đều có 1 lỗ đùi ở mỗi bên. Mép trên có từ 6  -8 tấm vảy và 5 - 8 tấm ở mép dưới mỗi bên.\n\nThân màu xanh xám đến nâu xám, phần đầu có màu thẫm hơn. Cằm và cổ họng có màu trắng đục đến hơi vàng. Mặt trên của các chi và phần sau của gốc đuôi màu xám nhạt. Ở các cá thể đực có một dải hẹp màu trắng xám chạy từ góc sau tấm đỉnh đến giữa thân và mờ dần về phía đuôi. Từ vai đến bẹn là các đốm trắng xám nhỏ hình bầu dục xếp thành hàng dọc.', 'Là loài hoạt động ban ngày, thường kiếm ăn trên các tán cây thấp, thức ăn là các loài côn trùng sinh sống trong khu vực. Hoa văn trên cơ thể có khả năng ngụy trang lẫn vào môi trường xung quanh. Buổi sáng chúng thường phơi nắng hấp thu nhiệt và hoạt động nhiều khi nhiệt độ cao. Ban đêm ngủ trên các nhánh cây thấp và bụi cây.', 'Chưa xác định', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Ít gặp', 'Thu được mẫu', 'rừng tràm trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '08/05/2018', 'Nguyễn Quang Cường'),
('2018-09-11 03:26:10.000000', 'Python molurus (Linnaeus, 1758)', 'Trăn lưới', 'Trăn đất', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'REPTILIA LAURENTI, 1768', 'SQUAMATA OPPEL, 18411', 'Pythonidae Fitzinger, 1826', 'Đặc điểm chẩn loại:  Rắn lành cỡ rất lớn trong họ nhà Trăn Pythonidae, dài tới 8m (kích thước trung bình khoảng từ 4 - 6m). Đầu dài, nhỏ. Hai tấm vảy môi trên có trên mỗi tấm vảy một lỗ (lỗ môi là cơ quan cảm giác nhiệt). Có hai cựa nhỏ, hình móng nằm ở hai bên khe huyệt. Cựa trăn cái ngắn, ẩn sâu trong hốc bên khe huyệt. Đầu có màu nâu xám, mặt trên đầu có hoa văn hình mũi mác di từ cổ, mũi nhọn hướng về phía đầu mõm. Mặt trên lưng có màu xám nhạt hay vàng nhạt có một dãy những vết lớn dài, màu nâu đỏ viền đen. Mặt bụng màu vàng hay nâu vàng có những đốm nâu hay đen (Smith 1984).\nĐặc điểm hình thái:  Đầu hình tam giác, chiều dài gần 2 lần chiều rộng. Lỗ mũi tách biệt bởi 2 vảy mũi. Có 2 cặp vảy trước trán, cặp vảy phía sau nhỏ hơn; vảy trán phân chia. Vùng vảy chẩm và vùng vảy thái dương không đều. Có 10 – 13 vảy môi trên, vảy thứ VI hoặc thứ VII ở dưới mắt hoặc tách biệt với mắt bởi hàng vảy dưới mắt; 2 vảy môi trên đầu tiên có các hốc cảm nhiệt rõ ràng. Mắt được bao quanh bởi 2 hoặc 3 vảy trước mắt, 1 vảy trên mắt, 2 hoặc 3, hiếm khi 4 vảy sau mắt, 1, 2 hiếm khi 3 vảy dưới mắt. Các vảy bao quanh mắt, ngoại trừ vảy trên mắt thường hợp nhất hoặc được phân chia bởi đường đứt nhỏ. Vảy môi trên có 2 hố vảy sâu. 16-22 vảy hàm dưới. Vảy cằm  nhỏ và không đều. Rãnh môi dưới rõ ràng. Vảy trơn, 60-75 hàng vảy giữa thân. 256-270 vảy bụng; 65-70 vảy dưới đuôi. Vảy hậu môn phân chia.', 'Đặc điểm sinh thái học: Thường sống ở các rừng thưa, savan, cây bụi hay ven các rừng già, ở các đồi núi thấp có nhiều bụi rậm khô ráo. Chúng ưa sống gần các vực nước, đầm lầy. Có thể leo lên cây và thích cuốn mình vào những cành cây chìa ra trên mặt nước. ở đồng bằng Nam bộ, chúng ưa sống ở những nơi đầm lầy, rừng tràm, rừng sú vẹt ngập nước, đôi khi còn xâm nhập cả vào những khu vực có vườn cây. Chúng chủ yếu đi kiếm mồi vào ban đêm, nhiều nhất vào lúc xẩm tối. Trăn đất ăn những loài thú nhỏ (chủ yếu gặm nhấm, đôi khi cả hươu nai cỡ nhỏ, chim và những loài ếch nhái, bò sát). Sinh sản hàng năm. Ở khu vực Đồng Bằng Sông Cửu Long giao phối từ tháng 10 đến tháng giêng năm sau. Trăn chửa khoảng hai tháng đến ba tháng sáu ngày, đẻ từ 15 đến 60 quả trứng. Trăn mẹ ấp trứng bằng cách cuộn lấy ổ trứng. Sau khoảng hai tháng (56 - 85 ngày) thì trứng nở: Trăn sơ sinh dài khoảng 52 - 61cm và nặng khoảng 80 - 140g. Lột xác lần đầu khoảng 7 - 10 ngày sau khi nở.', 'Làm thực phẩm, đồ thời trang.', 'CR (Critically endangered)', 'Sắp nguy cấp', 'Nhóm II: hạn chế khai thác, sử dụng vì mục đích thương mại, gồm những loài thực vật rừng, động vật r', 'Phụ lục 2: những loài chưa bị đe dọa nhưng có thể dẫn đến tuyệt chủng.', 'Ít gặp', 'Quan sát', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `animals_img`
--

CREATE TABLE `animals_img` (
  `TenKhoaHoc` varchar(100) NOT NULL,
  `HinhAnh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `animals_img`
--

INSERT INTO `animals_img` (`TenKhoaHoc`, `HinhAnh`) VALUES
('Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2012', 'img/Ichthyophis bannanicus-LQNgon-009 - Ngôn Lâm Quang.JPG'),
('Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2013', 'img/Ichthyophis bannanicus-LQNgon-008 - Ngôn Lâm Quang.JPG'),
('Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2014', 'img/Ichthyophis bannanicus-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2015', 'Ichthyophis bannanicus-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Ichthyophis nguyenorum Nishikawa, Matsui, and Orlov, 2016', 'Ichthyophis bannanicus-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Duttaphrynus melanostictus (Schneider, 1799)', 'img/Duttaphrynus melanostictus-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Duttaphrynus melanostictus (Schneider, 1799)', 'img/Duttaphrynus melanostictus-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Duttaphrynus melanostictus (Schneider, 1799)', 'img/Duttaphrynus melanostictus-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Duttaphrynus melanostictus (Schneider, 1799)', 'img/Duttaphrynus melanostictus-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Kaloula pulchra Gray, 1831', 'img/Kaloula pulchra-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Kaloula pulchra Gray, 1831', 'img/Kaloula pulchra-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Microhyla heymonsii Vogt, 1911', 'img/Microhyla heymonsii-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Microhyla heymonsii Vogt, 1912', 'img/Microhyla heymonsii-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Microhyla heymonsii Vogt, 1913', 'img/Microhyla heymonsii-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Microhyla heymonsii Vogt, 1914', 'img/Microhyla heymonsii-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Microhyla heymonsii Vogt, 1915', 'img/Microhyla heymonsii-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Hylarana erythraea (Schlegel, 1837)', 'img/Hylarana erythraea-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Hylarana erythraea (Schlegel, 1837)', 'img/Hylarana erythraea-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Hylarana erythraea (Schlegel, 1837)', 'img/Hylarana erythraea-LQNgon-006 - Ngôn Lâm Quang.JPG'),
('Hylarana erythraea (Schlegel, 1837)', 'img/Hylarana erythraea-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Hylarana erythraea (Schlegel, 1837)', 'img/Hylarana erythraea-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Polypedates megacephalus Hallowell, 1861', 'img/Polypedates maculatus-LQNgon-006 - Ngôn Lâm Quang.JPG'),
('Polypedates megacephalus Hallowell, 1862', 'img/Polypedates maculatus-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Polypedates megacephalus Hallowell, 1863', 'img/Polypedates maculatus-LQNgon-016 - Ngôn Lâm Quang.JPG'),
('Polypedates megacephalus Hallowell, 1864', 'img/Polypedates maculatus-LQNgon-014 - Ngôn Lâm Quang.JPG'),
('Polypedates megacephalus Hallowell, 1865', 'img/Polypedates maculatus-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Calotes versicolor (Daudin, 1802)', 'img/Calotes versicolor-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Calotes versicolor (Daudin, 1802)', 'img/Calotes versicolor-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Calotes versicolor (Daudin, 1802)', 'img/Calotes versicolor-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Calotes versicolor (Daudin, 1802)', 'img/Calotes versicolor-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Calotes versicolor (Daudin, 1802)', 'img/Calotes versicolor-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Gehyra multilata (Weigmann,1835)', 'img/Gehyra mutilata-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Gehyra multilata (Weigmann,1835)', 'img/Gehyra mutilata-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Gehyra multilata (Weigmann,1835)', 'img/Gehyra mutilata-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Gehyra multilata (Weigmann,1835)', 'img/Gehyra mutilata-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Gehyra multilata (Weigmann,1835)', 'img/Gehyra mutilata-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Hemidactylus garnotii (Conant and Collins, 1991)', 'img/Hemidactylus garnotii-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Hemidactylus garnotii (Conant and Collins, 1991)', 'img/Hemidactylus garnotii-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Hemidactylus garnotii (Conant and Collins, 1991)', 'img/Hemidactylus garnotii-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Hemidactylus garnotii (Conant and Collins, 1991)', 'img/Hemidactylus garnotii-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Hemidactylus garnotii (Conant and Collins, 1991)', '/img/Hemidactylus garnotii-LQNgon-008 - Ngôn Lâm Quang.JPG'),
('Hemidactylus frenatus Schlegel in Duméril & Bibron, 1836', 'img/Hemidactylus frenatus-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Hemidactylus frenatus Schlegel in Duméril & Bibron, 1837', 'img/Hemidactylus frenatus-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Hemidactylus frenatus Schlegel in Duméril & Bibron, 1838', 'img/Hemidactylus frenatus-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Fejervarya limnocharis (Gravenhorst, 1829)', 'img/Fejervarya limnocharis-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Fejervarya limnocharis (Gravenhorst, 1829)', 'img/Fejervarya limnocharis-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Fejervarya limnocharis (Gravenhorst, 1829)', 'img/Fejervarya limnocharis-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Fejervarya limnocharis (Gravenhorst, 1829)', 'img/Fejervarya limnocharis-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Fejervarya limnocharis (Gravenhorst, 1829)', 'img/Fejervarya limnocharis-LQNgon-005 - Ngôn Lâm Quang.JPG'),
('Fejervarya cancrivora (Gravenhorst, 1829)', 'img/Fejervaria cancrivora-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Fejervarya cancrivora (Gravenhorst, 1829)', 'img/Fejervaria cancrivora-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Fejervarya cancrivora (Gravenhorst, 1829)', 'img/Fejervaria cancrivora-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Fejervarya sp.', 'img/Fejervarya sp.-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Fejervarya sp.', 'img/Fejervarya sp.-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Fejervarya sp.', 'img/Fejervarya sp.-LQNgon-006 - Ngôn Lâm Quang.JPG'),
('Fejervarya sp.', 'img/Fejervarya sp.-LQNgon-007 - Ngôn Lâm Quang.JPG'),
('Fejervarya sp.', 'img/Fejervarya sp.-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Hoplobatrachus rugulosus (Wiegmann, 1834)', 'img/Hoplobatrachus rugulosus-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Hoplobatrachus rugulosus (Wiegmann, 1834)', 'img/Hoplobatrachus rugulosus-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Hoplobatrachus rugulosus (Wiegmann, 1834)', 'img/Hoplobatrachus rugulosus-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Hoplobatrachus rugulosus (Wiegmann, 1834)', 'img/Hoplobatrachus rugulosus-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Occidozyga lima (Gravenhorst, 1829)', 'img/Occidozyga lima-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Occidozyga lima (Gravenhorst, 1829)', 'img/Occidozyga lima-LQNgon-002 - Ngôn Lâm Quang.JPG'),
('Occidozyga lima (Gravenhorst, 1829)', 'img/Occidozyga lima-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Occidozyga martensii (Peters, 1867)', 'img/Occidozyga martenii-LLQNgon-001 - Ngôn Lâm Quang.JPG'),
('Occidozyga martensii (Peters, 1867)', 'img/Occidozyga martenii-LLQNgon-002 - Ngôn Lâm Quang.JPG'),
('Occidozyga martensii (Peters, 1867)', 'img/Occidozyga martenii-LLQNgon-003 - Ngôn Lâm Quang.JPG'),
('Hemidactylus platyurus (Schneider, 1797)', 'img/Hemidactylus platyurus-LQN-004 - Ngôn Lâm Quang.JPG'),
('Hemidactylus platyurus (Schneider, 1797)', 'img/Hemidactylus platyurus-LQN-003 - Ngôn Lâm Quang.JPG'),
('Hemidactylus platyurus (Schneider, 1797)', 'img/Hemidactylus platyurus-LQN-002 - Ngôn Lâm Quang.JPG'),
('Hemidactylus platyurus (Schneider, 1797)', 'img/Hemidactylus platyurus-LQN-001 - Ngôn Lâm Quang.JPG'),
('Takydromus sexlineatus Daudin, 1802', 'img/Takydromus sexlineatus-LQNgon-001 - Ngôn Lâm Quang.JPG'),
('Takydromus sexlineatus Daudin, 1803', 'img/Takydromus sexlineatus-LQNgon-012 - Ngôn Lâm Quang.JPG'),
('Takydromus sexlineatus Daudin, 1804', 'img/Takydromus sexlineatus-LQNgon-006 - Ngôn Lâm Quang.JPG'),
('Takydromus sexlineatus Daudin, 1805', 'img/Takydromus sexlineatus-LQNgon-009 - Ngôn Lâm Quang.JPG'),
('Takydromus sexlineatus Daudin, 1806', 'img/Takydromus sexlineatus-LQNgon-004 - Ngôn Lâm Quang.JPG'),
('Python molurus (Linnaeus, 1758)', 'img/Python molurus-LQNgon-003 - Ngôn Lâm Quang.JPG'),
('Python molurus (Linnaeus, 1758)', 'img/Python molurus-LQNgon-006 - Ngôn Lâm Quang.JPG'),
('Python molurus (Linnaeus, 1758)', 'img/Python molurus-LQNgon-007 - Ngôn Lâm Quang.JPG'),
('Python molurus (Linnaeus, 1758)', 'img/Python molurus-LQNgon-012 - Ngôn Lâm Quang.JPG'),
('Python molurus (Linnaeus, 1758)', 'img/Python molurus-LQNgon-001 - Ngôn Lâm Quang.JPG');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `animals_update`
--

CREATE TABLE `animals_update` (
  `NgayCapNhat` datetime(6) NOT NULL,
  `TenKhoaHoc` varchar(100) NOT NULL,
  `TenTiengViet` varchar(100) NOT NULL,
  `TenDiaPhuong` varchar(100) NOT NULL,
  `Gioi` varchar(100) NOT NULL,
  `Nganh` varchar(100) NOT NULL,
  `Lop` varchar(100) NOT NULL,
  `Bo` varchar(100) NOT NULL,
  `Ho` varchar(100) NOT NULL,
  `HinhThai` varchar(3000) NOT NULL,
  `SinhThai` varchar(3000) NOT NULL,
  `GiaTri` varchar(100) NOT NULL,
  `BaoTonIUCN` varchar(100) NOT NULL,
  `BaoTonVN` varchar(100) NOT NULL,
  `BaoTon32` varchar(100) NOT NULL,
  `BaoTonCITES` varchar(100) NOT NULL,
  `PhanBo` varchar(100) NOT NULL,
  `TinhTrang` varchar(100) NOT NULL,
  `SinhCanh` varchar(100) NOT NULL,
  `DiaDiem` varchar(100) NOT NULL,
  `NgayThuMau` varchar(100) NOT NULL,
  `NguoiThuMau` varchar(100) NOT NULL,
  `NguoiYeuCau` varchar(100) NOT NULL,
  `TrangThai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `animals_update`
--

INSERT INTO `animals_update` (`NgayCapNhat`, `TenKhoaHoc`, `TenTiengViet`, `TenDiaPhuong`, `Gioi`, `Nganh`, `Lop`, `Bo`, `Ho`, `HinhThai`, `SinhThai`, `GiaTri`, `BaoTonIUCN`, `BaoTonVN`, `BaoTon32`, `BaoTonCITES`, `PhanBo`, `TinhTrang`, `SinhCanh`, `DiaDiem`, `NgayThuMau`, `NguoiThuMau`, `NguoiYeuCau`, `TrangThai`) VALUES
('2022-04-24 23:24:42.000000', 'Hoplobatrachus rugulosus (Wiegmann, 1834)', 'Ếch đồng', 'Ếch', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Hoplobatrachus rugulosus (Wiegmann, 1834)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871', 'Kích thước lớn, chân và tay tương đối ngắn, ngón chân có màng bao phủ gần như hoàn toàn, đầu ngón không có đĩa ngón, hơi phồng ở đầu ngón; không có củ bàn trong ở chân, khoảng 10 hàng nếp gấp da trên lưng, gian ổ mắt nhỏ hơn nhiều so với chiều rộng mi mắt trên.', 'Ếch đồng là loài phổ biến trong khu vực rừng tràm Mỹ Phước; được tìm thấy nhiều vào mùa mưa, đặc biệt vào đầu mùa mưa. Ếch đồng sinh sản vào đầu mùa mưa, con đực phát âm thanh to thu hút con cái. Ếch đực và ếch cái có hiện tượng \"bắt cặp\" khi giao phối. Trong khu vực rừng tràm Mỹ Phước, ếch đồng được tìm thấy trong sinh cảnh rừng tràm khai thác và rừng tràm đặc dụng.', 'Làm thực phẩm', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác, rừng tràm đặc dụng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '17/04/2018', 'Nguyễn Quang Cường', '6', 'Đã duyệt'),
('2022-04-24 23:26:48.000000', 'Occidozyga lima (Gravenhorst, 1829)', 'Cóc nước sần', 'Nhái bầu', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Occidozyga lima (Gravenhorst, 1829)', 'ANURA (Fischer, 1813)', 'Bufonidae Gray, 1825', 'Là một loài cóc nước nhỏ; lưỡi dài, tự do, đầu lưỡi tròn; ngón tay nhọn, ngón thứ nhất bằng ngón thứ 2, 2 hoặc 3 củ bàn tay; 2 củ bàn chân, và 1 nốt sần rõ ràng ở cuối xương chày; da rất nhám, có nhiều nốt sần hoặc gai nhỏ, có nhiều hàng nốt sần tạo thành các đường dọc hai bên thân, trên lưng và cằm; con đực với túi âm ở trong miệng; các vệt sẫm màu vắt ngang trên đùi và lưng; ngón tay có màng bơi nhỏ trong gốc ngón, ngón chân có màng bơi phủ hết ngón.', 'Các mẫu của loài cóc nước sần được tìm thấy trong mùa mưa ở các sinh cảnh rừng tràm đặc dụng, rừng dừa nước, lung. Vào đầu mùa mưa, chúng thường tập trung trong các ao nước nhỏ vào ban đêm, các con đực phát tiếng kêu thu hút con cái. \r\n', 'Chưa xác định.', 'Không có giá trị bảo tồn.', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, lung, rừng dừa nước.', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '05/05/2018', 'Nguyễn Quang Cường', '6', 'Đã duyệt'),
('2022-04-24 23:30:14.000000', 'Occidozyga martensii (Peters, 1867)', 'Cóc nước marten', 'Nhái nhớt', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Occidozyga martensii (Peters, 1867)', 'ANURA (Fischer, 1813)', 'Dicroglossidae Anderson, 1871', 'Cơ thể có kích thước nhỏ, ngắn và mập; các chi tương đối ngắn; bàn tay không có màng; bàn chân có màng phát triển chạm 2/3 chiều dài ngón; chóp ngón mở rộng thành dạng đệm tròn. Cấu trúc da khá đa dạng từ dạng trơn đến có nhiều nốt sần trên lưng; mặt dưới luôn trơn. Đầu nhỏ, mũi hình tam giác ngắn; màng nhĩ nhỏ vừa đủ nhận biết; nếp gấp trên màng nhĩ rõ ràng. Mắt phồng lên và hướng sang 2 bên. Màu sắc mặt lưng đa dạng; phần lớn màu xám hoặc nâu, thường có sọc màu vàng hoặc cam rõ ràng trên lưng, hoặc một vệt rộng màu xám đen dọc viền đen với 2 sọc cam; phổ biến là màu đỏ - rỉ sét ở sau đầu. Mặt dưới màu trắng sáng, cổ họng có các đốm đen li ti màu xám mờ. Con ngươi hình thoi với mống mắt có các sọc màu đồng xếp đồng quy.', 'Occcidozyga martensii là loài phổ biến trong rừng tràm Mỹ Phước, được tìm thấy nhiều vào đầu mùa mưa. Chúng thường được tìm thấy trên nền rừng, xung quanh các vũng nước đọng hoặc ở khu vực nước nông có lớp thực vật nổi dày, rậm rạp. Trong rừng tràm Mỹ Phước chúng phân bố trong các sinh cảnh rừng tràm đặc dụng, rừng tràm khai thác. ', 'Chưa xác định', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm đặc dụng, rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '06/05/2018', 'Nguyễn Quang Cường', '7', 'Đã duyệt'),
('2022-04-24 23:33:53.000000', 'Hemidactylus platyurus (Schneider, 1797)', 'Thạch sùng đuôi dẹp', 'Thằn lằn', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Hemidactylus platyurus (Schneider, 1797)', 'SQUAMATA OPPEL, 18411', 'Gekkonidae Gray, 1825', 'Các ngón chân có màng và mở rộng; tấm dưới ngón chân không phân chia; đốt ngón xa dài, mỏng, mọc tại bên trên phần mở rộng của đầu ngón; 2 cặp vảy sau hàm mở rộng, cặp thứ 2 ở bên lớn hơn cặp thứ nhất ở trong; nếp gấp bụng rõ ràng, được vảy nhỏ bao phủ; có màng da rộng ở phía sau chân sau; 16-20 lỗ đùi mỗi bên, xếp thành hàng thẳng và tiếp xúc ở giữa thân.', 'Thạch sùng đuôi dẹp là loài phổ biến sinh sống trong hoặc xung quanh khu dân cư. Trong tự nhiên, chúng thường được tìm thấy trên các thân cây gỗ lớn, kiếm ăn cả ngày và đêm; thức ăn là các loài côn trùng nhỏ sinh sống trong khu vực. Trong rừng tràm Mỹ Phước, loài này được tìm thấy trong sinh cảnh rừng tràm khai thác. ', 'Chưa xác định', 'Không có giá trị bảo tồn', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Phổ biến', 'Thu được mẫu', 'Rừng tràm khai thác', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '07/05/2018', 'Nguyễn Quang Cường', '8', 'Đã duyệt'),
('2022-04-24 23:35:58.000000', 'Takydromus sexlineatus Daudin, 1802', 'Thằn lằn đuôi dài', 'Thằn lằn đuôi dài', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Takydromus sexlineatus Daudin, 1802', 'SQUAMATA OPPEL, 18411', 'Lacertidae Gray, 1825', '\"Loài thằn lằn cỡ nhỏ, dài đuôi dài gấp sáu lần chiều dài thân. Dài thân 30 - 60mm, dài đuôi 160 - 180mm. Mõm nhọn, tấm mõm rộng. Hai tấm trán ở đỉnh tiếp xúc với nhau, rộng và ngắn hơn tấm trước trán. Tấm đỉnh lớn, cách nhau rõ bởi tấm gian đỉnh và tấm chẩm bé hơn. Có 2 - 3 tấm thái dương chạm tấm đỉnh.Các vảy vùng thái dương nổi gờ rất rõ. Có 3 cặp tấm sau cằm.\r\n\r\nThân có 6 hàng vảy dọc, rộng, nổi gờ rõ, 4 hàng vảy ở giữa tiếp tục kéo dài đến đuôi. Vảy bên thân bé, có 12 hàng vảy rộng ở bụng, các vảy này cũng nổi gờ rõ. Từ nếp gấp vai đến bẹn có 26 vảy. Tấm hậu môn lớn và có 2 vảy dài, bé hơn nằm ở hai bên.Ở con đực và con cái đều có 1 lỗ đùi ở mỗi bên. Mép trên có từ 6  -8 tấm vảy và 5 - 8 tấm ở mép dưới mỗi bên.\r\n\r\nThân màu xanh xám đến nâu xám, phần đầu có màu thẫm hơn. Cằm và cổ họng có màu trắng đục đến hơi vàng. Mặt trên của các chi và phần sau của gốc đuôi màu xám nhạt. Ở các cá thể đực có một dải hẹp màu trắng xám chạy từ góc sau tấm đỉnh đến giữa thân và mờ dần về phía đuôi. Từ vai đến bẹn là các đốm trắng xám nhỏ hình bầu dục xếp thành hàng dọc.\"\r\n', 'Là loài hoạt động ban ngày, thường kiếm ăn trên các tán cây thấp, thức ăn là các loài côn trùng sinh sống trong khu vực. Hoa văn trên cơ thể có khả năng ngụy trang lẫn vào môi trường xung quanh. Buổi sáng chúng thường phơi nắng hấp thu nhiệt và hoạt động nhiều khi nhiệt độ cao. Ban đêm ngủ trên các nhánh cây thấp và bụi cây.\r\n', 'Chưa xác định', 'LC (Least concern)', 'Không có giá trị bảo tồn', 'Không nằm trong danh mục bảo tồn', 'Không có trong danh mục', 'Ít gặp', 'Thu được mẫu', 'Rừng tràm trồng', 'Rừng Tràm Mỹ Phước, Mỹ Phước, Mỹ Tú, Sóc Trăng.', '08/05/2018', 'Nguyễn Quang Cường', '9', 'Đã duyệt'),
('2022-04-24 23:38:21.000000', 'Python molurus (Linnaeus, 1758)', 'Trăn lưới', 'Trăn đất', 'Động vật (Animalia)', 'Động vật có dây sống (chordata)', 'Python molurus (Linnaeus, 1758)', 'SQUAMATA OPPEL, 18411', 'Pythonidae Fitzinger, 1826', '\"Đặc điểm chẩn loại:  Rắn lành cỡ rất lớn trong họ nhà Trăn Pythonidae, dài tới 8m (kích thước trung bình khoảng từ 4 - 6m). Đầu dài, nhỏ. Hai tấm vảy môi trên có trên mỗi tấm vảy một lỗ (lỗ môi là cơ quan cảm giác nhiệt). Có hai cựa nhỏ, hình móng nằm ở hai bên khe huyệt. Cựa trăn cái ngắn, ẩn sâu trong hốc bên khe huyệt. Đầu có màu nâu xám, mặt trên đầu có hoa văn hình mũi mác di từ cổ, mũi nhọn hướng về phía đầu mõm. Mặt trên lưng có màu xám nhạt hay vàng nhạt có một dãy những vết lớn dài, màu nâu đỏ viền đen. Mặt bụng màu vàng hay nâu vàng có những đốm nâu hay đen (Smith 1984).\r\n\r\nĐặc điểm hình thái:  Đầu hình tam giác, chiều dài gần 2 lần chiều rộng. Lỗ mũi tách biệt bởi 2 vảy mũi. Có 2 cặp vảy trước trán, cặp vảy phía sau nhỏ hơn; vảy trán phân chia. Vùng vảy chẩm và vùng vảy thái dương không đều. Có 10 – 13 vảy môi trên, vảy thứ VI hoặc thứ VII ở dưới mắt hoặc tách biệt với mắt bởi hàng vảy dưới mắt; 2 vảy môi trên đầu tiên có các hốc cảm nhiệt rõ ràng. Mắt được bao quanh bởi 2 hoặc 3 vảy trước mắt, 1 vảy trên mắt, 2 hoặc 3, hiếm khi 4 vảy sau mắt, 1, 2 hiếm khi 3 vảy dưới mắt. Các vảy bao quanh mắt, ngoại trừ vảy trên mắt thường hợp nhất hoặc được phân chia bởi đường đứt nhỏ. Vảy môi trên có 2 hố vảy sâu. 16-22 vảy hàm dưới. Vảy cằm  nhỏ và không đều. Rãnh môi dưới rõ ràng. Vảy trơn, 60-75 hàng vảy giữa thân. 256-270 vảy bụng; 65-70 vảy dưới đuôi. Vảy hậu môn phân chia.\"\r\n', 'Đặc điểm sinh thái học: Thường sống ở các rừng thưa, savan, cây bụi hay ven các rừng già, ở các đồi núi thấp có nhiều bụi rậm khô ráo. Chúng ưa sống gần các vực nước, đầm lầy. Có thể leo lên cây và thích cuốn mình vào những cành cây chìa ra trên mặt nước. ở đồng bằng Nam bộ, chúng ưa sống ở những nơi đầm lầy, rừng tràm, rừng sú vẹt ngập nước, đôi khi còn xâm nhập cả vào những khu vực có vườn cây. Chúng chủ yếu đi kiếm mồi vào ban đêm, nhiều nhất vào lúc xẩm tối. Trăn đất ăn những loài thú nhỏ (chủ yếu gặm nhấm, đôi khi cả hươu nai cỡ nhỏ, chim và những loài ếch nhái, bò sát). Sinh sản hàng năm. Ở khu vực Đồng Bằng Sông Cửu Long giao phối từ tháng 10 đến tháng giêng năm sau. Trăn chửa khoảng hai tháng đến ba tháng sáu ngày, đẻ từ 15 đến 60 quả trứng. Trăn mẹ ấp trứng bằng cách cuộn lấy ổ trứng. Sau khoảng hai tháng (56 - 85 ngày) thì trứng nở: Trăn sơ sinh dài khoảng 52 - 61cm và nặng khoảng 80 - 140g. Lột xác lần đầu khoảng 7 - 10 ngày sau khi nở.', 'Làm thực phẩm, đồ thời trang.', 'CR (Critically endangered)', 'Sắp nguy cấp', 'Nhóm II: hạn chế khai thác, sử dụng vì mục đích thương mại, gồm những loài thực vật rừng, động vật r', 'Phụ lục 2: những loài chưa bị đe dọa nhưng có thể dẫn đến tuyệt chủng.', 'Ít gặp', 'Quan sát', '', '', '', '', '6', 'Đã duyệt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `animals_update_img`
--

CREATE TABLE `animals_update_img` (
  `TenKhoaHoc` varchar(100) NOT NULL,
  `HinhAnh` varchar(100) NOT NULL,
  `NguoiYeuCau` varchar(100) NOT NULL,
  `TrangThai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `fullname`, `username`, `password`, `img`, `role`) VALUES
(2, 'Lê Văn Long', 'long', '202cb962ac59075b964b07152d234b70', '1650540015154009.jpg', 'user'),
(3, 'Lâm Văn Thành', 'thanh', '202cb962ac59075b964b07152d234b70', '1650540035leaf-3707549_960_720.jpg', 'user'),
(5, 'Lê Minh Hải', 'hai', '202cb962ac59075b964b07152d234b70', '1650706344cool-1-1600x1200.jpg', 'user'),
(6, 'Đinh Vĩnh Thái', 'thai', '202cb962ac59075b964b07152d234b70', '1650817051avatar.jpg', 'user'),
(7, 'Nguyễn Đình Thanh', 'dinhthanh', '202cb962ac59075b964b07152d234b70', '1650817659Untitled.png', 'user'),
(8, 'Nguyễn Thị Bảo Nhiên', 'baonhien', '202cb962ac59075b964b07152d234b70', '1650817952rose-320868_960_720.jpg', 'user'),
(9, 'Phạm Tuấn Kiệt ', 'kiet', '202cb962ac59075b964b07152d234b70', '1650818072cool-1-1600x1200.jpg', 'user'),
(10, 'Nguyễn Văn Thành', 'vanthanh', '202cb962ac59075b964b07152d234b70', '1650818405154009.jpg', 'user'),
(11, 'ADMIN', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1650820542pngtree-beautiful-admin-roles-line-vector-icon-png-image_2035379.jpg', 'admin');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
