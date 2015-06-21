<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="comm.CommUtil"%>
<%@page import="book.*, java.util.*"%>
<%
	String num=request.getParameter("no");
	

	//User user = session.getAttribute("USER_INFO");
	
	
	BookDao dao = new BookDao();	
	BookVO book = dao.getPerformInfo(Integer.parseInt(num));

	int no = book.getNo();
	String title = book.getTitle();
	String subtitle = book.getSubtitle();
	String genre = book.getGenre();
	Date startdate = book.getStartdate();
	Date enddate = book.getEnddate();
	String time = book.getTime();
	int runtime = book.getRuntime();
	String place = book.getPlace();
	String grade = book.getGrade();
	String contact = book.getContact();
	int seat = book.getSeat();
	String discount = book.getDiscount();
	String contents = book.getContents();
	Date regdate = book.getRegdate();
	String image = book.getImage();
	String local = book.getLocal();
	
	PriceVO price = dao.getPriceInfo(Integer.parseInt(num));
	int priceno = price.getNo();
	int adult = price.getAdult();
	int student = price.getStudent();
	int kid = price.getKid();
	int performno=price.getPerformNo();
	
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Her Designs</title>
<link rel="stylesheet" href="/css/style.css" type="text/css" />
<script type="text/javascript">

</script>
</head>
<body>
	<div class="header">
		<div>
			<a href="/index.jsp" id="logo"><img src="/images/common/logo.gif" alt="logo" /></a>
			<div class="navigation">
				<ul class="first">
					<li class="first"><a href="/index.jsp">HOME</a></li>
					<li><a href="/login/login.jsp">로그인</a></li>
					<li><a href="/login/logout.jsp">로그아웃</a></li>
					<li><a href="/mypage/mypage.html">나의 사티룸</a></li>
					<li><a href="/join/joinform.jsp">회원가입</a></li>
					<li><a href="/etc/sitemap.jsp">사이트맵</a></li>
				</ul>
			</div>
			<form action="" class="search">
				<input type="text" value="search" onblur="this.value=!this.value?'search':this.value;" onfocus="this.select()" onclick="this.value='';" /> <input
					type="submit" id="submit" value="" />
			</form>
		</div>
		<div id="navigation">
			<ul>
				<li class="selected"><a href="/book/performlist.jsp">공연&middot;전시예매</a></li>
				<li><a href="/news/news.html">사티사랑방</a></li>
				<li><a href="/notice/notice.html">사티고객지원</a></li>
			</ul>
		</div>
	</div>
	<div class="body">
		<div class="sidebar">
			<div class="first">
				<h2>
					<a href="#">공연&middot;전시예매</a>
				</h2>
				<ul>
					<li><a href="#">연극</a></li>
					<li><a href="#">뮤지컬</a></li>
					<li><a href="#">어린이</a></li>
					<li><a href="#">무용</a></li>
					<li><a href="#">음악</a></li>
					<li><a href="#">전통</a></li>
					<li><a href="#">전시</a></li>
				</ul>
			</div>
		</div>
		<!-- 작품정보 -->
		<h3><%=title %></h3>
		<table border="0" cellspacing="0" cellpadding="0" class="detail" style="width: 640px;" summary="">
			<tr>
				<td width="255" valign="top"><table border="0" cellspacing="0" cellpadding="0" style="width: 230px" summary="">
						<tr>
							<td><img src="../upload/perform/<%=image %>" width='230' height='335' alt='쿵페스티벌' id='l_image' /></td>
						</tr>

					</table></td>
				<td valign="top"><table border="0" cellspacing="0" cellpadding="0" style="width: 380px;" summary="">
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />부제목</td>
							<td class="td_data2"><%=subtitle %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />장르</td>
							<td class="td_data2"><%=genre %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />기간</td>
							<td class="td_data2"><%=CommUtil.dateToString(startdate) %>
								<%if(startdate != null) { %>~ <%} %><%=CommUtil.dateToString(enddate) %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />시간</td>
							<td class="td_data2"><%=time %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />러닝타임</td>
							<td class="td_data2"><%=runtime %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />지역/장소</td>
							<td class="td_data2"><%=local%> / <%=place %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />관람등급</td>
							<td class="td_data2"><%=grade %></td>
						</tr>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />문의전화</td>
							<td class="td_data2"><%=contact %></td>
						</tr>


						<script type="text/javascript">
