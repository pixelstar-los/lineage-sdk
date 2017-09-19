/**
 * Copyright (c) 2015, The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package lineageos.externalviews;

import android.graphics.Rect;

import lineageos.externalviews.IKeyguardExternalViewCallbacks;

/** @hide */
interface IKeyguardExternalViewProvider
{
    oneway void onAttach(in IBinder windowToken);
    oneway void onDetach();

    // Keyguard specific interface
    oneway void onKeyguardShowing(boolean screenOn);
    oneway void onKeyguardDismissed();
    oneway void onBouncerShowing(boolean showing);
    oneway void onScreenTurnedOn();
    oneway void onScreenTurnedOff();

    oneway void registerCallback(in IKeyguardExternalViewCallbacks callback);
    oneway void unregisterCallback(in IKeyguardExternalViewCallbacks callback);

    void alterWindow(in int x, in int y, in int width, in int height, in boolean visible,
            in Rect clipRect);
    oneway void onLockscreenSlideOffsetChanged(float swipeProgress);
}
