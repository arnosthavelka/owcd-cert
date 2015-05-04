package com.github.aha.cert.client;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

import com.ning.http.client.AsyncHttpClient;
import com.ning.http.client.Response;

/**
 * See https://github.com/AsyncHttpClient/async-http-client
 */
public class AsyncClient {

	public static void main(String[] args) throws InterruptedException, ExecutionException, IOException {
		String url = "http://localhost:8080/owcd-cert/async";
		System.out.println("Starting async request ...");
		AsyncHttpClient client = new AsyncHttpClient();
		Future<Response> f = client.prepareGet(url).execute();
		Response r = f.get();
		System.out.println("Async request finished with this response:\n" + r.getResponseBody());
	}

}
