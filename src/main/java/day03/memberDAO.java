package day03;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class memberDAO {
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	
	public memberDAO() {
		con = DBConnect.getConnect();
		System.out.println("생성자: "+con);
	}
	public ArrayList<memberDTO> getList(){
		ArrayList<memberDTO> list = new ArrayList<>();
		System.out.println("getlist 호출");
		String sql = "select * from members";
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				memberDTO dto = new memberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				
				list.add(dto);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int delete(String id) {
		System.out.println("id :"+id);
		String sql = "delete from members where id='"+id+"'";
	//	String sql = "delete from members where id=?";
		int result = 0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int loginChk(String id,String pwd) {
		String sql = "select * from members where id='"+id+"'";
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				memberDTO dto = new memberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				
			}else {
				result=-1;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public ArrayList<memberDTO> memberInfo(String id) {
		
		ArrayList<memberDTO> list2 = new ArrayList<>();
		System.out.println("id:"+id);
		String sql2 = "select * from members where id='"+id+"'";
		try {
			ps = con.prepareStatement(sql2);
			rs = ps.executeQuery();
			while(rs.next()) {
				memberDTO dto = new memberDTO();
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setName(rs.getString("name"));
				dto.setAddr(rs.getString("addr"));
				dto.setTel(rs.getString("tel"));
				
				list2.add(dto);
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list2;
			
	}
	public int insert(String id,String pwd,String name,String addr,String tel) {
		String sql = "insert into members values('"+id+"','"+pwd+"','"+name+"','"+addr+"','"+tel+"')";
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
	public int modify(String name,String addr,String tel,String id) {
		String sql = "update members set name=('"+name+"'), addr=('"+addr+"'),tel=('"+tel+"') where id=('"+id+"')";
		int result =0;
		try {
			ps = con.prepareStatement(sql);
			result = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
		
	}
}
