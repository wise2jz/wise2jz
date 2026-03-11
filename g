class Patient {
    String name;

    Patient(String name) {
        this.name = name;
    }
}

class Report {
    String details;

    Report(String details) {
        this.details = details;
    }

    void printReport() {
        System.out.println("Report: " + details);
    }
}

class Doctor {
    String name;

    Doctor(String name) {
        this.name = name;
    }

    Report treatPatient(Patient patient) {
        System.out.println("Doctor " + name + " is treating " + patient.name);
        return new Report("Patient " + patient.name + " treated by Dr. " + name);
    }
}

class Department {
    String name;
    Doctor doctor;

    Department(String name, Doctor doctor) {
        this.name = name;
        this.doctor = doctor;
    }
}

class Hospital {
    String name;
    Department department;

    Hospital(String name, Department department) {
        this.name = name;
        this.department = department;
    }
}