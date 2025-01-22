Create Database Dataset;
use Dataset;

## Gender Distribution of Respondents from India
   SELECT Gender, COUNT(*) AS RespondentCount
   FROM Dataset
   WHERE Country = 'India'
   GROUP BY Gender;

# Percentage of Respondents Interested in Education Abroad and Sponsorship
   SELECT 
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Dataset WHERE Country = 'India') AS EducationAbroadPercentage
   FROM Dataset
   WHERE Country = 'India';


# Top 6 Influences on Career Aspirations for Respondents in India:**

   SELECT Influencing Factors, COUNT(*) AS InfluenceCount
   FROM Dataset
   WHERE Country = 'India'
   GROUP BY InfluencingFactors
   ORDER BY InfluenceCount DESC
   LIMIT 6;
   

# Variation of Career Aspiration Influences by Gender in India:**
   
   SELECT Gender, Influencing_Factors, COUNT(*) AS InfluenceCount
   FROM Dataset
   WHERE Country = 'India'
   GROUP BY Gender, Influencing_Factors
   ORDER BY Gender, InfluenceCount DESC;
   

# Percentage Willing to Work for a Company for at Least 3 Years:**
   SELECT 
       COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Dataset) AS WillingToWorkPercentage
   FROM Dataset
   WHERE Employment_Stability = 'Yes';


# Preference for Socially Impactful Companies:**

   SELECT COUNT(*) AS SocialImpactPreferenceCount
   FROM Dataset
   WHERE Company_Social_Ratings >= 8;
   

# Gender Variation in Preference for Socially Impactful Companies:**
   
   SELECT Gender, COUNT(*) AS Count
   FROM Dataset
   WHERE Company_Social_Ratings >= 8
   GROUP BY Gender;
   

# Distribution of Minimum Expected Salary in the First Three Years:**
   
   SELECT Minimum_Expected_Salary, COUNT(*) AS Count
   FROM Dataset
   GROUP BY Minimum_Expected_Salary
   ORDER BY Minimum_Expected_Salary;
   
# Expected Minimum Monthly Salary in Hand:**
   
   SELECT Expected_Monthly_Salary_After_5_Years
   FROM Dataset;
   

# rcentage Preferring Remote Working
    SELECT 
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Dataset) AS RemotePreferencePercentage
    FROM Dataset
    WHERE Working_Type = 'Remote';
    

# Prerred Number of Daily Work Hours
    
    SELECT Daily_Working_Hours, COUNT(*) AS RespondentCount
    FROM Dataset
    GROUP BY Daily_Working_Hours
    ORDER BY RespondentCount DESC;


# Common Frustrations among Respondents:**
    
    SELECT Influencing_Factors, COUNT(*) AS FrustrationCount
    FROM Dataset
    WHERE Influencing_Factors LIKE '%frustration%' -- Assuming frustration factors are marked in this column
    GROUP BY Influencing_Factors
    ORDER BY FrustrationCount DESC;
    

#Ned forWork-Life Balance Interventions by Gender
    
    SELECT Gender, COUNT(*) AS Count
    FROM Dataset
    WHERE Frequency_of_Full_Week_Break_for_Work_Life_Balance IS NOT NULL
    GROUP BY Gender;


#illingness to Work under an Abusive Manager
    
    SELECT COUNT(*) AS WillingToWorkUnderAbusiveManager
    FROM Dataset
    WHERE Work_Under_Abusive_Manager = 'Yes';
    

#istribution of Minimum Expected Salary after Five Years
    
    SELECT Expected_Monthly_Salary_After_5_Years, COUNT(*) AS RespondentCount
    FROM Dataset
    GROUP BY Expected_Monthly_Salary_After_5_Years
    ORDER BY Expected_Monthly_Salary_After_5_Years;


#emote Working Preferences by Gender:
    
    SELECT Gender, Working_Type, COUNT(*) AS Count
    FROM Dataset
    WHERE Working_Type = 'Remote'
    GROUP BY Gender, Working_Type;

# p Work Frustrations for Each Gender:**
    
    SELECT Gender, Influencing_Factors, COUNT(*) AS FrustrationCount
    FROM Dataset
    WHERE Influencing_Factors LIKE '%frustration%'
    GROUP BY Gender, Influencing_Factors
    ORDER BY Gender, FrustrationCount DESC;
    

#actors Boosting Work Happiness and Productivity for Respondents:
    
    SELECT Influencing_Factors, COUNT(*) AS Count
    FROM Dataset
    WHERE Influencing_Factors LIKE '%happiness%' OR Influencing_Factors LIKE '%productivity%'
    GROUP BY Influencing_Factors
    ORDER BY Count DESC;
    

#Percentage of Respondents Needing Sponsorship for Education Abroad

    SELECT 
        COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Dataset) AS SponsorshipNeedPercentage
    FROM Dataset
    WHERE Higher_Education_Abroad = 'Yes' AND Influencing_Factors LIKE '%sponsorship%';