// src/components/pages/Home.tsx
import { useEffect, useState, useRef } from 'react';
import { useLocation } from 'react-router-dom';
import axios from "axios";
import { API_URL } from '../../../config';
import { Calendar } from 'lucide-react';

// Components
import HeroSection from './sections/HeroSection';
import ServicesSection from './sections/ServicesSection';
import { HeroScrollDemo } from '../demo/HeroScrollDemo';
import FeaturesSection from './sections/FeaturesSection';
import StatsSection from './sections/StatsSection';
import ProcessSection from './sections/ProcessSection';
import TeamSection from './sections/TeamSection';
import PricingSection from './sections/PricingSection';
import TestimonialsSection from './sections/TestimonialsSection';
import FaqSection from './sections/FaqSection';
import ContactSection from './sections/ContactSection';
import NewsletterSection from './sections/NewsletterSection';
import AppointmentModal from './modals/AppointmentModal';
import PlanModal from './modals/PlanModal';
import TestimonialModal from './modals/TestimonialModal';
import NewsletterModal from './modals/NewsletterModal';  // ✅ Import component
import LoadingScreen from '../common/LoadingScreen';

import './Home.css';

const Home = () => {
  const location = useLocation();
  const [isPageLoading, setIsPageLoading] = useState(true);
  const [loading, setLoading] = useState(true);
  
  // All data states
  const [services, setServices] = useState([]);
  const [team, setTeam] = useState([]);
  const [testimonials, setTestimonials] = useState([]);
  const [portfolio, setPortfolio] = useState([]);
  const [pricing, setPricing] = useState([]);
  const [faqs, setFaqs] = useState([]);
  const [banners, setBanners] = useState([]);
  const [features, setFeatures] = useState([]);
  const [processSteps, setProcessSteps] = useState([]);
  const [statistics, setStatistics] = useState([]);
  const [companyInfo, setCompanyInfo] = useState(null);
  const [faqImage, setFaqImage] = useState('');
  
  // Modal states
  const [showPlanModal, setShowPlanModal] = useState(false);
  const [selectedPlan, setSelectedPlan] = useState<any>(null);
  const [showAppointmentModal, setShowAppointmentModal] = useState(false);
  const [showTestimonialModal, setShowTestimonialModal] = useState(false);
  const [showNewsletterModal, setShowNewsletterModal] = useState(false);  // ✅ Modal state

  useEffect(() => {
    document.title = 'Home - Fusix Tech | Premium IT Solutions Provider';
    window.scrollTo(0, 0);
  }, []);

  // ✅ Show Newsletter Modal on page load
  useEffect(() => {
    if (!isPageLoading && !loading) {
      setTimeout(() => {
        setShowNewsletterModal(true);
      }, 1000);
    }
  }, [isPageLoading, loading]);

  // Fetch FAQ Image
  const fetchFaqImage = async () => {
    try {
      const response = await axios.get(`${API_URL}/faq_images`);
      const imageData = response.data?.data || response.data;
      if (imageData) {
        const firstImage = Array.isArray(imageData) ? imageData[0] : imageData;
        if (firstImage && firstImage.image_url) {
          setFaqImage(getImageUrl(firstImage.image_url));
        }
      }
    } catch (error) {
      console.error('Error fetching FAQ image:', error);
    }
  };

  // Helper function to get image URL
  const getImageUrl = (url: string) => {
    if (!url) return 'https://via.placeholder.com/300x250?text=No+Image';
    if (url.startsWith('http')) return url;
    const cleanUrl = url.replace(/^\/+/, '');
    if (cleanUrl.startsWith('storage/')) return `${API_URL}/${cleanUrl}`;
    if (cleanUrl.startsWith('uploads/')) return `${API_URL}/uploads/${cleanUrl}`;
    return `${API_URL}/storage/uploads/${cleanUrl}`;
  };

  // Fetch all data
  useEffect(() => {
    const fetchAllData = async () => {
      try {
        const [
          servicesRes, teamRes, testimonialsRes, portfolioRes,
          pricingRes, faqsRes, bannersRes, featuresRes,
          processStepsRes, statisticsRes, companyInfoRes
        ] = await Promise.all([
          axios.get(`${API_URL}/services`),
          axios.get(`${API_URL}/team`),
          axios.get(`${API_URL}/testimonials`),
          axios.get(`${API_URL}/portfolio`),
          axios.get(`${API_URL}/pricing`),
          axios.get(`${API_URL}/faqs`),
          axios.get(`${API_URL}/banners`),
          axios.get(`${API_URL}/features`),
          axios.get(`${API_URL}/process-steps`),
          axios.get(`${API_URL}/statistics`),
          axios.get(`${API_URL}/company-info`)
        ]);
        
        setServices(servicesRes.data?.data || servicesRes.data || []);
        setTeam(teamRes.data?.data || teamRes.data || []);
        setTestimonials(testimonialsRes.data?.data || testimonialsRes.data || []);
        setPortfolio(portfolioRes.data?.data || portfolioRes.data || []);
        setPricing(pricingRes.data?.data || pricingRes.data || []);
        setFaqs(faqsRes.data?.data || faqsRes.data || []);
        setBanners(bannersRes.data?.data || bannersRes.data || []);
        setFeatures(featuresRes.data?.data || featuresRes.data || []);
        setProcessSteps(processStepsRes.data?.data || processStepsRes.data || []);
        setStatistics(statisticsRes.data?.data || statisticsRes.data || []);
        setCompanyInfo(companyInfoRes.data?.data || companyInfoRes.data || null);
        
      } catch (error) {
        console.error('Error fetching data:', error);
      } finally {
        setLoading(false);
        setTimeout(() => setIsPageLoading(false), 500);
      }
    };
    
    fetchAllData();
    fetchFaqImage();
  }, []);

  // Loading screen
  if (isPageLoading || loading) {
    return <LoadingScreen />;
  }

  return (
    <div className="home-container" style={{ overflowX: 'hidden', marginTop: 'clamp(60px, 10vw, 70px)' }}>
      
      {/* ✅ NEWSLETTER MODAL - Using Component */}
      <NewsletterModal 
        show={showNewsletterModal} 
        onClose={() => setShowNewsletterModal(false)} 
      />
      
      {/* Other Modals */}
      <AppointmentModal 
        show={showAppointmentModal} 
        onClose={() => setShowAppointmentModal(false)} 
      />
      
      <PlanModal 
        show={showPlanModal} 
        plan={selectedPlan} 
        onClose={() => {
          setShowPlanModal(false);
          setSelectedPlan(null);
        }} 
      />
      
      <TestimonialModal 
        show={showTestimonialModal} 
        onClose={() => setShowTestimonialModal(false)} 
      />

      {/* Sections */}
      <HeroSection />
      <ServicesSection services={services} getImageUrl={getImageUrl} />
      <HeroScrollDemo />
      <FeaturesSection features={features} getImageUrl={getImageUrl} />
      <StatsSection statistics={statistics} />
      <ProcessSection processSteps={processSteps} />
      <TeamSection team={team} getImageUrl={getImageUrl} />
      <PricingSection pricing={pricing} onSelectPlan={(plan) => {
        setSelectedPlan(plan);
        setShowPlanModal(true);
      }} />
      <TestimonialsSection 
        testimonials={testimonials} 
        onAddTestimonial={() => setShowTestimonialModal(true)} 
      />
      <FaqSection faqs={faqs} />
      <ContactSection 
        companyInfo={companyInfo} 
        onBookAppointment={() => setShowAppointmentModal(true)} 
      />
      <NewsletterSection />
      
      {/* Floating Appointment Button */}
      <button
        onClick={() => setShowAppointmentModal(true)}
        style={{
          position: 'fixed',
          bottom: 'clamp(15px, 5vw, 30px)',
          right: 'clamp(15px, 5vw, 30px)',
          width: 'clamp(45px, 12vw, 56px)',
          height: 'clamp(45px, 12vw, 56px)',
          borderRadius: '16px',
          background: 'linear-gradient(145deg, #FFD700, #FFA500)',
          border: 'none',
          boxShadow: '0 8px 20px rgba(0, 0, 0, 0.3)',
          cursor: 'pointer',
          display: 'flex',
          alignItems: 'center',
          justifyContent: 'center',
          zIndex: 999,
        }}
        title="Book Appointment"
      >
        <Calendar size={24} color="#000000" />
      </button>
    </div>
  );
};

export default Home;