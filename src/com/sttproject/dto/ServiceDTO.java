package com.sttproject.dto;

public class ServiceDTO {
	private int serviceidx;
	private int expertidx;
	private int useridx;
	private String servicetitle;

	private int servicecategory;
	private int serviceprice;


	private String serviceinfo;
	private int servicetype;
	private String serviceresident;

	private int serviceteamscale;
	private	String serviceperiod;
	private String servicereadyto;
	
	public String getServicereadyto() {
		return servicereadyto;
	}
	public void setServicereadyto(String servicereadyto) {
		this.servicereadyto = servicereadyto;
	}
	private int likecnt;
	

	
	public int getServiceidx() {
		return serviceidx;
	}

	public void setServiceidx(int serviceidx) {
		this.serviceidx = serviceidx;
	}

	public int getExpertidx() {
		return expertidx;
	}

	public void setExpertidx(int expertidx) {
		this.expertidx = expertidx;
	}

	public int getUseridx() {
		return useridx;
	}

	public void setUseridx(int useridx) {
		this.useridx = useridx;
	}

	public String getServicetitle() {
		return servicetitle;
	}

	public void setServicetitle(String servicetitle) {
		this.servicetitle = servicetitle;
	}

	public int getServiceprice() {
		return serviceprice;
	}
	public void setServiceprice(int serviceprice) {
		this.serviceprice = serviceprice;
	}
	public String getServiceinfo() {
		return serviceinfo;
	}
	public void setServiceinfo(String serviceinfo) {
		this.serviceinfo = serviceinfo;
	}

	public int getServicecategory() {
		return servicecategory;
	}

	public void setServicecategory(int servicecategory) {
		this.servicecategory = servicecategory;
	}

	public int getServicetype() {
		return servicetype;
	}

	public void setServicetype(int servicetype) {
		this.servicetype = servicetype;
	}


	public int getServiceteamscale() {
		return serviceteamscale;
	}

	public void setServiceteamscale(int serviceteamscale) {
		this.serviceteamscale = serviceteamscale;
	}

	public String getServiceresident() {
		return serviceresident;
	}

	public void setServiceresident(String serviceresident) {
		this.serviceresident = serviceresident;
	}

	public String getServiceperiod() {
		return serviceperiod;
	}
	public void setServiceperiod(String serviceperiod) {
		this.serviceperiod = serviceperiod;
	}

	public int getLikecnt() {
		return likecnt;
	}
	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;

	}

	


}
