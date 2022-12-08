package com.beans;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ProducerLogin.do")
public class ProducerLoginCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String i=request.getParameter("producerid");
		String p=request.getParameter("password");
		String n=request.getParameter("storeName");
		String si=request.getParameter("storeId");
		String[] producerCheck=new String[4];
		
		RegisterDTO rt=new RegisterDTO();
		rt.setMemberid(i);
		rt.setPassword(p);
		rt.setStorename(n);
		rt.setStoreid(si);
		
		RegisterDAO rd=new RegisterDAO();
		try {
			producerCheck=rd.producerCheck(rt);
			System.out.println(producerCheck[0]+","+producerCheck[1]+","+producerCheck[2]+","+producerCheck[3]);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		HttpSession session=request.getSession();
		String contentPage=null;
		if(producerCheck[0].equals("NO")) {
			session.setAttribute("idCheckVisibleP", "visibility:visible");
		}
		if(producerCheck[1].equals("NO")&&producerCheck[0].equals("OK")) {
			session.setAttribute("passwordCheckVisibleP", "visibility:visible");
		}
		if(producerCheck[2].equals("NO")) {
			session.setAttribute("storeNameCheckVisible", "visibility:visible");
		}
		if(producerCheck[3].equals("NO")) {
			session.setAttribute("storeIdCheckVisible", "visibility:visible");
		}
		if(producerCheck[0].equals("OK")&&producerCheck[1].equals("OK")&&producerCheck[2].equals("OK")&&producerCheck[3].equals("OK")) {
			session.setAttribute("userModeId", rt.getMemberid());
			session.setAttribute("SEGMENT", "producerSegment.jsp");
			session.setAttribute("PADDING","padding-right:640px");
			session.setAttribute("PADDINGSUB","padding-right:220px");
			session.setAttribute("PADDINGSUB2","padding-right:253px");
			
			String fixSector=(String)session.getAttribute("fixSector");
			String fixSectorSub=(String)session.getAttribute("fixSectorSub");
			String product=(String)session.getAttribute("product");
			String fixCategory=(String)session.getAttribute("fixCategory");
			
			if(fixSectorSub.equals("communityHome")){
				contentPage="community.jsp";
			}
			else if(fixSectorSub.equals("communityFollowing")){
				contentPage="communityFollowing.jsp";
			}
			else if(fixSectorSub.equals("communityPicture")){
				contentPage="communityPicture.jsp";
			}
			else if(fixSectorSub.equals("communityHouseVisit")){
				contentPage="communityHouseVisit.jsp";
			}
			else if(fixSectorSub.equals("communityKnowHow")){
				contentPage="communityKnowHow.jsp";
			}
			else if(fixSectorSub.equals("communityQNA")){
				contentPage="communityQNA.jsp";
			}
			else if(fixSectorSub.equals("storeHome")){
				contentPage="store.jsp";
			}
			else if(fixSectorSub.equals("storeBest")){
				contentPage="storeBest.jsp";
			}
			else if(fixSectorSub.equals("storeTodayDeal")){
				contentPage="storeTodayDeal.jsp";
			}
			else if(fixSectorSub.equals("storeReaper")){
				contentPage="storeReaper.jsp";
			}
			else if(fixSectorSub.equals("storeUsed")){
				contentPage="storeUsed.jsp";
			}
			else if(fixSectorSub.equals("serviceHome")){
				contentPage="produce.jsp";
			}
			else if(fixSectorSub.equals("serviceMove")){
				contentPage="produceMove.jsp";
			}
			else if(fixSectorSub.equals("serviceConst")){
				contentPage="produceConst.jsp";
			}
			else if(fixSectorSub.equals("serviceInstallRepair")){
				contentPage="produceInstallRepair.jsp";
			}
			else if(fixSectorSub.equals("storeCategory")){
				if(product.equals("furniture")){
					contentPage="storeCategoryFurniture.jsp";
				}
				else if(product.equals("fabric")){
					contentPage="storeCategoryFabric.jsp";
				}
				else if(product.equals("digital")){
					contentPage="storeCategoryDigitalDevice.jsp";
				}
				else if(product.equals("light")){
					contentPage="storeCategoryLighting.jsp";
				}
				else if(product.equals("kitchen")){
					contentPage="storeCategoryKitchen.jsp";
				}
				else if(product.equals("acceptance")){
					contentPage="storeCategoryAcceptance.jsp";
				}
				else if(product.equals("life")){
					contentPage="storeCategoryLife.jsp";
				}
				else if(product.equals("live")){
					contentPage="storeCategoryLive.jsp";
				}
				else if(product.equals("animal")){
					contentPage="storeCategoryAnimal.jsp";
				}
				else if(product.equals("health")){
					contentPage="storeCategoryHealth.jsp";
				}
			}
				session.setAttribute("idCheckVisibleP", "visibility:hidden");
				session.setAttribute("passwordCheckVisibleP", "visibility:hidden");
				session.setAttribute("storeNameCheckVisible", "visibility:hidden");
				session.setAttribute("storeIdCheckVisible", "visibility:hidden");
				response.sendRedirect("privateHome.jsp?CONTENTPAGE="+contentPage+"&FIXSECTOR="+fixSector+"&FIXSECTORSUB="+fixSectorSub+"&FIXCATEGORY="+fixCategory);
				//request.getRequestDispatcher("privateHome.jsp?CONTENTPAGE="+contentPage+"&FIXSECTOR="+fixSector+"&FIXSECTORSUB="+fixSectorSub+"&FIXCATEGORY="+fixCategory).forward(request,response);
		}
		
		else {
			contentPage="producerLogin.jsp";
			response.sendRedirect("privateHome.jsp?CONTENTPAGE="+contentPage+"&FOOTERIS='display:none'");
		}

	}
  }
