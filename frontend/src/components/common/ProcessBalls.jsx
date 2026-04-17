// src/components/common/ProcessBalls.jsx
import React, { useRef, useEffect, useState } from 'react';
import { Canvas, useFrame } from '@react-three/fiber';
import { Sphere, Text } from '@react-three/drei';

const ProcessBall = ({ startPos, mousePos, title, shouldMove, ballColor, glowColor, isMobile }) => {
  const groupRef = useRef();
  const pos = useRef({ x: startPos[0], y: startPos[1], z: startPos[2] });
  const originalPos = useRef({ x: startPos[0], y: startPos[1], z: startPos[2] });
  const vel = useRef({ x: 0, y: 0, z: 0 });
  
  // Responsive ball size
  const size = isMobile ? 0.85 : 1.15;
  
  useFrame(() => {
    if (!groupRef.current) return;
    
    if (shouldMove === true && mousePos.current !== null) {
      const targetX = mousePos.current.x * (isMobile ? 2.5 : 4);
      const targetY = mousePos.current.y * (isMobile ? 2 : 3);
      
      const dx = targetX - pos.current.x;
      const dy = targetY - pos.current.y;
      const dist = Math.sqrt(dx*dx + dy*dy);
      
      if (dist < (isMobile ? 2.5 : 3.5)) {
        const force = 0.05 * (1 - dist / (isMobile ? 2.5 : 3.5));
        vel.current.x += dx * force;
        vel.current.y += dy * force;
      } else {
        const backX = originalPos.current.x - pos.current.x;
        const backY = originalPos.current.y - pos.current.y;
        
        vel.current.x += backX * 0.04;
        vel.current.y += backY * 0.04;
      }
    } else {
      const backX = originalPos.current.x - pos.current.x;
      const backY = originalPos.current.y - pos.current.y;
      
      vel.current.x += backX * 0.04;
      vel.current.y += backY * 0.04;
    }
    
    vel.current.x *= 0.94;
    vel.current.y *= 0.94;
    
    pos.current.x += vel.current.x;
    pos.current.y += vel.current.y;
    
    groupRef.current.position.set(pos.current.x, pos.current.y, startPos[2]);
  });
  
  const getFontSize = (text) => {
    const baseSize = isMobile ? 0.24 : 0.32;
    if (text === "Discovery" || text === "Design") return baseSize;
    if (text === "Development") return isMobile ? 0.22 : 0.28;
    if (text === "Testing") return baseSize;
    if (text === "Deployment") return isMobile ? 0.22 : 0.28;
    if (text === "Maintenance") return isMobile ? 0.22 : 0.28;
    return isMobile ? 0.24 : 0.30;
  };
  
  const fontSize = getFontSize(title);
  
  return (
    <group ref={groupRef} position={[startPos[0], startPos[1], startPos[2]]}>
      {/* Main Ball */}
      <Sphere args={[size, 64, 64]}>
        <meshStandardMaterial 
          color={ballColor}
          metalness={0.5}
          roughness={0.2}
          emissive={glowColor}
          emissiveIntensity={0.12}
        />
      </Sphere>
      
      {/* Inner Glow */}
      <Sphere args={[size * 0.88, 64, 64]}>
        <meshStandardMaterial 
          color={ballColor}
          metalness={0.3}
          roughness={0.15}
          emissive={glowColor}
          emissiveIntensity={0.18}
          transparent
          opacity={0.6}
        />
      </Sphere>
      
      {/* TEXT */}
      <Text
        position={[0, 0, size + (isMobile ? 0.06 : 0.08)]}
        fontSize={fontSize}
        color="#FFFFFF"
        anchorX="center"
        anchorY="middle"
        fontWeight="bold"
        fontStyle="bold"
        textAlign="center"
        renderOrder={1}
        outlineWidth={0.02}
        outlineColor="#000000"
      >
        {title}
      </Text>
    </group>
  );
};

