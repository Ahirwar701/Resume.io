<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ProResume - Professional Resume Builder</title>
    <style>
        :root {
            --primary-color: #3498db;
            --secondary-color: #2c3e50;
            --accent-color: #e74c3c;
            --light-color: #ecf0f1;
            --dark-color: #34495e;
            --success-color: #2ecc71;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f7fa;
            color: #333;
            line-height: 1.6;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }
        
        header {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 2rem 0;
            text-align: center;
            border-radius: 0 0 10px 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }
        
        header h1 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
        }
        
        header p {
            font-size: 1.2rem;
            opacity: 0.9;
        }
        
        .app-container {
            display: flex;
            flex-wrap: wrap;
            gap: 30px;
            margin-top: 30px;
        }
        
        .form-section {
            flex: 2;
            min-width: 300px;
            background: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
        }
        
        .preview-section {
            flex: 1.5;
            min-width: 300px;
            background: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            display: flex;
            flex-direction: column;
        }
        
        .ad-section {
            flex: 1;
            min-width: 250px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }
        
        .ad-unit {
            background: white;
            border-radius: 10px;
            padding: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            text-align: center;
            min-height: 250px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        
        .ad-label {
            font-size: 0.8rem;
            color: #777;
            text-transform: uppercase;
            margin-bottom: 10px;
        }
        
        .ad-content {
            width: 100%;
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            border: 1px dashed #ddd;
            border-radius: 5px;
            padding: 10px;
        }
        
        .ad-content h3 {
            color: var(--primary-color);
            margin-bottom: 10px;
        }
        
        .ad-content p {
            font-size: 0.9rem;
            margin-bottom: 15px;
            color: #555;
        }
        
        .ad-button {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 0.9rem;
            transition: background 0.3s;
        }
        
        .ad-button:hover {
            background-color: #2980b9;
        }
        
        .section-title {
            color: var(--secondary-color);
            border-bottom: 2px solid var(--primary-color);
            padding-bottom: 10px;
            margin-bottom: 20px;
            font-size: 1.5rem;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: var(--dark-color);
        }
        
        input, textarea, select {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border 0.3s;
        }
        
        input:focus, textarea:focus, select:focus {
            border-color: var(--primary-color);
            outline: none;
            box-shadow: 0 0 0 2px rgba(52, 152, 219, 0.2);
        }
        
        textarea {
            min-height: 100px;
            resize: vertical;
        }
        
        .btn {
            background-color: var(--primary-color);
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: 600;
            transition: background 0.3s;
            display: inline-flex;
            align-items: center;
            justify-content: center;
        }
        
        .btn:hover {
            background-color: #2980b9;
        }
        
        .btn-success {
            background-color: var(--success-color);
        }
        
        .btn-success:hover {
            background-color: #27ae60;
        }
        
        .btn-danger {
            background-color: var(--accent-color);
        }
        
        .btn-danger:hover {
            background-color: #c0392b;
        }
        
        .action-buttons {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }
        
        .resume-preview {
            flex: 1;
            border: 1px solid #eee;
            border-radius: 5px;
            padding: 20px;
            background: white;
            overflow-y: auto;
            min-height: 500px;
        }
        
        .resume-header {
            text-align: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid var(--primary-color);
        }
        
        .resume-name {
            font-size: 2rem;
            color: var(--secondary-color);
            margin-bottom: 5px;
        }
        
        .resume-title {
            font-size: 1.2rem;
            color: var(--primary-color);
            margin-bottom: 10px;
        }
        
        .resume-contact {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 10px;
        }
        
        .resume-section {
            margin-bottom: 20px;
        }
        
        .resume-section-title {
            font-size: 1.3rem;
            color: var(--secondary-color);
            border-bottom: 1px solid #eee;
            padding-bottom: 5px;
            margin-bottom: 10px;
        }
        
        .experience-item, .education-item {
            margin-bottom: 15px;
        }
        
        .item-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 5px;
        }
        
        .item-title {
            font-weight: 600;
            color: var(--dark-color);
        }
        
        .item-date {
            color: #777;
        }
        
        .item-subtitle {
            font-style: italic;
            color: var(--primary-color);
            margin-bottom: 5px;
        }
        
        .skill-item {
            display: inline-block;
            background: var(--light-color);
            padding: 5px 10px;
            border-radius: 20px;
            margin: 5px 5px 5px 0;
        }
        
        footer {
            margin-top: 40px;
            padding: 20px;
            color: #777;
            border-top: 1px solid #eee;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            align-items: center;
        }
        
        .footer-links {
            display: flex;
            gap: 20px;
        }
        
        .footer-links a {
            color: #777;
            text-decoration: none;
            transition: color 0.3s;
        }
        
        .footer-links a:hover {
            color: var(--primary-color);
        }
        
        .template-selector {
            margin-bottom: 20px;
        }
        
        .template-options {
            display: flex;
            gap: 10px;
            margin-top: 10px;
        }
        
        .template-option {
            flex: 1;
            border: 2px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
        }
        
        .template-option:hover {
            border-color: var(--primary-color);
        }
        
        .template-option.active {
            border-color: var(--primary-color);
            background-color: rgba(52, 152, 219, 0.1);
        }
        
        .template-name {
            font-weight: 600;
            margin-top: 5px;
        }
        
        .banner-ad {
            width: 100%;
            background: white;
            border-radius: 10px;
            padding: 15px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
            text-align: center;
            margin: 20px 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100px;
        }
        
        @media (max-width: 768px) {
            .app-container {
                flex-direction: column;
            }
            
            .resume-contact {
                flex-direction: column;
                gap: 5px;
            }
            
            .ad-section {
                order: 3;
            }
            
            footer {
                flex-direction: column;
                gap: 15px;
                text-align: center;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="container">
            <h1>ProResume Builder</h1>
            <p>Create a professional resume in minutes - Free & Easy</p>
        </div>
    </header>
    
    <div class="container">
        <div class="banner-ad">
            <div class="ad-label">Advertisement</div>
            <div class="ad-content">
                <h3>Upgrade to Premium</h3>
                <p>Unlock 10+ professional templates and advanced features</p>
                <button class="ad-button">Learn More</button>
            </div>
        </div>
        
        <div class="app-container">
            <section class="form-section">
                <h2 class="section-title">Personal Information</h2>
                
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" placeholder="John Doe">
                </div>
                
                <div class="form-group">
                    <label for="jobTitle">Professional Title</label>
                    <input type="text" id="jobTitle" placeholder="Software Engineer">
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" placeholder="john.doe@example.com">
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone</label>
                    <input type="text" id="phone" placeholder="(123) 456-7890">
                </div>
                
                <div class="form-group">
                    <label for="location">Location</label>
                    <input type="text" id="location" placeholder="City, Country">
                </div>
                
                <div class="form-group">
                    <label for="summary">Professional Summary</label>
                    <textarea id="summary" placeholder="Brief description of your professional background and skills..."></textarea>
                </div>
                
                <h2 class="section-title">Work Experience</h2>
                
                <div class="form-group">
                    <label for="company">Company</label>
                    <input type="text" id="company" placeholder="Company Name">
                </div>
                
                <div class="form-group">
                    <label for="position">Position</label>
                    <input type="text" id="position" placeholder="Job Title">
                </div>
                
                <div class="form-group">
                    <label for="startDate">Start Date</label>
                    <input type="text" id="startDate" placeholder="Month Year">
                </div>
                
                <div class="form-group">
                    <label for="endDate">End Date</label>
                    <input type="text" id="endDate" placeholder="Month Year or Present">
                </div>
                
                <div class="form-group">
                    <label for="description">Description</label>
                    <textarea id="description" placeholder="Describe your responsibilities and achievements..."></textarea>
                </div>
                
                <button class="btn" id="addExperience">Add Experience</button>
                
                <h2 class="section-title">Education</h2>
                
                <div class="form-group">
                    <label for="school">School/University</label>
                    <input type="text" id="school" placeholder="University Name">
                </div>
                
                <div class="form-group">
                    <label for="degree">Degree</label>
                    <input type="text" id="degree" placeholder="Bachelor of Science">
                </div>
                
                <div class="form-group">
                    <label for="field">Field of Study</label>
                    <input type="text" id="field" placeholder="Computer Science">
                </div>
                
                <div class="form-group">
                    <label for="gradDate">Graduation Date</label>
                    <input type="text" id="gradDate" placeholder="Month Year">
                </div>
                
                <button class="btn" id="addEducation">Add Education</button>
                
                <h2 class="section-title">Skills</h2>
                
                <div class="form-group">
                    <label for="skills">Skills (comma separated)</label>
                    <input type="text" id="skills" placeholder="JavaScript, React, Node.js, HTML, CSS">
                </div>
                
                <div class="action-buttons">
                    <button class="btn btn-success" id="generateResume">Generate Resume</button>
                    <button class="btn btn-danger" id="resetForm">Reset Form</button>
                </div>
            </section>
            
            <section class="preview-section">
                <h2 class="section-title">Resume Preview</h2>
                
                <div class="template-selector">
                    <label>Select Template:</label>
                    <div class="template-options">
                        <div class="template-option active" data-template="professional">
                            <div class="template-name">Professional</div>
                        </div>
                        <div class="template-option" data-template="modern">
                            <div class="template-name">Modern</div>
                        </div>
                        <div class="template-option" data-template="creative">
                            <div class="template-name">Creative</div>
                        </div>
                    </div>
                </div>
                
                <div class="resume-preview" id="resumePreview">
                    <div class="resume-header">
                        <div class="resume-name">Your Name</div>
                        <div class="resume-title">Professional Title</div>
                        <div class="resume-contact">
                            <span>email@example.com</span>
                            <span>(123) 456-7890</span>
                            <span>City, Country</span>
                        </div>
                    </div>
                    
                    <div class="resume-section">
                        <div class="resume-section-title">Professional Summary</div>
                        <p>Your professional summary will appear here. Write a brief overview of your experience, skills, and career goals.</p>
                    </div>
                    
                    <div class="resume-section">
                        <div class="resume-section-title">Work Experience</div>
                        <div class="experience-item">
                            <div class="item-header">
                                <div class="item-title">Job Title</div>
                                <div class="item-date">Start Date - End Date</div>
                            </div>
                            <div class="item-subtitle">Company Name</div>
                            <p>Description of your responsibilities and achievements.</p>
                        </div>
                    </div>
                    
                    <div class="resume-section">
                        <div class="resume-section-title">Education</div>
                        <div class="education-item">
                            <div class="item-header">
                                <div class="item-title">Degree Name</div>
                                <div class="item-date">Graduation Date</div>
                            </div>
                            <div class="item-subtitle">University Name</div>
                            <p>Field of Study</p>
                        </div>
                    </div>
                    
                    <div class="resume-section">
                        <div class="resume-section-title">Skills</div>
                        <div class="skill-item">Skill 1</div>
                        <div class="skill-item">Skill 2</div>
                        <div class="skill-item">Skill 3</div>
                    </div>
                </div>
                
                <div class="action-buttons">
                    <button class="btn" id="downloadResume">Download as PDF</button>
                    <button class="btn" id="printResume">Print Resume</button>
                </div>
            </section>
            
            <aside class="ad-section">
                <div class="ad-unit">
                    <div class="ad-label">Advertisement</div>
                    <div class="ad-content">
                        <h3>LinkedIn Profile Review</h3>
                        <p>Get your LinkedIn profile optimized by experts</p>
                        <button class="ad-button">Try Now</button>
                    </div>
                </div>
                
                <div class="ad-unit">
                    <div class="ad-label">Sponsored</div>
                    <div class="ad-content">
                        <h3>Job Search Platform</h3>
                        <p>Find your dream job from 10,000+ listings</p>
                        <button class="ad-button">Explore Jobs</button>
                    </div>
                </div>
                
                <div class="ad-unit">
                    <div class="ad-label">Advertisement</div>
                    <div class="ad-content">
                        <h3>Interview Preparation</h3>
                        <p>Practice with mock interviews and get feedback</p>
                        <button class="ad-button">Get Prepared</button>
                    </div>
                </div>
            </aside>
        </div>
        
        <div class="banner-ad">
            <div class="ad-label">Sponsored</div>
            <div class="ad-content">
                <h3>Professional Resume Writing Services</h3>
                <p>Let our experts craft a winning resume for you</p>
                <button class="ad-button">Hire an Expert</button>
            </div>
        </div>
    </div>
    
    <footer>
        <div class="container">
            <p>© 2023 ProResume Builder | Create your perfect resume in minutes</p>
            <div class="footer-links">
                <a href="#">Privacy Policy</a>
                <a href="#">Terms of Service</a>
                <a href="#">Contact Us</a>
                <a href="#">About</a>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Template selection
            const templateOptions = document.querySelectorAll('.template-option');
            templateOptions.forEach(option => {
                option.addEventListener('click', function() {
                    templateOptions.forEach(opt => opt.classList.remove('active'));
                    this.classList.add('active');
                    // In a real app, you would change the resume template here
                    alert(`Template changed to: ${this.querySelector('.template-name').textContent}`);
                });
            });
            
            // Generate Resume Button
            document.getElementById('generateResume').addEventListener('click', function() {
                updateResumePreview();
            });
            
            // Reset Form Button
            document.getElementById('resetForm').addEventListener('click', function() {
                if (confirm('Are you sure you want to reset the form? All data will be lost.')) {
                    document.querySelectorAll('input, textarea').forEach(element => {
                        element.value = '';
                    });
                    resetResumePreview();
                }
            });
            
            // Add Experience Button
            document.getElementById('addExperience').addEventListener('click', function() {
                // In a real app, this would add a new experience section to the form
                alert('In a complete application, this would add a new experience section.');
            });
            
            // Add Education Button
            document.getElementById('addEducation').addEventListener('click', function() {
                // In a real app, this would add a new education section to the form
                alert('In a complete application, this would add a new education section.');
            });
            
            // Download as PDF Button
            document.getElementById('downloadResume').addEventListener('click', function() {
                alert('In a complete application, this would generate a PDF of your resume.');
            });
            
            // Print Resume Button
            document.getElementById('printResume').addEventListener('click', function() {
                window.print();
            });
            
            // Ad button interactions
            document.querySelectorAll('.ad-button').forEach(button => {
                button.addEventListener('click', function() {
                    alert('Thank you for your interest! This would redirect to the advertiser\'s website in a real application.');
                });
            });
            
            // Function to update the resume preview
            function updateResumePreview() {
                const name = document.getElementById('fullName').value || 'Your Name';
                const title = document.getElementById('jobTitle').value || 'Professional Title';
                const email = document.getElementById('email').value || 'email@example.com';
                const phone = document.getElementById('phone').value || '(123) 456-7890';
                const location = document.getElementById('location').value || 'City, Country';
                const summary = document.getElementById('summary').value || 'Your professional summary will appear here. Write a brief overview of your experience, skills, and career goals.';
                
                const company = document.getElementById('company').value || 'Company Name';
                const position = document.getElementById('position').value || 'Job Title';
                const startDate = document.getElementById('startDate').value || 'Start Date';
                const endDate = document.getElementById('endDate').value || 'End Date';
                const description = document.getElementById('description').value || 'Description of your responsibilities and achievements.';
                
                const school = document.getElementById('school').value || 'University Name';
                const degree = document.getElementById('degree').value || 'Degree Name';
                const field = document.getElementById('field').value || 'Field of Study';
                const gradDate = document.getElementById('gradDate').value || 'Graduation Date';
                
                const skills = document.getElementById('skills').value || 'Skill 1, Skill 2, Skill 3';
                const skillsArray = skills.split(',').map(skill => skill.trim());
                
                // Update the resume preview
                document.querySelector('.resume-name').textContent = name;
                document.querySelector('.resume-title').textContent = title;
                
                const contactInfo = document.querySelector('.resume-contact');
                contactInfo.innerHTML = `
                    <span>${email}</span>
                    <span>${phone}</span>
                    <span>${location}</span>
                `;
                
                document.querySelector('.resume-section:nth-child(2) p').textContent = summary;
                
                const experienceItem = document.querySelector('.experience-item');
                experienceItem.innerHTML = `
                    <div class="item-header">
                        <div class="item-title">${position}</div>
                        <div class="item-date">${startDate} - ${endDate}</div>
                    </div>
                    <div class="item-subtitle">${company}</div>
                    <p>${description}</p>
                `;
                
                const educationItem = document.querySelector('.education-item');
                educationItem.innerHTML = `
                    <div class="item-header">
                        <div class="item-title">${degree}</div>
                        <div class="item-date">${gradDate}</div>
                    </div>
                    <div class="item-subtitle">${school}</div>
                    <p>${field}</p>
                `;
                
                const skillsContainer = document.querySelector('.resume-section:last-child');
                skillsContainer.innerHTML = `
                    <div class="resume-section-title">Skills</div>
                    ${skillsArray.map(skill => `<div class="skill-item">${skill}</div>`).join('')}
                `;
                
                alert('Resume updated successfully!');
            }
            
            // Function to reset the resume preview
            function resetResumePreview() {
                document.querySelector('.resume-name').textContent = 'Your Name';
                document.querySelector('.resume-title').textContent = 'Professional Title';
                
                const contactInfo = document.querySelector('.resume-contact');
                contactInfo.innerHTML = `
                    <span>email@example.com</span>
                    <span>(123) 456-7890</span>
                    <span>City, Country</span>
                `;
                
                document.querySelector('.resume-section:nth-child(2) p').textContent = 'Your professional summary will appear here. Write a brief overview of your experience, skills, and career goals.';
                
                const experienceItem = document.querySelector('.experience-item');
                experienceItem.innerHTML = `
                    <div class="item-header">
                        <div class="item-title">Job Title</div>
                        <div class="item-date">Start Date - End Date</div>
                    </div>
                    <div class="item-subtitle">Company Name</div>
                    <p>Description of your responsibilities and achievements.</p>
                `;
                
                const educationItem = document.querySelector('.education-item');
                educationItem.innerHTML = `
                    <div class="item-header">
                        <div class="item-title">Degree Name</div>
                        <div class="item-date">Graduation Date</div>
                    </div>
                    <div class="item-subtitle">University Name</div>
                    <p>Field of Study</p>
                `;
                
                const skillsContainer = document.querySelector('.resume-section:last-child');
                skillsContainer.innerHTML = `
                    <div class="resume-section-title">Skills</div>
                    <div class="skill-item">Skill 1</div>
                    <div class="skill-item">Skill 2</div>
                    <div class="skill-item">Skill 3</div>
                `;
                
                alert('Form reset successfully!');
            }
        });
    </script>
</body>
</html>
