import Topbar from "../../components/topbar/Topbar";
import Sidebar from "../../components/sidebar/Sidebar";
import Feed from "../../components/feed/Feed";
import Rightbar from "../../components/rightbar/Rightbar";
import "./home.css";
import { useContext } from "react";
import { AuthContext } from "../../context/AuthContext";

export default function Home({ socket, onlineUsers }) {
  const { user } = useContext(AuthContext);
  return (
    <>
      <Topbar socket={socket} />
      <div className="homeContainer">
        <Sidebar />
        <Feed socket={socket} />
        <Rightbar user={user} isHomeRigh={true} onlineUsers={onlineUsers} />
      </div>
    </>
  );
}