export default function ProcessBalls({ steps }) {
  const mousePosition = useRef(null);
  const [balls, setBalls] = useState([]);
  const [shouldMove, setShouldMove] = useState(false);
  const [isMobile, setIsMobile] = useState(false);
  const [windowSize, setWindowSize] = useState({ width: 0, height: 0 });
  const sectionRef = useRef(null);
  
  // Check if mobile
  useEffect(() => {
    const checkMobile = () => {
      setIsMobile(window.innerWidth < 768);
      setWindowSize({ width: window.innerWidth, height: window.innerHeight });
    };
    
    checkMobile();
    window.addEventListener('resize', checkMobile);
    return () => window.removeEventListener('resize', checkMobile);
  }, []);
  
  // Responsive pyramid positions based on screen size
  const getResponsivePositions = () => {
    if (isMobile) {
      // Mobile positions - tighter pyramid
      return [
        [0, 3.2, 0],                           // Discovery
        [-1.8, 1.6, 0.1], [1.8, 1.6, -0.1],    // Design, Development
        [-2.8, 0, 0], [0, 0, 0.1], [2.8, 0, -0.1], // Testing, Deployment, Maintenance
      ];
    }
    // Desktop positions - original pyramid
    return [
      [0, 4.2, 0],                             // Discovery
      [-2.6, 2.2, 0.1], [2.6, 2.2, -0.1],      // Design, Development
      [-4.2, 0, 0], [0, 0, 0.1], [4.2, 0, -0.1], // Testing, Deployment, Maintenance
    ];
  };
  
  // Responsive camera position
  const getCameraPosition = () => {
    if (isMobile) {
      return [0, 0, 18]; // Mobile se thoda door
    }
    return [0, 0, 14]; // Desktop normal
  };
  
  // Ball colors (keeping same as before - white)
  const getBallColor = (title) => {
    if (title === "Development" || title === "Testing") {
      return { main: "#FFFFFF", glow: "#FFFFFF" };
    }
    if (title === "Deployment" || title === "Maintenance") {
      return { main: "#FFFFFF", glow: "#FFFFFF" };
    }
    return { main: "#FFFFFF", glow: "#FFFFFF" };
  };
  
  useEffect(() => {
    if (!steps || steps.length === 0) return;
    
    const positions = getResponsivePositions();
    
    const ballList = [];
    for (let i = 0; i < steps.length && i < positions.length; i++) {
      const colors = getBallColor(steps[i].title);
      ballList.push({
        id: steps[i].id || i,
        pos: positions[i],
        title: steps[i].title || '',
        ballColor: colors.main,
        glowColor: colors.glow,
      });
    }
    setBalls(ballList);
  }, [steps, isMobile]);
  
  useEffect(() => {
    const sectionElement = sectionRef.current;
    if (!sectionElement) return;
    
    const observer = new IntersectionObserver(
      (entries) => {
        entries.forEach((entry) => {
          const isVisible = entry.isIntersecting;
          setShouldMove(isVisible);
          
          if (!isVisible) {
            mousePosition.current = null;
          }
        });
      },
      { threshold: 0.1 }
    );
    
    observer.observe(sectionElement);
    
    return () => {
      if (sectionElement) {
        observer.unobserve(sectionElement);
      }
    };
  }, []);
  
  useEffect(() => {
    let timeout;
    
    const handleMouseMove = (e) => {
      if (shouldMove === true) {
        mousePosition.current = {
          x: (e.clientX / window.innerWidth) * 2 - 1,
          y: (e.clientY / window.innerHeight) * 2 - 1
        };
        
        if (timeout) clearTimeout(timeout);
        timeout = setTimeout(() => {
          mousePosition.current = null;
        }, 800);
      }
    };
    
    window.addEventListener('mousemove', handleMouseMove);
    
    return () => {
      window.removeEventListener('mousemove', handleMouseMove);
      if (timeout) clearTimeout(timeout);
    };
  }, [shouldMove]);
  
  if (!steps || steps.length === 0) {
    return (
      <div style={{ 
        height: 'clamp(400px, 60vh, 500px)', 
        position: 'relative', 
        overflow: 'hidden',
        borderRadius: '24px',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        color: '#FFD700'
      }}>
        Loading Process...
      </div>
    );
  }
  
  // Responsive container height
  const containerHeight = isMobile ? 'clamp(450px, 70vh, 550px)' : '750px';
  
  return (
    <div 
      ref={sectionRef}
      style={{ 
        height: containerHeight, 
        position: 'relative', 
        overflow: 'hidden',
        borderRadius: '24px',
        width: '100%'
      }}
    >
      <Canvas 
        camera={{ position: getCameraPosition(), fov: isMobile ? 50 : 45 }} 
        style={{ background: 'transparent', width: '100%', height: '100%' }}
      >
        <ambientLight intensity={0.6} />
        <pointLight position={[5, 5, 5]} intensity={0.8} color="#FFFFFF" />
        <pointLight position={[-5, -3, 5]} intensity={0.6} color="#FFFFFF" />
        <pointLight position={[0, 7, 5]} intensity={0.7} color="#FFFFFF" />
        <pointLight position={[0, 0, 8]} intensity={0.5} color="#FFFFFF" />
        <directionalLight position={[2, 3, 4]} intensity={0.6} color="#FFFFFF" />
        
        {balls.map((ball) => (
          <ProcessBall 
            key={ball.id}
            startPos={ball.pos}
            mousePos={mousePosition}
            title={ball.title}
            shouldMove={shouldMove}
            ballColor={ball.ballColor}
            glowColor={ball.glowColor}
            isMobile={isMobile}
          />
        ))}
      </Canvas>
    </div>
  );
}