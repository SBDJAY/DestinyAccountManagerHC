import SwiftUI
import MapKit
import CoreLocation

struct LocationView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 0.0, longitude: 0.0), // Default location
        span: MKCoordinateSpan(latitudeDelta: 50.0, longitudeDelta: 50.0)
    )
    
    @State private var locationManager = CLLocationManager()
    @State private var userLocation: CLLocationCoordinate2D? = nil
    
    let destinyLocation = CLLocationCoordinate2D(latitude: 28.7041, longitude: 77.1025) // Example: Earth, Destiny location
    
    var body: some View {
        VStack {
            Text("Destiny Location")
                .font(.largeTitle)
                .bold()
                .padding()

            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: [destinyLocation]) { location in
                MapPin(coordinate: location, tint: .blue)
            }
            .onAppear {
                requestLocationPermission()
                setMapRegionToDestinyLocation()
            }
            .edgesIgnoringSafeArea(.all)
        }
    }
    
    private func requestLocationPermission() {
        locationManager
