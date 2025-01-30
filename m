Return-Path: <devicetree+bounces-141958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AAEA237AF
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 00:16:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDF191886C0B
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 23:16:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B5B81BCA19;
	Thu, 30 Jan 2025 23:16:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="MLjAIdE0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A712199EBB
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 23:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738278988; cv=none; b=t1OLc/+zGJK3hc79v39vOxELuasmu3sawYRO5BqvkR6f4eiiZXvU6fEWuxSzUmcqNWbF2YBSrARhYN/d3dIiOir9Ge2x8hwYVzTDXgsSZ6R3RWT36mR01KtOZ6ofwBpmITkl9B/fzspqQbr8S8dNic1KdKaSvA7rCEIxIMKxbPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738278988; c=relaxed/simple;
	bh=TGahVvidfwxP6TepVdPQTcGpGmgLsnQxPjpRz+CZAFc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q2gqnTo+T4adEPUzWutdwvOp1fD/tfVxfnIY6kWfaj5rvCaruOJg2lpFru6Y4C9OciHzydvD3Hi2OoKAOKoNi3nKomEOQc1VcBF3hEUUMJ1xvFCDbZBQJWB7qXdWNaY2LhU8G83O5lyBYdUneT1VQEjKA7DnbsYoSNUj6WZuBPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=MLjAIdE0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43635796b48so8781305e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 15:16:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738278984; x=1738883784; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kKipKjwmAYHSpItleSKPId0JyA0V7zJvz2+mQe2PcFk=;
        b=MLjAIdE0bylsUNSGJSESLj3wBUGEji1zgn06/qPyMPOCUntKk8Od+sUK5F/IZ60XV7
         BLDOTLmOuyaZLrkt8eTQfNk+WpMLz6cOvZ+NlJEKBFmNye2XK9F7FQweTOiz4pOFnJ+O
         839VJxQ0VVOR4nkcmzPdAbk+PVqi/8GG/lHrwBHADWjE42LwI42Vd/e88qyDhPykm03t
         F1xoLOr5Wa+FXDhBUOfK9dgZPM5de2VzjyHsastItVpeUXw8UYdTEwqqpFH5t1158yD+
         9Dfb8ZNxrjqaxvgTYELht8Bpu+B2JhR3sNIYgH335q9pxbvfaK4MUM1bCJu6ua/p5IEW
         RwDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738278984; x=1738883784;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kKipKjwmAYHSpItleSKPId0JyA0V7zJvz2+mQe2PcFk=;
        b=VGa/PnnrO3DVS0tu77u2s4Hqcygt0Z6nbKTFC4ouuSN6xFgFb1/nkbzXQHw8YIjT1p
         slzxKoIrF7Jj0moyL+1bGlQCu287EgF94MgIi2uBrPZzfdf8HOlR+kDQNueNfcqcY8Fh
         xSLeONtfeU69XqxWCabppuXOh1DX8FXlI6bf4n87hxoqfaUgA42bmhQXqRi+pmJwbbHO
         hTaPfPQAICcoyd4qcDpoB+9bnpaNTrNRc1m7Rkz7vseem+8nFTgz9PXjzyCbkK7BsGtj
         35tEJEozlu9hhytJw0yUKAimDoiviLgCmJCVOxASGYkycdQzlb8XBcEu5NOetKzUhHJc
         QMog==
X-Forwarded-Encrypted: i=1; AJvYcCUEjwtM0bDoyeR2FLtnWRVU46QWCP8pFfB3UTP7DENe42TnDYUs0LYj2+K2RSt5Pcr0ZaI/5Nynq0GM@vger.kernel.org
X-Gm-Message-State: AOJu0YwA7/ycJW3Xhb3/Oo6LhfLn8Aqvy4fQr0aLgkBCOlD5vNd+YFmw
	QCVCin5QcI2FrA2JR6bDPRnBIKvPu5fKf2iTgq7UIc6kTTJTe7MFXdibX6uz8Es=
X-Gm-Gg: ASbGnctCv9Vaoe2Y1vZ15AYrkZikZnjV3ndSVJH3uQcJ3O4H11JukWg9oX9JW40XtMN
	dWrwzsKfjHXfJIZlJKil6eLyBjL4o+d3uLMJxzCIkwfXakKlAcz2fYBVdWBGgvAlWiLlzNZ8EGE
	UGM16UEGXHWlBARtlYww3QQ2Bj9kCxN9pqHEWDOjOiFU7M2bLxdFAG9q8NZrU0Rf29q8rMNOrER
	dSZojlWaBozbUxzOBAsiEFEE62tV9Nm35VBI7kzmaS8pMjY1iIugtcRo5+a2zGK7zl/KTpskCEE
	wYzajRHTOzs+e9Ye92EXFdsa
