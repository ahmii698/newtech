import React, { useState, useEffect } from "react";
import { ContainerScroll } from "../ui/container-scroll-animation";
import API from '../../services/api';

export function HeroScrollDemo() {
  const [selectedProject, setSelectedProject] = useState(0);
  const [hoveredProject, setHoveredProject] = useState(null);
  const [linePosition, setLinePosition] = useState({ side: "top", progress: 0 });
  const [projects, setProjects] = useState([]);
  const [loading, setLoading] = useState(true);
  const [isMobile, setIsMobile] = useState(false);
  const [isTablet, setIsTablet] = useState(false);

  // Check screen size for responsive design
  useEffect(() => {
    const checkScreenSize = () => {
      const width = window.innerWidth;
      setIsMobile(width < 768);
      setIsTablet(width >= 768 && width < 1024);
    };
    
    checkScreenSize();
    window.addEventListener('resize', checkScreenSize);
    return () => window.removeEventListener('resize', checkScreenSize);
  }, []);

  // Helper function to get image URL
  const getImageUrl = (url) => {
    if (!url) return null;
    if (url.startsWith('http')) return url;
    if (url.startsWith('/storage')) return `http://localhost:8000${url}`;
    if (url.startsWith('storage')) return `http://localhost:8000/${url}`;
    if (url.startsWith('uploads')) return `http://localhost:8000/${url}`;
    return `http://localhost:8000/storage/uploads/${url}`;
  };

  // Fetch portfolio projects from API
  useEffect(() => {
    const fetchProjects = async () => {
      try {
        const response = await API.get('/portfolio_projects');
        console.log('Projects Response:', response.data);
        
        if (response.data && response.data.success && Array.isArray(response.data.data)) {
          const formattedProjects = response.data.data.map(project => ({
            id: project.id,
            title: project.title || 'Untitled',
            description: project.description || '',
            tech: (() => {
              try {
                if (typeof project.technologies === 'string') {
                  return JSON.parse(project.technologies);
                }
                return Array.isArray(project.technologies) ? project.technologies : [];
              } catch (e) {
                return [];
              }
            })(),
            images: [
              getImageUrl(project.image_1) || project.image_1 || 'https://via.placeholder.com/600x340?text=No+Image',
              getImageUrl(project.image_2) || project.image_2 || 'https://via.placeholder.com/300x200?text=No+Image',
              getImageUrl(project.image_3) || project.image_3 || 'https://via.placeholder.com/300x200?text=No+Image'
            ]
          }));
          setProjects(formattedProjects);
        } else {
          setProjects([]);
        }
      } catch (error) {
        console.error('Error fetching projects:', error);
        setProjects([]);
      } finally {
        setLoading(false);
      }
    };
    
    fetchProjects();
  }, []);

  const currentProject = projects[selectedProject];

  useEffect(() => {
    const sides = ["top", "right", "bottom", "left"];
    let sideIndex = 0;
    let progress = 0;
    
    const interval = setInterval(() => {
      progress += 0.8;
      if (progress >= 100) {
        progress = 0;
        sideIndex = (sideIndex + 1) % sides.length;
      }
      setLinePosition({ side: sides[sideIndex], progress });
    }, 50);
    
    return () => clearInterval(interval);
  }, []);

  const getMovingLineStyle = () => {
    const baseStyle = {
      position: "absolute",
      background: "linear-gradient(90deg, #FFD700, #FFA500)",
      filter: "blur(3px)",
      zIndex: 20,
      pointerEvents: "none",
      transition: "all 0.05s linear",
      boxShadow: "0 0 12px #FFD700"
    };
    
    switch(linePosition.side) {
      case "top":
        return { ...baseStyle, top: -3, left: `${linePosition.progress}%`, width: "clamp(40px, 8vw, 60px)", height: "3px", transform: "translateX(-50%)" };
      case "right":
        return { ...baseStyle, top: `${linePosition.progress}%`, right: -3, width: "3px", height: "clamp(40px, 8vw, 60px)", transform: "translateY(-50%)" };
      case "bottom":
        return { ...baseStyle, bottom: -3, left: `${linePosition.progress}%`, width: "clamp(40px, 8vw, 60px)", height: "3px", transform: "translateX(-50%)" };
      case "left":
        return { ...baseStyle, top: `${linePosition.progress}%`, left: -3, width: "3px", height: "clamp(40px, 8vw, 60px)", transform: "translateY(-50%)" };
      default:
        return {};
    }
  };

  const getGlowTrailStyle = () => {
    const baseTrailStyle = {
      position: "absolute",
      background: "linear-gradient(90deg, rgba(255,215,0,0.4), rgba(255,165,0,0.1))",
      filter: "blur(6px)",
      zIndex: 15,
      pointerEvents: "none",
      transition: "all 0.05s linear"
    };
    
    switch(linePosition.side) {
      case "top":
        return { ...baseTrailStyle, top: -3, left: 0, width: `${linePosition.progress}%`, height: "3px" };
      case "right":
        return { ...baseTrailStyle, top: 0, right: -3, height: `${linePosition.progress}%`, width: "3px" };
      case "bottom":
        return { ...baseTrailStyle, bottom: -3, left: 0, width: `${linePosition.progress}%`, height: "3px" };
      case "left":
        return { ...baseTrailStyle, top: 0, left: -3, height: `${linePosition.progress}%`, width: "3px" };
      default:
        return {};
    }
  };

  if (loading) {
    return (
      <div style={{ 
        display: "flex", 
        justifyContent: "center", 
        alignItems: "center", 
        minHeight: "400px",
        background: "#0A0A0A"
      }}>
        <div style={{
          width: "40px",
          height: "40px",
          border: "3px solid #222",
          borderTop: "3px solid #FFD700",
          borderRadius: "50%",
          animation: "spin 1s linear infinite"
        }} />
      </div>
    );
  }

  if (projects.length === 0) {
    return (
      <div style={{ 
        display: "flex", 
        justifyContent: "center", 
        alignItems: "center", 
        minHeight: "400px",
        background: "#0A0A0A",
        color: "#fff",
        flexDirection: "column",
        gap: "20px",
        textAlign: "center",
        padding: "20px"
      }}>
        <div style={{ fontSize: "48px" }}>📁</div>
        <p>No projects found. Please add projects in admin panel.</p>
        <button
          onClick={() => window.location.href = '/admin'}
          style={{
            padding: "10px 20px",
            background: "#FFD700",
            color: "#000",
            border: "none",
            borderRadius: "8px",
            cursor: "pointer",
            fontWeight: "bold"
          }}
        >
          Go to Admin Panel
        </button>
      </div>
    );
  }

  return (
    <div style={{ 
      display: "flex", 
      flexDirection: "column", 
      background: "#0A0A0A",
      minHeight: "100vh",
      width: "100%",
      margin: 0,
      padding: "clamp(20px, 5vw, 40px) 0"
    }}>
      <ContainerScroll
        titleComponent={
          <div style={{ textAlign: "center", padding: "0 16px" }}>
            <span style={{ 
              fontSize: "clamp(10px, 3vw, 14px)", 
              letterSpacing: "clamp(2px, 1vw, 4px)", 
              color: "#FFD700", 
              display: "block", 
              marginBottom: "clamp(8px, 2vw, 12px)", 
              fontWeight: "600" 
            }}>
              OUR WORK
            </span>
            
            <h1 style={{ 
              fontSize: "clamp(22px, 6vw, 42px)", 
              margin: "clamp(8px, 2vw, 10px) 0", 
              lineHeight: "1.2", 
              fontWeight: "800", 
              textShadow: "2px 2px 4px rgba(0,0,0,0.5)",
              color: "#FFFFFF"
            }}>
              Featured Projects
            </h1>
          </div>
        }
      >
        <div style={{ 
          width: "100%", 
          maxWidth: "1350px",
          margin: "0 auto",
          background: "linear-gradient(135deg, #0f172a, #0a0f1a)", 
          borderRadius: "clamp(12px, 3vw, 24px)", 
          overflow: "hidden",
          position: "relative",
          boxShadow: "0 25px 50px -12px rgba(0,0,0,0.5)"
        }}>
          
          <div style={getGlowTrailStyle()} />
          <div style={getMovingLineStyle()} />
          
          <div style={{
            position: "absolute",
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            borderRadius: "clamp(12px, 3vw, 24px)",
            border: "1px solid rgba(255, 215, 0, 0.15)",
            pointerEvents: "none",
            zIndex: 10
          }} />
          
          {/* ✅ RESPONSIVE LAYOUT */}
          <div style={{ 
            display: "flex",
            flexDirection: isMobile ? "column" : "row",
            overflow: "hidden"
          }}>
            
            {/* Left side - Projects List - Mobile par top par dikhega */}
            <div style={{ 
              width: isMobile ? "100%" : (isTablet ? "280px" : "340px"),
              padding: isMobile ? "clamp(12px, 4vw, 16px)" : "clamp(16px, 4vw, 28px)", 
              borderRight: isMobile ? "none" : "1px solid rgba(234, 179, 8, 0.1)",
              borderBottom: isMobile ? "1px solid rgba(234, 179, 8, 0.1)" : "none",
              background: "rgba(15, 23, 42, 0.5)",
              overflowY: "auto",
              maxHeight: isMobile ? "auto" : "600px"
            }}>
              <div style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
                flexWrap: "wrap",
                gap: "10px",
                marginBottom: "16px"
              }}>
                <h3 style={{ 
                  fontSize: isMobile ? "clamp(12px, 3.5vw, 14px)" : "clamp(14px, 3vw, 17px)", 
                  fontWeight: "600", 
                  color: "#FFD700", 
                  margin: 0,
                  paddingBottom: "6px", 
                  borderBottom: "2px solid rgba(234, 179, 8, 0.3)",
                  display: "inline-block"
                }}>
                 RECENT WORK
                </h3>
                
                <div style={{
                  display: "flex",
                  alignItems: "center",
                  gap: "8px"
                }}>
                  <div style={{
                    width: "clamp(15px, 4vw, 20px)",
                    height: "1px",
                    background: "linear-gradient(90deg, #FFD700, transparent)"
                  }} />
                  <button
                    onClick={() => window.location.href = '/portfolio'}
                    style={{
                      background: "transparent",
                      border: "1px solid rgba(255,215,0,0.3)",
                      borderRadius: "30px",
                      padding: isMobile ? "4px 8px" : "clamp(4px, 1.5vw, 6px) clamp(8px, 2.5vw, 14px)",
                      fontSize: isMobile ? "clamp(9px, 2.5vw, 11px)" : "clamp(10px, 2.5vw, 12px)",
                      color: "#FFD700",
                      cursor: "pointer",
                      transition: "all 0.3s ease",
                      fontWeight: "500",
                      whiteSpace: "nowrap"
                    }}
                    onMouseEnter={(e) => {
                      e.currentTarget.style.background = "rgba(255,215,0,0.1)";
                      e.currentTarget.style.borderColor = "#FFD700";
                    }}
                    onMouseLeave={(e) => {
                      e.currentTarget.style.background = "transparent";
                      e.currentTarget.style.borderColor = "rgba(255,215,0,0.3)";
                    }}
                  >
                    Show More →
                  </button>
                </div>
              </div>
              
              {/* ✅ MOBILE: Sirf 1 project dikhega, baaki hidden */}
              {/* ✅ TABLET/DESKTOP: Saare projects dikhenge */}
              <div style={{ 
                display: "flex", 
                flexDirection: "column", 
                gap: "clamp(8px, 2vw, 10px)", 
                marginTop: "8px" 
              }}>
                {projects.slice(0, isMobile ? 1 : projects.length).map((project, index) => (
                  <div
                    key={project.id}
                    onClick={() => setSelectedProject(index)}
                    onMouseEnter={() => setHoveredProject(index)}
                    onMouseLeave={() => setHoveredProject(null)}
                    style={{
                      padding: isMobile 
                        ? "clamp(8px, 2.5vw, 10px) clamp(10px, 3vw, 12px)" 
                        : "clamp(10px, 2.5vw, 14px) clamp(12px, 3vw, 16px)",
                      borderRadius: "clamp(8px, 2vw, 12px)",
                      transition: "all 0.3s cubic-bezier(0.4, 0, 0.2, 1)",
                      cursor: "pointer",
                      background: selectedProject === index 
                        ? "linear-gradient(135deg, rgba(234, 179, 8, 0.2), rgba(234, 179, 8, 0.05))" 
                        : hoveredProject === index 
                          ? "rgba(255, 255, 255, 0.08)" 
                          : "transparent",
                      border: selectedProject === index 
                        ? "1px solid rgba(234, 179, 8, 0.4)" 
                        : hoveredProject === index
                          ? "1px solid rgba(234, 179, 8, 0.2)"
                          : "1px solid rgba(255, 255, 255, 0.05)",
                      transform: hoveredProject === index && !isMobile && window.innerWidth >= 768 ? "translateX(5px)" : "translateX(0)"
                    }}
                  >
                    <div style={{
                      display: "inline-flex",
                      fontSize: isMobile ? "clamp(7px, 2vw, 8px)" : "clamp(8px, 2vw, 10px)",
                      fontWeight: "bold",
                      color: "#eab308",
                      background: "rgba(234, 179, 8, 0.15)",
                      padding: isMobile ? "2px 6px" : "2px 8px",
                      borderRadius: "20px",
                      marginBottom: isMobile ? "6px" : "8px"
                    }}>
                      {(index + 1).toString().padStart(2, "0")}
                    </div>
                    
                    <h4 style={{ 
                      fontWeight: "600", 
                      fontSize: isMobile ? "clamp(11px, 3vw, 13px)" : "clamp(13px, 3vw, 16px)", 
                      color: selectedProject === index ? "#fbbf24" : "#FFFFFF", 
                      margin: 0, 
                      marginBottom: isMobile ? "4px" : "6px"
                    }}>
                      {project.title}
                    </h4>
                    
                    <p style={{ 
                      color: "#94a3b8", 
                      fontSize: isMobile ? "clamp(9px, 2.5vw, 10px)" : "clamp(10px, 2.5vw, 12px)", 
                      margin: 0, 
                      lineHeight: "1.4",
                      marginBottom: isMobile ? "6px" : "8px",
                      display: "-webkit-box",
                      WebkitLineClamp: 2,
                      WebkitBoxOrient: "vertical",
                      overflow: "hidden"
                    }}>
                      {project.description}
                    </p>
                    
                    <div style={{ display: "flex", flexWrap: "wrap", gap: isMobile ? "3px" : "5px" }}>
                      {Array.isArray(project.tech) && project.tech.slice(0, isMobile ? 2 : 3).map((techItem, idx) => (
                        <span key={idx} style={{ 
                          fontSize: isMobile ? "clamp(7px, 2vw, 8px)" : "clamp(8px, 2vw, 10px)", 
                          color: "#eab308", 
                          background: "rgba(234, 179, 8, 0.12)", 
                          padding: isMobile ? "2px 6px" : "2px 8px", 
                          borderRadius: "20px"
                        }}>
                          {techItem}
                        </span>
                      ))}
                      {project.tech.length > (isMobile ? 2 : 3) && (
                        <span style={{ 
                          fontSize: isMobile ? "clamp(7px, 2vw, 8px)" : "clamp(8px, 2vw, 10px)", 
                          color: "#eab308", 
                          background: "rgba(234, 179, 8, 0.12)", 
                          padding: isMobile ? "2px 6px" : "2px 8px", 
                          borderRadius: "20px"
                        }}>
                          +{project.tech.length - (isMobile ? 2 : 3)}
                        </span>
                      )}
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Right side - 3 Images Gallery */}
            <div style={{ 
              flex: 1,
              padding: isMobile ? "clamp(10px, 3vw, 16px)" : "clamp(12px, 3vw, 20px)", 
              background: "rgba(10, 15, 26, 0.3)",
              display: "flex",
              flexDirection: "column",
              gap: isMobile ? "clamp(6px, 2vw, 8px)" : "clamp(8px, 2vw, 12px)"
            }}>
              {/* Main large image */}
              <div style={{ 
                borderRadius: isMobile ? "clamp(8px, 2vw, 10px)" : "clamp(10px, 2.5vw, 14px)", 
                overflow: "hidden",
                width: "100%",
                aspectRatio: "16/9"
              }}>
                <img
                  src={currentProject?.images?.[0] || 'https://via.placeholder.com/600x340?text=No+Image'}
                  alt="Screenshot 1"
                  style={{ 
                    width: "100%", 
                    height: "100%",
                    objectFit: "cover", 
                    display: "block"
                  }}
                  onError={(e) => {
                    e.target.src = 'https://via.placeholder.com/600x340?text=No+Image';
                  }}
                />
              </div>
              
              {/* Two small images - Responsive grid */}
              <div style={{ 
                display: "grid", 
                gridTemplateColumns: "1fr 1fr", 
                gap: isMobile ? "clamp(6px, 2vw, 8px)" : "clamp(8px, 2vw, 12px)"
              }}>
                <div style={{ 
                  borderRadius: isMobile ? "clamp(6px, 2vw, 8px)" : "clamp(8px, 2vw, 12px)", 
                  overflow: "hidden",
                  aspectRatio: "4/3"
                }}>
                  <img
                    src={currentProject?.images?.[1] || 'https://via.placeholder.com/300x200?text=No+Image'}
                    alt="Screenshot 2"
                    style={{ 
                      width: "100%", 
                      height: "100%",
                      objectFit: "cover", 
                      display: "block"
                    }}
                    onError={(e) => {
                      e.target.src = 'https://via.placeholder.com/300x200?text=No+Image';
                    }}
                  />
                </div>
                <div style={{ 
                  borderRadius: isMobile ? "clamp(6px, 2vw, 8px)" : "clamp(8px, 2vw, 12px)", 
                  overflow: "hidden",
                  aspectRatio: "4/3"
                }}>
                  <img
                    src={currentProject?.images?.[2] || 'https://via.placeholder.com/300x200?text=No+Image'}
                    alt="Screenshot 3"
                    style={{ 
                      width: "100%", 
                      height: "100%",
                      objectFit: "cover", 
                      display: "block"
                    }}
                    onError={(e) => {
                      e.target.src = 'https://via.placeholder.com/300x200?text=No+Image';
                    }}
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </ContainerScroll>
      
      <style>{`
        @keyframes spin {
          0% { transform: rotate(0deg); }
          100% { transform: rotate(360deg); }
        }
      `}</style>
    </div>
  );
}