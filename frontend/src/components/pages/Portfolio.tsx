import React, { useState, useEffect } from 'react';
import API from '../../services/api';
import { ExternalLink, Code, Smartphone, Globe, Palette, Cpu, Shield, Zap, Rocket, X } from 'lucide-react';
import './Portfolio.css';

const Portfolio = () => {
  const [portfolio, setPortfolio] = useState([]);
  const [loading, setLoading] = useState(true);
  const [activeFilter, setActiveFilter] = useState('all');
  const [selectedProject, setSelectedProject] = useState(null);

  useEffect(() => {
    const fetchPortfolio = async () => {
      try {
        const response = await API.get('/portfolio');
        setPortfolio(response.data.data || []);
      } catch (error) {
        console.error('Error fetching portfolio:', error);
      } finally {
        setLoading(false);
      }
    };
    fetchPortfolio();
  }, []);

  useEffect(() => {
    document.title = 'Portfolio - TopTech | Our Work';
    window.scrollTo(0, 0);
  }, []);

  const categories = ['all', 'development', 'design', 'ai', 'marketing'];

  const filteredPortfolio = activeFilter === 'all' 
    ? portfolio 
    : portfolio.filter(item => item.category === activeFilter);

  const getIcon = (category) => {
    switch(category) {
      case 'development': return <Code size={24} />;
      case 'design': return <Palette size={24} />;
      case 'ai': return <Cpu size={24} />;
      case 'marketing': return <Rocket size={24} />;
      default: return <Globe size={24} />;
    }
  };

  if (loading) {
    return (
      <div className="portfolio-loading" style={{ marginTop: '70px' }}>
        <div className="loader"></div>
        <p>Loading our work...</p>
      </div>
    );
  }

  return (
    <div className="portfolio-page" style={{ marginTop: '70px', background: '#0A0A0A', minHeight: '100vh' }}>
      {/* Hero Section */}
      <section className="portfolio-hero" style={{
        padding: '80px 20px',
        textAlign: 'center',
        background: 'linear-gradient(135deg, #0A0A0A 0%, #1a1a1a 100%)'
      }}>
        <div className="container" style={{ maxWidth: '1200px', margin: '0 auto' }}>
          <span className="hero-badge" style={{ 
            fontSize: '14px', 
            color: '#FFD700', 
            letterSpacing: '4px',
            display: 'block',
            marginBottom: '15px'
          }}>OUR WORK</span>
          <h1 style={{ 
            fontSize: 'clamp(32px, 8vw, 56px)', 
            marginBottom: '20px',
            color: '#FFFFFF'
          }}>
            Our <span style={{ color: '#FFD700' }}>Portfolio</span>
          </h1>
          <p style={{ 
            fontSize: 'clamp(14px, 4vw, 18px)', 
            color: '#aaa',
            maxWidth: '700px',
            margin: '0 auto'
          }}>
            Explore our latest projects and success stories
          </p>
        </div>
      </section>

      {/* Filter Section */}
      <section className="portfolio-filters-section" style={{ padding: '40px 20px' }}>
        <div className="container" style={{ maxWidth: '1200px', margin: '0 auto' }}>
          <div className="filters" style={{
            display: 'flex',
            justifyContent: 'center',
            gap: '15px',
            flexWrap: 'wrap',
            marginBottom: '50px'
          }}>
            {categories.map(filter => (
              <button
                key={filter}
                onClick={() => setActiveFilter(filter)}
                style={{
                  padding: '10px 28px',
                  fontSize: '14px',
                  background: activeFilter === filter ? '#FFD700' : 'transparent',
                  border: `1px solid ${activeFilter === filter ? '#FFD700' : 'rgba(255,215,0,0.3)'}`,
                  borderRadius: '40px',
                  cursor: 'pointer',
                  color: activeFilter === filter ? '#000' : '#FFD700',
                  fontWeight: '500',
                  transition: 'all 0.3s ease'
                }}
              >
                {filter === 'all' ? 'All Projects' : filter.charAt(0).toUpperCase() + filter.slice(1)}
              </button>
            ))}
          </div>

          {/* Projects Grid */}
          <div className="portfolio-grid" style={{
            display: 'grid',
            gridTemplateColumns: 'repeat(auto-fill, minmax(350px, 1fr))',
            gap: '30px'
          }}>
            {filteredPortfolio.map((project) => (
              <div
                key={project.id}
                className="portfolio-card"
                style={{
                  background: '#1a1a1a',
                  borderRadius: '20px',
                  overflow: 'hidden',
                  transition: 'all 0.3s ease',
                  cursor: 'pointer'
                }}
                onClick={() => setSelectedProject(project)}
              >
                <div style={{
                  position: 'relative',
                  overflow: 'hidden',
                  aspectRatio: '16/10'
                }}>
                  <img
                    src={project.image}
                    alt={project.title}
                    style={{
                      width: '100%',
                      height: '100%',
                      objectFit: 'cover',
                      transition: 'transform 0.5s ease'
                    }}
                    onMouseEnter={(e) => e.currentTarget.style.transform = 'scale(1.1)'}
                    onMouseLeave={(e) => e.currentTarget.style.transform = 'scale(1)'}
                  />
                  <div style={{
                    position: 'absolute',
                    top: '15px',
                    right: '15px',
                    background: '#FFD700',
                    padding: '5px 12px',
                    borderRadius: '20px',
                    fontSize: '12px',
                    fontWeight: 'bold',
                    color: '#000'
                  }}>
                    {project.category}
                  </div>
                </div>
                
                <div style={{ padding: '20px' }}>
                  <div style={{ marginBottom: '10px', color: '#FFD700' }}>
                    {getIcon(project.category)}
                  </div>
                  <h3 style={{ fontSize: '20px', marginBottom: '10px', color: '#FFF' }}>{project.title}</h3>
                  <p style={{ fontSize: '14px', color: '#aaa', marginBottom: '15px', lineHeight: '1.5' }}>
                    {project.description}
                  </p>
                  <div style={{
                    display: 'flex',
                    justifyContent: 'space-between',
                    alignItems: 'center',
                    flexWrap: 'wrap',
                    gap: '10px'
                  }}>
                    <span style={{ fontSize: '12px', color: '#666' }}>
                      {project.client_name || project.client}
                    </span>
                    <span style={{ fontSize: '12px', color: '#666' }}>
                      {project.project_year || project.year}
                    </span>
                  </div>
                </div>
              </div>
            ))}
          </div>

          {filteredPortfolio.length === 0 && (
            <div style={{ textAlign: 'center', padding: '60px', color: '#aaa' }}>
              No projects found in this category.
            </div>
          )}
        </div>
      </section>

      {/* Project Modal */}
      {selectedProject && (
        <div
          style={{
            position: 'fixed',
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            background: 'rgba(0,0,0,0.9)',
            display: 'flex',
            alignItems: 'center',
            justifyContent: 'center',
            zIndex: 9999,
            backdropFilter: 'blur(5px)',
            padding: '20px'
          }}
          onClick={() => setSelectedProject(null)}
        >
          <div
            style={{
              background: '#1a1a1a',
              borderRadius: '24px',
              maxWidth: '800px',
              width: '100%',
              maxHeight: '85vh',
              overflow: 'auto',
              position: 'relative'
            }}
            onClick={(e) => e.stopPropagation()}
          >
            <button
              onClick={() => setSelectedProject(null)}
              style={{
                position: 'absolute',
                top: '15px',
                right: '15px',
                background: 'rgba(255,255,255,0.1)',
                border: 'none',
                borderRadius: '50%',
                width: '35px',
                height: '35px',
                cursor: 'pointer',
                color: '#fff',
                display: 'flex',
                alignItems: 'center',
                justifyContent: 'center'
              }}
            >
              <X size={20} />
            </button>
            
            <img
              src={selectedProject.image}
              alt={selectedProject.title}
              style={{ width: '100%', height: '300px', objectFit: 'cover' }}
            />
            
            <div style={{ padding: '30px' }}>
              <h2 style={{ fontSize: '28px', marginBottom: '15px', color: '#FFD700' }}>
                {selectedProject.title}
              </h2>
              <p style={{ fontSize: '16px', lineHeight: '1.6', color: '#ccc', marginBottom: '20px' }}>
                {selectedProject.description}
              </p>
              
              <div style={{ marginBottom: '20px' }}>
                <h4 style={{ fontSize: '16px', color: '#FFD700', marginBottom: '10px' }}>Technologies</h4>
                <div style={{ display: 'flex', flexWrap: 'wrap', gap: '10px' }}>
                  {selectedProject.technologies?.map((tech, idx) => (
                    <span key={idx} style={{
                      padding: '5px 12px',
                      background: 'rgba(255,215,0,0.1)',
                      borderRadius: '20px',
                      fontSize: '12px',
                      color: '#FFD700'
                    }}>{tech}</span>
                  ))}
                </div>
              </div>
              
              {selectedProject.link && (
                <a
                  href={selectedProject.link}
                  target="_blank"
                  rel="noopener noreferrer"
                  style={{
                    display: 'inline-flex',
                    alignItems: 'center',
                    gap: '10px',
                    padding: '12px 24px',
                    background: 'linear-gradient(135deg, #FFD700, #FFA500)',
                    borderRadius: '10px',
                    color: '#000',
                    textDecoration: 'none',
                    fontWeight: '600'
                  }}
                >
                  View Live Project <ExternalLink size={16} />
                </a>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
};

export default Portfolio;