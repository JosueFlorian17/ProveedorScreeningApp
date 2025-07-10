import { useEffect, useState } from 'react';
import 'bootstrap/dist/css/bootstrap.min.css';

interface Proveedor {
    id: number;
    razonSocial: string;
    nombreComercial: string;
    ruc: string;
    telefono?: string;
    correoElectronico?: string;
    sitioWeb?: string;
    direccion?: string;
    pais?: string;
    facturacionAnual?: number;
    fechaUltimaEdicion: string;
}

function ProveedorList() {
    const [proveedores, setProveedores] = useState<Proveedor[]>([]);

    useEffect(() => {
        fetch('/api/proveedores')
            .then(res => res.json())
            .then(data => setProveedores(data))
            .catch(err => console.error('Error al obtener proveedores:', err));
    }, []);

    return (
        <div className="container mt-5">
            <h2 className="mb-4">Lista de Proveedores</h2>

            <table className="table table-hover table-bordered">
                <thead className="table-dark">
                    <tr>
                        <th>Razon Social</th>
                        <th>RUC</th>
                        <th>Pais</th>
                        <th>Facturacion Anual</th>
                        <th>Ultima Edicion</th>
                    </tr>
                </thead>
                <tbody>
                    {proveedores
                        .sort((a, b) => new Date(b.fechaUltimaEdicion).getTime() - new Date(a.fechaUltimaEdicion).getTime())
                        .map(p => (
                            <tr key={p.id}>
                                <td>{p.razonSocial}</td>
                                <td>{p.ruc}</td>
                                <td>{p.pais ?? '-'}</td>
                                <td>{p.facturacionAnual?.toLocaleString('en-US', {
                                    style: 'currency',
                                    currency: 'USD'
                                }) ?? '-'}</td>
                                <td>{new Date(p.fechaUltimaEdicion).toLocaleString()}</td>
                                
                            </tr>
                        ))}
                </tbody>
            </table>
        </div>
    );
}

export default ProveedorList;
