*StudentManagement*

# Group name: Khabir
# Group members: 
Alaaeldin Mohamed 1614507


# Title: Student Information Management System

# intoduction:
"Student Management System" offers a number of functions for managing students ' personal profiles, containing all student data concerning identification number, email address, first and last name.

# Objectives: 
it is to develop a fully secure web application for students record that aims to secure the personal data and decrease the time of paper-based work.

# Web application security enhancement: 

# Input Validation:-
- Text field character/POST Method submission
- WebLogic validation 

<prefix:form method="GET"|"PUT" action="allEntriesValid.jsp"/>
<--Fields /Field Validations Defined Here-->
<input type="text" name="fieldA" >
<prefix:validator fieldToValidate="fieldA"
validatorClass="weblogicx.jsp.tags.validators.NameValidator"
errorMessage="Field Specific Error Message"
>
<img src="image.gif">Field Specific Error Message
</prefix:validator>
<input type="submit" value="Button Label">
</prefix:form>

# Authentication:-


# Authorization:-


# XSS and CSRF Prevention:-
- fn:escapeXml() EL function when (re)displaying user-controlled input. 

# Database Security Principles:-
-Implementation of Advanced Encryption Standard(AES) and Data Encryption Standards(DES) on student's details database table

# File Security Principles:-




# References:
https://www.guru99.com/jsp-form.html

https://www.tutorialspoint.com/jsp/jsp_security.htm
