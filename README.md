# Spotify Streaming Analytics Portfolio
**SQL, Python and PowerBI analysis of 4,600+ songs to solve real business problems**

![Dashboard Overview](03%20-%20PowerBiDashboard/Screenshots/1%20Spotify%20Data%20Analysis%20Dashboard.png)
*37 years of music industry evolution showing market saturation trends*

---

## About This Portfolio
Comprehensive data science project analysing 4,600+ Spotify tracks using multiple tools and methodologies. Demonstrates full-stack analytical capabilities from database management to predictive modelling, specifically addressing real business challenges in the music streaming industry.

**Total Dataset:** 4,600 tracks spanning 37 years (1987-2024)  
**Analysis Scope:** Cross-platform performance, streaming evolution, hit prediction  
**Tools Used:** SQL Server, Power BI, Python, Spotify Web API, Excel  
**Business Focus:** Strategic recommendations for artists, record labels, and streaming platforms

---

## What I Built
Five interconnected projects analysing Spotify's most streamed songs:

### 1. Data Quality Assessment & Management
- **Problem**: 4% of data had corrupted text fields requiring systematic cleaning
- **Solution**: Built comprehensive quality metrics and automated cleaning processes
- **Result**: 96% usable data identified with full audit trail and documentation

### 2. Cross-Platform Strategic Analysis  
- **Problem**: Which platform should artists prioritise for maximum commercial impact?
- **Solution**: Compared TikTok, Spotify, and YouTube performance using statistical analysis
- **Result**: Clear strategic recommendations based on quantified engagement patterns

### 3. Streaming Evolution Analysis
- **Problem**: How has music industry performance changed over time and what drives success?
- **Solution**: Analysed 37 years of streaming trends (1987-2024) using SQL and Power BI dashboards
- **Result**: Identified market saturation point and quality vs quantity trade-offs

### 4. Interactive Power BI Dashboard
- **Problem**: Need executive-level presentation of insights for stakeholder decision-making
- **Solution**: Professional multi-page Power BI dashboard with interactive filtering and Spotify branding
- **Result**: Corporate-standard business intelligence tool with integrated strategic recommendations

### 5. Python API Hit Prediction System
- **Problem**: Static historical analysis cannot predict future hit potential accurately
- **Solution**: Built automated system combining historical data with Spotify's real-time audio analysis
- **Result**: Hit prediction algorithm achieving 85% accuracy with production-ready error handling

---

## Main Findings

**Platform Rankings (Average Engagement):**
1. **TikTok**: 1.12B views - Best for viral content discovery
2. **Spotify**: 513M streams - Most reliable for revenue generation
3. **YouTube**: 432M views - Strongest for video content support

**Viral Potential Analysis:**
- TikTok maximum: 233B views (exceptional viral reach capability)
- YouTube maximum: 16.3B views (strong viral potential for video content)
- Spotify maximum: 4.3B streams (consistent growth patterns)

**Market Evolution Insights (1987-2024):**
- **2018**: Identified as tipping point where market saturation began affecting quality
- **828 songs** released in 2023 vs **190 in 2017** (4.4x increase in competition)
- **Average streams declined 80%** from peak era (2B+ to 183M average)
- **2019-2022** dominate total streaming volume despite individual song performance decline

**Hit Prediction Model Results:**
- **85% prediction accuracy** combining streaming performance with audio features
- **Audio characteristics** contribute 30% to overall hit potential scoring
- **Cross-platform performance** indicates 70% higher success probability

---

## Interactive Power BI Dashboard

![Dashboard Overview](03%20-%20PowerBiDashboard/Screenshots/1%20Spotify%20Data%20Analysis%20Dashboard.png)
*Professional dashboard with interactive year filtering and multi-page navigation*

![Cross Platform Analysis](03%20-%20PowerBiDashboard/Screenshots/2%20Cross%20Platform%20Performance%20Analysis.png)
*Strategic platform comparison with key insights for artist decision-making*

![Streaming Evolution](03%20-%20PowerBiDashboard/Screenshots/3%20Streaming%20Performance%20Evolution%20Analysis.png)
*Historical trend analysis showing market saturation and quality vs quantity dynamics*

![Data Tables](03%20-%20PowerBiDashboard/Screenshots/4%20Data%20Tables.png)
*Detailed data tables with strategic recommendations derived from comprehensive analysis*

**Power BI Dashboard Features:**
- **Interactive year sliders** affecting all visualisations simultaneously
- **Multi-page navigation** with consistent Spotify branding and corporate design standards
- **Executive-level KPI cards** and professional presentation formatting
- **Cross-filtering capabilities** enabling dynamic data exploration
- **Integrated strategic insights** embedded directly within dashboard design
- **Professional data storytelling** combining quantitative analysis with business recommendations

---

## Business Impact

**Strategic Recommendations for Industry Stakeholders:**

**For New Artists:** 
- Begin content strategy with TikTok for viral discovery and audience building
- Convert TikTok engagement to Spotify streams for reliable revenue generation  
- Utilise YouTube as supporting platform for video content and extended engagement

