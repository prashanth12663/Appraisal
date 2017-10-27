
package com.sonata.appraisal.model;

import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLong;


public class Login {
	
	
	private int empId;
	private String empName;
	private String password;
	private String role;
	private String errorMessage;
	
	/*manager details */
	private String doj;
	private String currentgrade;
	private String projectname;
	private String pm;
	private String typeandyearofcomp;
	private double currentctc;
	private String cbfrole;
	private int rolecluster;
	private int cbflevel;
	private int perfcatg;
	private int min;
	private int max;
	private double kitty;
	private double benchmarksalary;
	private double percincrreqdtoGettobenchmark;
	private String incrrange;
	private String subrange;
	private String wtdpercentincr;
	private double wtdincr;
	private double newCTC;
	private double finalpercincr;
	private double NewIncr;
	private double RevRecoCTC;
	private String ReasonForChange;
	private double RecForSpecialBonus;
	private String ReasonForSPBonus;
	private String currentGrade;
	private String maxGrade;
	private String promotion;
	private String revisedGrade;
	private String approverReason;
	private String hRReason;
	private String hcc;
	private ArrayList<Login> employeeDetailsList=new ArrayList<Login>();
	private HumanResource humanResource;
	
	public HumanResource getHumanResource() {
		return humanResource;
	}
	public void setHumanResource(HumanResource humanResource) {
		this.humanResource = humanResource;
	}
	public String getHcc() {
		return hcc;
	}
	public void setHcc(String hcc) {
		this.hcc = hcc;
	}
	
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getDoj() {
		return doj;
	}
	public void setDoj(String doj) {
		this.doj = doj;
	}
	public String getCurrentgrade() {
		return currentgrade;
	}
	public void setCurrentgrade(String currentgrade) {
		this.currentgrade = currentgrade;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getPm() {
		return pm;
	}
	public void setPm(String pm) {
		this.pm = pm;
	}
	public String getTypeandyearofcomp() {
		return typeandyearofcomp;
	}
	public void setTypeandyearofcomp(String typeandyearofcomp) {
		this.typeandyearofcomp = typeandyearofcomp;
	}
	public double getCurrentctc() {
		return currentctc;
	}
	public void setCurrentctc(double currentctc) {
		this.currentctc = currentctc;
	}
	public String getCbfrole() {
		return cbfrole;
	}
	public void setCbfrole(String cbfrole) {
		this.cbfrole = cbfrole;
	}
	public int getRolecluster() {
		return rolecluster;
	}
	public void setRolecluster(int rolecluster) {
		this.rolecluster = rolecluster;
	}
	public int getCbflevel() {
		return cbflevel;
	}
	public void setCbflevel(int cbflevel) {
		this.cbflevel = cbflevel;
	}
	public int getPerfcatg() {
		return perfcatg;
	}
	public void setPerfcatg(int perfcatg) {
		this.perfcatg = perfcatg;
	}
	public int getMin() {
		return min;
	}
	public void setMin(int min) {
		this.min = min;
	}
	public int getMax() {
		return max;
	}
	public void setMax(int max) {
		this.max = max;
	}
	public double getKitty() {
		return kitty;
	}
	public void setKitty(double kitty) {
		this.kitty = kitty;
	}
	public double getBenchmarksalary() {
		return benchmarksalary;
	}
	public void setBenchmarksalary(double benchmarksalary) {
		this.benchmarksalary = benchmarksalary;
	}
	public double getPercincrreqdtoGettobenchmark() {
		return percincrreqdtoGettobenchmark;
	}
	public void setPercincrreqdtoGettobenchmark(double percincrreqdtoGettobenchmark) {
		this.percincrreqdtoGettobenchmark = percincrreqdtoGettobenchmark;
	}
	public String getIncrrange() {
		return incrrange;
	}
	public void setIncrrange(String incrrange) {
		this.incrrange = incrrange;
	}
	public String getSubrange() {
		return subrange;
	}
	public void setSubrange(String subrange) {
		this.subrange = subrange;
	}
	public String getWtdpercentincr() {
		return wtdpercentincr;
	}
	public void setWtdpercentincr(String wtdpercentincr) {
		this.wtdpercentincr = wtdpercentincr;
	}
	public double getWtdincr() {
		return wtdincr;
	}
	public void setWtdincr(double wtdincr) {
		this.wtdincr = wtdincr;
	}
	public double getNewCTC() {
		return newCTC;
	}
	public void setNewCTC(double newCTC) {
		this.newCTC = newCTC;
	}
	public double getFinalpercincr() {
		return finalpercincr;
	}
	public void setFinalpercincr(double finalpercincr) {
		this.finalpercincr = finalpercincr;
	}
	public double getNewIncr() {
		return NewIncr;
	}
	public void setNewIncr(double newIncr) {
		NewIncr = newIncr;
	}
	public double getRevRecoCTC() {
		return RevRecoCTC;
	}
	public void setRevRecoCTC(double revRecoCTC) {
		RevRecoCTC = revRecoCTC;
	}
	public String getReasonForChange() {
		return ReasonForChange;
	}
	public void setReasonForChange(String reasonForChange) {
		ReasonForChange = reasonForChange;
	}
	public double getRecForSpecialBonus() {
		return RecForSpecialBonus;
	}
	public void setRecForSpecialBonus(double recForSpecialBonus) {
		RecForSpecialBonus = recForSpecialBonus;
	}
	public String getReasonForSPBonus() {
		return ReasonForSPBonus;
	}
	public void setReasonForSPBonus(String reasonForSPBonus) {
		ReasonForSPBonus = reasonForSPBonus;
	}
	
	public String getCurrentGrade() {
		return currentGrade;
	}
	public void setCurrentGrade(String currentGrade) {
		this.currentGrade = currentGrade;
	}
	public String getMaxGrade() {
		return maxGrade;
	}
	public void setMaxGrade(String maxGrade) {
		this.maxGrade = maxGrade;
	}
	public String getPromotion() {
		return promotion;
	}
	public void setPromotion(String promotion) {
		this.promotion = promotion;
	}
	public String getRevisedGrade() {
		return revisedGrade;
	}
	public void setRevisedGrade(String revisedGrade) {
		this.revisedGrade = revisedGrade;
	}
	public String getApproverReason() {
		return approverReason;
	}
	public void setApproverReason(String approverReason) {
		this.approverReason = approverReason;
	}
	public String gethRReason() {
		return hRReason;
	}
	public void sethRReason(String hRReason) {
		this.hRReason = hRReason;
	}
	public ArrayList<Login> getEmployeeDetailsList() {
		return employeeDetailsList;
	}
	public void setEmployeeDetailsList(ArrayList<Login> employeeDetailsList) {
		this.employeeDetailsList = employeeDetailsList;
	}

}