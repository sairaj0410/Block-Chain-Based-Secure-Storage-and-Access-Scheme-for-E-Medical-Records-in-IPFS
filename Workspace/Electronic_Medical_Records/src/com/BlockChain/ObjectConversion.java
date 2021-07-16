package com.BlockChain;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class ObjectConversion {

	public static byte[] objToByte(Object object) throws IOException {

		ByteArrayOutputStream byteStream = new ByteArrayOutputStream();
		ObjectOutputStream objStream = new ObjectOutputStream(byteStream);
		objStream.writeObject(object);

		return byteStream.toByteArray();
	}

	public static Object byteToObj(byte[] bytes) throws IOException,
			ClassNotFoundException {
		ByteArrayInputStream byteStream = new ByteArrayInputStream(bytes);
		ObjectInputStream objStream = new ObjectInputStream(byteStream);

		return objStream.readObject();
	}

}
