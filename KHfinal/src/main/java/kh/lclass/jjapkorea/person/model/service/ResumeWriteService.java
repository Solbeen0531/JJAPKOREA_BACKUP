package kh.lclass.jjapkorea.person.model.service;

import java.util.List;
import java.util.Map;

import kh.lclass.jjapkorea.person.model.dto.AwardDto;
import kh.lclass.jjapkorea.person.model.dto.EducationDto;
import kh.lclass.jjapkorea.person.model.dto.ExperienceDto;
import kh.lclass.jjapkorea.person.model.dto.QualificationDto;
import kh.lclass.jjapkorea.person.model.dto.ResumeWriteDto;

public interface ResumeWriteService {
	int insertResume(ResumeWriteDto resumeWriteDto) throws Exception;
	int insertQualification(QualificationDto qualificationDto) throws Exception;
	int insertEducation(EducationDto educationDto) throws Exception;
	int insertExperience(ExperienceDto experienceDto) throws Exception;
	int insertAward(AwardDto awardDto) throws Exception;
	List<ResumeWriteDto> getResumeById(String mid) throws Exception;
	List<Map<String, Object>> getResumeWithQualification(String mid) throws Exception;
	List<Map<String, Object>> getResumeWithEducation(String mid) throws Exception;
	List<Map<String, Object>> getResumeWithExperience(String mid) throws Exception;
	List<Map<String, Object>> getResumeWithAward(String mid) throws Exception;
	int updateResume(ResumeWriteDto resumeWriteDto) throws Exception;
	int updateQualification(QualificationDto qualificationDto) throws Exception;
	int updateEducation(EducationDto educationDto) throws Exception;
	int updateExperience(ExperienceDto experienceDto) throws Exception;
	int updateAward(AwardDto awardDto) throws Exception;
	List<QualificationDto> getQualificationById(int resumeId) throws Exception;
	List<EducationDto> getEducationById(int resumeId) throws Exception;
	List<ExperienceDto> getExperienceById(int resumeId) throws Exception;
	List<AwardDto> getAwardById(int resumeId) throws Exception;
	int deleteQualification(int resumeId) throws Exception;
	int deleteEducation(int resumeId) throws Exception;
	int deleteExperience(int resumeId) throws Exception;
	int deleteAward(int resumeId) throws Exception;
}
