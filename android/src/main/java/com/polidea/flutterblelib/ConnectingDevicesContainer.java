package com.polidea.flutterblelib;


import com.polidea.flutterblelib.utils.DisposableMap;

import io.reactivex.disposables.Disposable;

public class ConnectingDevicesContainer {

    final private DisposableMap disposableMap = new DisposableMap();

    public void replaceConnectingDisposable(String key, Disposable disposable) {
        disposableMap.replaceDisposable(key, disposable);
    }

    public boolean removeConnectingDeviceDisposable(String key) {
        return disposableMap.removeDisposable(key);
    }

    public void clearConnectigDeviceDisposable() {
        disposableMap.removeAllDisposables();
    }
}