**For Established Artists:**
- Implement multi-platform approach essential for success in oversaturated market
- Focus on quality over quantity strategy, particularly effective for artists with established fanbases
- Leverage pre-2018 catalogue monetisation opportunities with proven streaming potential

**For Record Labels and Industry:**
- Prioritise investment in playlist placement and algorithmic promotion over traditional marketing approaches
- Develop differentiation strategies crucial for artist development in volume-driven market
- Recognise early streaming era (2017-2019) as optimal period for historical catalogue investment

**Market Strategy Insights:**
- **Post-2018 releases** face 4x increased competition requiring strategic positioning
- **Quality over quantity** approach essential for sustainable success in oversaturated market
- **Early streaming era** tracks maintain lasting commercial value and monetisation potential

---

## Technical Skills Demonstrated

**Database Management & Analysis:**
- **SQL Server proficiency** with complex queries, joins, and window functions
- **Data quality assessment** using systematic validation and cleaning procedures
- **Database views creation** for clean, reusable datasets and efficient analysis
- **Aggregate functions mastery** including AVG, MAX, COUNT for comprehensive insights

**Business Intelligence & Visualisation:**
- **Power BI development** with multi-page architecture and professional branding
- **Interactive dashboard design** incorporating cross-filtering and dynamic user experience
- **DAX calculations** for complex business metrics and KPI development
- **Professional data storytelling** combining technical analysis with strategic communication

**Programming & API Integration:**
- **Python development** for data analysis, API integration, and predictive modelling
- **Jupyter notebook proficiency** with professional documentation and code structure
- **Spotify Web API integration** including authentication, rate limiting, and error handling
- **Pandas data manipulation** for complex data processing and transformation workflows

**Statistical Analysis & Modelling:**
- **Time-series analysis** for trend identification across 37-year dataset
- **Predictive modelling** combining multiple data sources for hit potential scoring
- **Cross-platform performance analysis** with statistical significance testing
- **Business intelligence reporting** with clear, actionable strategic recommendations

---

## Repository Structure

### **[01 - Data](01%20-%20Data/)**
**Centralised datasets and data management**
- Raw streaming data exported from SQL Server database
- Sample datasets for testing, demonstration, and validation purposes  
- Data quality documentation, metadata, and field definitions
- **Key Files:**
  - `top20_spotify_data.csv` - Primary analysis dataset for Python development
  - `sample_data.csv` - Demonstration subset for quick testing
  - `data_dictionary.md` - Comprehensive field definitions and data structure documentation

### **[02 - SQLAnalysis](02%20-%20SQLAnalysis/)**
**Historical streaming data analysis using SQL Server**
- Production-ready SQL queries with comprehensive inline documentation
- Data quality assessment procedures and systematic cleaning protocols  
- Cross-platform performance analysis delivering strategic insights
- 37-year streaming evolution analysis revealing market transformation patterns
- **Key Deliverables:**
  - `01_DataQualityAssessment.sql` - Systematic data cleaning and validation procedures
  - `02_CrossPlatformAnalysis.sql` - Multi-platform strategic analysis and recommendations  
  - `03_StreamingEvolution.sql` - Historical trend identification and market analysis

### **[03 - PowerBiDashboard](03%20-%20PowerBiDashboard/)**
**Interactive business intelligence dashboard for executive decision-making**
- Professional multi-page Power BI dashboard with corporate-standard presentation
- High-resolution screenshots enabling immediate visual assessment without software requirements
- Interactive filtering capabilities with consistent Spotify branding throughout
- Executive-level presentation materials suitable for stakeholder communications
- **Key Features:**
  - Multi-page navigation with intuitive user experience and professional design
  - Interactive year sliders creating dynamic visualisation updates across all pages
  - Cross-platform strategic analysis integrated with quantified business recommendations
  - Market saturation analysis providing clear insights for strategic planning

### **[04 - RealTimeTracker](04%20-%20RealTimeTracker/)**
**Python API integration for live music analytics and hit prediction**
- Complete Jupyter notebook featuring professional documentation and modular code structure
- Spotify Web API integration incorporating robust authentication and comprehensive error handling
- Custom hit prediction algorithm combining historical streaming data with real-time audio features
- Production-ready analysis pipeline designed for scalable implementation
- **Technical Implementation:**
  - Professional API authentication with secure token management and rate limiting
  - Predictive modelling system achieving 85% accuracy in hit potential assessment
  - Automated report generation with dynamic data visualisation capabilities
  - Comprehensive error handling and logging suitable for production deployment

### **[05 - ExcelDashboard](05%20-%20ExcelDashboard/)**
**Traditional spreadsheet analysis and comprehensive visualisation**
- Excel-based dashboard utilising advanced pivot tables, complex formulas, and professional formatting
- Alternative visualisation approach designed for non-technical stakeholders and executive presentations
- Comprehensive data analysis leveraging native Excel functionality for accessibility
- Professional formatting and presentation-ready materials for diverse audience requirements
- **Business Applications:**
  - Accessible analysis for stakeholders without specialised software requirements
  - Quick insights and ad-hoc analysis capabilities for rapid decision support
  - Traditional reporting format optimised for executive presentations and board communications
  - Complementary analysis supporting and validating other methodological approaches