X-Google-Smtp-Source: AGHT+IFcX0KAMJy9mDTmsmnBGbqaMI8pUxKSFAWR413yvxqX324Lhy/8MDI3PwdZ8Dx+waNguOL2CQ==
X-Received: by 2002:a05:600c:3b83:b0:436:e3ea:64dd with SMTP id 5b1f17b1804b1-438e6eff1fbmr11181485e9.11.1738278984176;
        Thu, 30 Jan 2025 15:16:24 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c0ecc80sm3263917f8f.16.2025.01.30.15.16.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 15:16:23 -0800 (PST)
Message-ID: <e7374f91-a65d-4882-8a9b-de478582e09e@tuxon.dev>
Date: Fri, 31 Jan 2025 01:16:21 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: rafael@kernel.org, rui.zhang@intel.com, lukasz.luba@arm.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, p.zabel@pengutronix.de, ulf.hansson@linaro.org,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com>
 <Z5pkUNNvsWPjRQvy@mai.linaro.org>
 <65a16c3f-456e-40ec-91b0-afb57269ed46@tuxon.dev>
 <Z5tPR_tv7vWDkUI7@mai.linaro.org>
 <6ed7d545-82d7-4bca-95ec-95447586bb58@tuxon.dev>
 <b496d933-3c57-4b02-ab65-0582a30939af@linaro.org>
 <98ddf1b6-1804-4116-b4e2-f54a62c27966@tuxon.dev>
 <7d1bf72b-183a-429d-9a0c-10e1936a9abe@linaro.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <7d1bf72b-183a-429d-9a0c-10e1936a9abe@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Daniel,

On 31.01.2025 00:33, Daniel Lezcano wrote:
> On 30/01/2025 21:53, Claudiu Beznea wrote:
>> Hi, Daniel,
>>
>> On 30.01.2025 19:24, Daniel Lezcano wrote:
>>> On 30/01/2025 11:30, Claudiu Beznea wrote:
>>>>
>>>>
>>>> On 30.01.2025 12:07, Daniel Lezcano wrote:
>>>>> On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
>>>>>> Hi, Daniel,
>>>
>>> [ ... ]
>>>
>>>>>>> Would the IP need some cycles to capture the temperature accurately
>>>>>>> after the
>>>>>>> clock is enabled ?
>>>>>>
>>>>>> There is nothing about this mentioned about this in the HW manual of the
>>>>>> RZ/G3S SoC. The only points mentioned are as described in the driver
>>>>>> code:
>>>>>> - wait at least 3us after each IIO channel read
>>>>>> - wait at least 30us after enabling the sensor
>>>>>> - wait at least 50us after setting OE bit in TSU_SM
>>>>>>
>>>>>> For this I chose to have it implemented as proposed.
>>>>>
>>>>> IMO, disabling/enabling the clock between two reads through the pm
>>>>> runtime may
>>>>> not be a good thing, especially if the system enters a thermal situation
>>>>> where
>>>>> it has to mitigate.
>>>>>
>>>>> Without any testing capturing the temperatures and compare between the
>>>>> always-on
>>>>> and on/off, it is hard to say if it is true or not. Up to you to test
>>>>> that or
>>>>> not. If you think it is fine, then let's go with it.
>>>>
>>>> I tested it with and w/o the runtime PM and on/off support (so, everything
>>>> ON from the probe) and the reported temperature values were similar.
>>>
>>>
>>> Did you remove the roundup to 0.5°C ?
>>
>> I did the testing as suggested and, this time, collected results and
>> compared side by side. I read the temperature for 10 minutes, 60 seconds
>> after the Linux prompt showed up. There is, indeed, a slight difference b/w
>> the 2 cases.
>>
>> When the runtime PM doesn't touch the clocks on read the reported
>> temperature varies b/w 53-54 degrees while when the runtime PM
>> enables/disables the clocks a single read reported 55 degrees, the rest
>> reported 54 degrees.
>>
>> I plotted the results side by side here:
>> https://i2.paste.pics/f07eaeddc2ccc3c6695fe5056b52f4a2.png?
>> trs=0a0eaab99bb59ebcb10051eb298f437c7cd50c16437a87392aebc16cd9013e18&rand=vWXm2VTrbt
>>
>> Please let me know how do you consider it.
> 

After sending this to you I figured it out that precision is lost somewhere
so I re-tested it with the following diff (multiplied parts of the equation
with 1000):

diff --git a/drivers/thermal/renesas/rzg3s_thermal.c
b/drivers/thermal/renesas/rzg3s_thermal.c
index 6719f9ca05eb..84e18ff69d7c 100644
--- a/drivers/thermal/renesas/rzg3s_thermal.c
+++ b/drivers/thermal/renesas/rzg3s_thermal.c
@@ -83,7 +83,7 @@ static int rzg3s_thermal_get_temp(struct
thermal_zone_device *tz, int *temp)
        }

        ret = 0;
