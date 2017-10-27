
package com.sonata.appraisal.model;

import java.util.ArrayList;
import java.util.List;

public class HumanResource {
	
	
	private double etgOne;
	private double etgTwo;
	private double etgThree;
	private double etgFour;
	private double etgFive;
	
	private ArrayList<String> hcc;
	private ArrayList<Integer> min1;
	private ArrayList<Integer> max1;
	private ArrayList<Integer> min2;
	private ArrayList<Integer> max2;
	private ArrayList<Integer> min3;
	private ArrayList<Integer> max3;
	private ArrayList<Integer> min4;
	private ArrayList<Integer> max4;
	private ArrayList<HumanResource> salaryBandList=new ArrayList<HumanResource>();
	
	
	public ArrayList<HumanResource> getSalaryBandList() {
		return salaryBandList;
	}
	public void setSalaryBandList(ArrayList<HumanResource> salaryBandList) {
		this.salaryBandList = salaryBandList;
	}
	public double getEtgOne() {
		return etgOne;
	}
	public void setEtgOne(double etgOne) {
		this.etgOne = etgOne;
	}
	public double getEtgTwo() {
		return etgTwo;
	}
	public void setEtgTwo(double etgTwo) {
		this.etgTwo = etgTwo;
	}
	public double getEtgThree() {
		return etgThree;
	}
	public void setEtgThree(double etgThree) {
		this.etgThree = etgThree;
	}
	public double getEtgFour() {
		return etgFour;
	}
	public void setEtgFour(double etgFour) {
		this.etgFour = etgFour;
	}
	public double getEtgFive() {
		return etgFive;
	}
	public void setEtgFive(double etgFive) {
		this.etgFive = etgFive;
	}
	public ArrayList<String> getHcc() {
		return hcc;
	}
	public void setHcc(ArrayList<String> hcc) {
		this.hcc = hcc;
	}
	public ArrayList<Integer> getMin1() {
		return min1;
	}
	public void setMin1(ArrayList<Integer> min1) {
		this.min1 = min1;
	}
	public ArrayList<Integer> getMax1() {
		return max1;
	}
	public void setMax1(ArrayList<Integer> max1) {
		this.max1 = max1;
	}
	public ArrayList<Integer> getMin2() {
		return min2;
	}
	public void setMin2(ArrayList<Integer> min2) {
		this.min2 = min2;
	}
	public ArrayList<Integer> getMax2() {
		return max2;
	}
	public void setMax2(ArrayList<Integer> max2) {
		this.max2 = max2;
	}
	public ArrayList<Integer> getMin3() {
		return min3;
	}
	public void setMin3(ArrayList<Integer> min3) {
		this.min3 = min3;
	}
	public ArrayList<Integer> getMax3() {
		return max3;
	}
	public void setMax3(ArrayList<Integer> max3) {
		this.max3 = max3;
	}
	public ArrayList<Integer> getMin4() {
		return min4;
	}
	public void setMin4(ArrayList<Integer> min4) {
		this.min4 = min4;
	}
	public ArrayList<Integer> getMax4() {
		return max4;
	}
	public void setMax4(ArrayList<Integer> max4) {
		this.max4 = max4;
	}
	
}