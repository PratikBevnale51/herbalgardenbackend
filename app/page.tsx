export default function Home() {
  return (
    <main className="flex min-h-screen flex-col items-center justify-center p-24">
      <h1 className="text-4xl font-bold">Herbal Garden API</h1>
      <p className="mt-4 text-lg text-gray-600">
        Backend API for Herbal Garden application
      </p>
      <div className="mt-8 grid gap-4 text-center">
        <p className="text-sm text-gray-500">Available Endpoints:</p>
        <ul className="text-left text-sm">
          <li>POST /api/auth/signup - User registration</li>
          <li>POST /api/auth/login - User login</li>
          <li>GET /api/plants - Get all plants</li>
          <li>GET /api/remedies - Get all remedies</li>
          <li>GET /api/doctors - Get all doctors</li>
          <li>POST /api/feedback - Submit feedback</li>
          <li>POST /api/contact - Submit contact message</li>
        </ul>
      </div>
    </main>
  );
}