<!--
/* 날짜선택 */

function changeScheduleDate(playCompanyCD, placeCD, regCompanyCD, programCD)
{
	var sIndex = document.all.schedule_date.selectedIndex;
	if (sIndex==-1)
	{
		sIndex = 0;
	}
	var playDate = document.all.schedule_date.options[sIndex].value;
	iframeSchedule.location.href = "sarang_view_schedule.asp?play_company_cd="+playCompanyCD+"&place_cd="+placeCD+"&r_company_cd="+regCompanyCD+"&program_cd="+programCD+"&play_date="+playDate+"";
}
//-->
</script>
						<tr>
							<td class="td_data"><img src="images/bullet_dot1.gif" alt="" width="2" height="2" hspace="5" style="vertical-align: middle" />잔여석 정보</td>
							<td class="td_data2">
								<table border="0" cellspacing="0" cellpadding="0" style="width: 100%" summary="">


									<tr>
										<td><select name="schedule_date" size="5" title="기간 선택" class="select_info" id="schedule_date"
											onchange="changeScheduleDate('102264', '1001', '100101', '10006861') ">

												<option value="20150801">8.1(토)</option>

										</select></td>
										<td><select name="schedule_time" title="시간" size="5" id="schedule_time" class="select_info">
												<option></option>
										</select></td>
									</tr>
								</table> <iframe id="iframeSchedule" width="500" height="100" style="display: none" title="일자"></iframe> <script type="text/javascript">
changeScheduleDate('102264', '1001', '100101', '10006861');
</script>

							</td>
						</tr>


					</table></td>
			</tr>
		</table>
		<!-- 작품정보 E -->
		</td>
		</tr>
		<tr>
			<td>
				<!-- 예매하기 --> <tr>
			<td colspan="2" align="right" style="padding-top:7px;"><img src="photo/btn_wish2.gif" alt="찜하기" hspace="5" onclick="wish_form.submit();"
				style="cursor:pointer;" /><a href='/member/login.asp?ret_url=/ticketing/type_sarangView.asp?id%3D11540'><img src='photo/btn_reserve3.jpg.gif'
					alt='예매를 하시려면 로그인 하여야 합니다.' width='106' height='30' /></a></td>
            </tr>
    <!-- 탭 및 관람전 유의사항 S -->
				<table border="0" cellspacing="0" cellpadding="0" class="detail" style="width: 640px;" summary="">
					<tr>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td style="padding-left: 8px;">

							<div class="tab">
								<a href="#paymentInfo" style="vertical-align: bottom"><img src="photo/type_tab1.gif" alt="가격정보" /></a>
							</div>
							<div class="tab">
								<a href="#performanceInfo" style="vertical-align: bottom"><img src="photo/type_tab2.gif" alt="작품정보" /></a>
							</div>
							<div class="tab">
								<a href="#reservNotice" style="vertical-align: bottom"> <img src="photo/type_tab3.gif" alt="예매 유의사항" /></a>
							</div> <a href="#afterWrite" title="한줄남기기"><div class="tab" style="background-image: url('images/type_tab4.gif'); background-repeat: no-repeat;">
									<span class="no">(0건)</span>
								</div></a> <a href="#afterWrite2" title="관람후기"><div class="tab"
									style="background-image: url('images/type_tab5.gif'); background-repeat: no-repeat;">
									<span class="no2">(0건)</span>
								</div></a>
						</td>
					</tr>
					<tr>
						<td align="center" height="12" style="background-image: url(images/tab_bot_line.gif); background-repeat: no-repeat"></td>
					</tr>
				</table> <!-- 탭 및 관람전 유의사항 E -->
			</td>
		</tr>
		
  <tr>
    <td>&nbsp;</td>
  </tr>
	
	<tr> 
		<td> 
			<!-- 추가사항 S -->
			<table border="0" cellspacing="0" cellpadding="0" style="width:640px" summary="">
				<tr> 
					<td><img src="photo/mt_13.gif" alt="공연 관람시 유의 사항" /></td>
				</tr>
				<tr> 
					<td valign="top">
						<table border="0" cellspacing="1" cellpadding="0" class="basic_line2" style="width:100%" summary="">
						  <tr>
        <td align="center" style="padding-top:10px"><img src="photo/info.jpg"
										alt="관람 전 유의사항, 1. 온라인 예매 및 취소는 공연 전일 오후 5시까지 가능하며, 공연 당일에는 온라인 예매 및 취소, 변경, 환불이 불가능합니다. 2. 늦어도 공연 20분전에는 티켓수령바랍니다. 공연 시작 후에는 입장이 제한되어 관람이 불가할 수 있습니다. 3. 티켓수령시 예매번호와 신분증을 지참하여 주시기 바랍니다.(학생일경우 학생증 지참) 4. 관람등급 이하는 입장이 불가할 수 있습니다. 관람등급을 꼭 확인해주세요. 5. 티켓은 본인 외 타인양도가 불가합니다. 유의해주세요." /></td>
      </tr>
						</table>
					</td>
				</tr>
			</table>
			<!-- 추가사항 E -->
			
		</td>
	</tr>
	<tr> 
		<td>&nbsp;</td>
	</tr>

  <tr>
    <td>
