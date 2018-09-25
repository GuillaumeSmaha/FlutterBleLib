package com.polidea.flutterblelib.utils;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import io.reactivex.disposables.Disposable;
import io.reactivex.SingleSource;

public class DisposableMap {

    final private Map<String, Disposable> disposables = new HashMap<>();
    final private Map<String, SingleSource> singles = new HashMap<>();

    public void replaceDisposable(String key, Disposable disposable) {
        Disposable oldDisposable = disposables.put(key, disposable);
        if (oldDisposable != null && !oldDisposable.isDisposed()) {
            oldDisposable.dispose();
        }
    }

    public void replaceDisposable(String key, SingleSource disposable) {
        Disposable oldDisposable = singles.put(key, disposable);
        if (oldDisposable != null && !oldDisposable.isDisposed()) {
            oldDisposable.dispose();
        }
    }

    public boolean removeDisposable(String key) {
        Disposable disposable = disposables.remove(key);
        if (disposable == null) return false;
        if (!disposable.isDisposed()) {
            disposable.dispose();
        }
        singles.remove(key);
        return true;
    }

    /**
     * Removes all disposables from map and dispose()s them if they were subscribed.
     */
    public void removeAllDisposables() {
        Iterator<Map.Entry<String, Disposable>> it = disposables.entrySet().iterator();
        while (it.hasNext()) {
            Disposable disposable = it.next().getValue();
            it.remove();
            if (!disposable.isDisposed()) {
                disposable.dispose();
            }
        }

        Iterator<Map.Entry<String, SingleSource>> itt = singles.entrySet().iterator();
        while (itt.hasNext()) {
            itt.remove();
        }
    }
}
