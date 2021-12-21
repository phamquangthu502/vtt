<%@ page pageEncoding="utf-8" import="java.util.*,dao.*,model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Quản lý thuê xe ô tô</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="../../vendors/ti-icons/css/themify-icons.css">
<link rel="stylesheet" href="../../vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- inject:css -->
<link rel="stylesheet" href="../../css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="../../images/favicon.png" />
<%@include file="../../../header.jsp"%>
<style type="text/css">
	body {
		background: rgb(204, 204, 204);
	}

	page {
		background: white;
		display: block;
		margin: 0 auto;
		margin-bottom: 0.5cm;
		box-shadow: 0 0 0.5cm rgba(0, 0, 0, 0.5);
	}

	page[size="A4"] {
		width: 21cm;
		height: 29.7cm;
	}

	page[size="A4"][layout="landscape"] {
		width: 29.7cm;
		height: 21cm;
	}

/* h2 {
	text-align: center;
	padding: 20px;
} */
	@media print {
		body, page {
			margin: 0;
			box-shadow: 0;
		}
		.btn{
	        display: none !important;
	    }
	   
		
	}
	@media print {
	  @page { margin: 0; }
	  body { margin: 1.6cm; }
	}
</style>
</head>
<body>
	<%
		HDongDoitacChoThue hd = (HDongDoitacChoThue) session.getAttribute("hdong1");
		List<XeDathueDoitac> listXedathue = hd.getListXedathue();
	%>
	<page size="A4">
	<div class="WordSection1" style="padding: 10px;">

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>C&#7896;NG HÒA XÃ H&#7896;I CH&#7910; NGH&#296;A VI&#7878;T
				NAM</b>
		</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>&#272;&#7897;c l&#7853;p – T&#7921; do – H&#7841;nh phúc</b>
		</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>&nbsp;</p>

		<p class="MsoNormal" align=center
			style='text-align: center; text-indent: .5in'>
			<b>H&#7906;P &#272;&#7890;NG THUÊ XE&nbsp;</b>
		</p>

		<p class="MsoNormal" style='text-align: justify'>
			<i>&nbsp;&nbsp;&nbsp;&nbsp; Hôm nay, ngày .... tháng ....
				n&#259;m ......., t&#7841;i
				..........................................., chúng tôi g&#7891;m:</i>
		</p>

		<p class="MsoNormal" style='text-align: justify'>
			<b><u>BÊN CHO THUÊ&nbsp;</u></b><i>(sau &#273;ây g&#7885;i là<b>&nbsp;Bên
					A</b>) &nbsp;
			</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>Ông (bà):
			<b>Họ và tên đối tác</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>CMND/CCCD/H&#7897;
			chi&#7871;u s&#7889;: .................... do ................
			c&#7845;p ngày ....................</p>

		<p class=MsoNormal style='text-align: justify'>Địa chỉ: <b>Địa chỉ đối tác</b></p>
		<p class=MsoNormal style='text-align: justify'>Điện thoại: <b>SĐT đối tác</b></p>
		<p class=MsoNormal style='text-align: justify'>
			<b><u>BÊN THUÊ</u></b>&nbsp;<i>(Sau &#273;ây g&#7885;i t&#7855;t
				là&nbsp;<b>Bên&nbsp;B</b>)
			</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>CỬA HÀNG THUÊ XE Ô TÔ THUPQ</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>Địa chỉ: số 233 -
			Giáp Nhất - Q.Thanh Xuân - TP.Hà Nội</p>

		<p class=MsoNormal style='text-align: justify'>
			<i>Hai bên &#273;ã th&#7887;a thu&#7853;n và th&#7889;ng
				nh&#7845;t ký k&#7871;t H&#7907;p &#273;&#7891;ng thuê xe ôtô
				v&#7899;i nh&#7919;ng &#273;i&#7873;u kho&#7843;n c&#7909; th&#7875;
				nh&#432; sau:</i>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 1</b>.&nbsp;<b>&#272;&#7863;c &#273;i&#7875;m
				và th&#7887;a thu&#7853;n thuê xe</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>B&#7857;ng
			h&#7907;p &#273;&#7891;ng này, Bên A &#273;&#7891;ng ý cho Bên B thuê
			và bên B &#273;&#7891;ng ý thuê xe ô tô có &#273;&#7863;c
			&#273;i&#7875;m sau &#273;ây:</p>

		<div class="table-responsive pt-3">
			<p class="card-description">Xe đã chọn</p>
			<p class="card-description" style="color: red;">( Vui lòng chọn xe đã thỏa thuận
			với đối tác )</p>
			<div class="table-responsive" >
			    <table class="table table" >
			      <thead style="position: sticky; top: 0; z-index: 10; background: #e6e2e2;">
			        <tr>
						<th style="width: 30px;">STT</th>
						<th>Tên xe</th>
						<th>Biển số</th>
						<th>Dòng xe</th>
						<th>Đời</th>
						<th>Màu</th>
						<th>Tình trạng xe</th>
						<th>Đơn giá(VNĐ)</th>
					</tr>
			      </thead>
			      <tbody class="tbody1">
			      <%
						for (int i = 0; i < listXedathue.size(); i++) { 
				   %>
			        <tr>
					  <td><%= i+1%></td>
					  <td><%= listXedathue.get(i).getXe().getXe().getTen()%></td>
					  <td><%= listXedathue.get(i).getXe().getXe().getBienso()%></td>
					  <td><%= listXedathue.get(i).getXe().getXe().getDong()%></td>
					  <td><%= listXedathue.get(i).getXe().getXe().getDoi()%></td>
				      <td><%= listXedathue.get(i).getXe().getXe().getMau()%></td>
			          <td><%= listXedathue.get(i).getTinhtrang()%></td>
			          <td><%= listXedathue.get(i).getTinhtrang()%></td>
			        </tr>
			        <%
						}
					%> 
			      </tbody>
			    </table>
			  </div>
		</div>
		<div style="border: 0.5px solid #aab2bd;margin: 10px;"></div>
		  <div class="row" style="font-size: 14px;">
		  	<div class="col-8" style="text-align: right">Tổng tiền: </div>
		  	<div class="col-4" style="text-align: left"><b><%= hd.getTongtien() %></b> đồng</i></div>
		  </div>
		  <div class="row" style="font-size: 14px;">
		  	<div class="col-8" style="text-align: right">Bằng chữ: </div>
		  	<div class="col-4" style="text-align: left"><b>Tiền</b> đồng</i></div>
		  </div>
		<!-- phần 2 -->

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 2. Th&#7901;i h&#7841;n thuê xe ô tô</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<i>Thuê từ ngày</i> <b>15/12/2021</b> <i>đến ngày</i> <b>22/12/2021</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<b>&#272;i&#7873;u 3: Giá thuê và ph&#432;&#417;ng th&#7913;c
				thanh toán</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			1. Giá thuê tài s&#7843;n nêu trên là:&nbsp;<b>……………….VN&#272;/………….</b>&nbsp;(<i>B&#7857;ng
				ch&#7919;: ……….. &#273;&#7891;ng trên m&#7897;t ………….)</i>.
		</p>

		<p class=MsoNormal style='text-align: justify'>2. Ph&#432;&#417;ng
			th&#7913;c thanh toán: Thanh toán b&#7857;ng ………………… và Bên B
			ph&#7843;i thanh toán cho Bên A s&#7889; ti&#7873;n thuê xe ô tô nêu
			trên vào ngày …………………...</p>

		<p class=MsoNormal style='text-align: justify'>3. Vi&#7879;c giao
			và nh&#7853;n s&#7889; ti&#7873;n nêu trên do hai bên t&#7921;
			th&#7921;c hi&#7879;n và ch&#7883;u trách nhi&#7879;m
			tr&#432;&#7899;c pháp lu&#7853;t.</p>
			
		<!-- Ký tên -->
		<p class=MsoNormal style='text-align: justify'>
			<b>&nbsp;&nbsp;BÊN CHO
				THUÊ                                                                BÊN THUÊ</b>
		</p>

		<p class=MsoNormal style='text-align: justify'>
			<i>(ký và ghi rõ h&#7885;
				tên)                                                          (ký và ghi rõ
				h&#7885; tên)</i>
		</p>

		<p class=MsoNormal>&nbsp;</p>
	</div>
	<footer>
		<div style="display: flex; justify-content: center; margin-top: 35px;">
			<button type="button" class="btn btn-info btn-icon-text"
				onclick="window.print()"
				style="padding: 0.75rem 1rem; color: #f3f6f9; background-color: #0a7dff; margin-bottom:5px;width: 185px;">
				In hợp đồng <i class="ti-printer btn-icon-append"></i>
			</button>
		</div>
		<div style="display: flex; justify-content: center; margin-top: 20px;">
			<button type="button" class="btn btn-danger btn-icon-text"
				onclick="openPage('gdTimDoitac.jsp')"
				style="padding: 0.75rem 1rem; color: #f3f6f9; margin-bottom:20px;width: 185px;" >
				Quay lại <i class=" ti-home btn-icon-append"></i>
			</button>
		</div>
	</footer>
	</page>
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<script src="../../js/todolist.js"></script>
</body>
</html>