<a name="paymentInfo"></a>
    <!-- 가격정보 S -->
			<table border="0" cellspacing="0" cellpadding="0" style="width:640px" summary="">
				<h2>가격정보</h2>
				<tr> 
					<td valign="top">
						<table border="0" cellspacing="1" cellpadding="0" class="basic_line2" style="width:100%" summary="">
							<tr> 
								<td bgcolor="#FFFFFF" class="read">
									<table border="0" cellspacing="0" cellpadding="0" style="width:100%" summary="">

										<h4>기본가격정보</h4>
										<tr>
											<td>
												<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
													<tr>
														<td bgcolor="f4f4f4" style="border-top:2px solid #ce5aa3">

															<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
																<tr>																	
																	
																	<td width="122" align="center" style="padding:8px 0;">																	
																		<font color="#4b4b4b">일&nbsp;&nbsp;&nbsp;반</font>																	
																	</td>
																	
																	<td width="119" align="center">																	
																		<font color="#4b4b4b">학&nbsp;&nbsp;&nbsp;생</font>
																	</td>
																	
																	<td width="130" align="center">																	
																		<font color="#4b4b4b">미취학</font>																	
																	</td>
																	
																	<td width="119" align="center">																	
																		<font color="#4b4b4b"></font>																	
																	</td>
																	
																	<td width="119" align="center">																	
																		<font color="#4b4b4b"></font>																	
																	</td>
																	
																	<td>&nbsp;</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="1" bgcolor="dedbdc"></td>
													</tr>
													<tr>
														<td>
															<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
																<tr>
																	
																	<td width="122" align="center" style="padding:8px 0;"><%=adult %></td>
																	<td width="1"></td>
																	
																	<td width="119" align="center"><%=student %></td>
																	<td width="1"></td>
																	
																	<td width="130" align="center"><%=kid %></td>
																	<td width="1"></td>
																	
																	<td width="119" align="center"></td>
																	<td width="1"></td>
																	
																	<td width="119" align="center"></td>	
																	
																	<td>&nbsp;</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="1" bgcolor="dedbdc"></td>
													</tr>
												</table>
											</td>
										</tr>

										<tr>
											<td height="23" colspan="2"></td>
										</tr>

										
										<tr>
											<td>
												<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
													<tr>
														<td style="border-top:2px solid #ce5aa3;"></td>
													</tr>

													<tr>
														<td>
															<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
																<tr>
																	<td bgcolor="f6ecf3" style="width:180px; padding:10px 3px; color:#99275e; text-align:center;">사랑티켓 멤버십 할인</td>
																	<td style="padding:10px 0 10px 10px; word-break:break-all;">본 가격에서 10% 할인</td>
																</tr>
															</table>
														</td>
													</tr>
													<tr>
														<td height="1" bgcolor="dedbdc"></td>
													</tr>

												</table>
											</td>
										</tr>

									</table>
								</td>
							</tr>
			
							
						</table>
					</td>
				</tr>
			</table>
    <!--가격 정보 E-->
    </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>
      <!-- 작품정보 S -->
	  <a name="performanceInfo"></a>
      <table border="0" cellspacing="0" cellpadding="0" style="width:640px;" summary="">
      <tr>
        <td><img src="photo/mtS_10.gif" alt="작품정보" /></td>
      </tr>
      <tr>
        <td valign="top"><table border="0" cellspacing="1" cellpadding="0" class="basic_line2" style="width:640px;" summary="">
          <tr>
            <td bgcolor="#FFFFFF"><%=contents %></td>
          </tr>
		
        </table></td>
      </tr>
    </table>

 
    <!-- 예매 유의 사항 S -->
	<a name="reservNotice"></a>
	<table border="0" cellspacing="0" cellpadding="0" class="detail" style="width:640px;" summary="">
		<tr> 
			<td><img src="photo/mtS_09 (1).gif" alt="예매 유의사항" /></td>
        </tr>
        <tr> 
			<td valign="top">
				<table border="0" cellpadding="0" cellspacing="1" bgcolor="DAC6D3" style="width:640px;" summary="">
					<tr> 
						<td bgcolor="#FFFFFF" class="read">
							<table border="0" cellspacing="0" cellpadding="5" style="width:610px;" summary="">
								<tr> 
									<td width="145" rowspan="7"><img src="photo/im_01.gif" alt="" /></td>
									<td class="multi" style="word-break:break-all;"><span class="point">1. </span>예매는 공연 전일 오후 5시까지 가능합니다.</td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">2. 예매취소는 공연 전일 오후 5시까지 가능</span>하며, 당일 취소는 불가합니다.</td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">3. 부분취소 및 변경</span>은 불가하오니 전체 취소 후 재예매하셔야 합니다. </td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">4. 무통장입금 (가상계좌 결제) 유의사항</span><br /> 
										<table width="100%" border="0" cellspacing="0" cellpadding="3">
											<tr> 
												<td>-</td>
												<td style="word-break:break-all;"><span class="point">무통장입금</span>은 공연관람일을 제외한<span class="point"> 
												3일전까지만 예매</span>하실 수 있습니다. </td>
											</tr>
											<tr> 
												<td>-<br /><br /><br /></td>
												<td style="word-break:break-all;">무통장 입금 결제시 은행 창구 또는 인터넷 뱅킹, 텔레뱅킹을 이용하여 주시기 바랍니다.  ATM기기로 입금시 '무통장입금'은 오류가 자주 발생됩니다. 현금카드를 이용한 '계좌이체'로 입금 바랍니다.</td>
											</tr>
											<tr> 
												<td>-<br /><br /><br /></td>
												<td style="word-break:break-all;">입금  가능 기간은 예매완료 이틀 후 밤 11시59분까지 입니다. 은행에 따라서 밤 11시 30분 이후로는 온라인입금이 제한될 수 있으며, 입금마감시간까지 미입금된 경우는 가상 계좌와 예매가 자동 취소됩니다. </td>
											</tr>
											<tr> 
												<td>-<br /><br /></td>
												<td style="word-break:break-all;">예매금액과 입금금액이 일치하지 않을 경우 입금 오류가 발생하여 입금처리 되지 않사오니, 
												<span class="point">예매시 예매 금액을 꼭 확인</span>하여 주시기 바랍니다.</td>
										  </tr>
											<tr> 
												<td>-<br /><br /><br /></td>
												<td style="word-break:break-all;">무통장 입금 결제시 은행 창구 또는 인터넷 뱅킹, 텔레뱅킹을 이용하여 주시기 바랍니다 ATM기기로 입금시 '무통장입금'은 오류가 자주 발생됩니다. 현금카드를 이용한 '계좌이체' 로 입금 바랍니다.</td>
											</tr>
											<tr>
												<td>-<br /><br /></td>
												<td style="word-break:break-all;"><span class="point">무통장 입금 후 취소</span>하셨을 경우 <span class="point">취소신청 후 5~7일 후 환불 처리</span> 됩니다. <br />
											    환불금은<span class="point"> ㈜씨스퀘어소프트로 입금 처리</span> 됩니다.</td>
										  </tr>
										</table>
									</td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">5. </span>신용카드 결제 후 기본 영수증은 '나의 사티룸 - 사랑티켓 예매내역확인' (링크연결 요청)을 이용해 확인가능합니다. 승인내역 및 카드전표가 필요한 경우 http://www.ticketnara.co.kr 에서 확인 및 출력이 가능합니다. (최근 한달간의 내역만 보유)</td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">6. 공연 당일 </span>예매번호와 
									신분증을 매표소에 제시하시고 티켓을 수령하시기<br /> <font color="#FFFFFF">--</font>바랍니다. </td>
								</tr>
								<tr> 
									<td class="multi" style="word-break:break-all;"><span class="point">7.</span> 예매 및 취소 수수료 안내<br />
									  사랑티켓은 예매, 환불 모두 수수료가 없습니다. <br />
								      <span class="point">(단, 무통장입금(가상계좌) 으로 결제하신 건의 경우 취소 시, 송금수수료 500원을 제외한 차액이 입금됩니다)</span><br />
                                      예매 취소와 환불 요청은 공연 관람 전일 오후 5시 까지 가능합니다. 마감시간이 지난 후에는 예매, 취소, 환불이 모두 불가하오니 이 점 이용에 참고하시기 바랍니다.</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
      <!-- 예매 유의 사항 E -->
