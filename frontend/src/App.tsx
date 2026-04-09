import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Layout from "./components/layouts/Layout";

import Home from "./components/pages/Home";
import About from "./components/pages/About";
import Services from "./components/pages/Services";
import Contact from "./components/pages/contact";
import Blog from "./components/pages/blog";
import Portfolio from "./components/pages/Portfolio";  // ← YEH ADD KAR
import AdminPanel from "./components/admin/NewAdminPanel";
import AdminLogin from "./components/admin/AdminLogin";
import ForgotPassword from "./components/admin/ForgotPassword";
// import ProtectedRoute from "./components/ProtectedRoute";  // ← Ye line hata do

import "./App.css";

function App() {
  return (
    <Router>
      <Layout>
        <Routes>
          {/* WEBSITE ROUTES */}
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/services" element={<Services />} />
          <Route path="/portfolio" element={<Portfolio />} />  {/* ← YEH ADD KAR */}
          <Route path="/contact" element={<Contact />} />
          <Route path="/blog" element={<Blog />} />

          {/* ADMIN AUTH ROUTES */}
          <Route path="/admin-login" element={<AdminLogin />} />
          <Route path="/forgot" element={<ForgotPassword />} />

          {/* ADMIN PANEL - NO PROTECTION */}
          <Route path="/admin" element={<AdminPanel />} />  {/* ← ProtectedRoute hata diya */}
        </Routes>
      </Layout>
    </Router>
  );
}

export default App;