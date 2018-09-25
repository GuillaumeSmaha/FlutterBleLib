package com.polidea.flutterblelib;


import com.polidea.flutterblelib.utils.DisposableMap;

import io.reactivex.disposables.Disposable;
import io.reactivex.SingleSource;


public class TransactionsContainer {

    final private DisposableMap disposableMap = new DisposableMap();

    public void replaceTransactionSubscription(String key, Disposable disposable) {
        disposableMap.replaceDisposable(key, disposable);
    }

    public void replaceTransactionSubscription(String key, SingleSource disposable) {
        disposableMap.replaceDisposable(key, disposable);
    }

    public boolean removeTransactionSubscription(String key) {
        return disposableMap.removeDisposable(key);
    }

    public void clearTransactionsDisposable() {
        disposableMap.removeAllDisposables();
    }
}