---

**Total Project Scope:** 4,600+ tracks analysed across 37 years (1987-2024) using multiple analytical approaches and professional tools, demonstrating comprehensive data science workflow from database management through to predictive modelling and strategic business intelligence.

---

## Methodology

**Data Collection and Management:**
- **Dataset**: 4,600 tracks analysed, with 3,463 containing complete cross-platform data for comprehensive analysis
- **Approach**: Quality assessment followed by clean view creation, comparative analysis, trend visualisation, and interactive dashboard development
- **Focus**: Business-relevant insights prioritised over technical complexity, ensuring practical applicability
- **Timeframe**: 37 years of music industry data spanning 1987-2024 for historical context and trend analysis

**Analysis Framework:**
- **Descriptive Analytics**: Historical pattern identification and comprehensive trend analysis
- **Diagnostic Analytics**: Root cause analysis of market saturation factors and performance drivers
- **Predictive Analytics**: Hit potential scoring using statistical modelling principles
- **Prescriptive Analytics**: Strategic recommendations with quantified business impact

**Quality Assurance:**
- **Data Validation**: Multi-stage cleaning and validation processes ensuring analysis reliability
- **Cross-Validation**: Model accuracy verification using holdout datasets and statistical testing
- **Business Logic Review**: Industry context validation ensuring practical relevance of insights

---

## Why This Portfolio Matters

**For Employers, This Demonstrates:**

**Technical Competence:**
- Advanced SQL capabilities for complex data analysis and database management
- Professional business intelligence dashboard development with corporate presentation standards
- API integration expertise with production-ready error handling and security considerations
- Python data science workflow implementation with statistical modelling capabilities

**Business Acumen:**
- Industry-specific knowledge combined with strategic thinking and market analysis
- Clear communication of complex technical concepts to diverse stakeholder audiences
- Executive-level presentation skills with quantified business impact assessment
- ROI-focused recommendations supported by comprehensive data analysis

**Professional Skills:**
- Complete project lifecycle management from conception through to delivery
- Comprehensive documentation and knowledge transfer capabilities ensuring project sustainability
- Cross-functional collaboration readiness with technical and business stakeholders
- Continuous learning demonstrated through multiple technology implementations

**Strategic Value:**
- End-to-end analytical capability spanning database management to predictive modelling
- Multi-tool proficiency demonstrating adaptability and comprehensive skill development
- Business-focused outcomes with clear strategic recommendations and quantified impact
- Scalable methodologies suitable for expansion and real-world implementation

---

## Real-World Applications

**Music Industry Applications:**
- **Artist Management**: Real-time performance monitoring and strategic career planning
- **Record Label Analytics**: Portfolio performance tracking and A&R decision support
- **Marketing Campaign Analysis**: ROI measurement and promotional strategy optimisation
- **Streaming Platform Intelligence**: Content acquisition and recommendation algorithm enhancement

**Broader Industry Applications:**
- **Social Media Analytics**: Engagement pattern analysis and influence measurement
- **E-commerce Intelligence**: Product performance monitoring and market trend analysis
- **Financial Markets**: Performance indicator development and trend prediction
- **Marketing Technology**: Campaign effectiveness measurement and customer behaviour analysis

---

## Getting Started

**Prerequisites:**
- SQL Server Management Studio (for database analysis and query execution)
- Power BI Desktop (for interactive dashboard exploration and analysis)
- Python 3.8+ with Jupyter Lab (for API analysis and predictive modelling)
- Spotify Developer Account (free registration required for API access)

**Quick Start Guide:**

1. **Explore SQL Analysis**
   - Open SQL files in `/02 - SQLAnalysis/` directory
   - Execute queries against streaming dataset for comprehensive analysis
   - Review data quality assessment and cleaning procedures

2. **Interact with Power BI Dashboard**  
   - Download: `/03 - PowerBiDashboard/2024_Spotify_Interactive_Dashboard.pbix`
   - Open using Power BI Desktop for full interactive experience
   - Explore multi-page navigation and dynamic filtering capabilities

3. **Execute Python Analysis**
   - Navigate to `/04 - RealTimeTracker/` directory
   - Install required packages: `pip install -r requirements.txt`
   - Launch Jupyter notebook for API integration and hit prediction analysis

---

## Contact Information

**Chinedu Ofoegbu**  
**Email:** chineduofoegbu98@gmail.com  
**LinkedIn:** [linkedin.com/in/chinedu-ofoegbu-946410328](https://www.linkedin.com/in/chinedu-ofoegbu-946410328)  
**GitHub:** [github.com/chineduofoegbu98](https://github.com/chineduofoegbu98)

---

*This portfolio represents comprehensive analytical work combining database management, business intelligence, and predictive modelling to generate actionable insights for the music streaming industry. All methodologies, code, and analysis approaches are available for review, collaboration, and professional discussion.*
