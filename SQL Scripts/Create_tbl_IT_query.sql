USE IT_ServiceDesk_DB;

CREATE TABLE Technicians (
    technician_id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    team VARCHAR(50) NOT NULL,
    tickets_resolved INT DEFAULT 0,
    avg_resolution_hours DECIMAL(5,2) DEFAULT 0.00
);

CREATE TABLE Devices (
    device_id INT IDENTITY (1,1) PRIMARY KEY ,
    device_type VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL,
    status VARCHAR(30) NOT NULL,
    uptime_percentage DECIMAL(5,2) NOT NULL,
    last_checked DATETIME NOT NULL
);

CREATE TABLE Tickets (
    ticket_id INT IDENTITY (1,1) PRIMARY KEY,
    date_opened DATETIME NOT NULL,
    date_closed DATETIME NULL,
    category VARCHAR(50) NOT NULL,
    priority VARCHAR(20) NOT NULL,
    assigned_to INT NULL,
    status VARCHAR(30) NOT NULL,
    sla_hours INT NOT NULL,
    actual_resolution_hours INT NULL,
    department VARCHAR(50) NOT NULL,
    device_id INT NULL,

    FOREIGN KEY (assigned_to) REFERENCES Technicians(technician_id),
    FOREIGN KEY (device_id) REFERENCES Devices(device_id)
);