-       ts_code_ave = DIV_ROUND_CLOSEST(ts_code_ave, TSU_READ_STEPS);
+       ts_code_ave = DIV_ROUND_CLOSEST(MCELSIUS(ts_code_ave), TSU_READ_STEPS);

        /*
         * According to the HW manual (section 40.4.4 Procedure for
Measuring the Temperature)
@@ -91,11 +91,8 @@ static int rzg3s_thermal_get_temp(struct
thermal_zone_device *tz, int *temp)
         *
         * Tj = (ts_code_ave - priv->calib0) * 165 / (priv->calib0 -
priv->calib1) - 40
         */
-       *temp = DIV_ROUND_CLOSEST((ts_code_ave - priv->calib1) * 165,
-                                 (priv->calib0 - priv->calib1)) - 40;
-
-       /* Report it in mili degrees Celsius and round it up to 0.5 degrees
Celsius. */
-       *temp = roundup(MCELSIUS(*temp), 500);
+       *temp = DIV_ROUND_CLOSEST((u64)(ts_code_ave -
MCELSIUS(priv->calib1)) * MCELSIUS(165),
+                                 MCELSIUS(priv->calib0 - priv->calib1)) -
MCELSIUS(40);

 rpm_put:
        pm_runtime_mark_last_busy(dev);

With this, the results seems similar b/w runtime PM and no runtime PM cases.

The tests were executed after the board was off for few hours. The
first test was with runtime PM suspend/resume on each read. Then the board
was rebooted and re-run the test w/o runtime PM suspend/resume on reads.

Figure with results is here:
https://i2.paste.pics/5f353a4f04b07b4bead3086624aba23f.png?trs=0a0eaab99bb59ebcb10051eb298f437c7cd50c16437a87392aebc16cd9013e18&rand=5n34QNjWID


> Thanks for taking the time to provide a figure
> 
> Testing thermal can be painful because it should be done under certain
> conditions.
> 
> I guess there was no particular work load on the system when running the
> tests.

No load, indeed.

> 
> At the first glance, it seems, without the pm runtime, the measurement is
> more precise as it catches more thermal changes. But the test does not give
> information about the thermal behavior under stress. And one second
> sampling is too long to really figure it out.
> 
> In the kernel source tree, there is a tool to read the temperature in an
> optimized manner, you may want to use it to read the temperature at a
> higher rate. It is located in tools/thermal/thermometer
> 
> Compiling is a bit fuzzy ATM, so until it is fixed, here are the steps:
> 
> (you should install libconfig-dev and libnl-3-dev packages).
> 
> cd $LINUX_DIR/tools/thermal/lib
> make
> LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LINUX_DIR/tools/thermal/lib
> 
> cd $LINUX_DIR/tools
> make thermometer
> 
> 
> 
> Then change directory:
> 
> cd $LINUX_DIR/tools/thermal/thermometer
> 
> 
> Run the tool:
> 
> ./thermometer -o out -c t.conf -l DEBUG -- <my_command>
> 
> 
> The content of the configuration file t.conf is:
> 
> thermal-zones = (
>           {    name = "cpu[0_9].*-thermal";
>         polling = 100; }
>       )
> 
> All the captured data will be in the 'out' directory
> 
> For 'my_command', I suggest to use a script containing:
> 
> sleep 10; dhrystone -t 1 -r 120; sleep 10
> 
> If you need the dhrystone binary, let me know.
> 
> The thermal zone device tree configuration should be changed to use a 65°C
> passive trip point instead of 100°C (and the kernel setup with the step
> wise governor as default).
> 
> The resulting figure from the temperature should show a flat temperature
> figure during 10 seconds, then the temperature increasing until reaching
> the temperature threshold of 65°C, the temperature stabilizing around it,
> then followed by a temperature decreasing when the test finishes.
> 
> If the temperature does not reach the limit, decrease the trip point
> temperature or increase the dhrystone duration (the -r 120 option)
> 
> At this point, you should the test with and without pm runtime but in order
> to have consistent results, you should wait ~20 minutes between two tests.
> 
> The shape of the figures will give the immediate information about how the
> mitigation vs thermal sensor vs cooling device behave.
> 
> Additionally, you can enable the thermal DEBUGFS option and add the
> collected information statistics from /sys/kernel/debug/thermal/*** in the
> results.
> 
> 
> Hope that helps

Thank you for all these details. I'll have a look on it but starting with
Monday as I won't have access to setup in the following days.

Thank you,
Claudiu

> 
> 
> 
> 
> 
> 


