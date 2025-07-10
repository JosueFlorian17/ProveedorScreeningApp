import { BrowserRouter, Routes, Route } from 'react-router-dom';
import ProveedorList from './components/ProveedorList';

function App() {
    return (
        <BrowserRouter>
            <Routes>
                <Route path="/" element={<ProveedorList />} />
            </Routes>
        </BrowserRouter>
    );
}

export default App;
