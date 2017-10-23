package com.sonata.appraisal.service;

import java.io.IOException;

import com.sonata.appraisal.model.Login;
import com.sonata.appraisal.model.Manager;

public interface ManagerService {
	public String personalInfo(Manager manager) throws IOException;

}
