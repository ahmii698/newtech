import React, { useState, useEffect } from "react";
import { ContainerScroll } from "../ui/container-scroll-animation";

export function HeroScrollDemo() {
  const [selectedProject, setSelectedProject] = useState(0);
  const [hoveredProject, setHoveredProject] = useState(null);
  const [linePosition, setLinePosition] = useState({ side: "top", progress: 0 });
  
  const projects = [
    {
      id: 1,
      title: "3D Balls",
      description: "Interactive 3D balls that follow mouse movement",
      tech: ["React Three Fiber", "GSAP"],
      images: [
        "https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=600&h=340&fit=crop",
        "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop",
        "https://images.unsplash.com/photo-1461749280684-dccba630e2f6?w=300&h=200&fit=crop"
      ]
    },
    {
      id: 2,
      title: "Spline 3D",
      description: "Immersive 3D scene with character animation",
      tech: ["Spline", "React"],
      images: [
        "https://images.unsplash.com/photo-1633356122102-3fe601e05bd2?w=600&h=340&fit=crop",
        "https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=300&h=200&fit=crop",
        "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop"
      ]
    },
    {
      id: 3,
      title: "Modern Portfolio",
      description: "Modern portfolio with scroll animations",
      tech: ["React", "Tailwind CSS", "Framer Motion"],
      images: [
        "https://images.unsplash.com/photo-1547658719-da2b51169166?w=600&h=340&fit=crop",
        "https://images.unsplash.com/photo-1555066931-4365d14bab8c?w=300&h=200&fit=crop",
        "https://images.unsplash.com/photo-1517694712202-14dd9538aa97?w=300&h=200&fit=crop"
      ]
    }
  ];

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
        return { ...baseStyle, top: -3, left: `${linePosition.progress}%`, width: "90px", height: "5px", transform: "translateX(-50%)" };
      case "right":
        return { ...baseStyle, top: `${linePosition.progress}%`, right: -3, width: "5px", height: "90px", transform: "translateY(-50%)" };
      case "bottom":
        return { ...baseStyle, bottom: -3, left: `${linePosition.progress}%`, width: "90px", height: "5px", transform: "translateX(-50%)" };
      case "left":
        return { ...baseStyle, top: `${linePosition.progress}%`, left: -3, width: "5px", height: "90px", transform: "translateY(-50%)" };
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
        return { ...baseTrailStyle, top: -3, left: 0, width: `${linePosition.progress}%`, height: "5px" };
      case "right":
        return { ...baseTrailStyle, top: 0, right: -3, height: `${linePosition.progress}%`, width: "5px" };
      case "bottom":
        return { ...baseTrailStyle, bottom: -3, left: 0, width: `${linePosition.progress}%`, height: "5px" };
      case "left":
        return { ...baseTrailStyle, top: 0, left: -3, height: `${linePosition.progress}%`, width: "5px" };
      default:
        return {};
    }
  };

  return (
    <div style={{ 
      display: "flex", 
      flexDirection: "column", 
      background: "#0A0A0A",
      minHeight: "100vh",
      width: "100%",
      margin: 0,
      padding: "40px 0"
    }}>
      <ContainerScroll
        titleComponent={
          <div style={{ textAlign: "center", padding: "0 20px" }}>
            <span style={{ 
              fontSize: "clamp(12px, 4vw, 18px)", 
              letterSpacing: "4px", 
              color: "#FFD700", 
              display: "block", 
              marginBottom: "15px", 
              fontWeight: "600" 
            }}>
              OUR WORK
            </span>
            
            <h1 style={{ 
              fontSize: "clamp(28px, 8vw, 52px)", 
              margin: "15px 0", 
              lineHeight: "1.2", 
              fontWeight: "800", 
              textShadow: "2px 2px 4px rgba(0,0,0,0.5)",
              color: "#FFFFFF"
            }}>
              Featured <span style={{ color: "#FFD700" }}>Projects</span>
            </h1>
            
            <p style={{ 
              fontSize: "clamp(14px, 4vw, 15px)", 
              marginBottom: "25px", 
              opacity: 0.95, 
              lineHeight: "1.5", 
              maxWidth: "700px", 
              marginLeft: "auto", 
              marginRight: "auto",
              color: "#aaa"
            }}>
              
            </p>
          </div>
        }
      >
        <div style={{ 
          width: "100%", 
          maxWidth: "1350px",
          margin: "0 auto",
          background: "linear-gradient(135deg, #0f172a, #0a0f1a)", 
          borderRadius: "24px", 
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
            borderRadius: "24px",
            border: "1px solid rgba(255, 215, 0, 0.15)",
            pointerEvents: "none",
            zIndex: 10
          }} />
          
          {/* Content */}
          <div style={{ 
            display: "grid", 
            gridTemplateColumns: "340px 1fr"
          }}>
            
            {/* Left side - Projects List */}
            <div style={{ 
              padding: "28px", 
              borderRight: "1px solid rgba(234, 179, 8, 0.1)",
              background: "rgba(15, 23, 42, 0.5)"
            }}>
              <div style={{
                display: "flex",
                justifyContent: "space-between",
                alignItems: "center",
                marginBottom: "20px"
              }}>
                <h3 style={{ 
                  fontSize: "17px", 
                  fontWeight: "600", 
                  color: "#FFD700", 
                  margin: 0,
                  paddingBottom: "8px", 
                  borderBottom: "2px solid rgba(234, 179, 8, 0.3)",
                  display: "inline-block"
                }}>
                  Projects ({projects.length})
                </h3>
                
                <div style={{
                  display: "flex",
                  alignItems: "center",
                  gap: "12px"
                }}>
                  <div style={{
                    width: "40px",
                    height: "1px",
                    background: "linear-gradient(90deg, #FFD700, transparent)"
                  }} />
                  <button
                    onClick={() => window.location.href = '/portfolio'}
                    style={{
                      background: "transparent",
                      border: "1px solid rgba(255,215,0,0.3)",
                      borderRadius: "30px",
                      padding: "6px 14px",
                      fontSize: "12px",
                      color: "#FFD700",
                      cursor: "pointer",
                      transition: "all 0.3s ease",
                      fontWeight: "500"
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
              
              <div style={{ display: "flex", flexDirection: "column", gap: "12px", marginTop: "8px" }}>
                {projects.map((project, index) => (
                  <div
                    key={project.id}
                    onClick={() => setSelectedProject(index)}
                    onMouseEnter={() => setHoveredProject(index)}
                    onMouseLeave={() => setHoveredProject(null)}
                    style={{
                      padding: "14px 16px",
                      borderRadius: "12px",
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
                      transform: hoveredProject === index ? "translateX(5px)" : "translateX(0)"
                    }}
                  >
                    <div style={{
                      display: "inline-flex",
                      fontSize: "10px",
                      fontWeight: "bold",
                      color: "#eab308",
                      background: "rgba(234, 179, 8, 0.15)",
                      padding: "2px 10px",
                      borderRadius: "20px",
                      marginBottom: "10px"
                    }}>
                      {(index + 1).toString().padStart(2, "0")}
                    </div>
                    
                    <h4 style={{ 
                      fontWeight: "600", 
                      fontSize: "16px", 
                      color: selectedProject === index ? "#fbbf24" : "#FFFFFF", 
                      margin: 0, 
                      marginBottom: "8px"
                    }}>
                      {project.title}
                    </h4>
                    
                    <p style={{ 
                      color: "#94a3b8", 
                      fontSize: "12px", 
                      margin: 0, 
                      lineHeight: "1.4",
                      marginBottom: "10px"
                    }}>
                      {project.description}
                    </p>
                    
                    <div style={{ display: "flex", flexWrap: "wrap", gap: "6px" }}>
                      {project.tech.map((techItem, idx) => (
                        <span key={idx} style={{ 
                          fontSize: "10px", 
                          color: "#eab308", 
                          background: "rgba(234, 179, 8, 0.12)", 
                          padding: "3px 10px", 
                          borderRadius: "20px"
                        }}>
                          {techItem}
                        </span>
                      ))}
                    </div>
                  </div>
                ))}
              </div>
            </div>

            {/* Right side - 3 Images Gallery */}
            <div style={{ 
              padding: "20px", 
              background: "rgba(10, 15, 26, 0.3)",
              display: "flex",
              flexDirection: "column",
              gap: "12px"
            }}>
              {/* Image 1 - Top large image */}
              <div style={{ 
                borderRadius: "14px", 
                overflow: "hidden",
                width: "100%"
              }}>
                <img
                  src={currentProject.images[0]}
                  alt="Screenshot 1"
                  style={{ 
                    width: "100%", 
                    height: "auto", 
                    aspectRatio: "16/9",
                    objectFit: "cover", 
                    display: "block"
                  }}
                />
              </div>
              
              {/* Images 2 & 3 - Two small images */}
              <div style={{ 
                display: "grid", 
                gridTemplateColumns: "1fr 1fr", 
                gap: "12px"
              }}>
                <div style={{ borderRadius: "12px", overflow: "hidden" }}>
                  <img
                    src={currentProject.images[1]}
                    alt="Screenshot 2"
                    style={{ 
                      width: "100%", 
                      height: "auto", 
                      aspectRatio: "4/3",
                      objectFit: "cover", 
                      display: "block"
                    }}
                  />
                </div>
                <div style={{ borderRadius: "12px", overflow: "hidden" }}>
                  <img
                    src={currentProject.images[2]}
                    alt="Screenshot 3"
                    style={{ 
                      width: "100%", 
                      height: "auto", 
                      aspectRatio: "4/3",
                      objectFit: "cover", 
                      display: "block"
                    }}
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </ContainerScroll>
    </div>
  );
}