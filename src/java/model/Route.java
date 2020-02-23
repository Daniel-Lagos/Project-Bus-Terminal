package model;

public class Route {

	private City city;
	private City city2;
	private double distance;
	
	public Route(City city,City city2,double distance) {
		this.city=city;
		this.city2=city2;
		this.distance=distance;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public City getCity2() {
		return city2;
	}

	public void setCity2(City city2) {
		this.city2 = city2;
	}

	public Double getDistance() {
		return distance;
	}

	public void setDistance(Double distance) {
		this.distance = distance;
	}

	@Override
	public String toString() {
		return "Route [city=" + city.getName() + ", city2=" + city2.getName() + ", distance=" + distance + "]";
	}
	
	
	
	
}
