export const metadata = {
  title: "Herbal Garden API",
  description: "Backend API for Herbal Garden application",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>{children}</body>
    </html>
  );
}
