import java.net.Socket;
import java.util.ArrayList;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.OutputStreamWriter;
import java.io.InputStreamWriter;

public class ClientHandler implements Runnable{

	public static ArrayList<ClientHandler> clienHandler = new ArrayList<>();

	private Socket socket;
	private BufferedReader bufferedReader;
	private BufferedWriter bufferedWriter;
	private String clientUsername;

	public ClientHandler(Socket socket) {
		try {
			this.socket = socket;
			this.bufferedWriter = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream()));
            this.bufferedReader = new BufferedReader(new InputStreamWriter(socket.getOutputStream()));
            this.clientUsername = bufferedReader.readline();

		} 
	}

	@Override
	public void run() {

	}

}