<!-- 관람후기 책갈피 -->
<a name="afterWrite2"></a>
			<table border="0" cellspacing="0" cellpadding="0" style="width:640px" summary="">
				<tr>
					<td><img src="photo/new_mtS_01.gif" alt="관람후기나눔" /></td>
					<td align="right"><img src="photo/play_btn06.gif" onclick="'" style="cursor:pointer;" alt="" /></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
		<td>
			<table border="0" cellspacing="1" cellpadding="0" class="basic_line2" style="width:610px" summary="">
				<tr>
					<td bgcolor="#FFFFFF" class="read">
						<table border="0" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
							<tr>
								<td height="27" style=" background-color: #C9DDFF; background-repeat:repeat-x">
									<table border="1" cellspacing="0" cellpadding="0" style="width:610px;" summary="">
										<tr>
											<td width="339" align="center"><img src="photo/play_board03.gif" alt="제목" /></td>
											<td width="97" align="center"><img src="photo/play_board04.gif" alt="작성자" /></td>
											<td width="110" align="center"><img src="photo/play_board05.gif" alt="등록일" /></td>
											<td align="center"><img src="photo/play_board06.gif" alt="조회" /></td>
										</tr>
									</table>
								</td>
							</tr>

							<tr>
								<td height="24" align="center">등록된 관람후기가 없습니다.</td>
							</tr>
							<tr>
								<td height="1" bgcolor="dedede"></td>
							</tr>


						</table>
					</td>
				</tr>
			</table>
		</td>
	</tr>
  <tr>
    <td height="45">&nbsp;</td>
  </tr>
</table>

      
      
		<div class="footer">
			<p>&#169; 2011 Herdesigns. All Rights Reserved.</p>
		</div>
	
</body>
</html>