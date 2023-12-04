import java.net.ServerSocket;

public class Server {
	private ServerSocket serverSocket;

	public Server(ServerSocket serverSocket) {
		this.serverSocket = serverSocket;
	}

	public void startServr() {
		try {

			while (!serverSocket.isClosed()) {

				Socket socket = serverSocket.accept();
				System.out.println("A new bitch jumped in!");
				ClientHandler clientHandler = new ClientHandler();

				Thread thread = new Thread(clientHandler);

			}
		}
	}
}