Return-Path: <devicetree+bounces-141955-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB847A23743
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 23:33:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D6E21888CAF
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 22:33:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C81001B85C9;
	Thu, 30 Jan 2025 22:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bV9dX0bV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A42B31465AB
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 22:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738276427; cv=none; b=fPVAeEj/2wQ89Jl3nrWpUQHMjec/Uc7Ko20oAheLcelVz2XiQQerERB7x0ofQJiixe46w853bw1cSzMNUTbQQEgyOkNrCgXmeIc+C029ziKh5D6Wt4BF4itRg2+J4kpd/6udUGpZ8bTlgY1SVRLQ75s/qPzCBt6DsRft6V3kjlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738276427; c=relaxed/simple;
	bh=lTjFhNlU6GBCHRFRJM2vnQiERraPdQsSqotzJR2dc/A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RzDj7m5LeDpquuVS7n0FyOxRHE60G95Qn/WSNxjLYAHXFX69tUUv19ldXN/fDvbcrO/aBLVTFAO5HppbgPwViMPozXgD2lM0EAn79RXfUbJbrifAsB6OA9WgjhUDypKEmVM3EM3nWxRatohzSKaD9m/1orJ5Ahlh3e6ArjZC6AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bV9dX0bV; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43634b570c1so9904565e9.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 14:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738276424; x=1738881224; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q4PhLkA2yH+xwVRJ4eRUYfsP78J3oAK3Sf/7oUAOMWE=;
        b=bV9dX0bV0r2UCDJ68EsBkPqO+064jFXKk4rVaity1QT3prOajBT0tTh0Edu0Dkeb73
         2uX2YeszYK/ZV35Pi769RDYvPcYqCr8cA3oHluZs0HCf9ibHXxsUJs18E18aVp2zkQgh
         3DiZ2RG1yxZrCRqn5bUcBl6hj2YeNJJJUT7L2NtqI3t0EA1mjwSJAc2GjstdHr89zSrD
         3vYStisWMnMVFsCWH2RNoqdN9K9xx4Zj/C0uxnzsJY0p0SRmlxUQHdrgdW91umf+HfFA
         JWKwbsOA7jnGTiD2b0/rplGkddHz3pK3xcs5Pey12R+v4YI4GCpZxfu/Z9GurMRsqXYT
         TYFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738276424; x=1738881224;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q4PhLkA2yH+xwVRJ4eRUYfsP78J3oAK3Sf/7oUAOMWE=;
        b=GVvYj6tDwaD0egdtp972SHm6H/Y9wDJU1lUtcVpAVHKSJmbMoSSzW88R9fWz5nE1cq
         8sKksNHuCN0PZYWabu7nK2ynvClyEUXrFBVdYLLlOje2QKJLkqImrVQV7Us4l6SBUEMt
         kdsN5QZXlwSpwNeSzZeACVGlOoa6PlQx8dJsIfYlp5mr5drkcRMG/vRY8FIfIWqotJoP
         DNvhZvfDc6TtRTUAEBWj4XZfn2cHlXS7rCm7jRbzWjAinVJNvXn7pC4azIEGQt7js3dU
         ul64VNciS9GNtHal5niPFSBO8V/d5PTSltldjfnNhFPKhQYY50ImY0Vd84RQWKOYeLf6
         aZNA==
X-Forwarded-Encrypted: i=1; AJvYcCXarTGowSTAouVgLVMnKMNt2Oti49yV9nGhp+hupLQu/PvXkRboVwA1PgEZFiH1TQJgBXn5MNoI/qLe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxliwz9niK7FBdOtkdXROEWdOYbiFHE5//rG88YHaVdpoM0LwYt
	5dgzLg6Gf2ad3hsBbImpcD+D2nZxGPrbItTSweOfC6t8o4UM0uxUp/KwMg+UOic=
X-Gm-Gg: ASbGncvN0CB5WtbrYxWTYxRlHAzO9UVLNEYPriR1+ORfvq1deU+jpA7ENq5OUlQOEgI
	xihHcDPY2yNkddD7noIuDWPYfliqSw4VTkpQFso1PItyDui/KMRFXs/iHpCyVKAbf/I3YJD9KJg
	j4LEO2/W985xwj47lTRQ5RIVLpeRgg1aW+gnbCC2Kx77hl1dt4yepDJf9tIhYnPUdYceP59/IMN
	HAJLGUtUDcduWKqM0azsC7f8k97zKi0MdC8gVskaYyStOQFtAMDKZOouIntF/hYUIIsQsgYe91z
	TKRRzKbr6O6qo8fU9o/6qnI4zNNa5x+WvP5Ss++irjPjIQYnBxvRyjU=
X-Google-Smtp-Source: AGHT+IEp+NL8KjaCqdJLkSqTmmab+u4WxdsC5LvvC6odn5b/wppdPeWMvLnufUZb2VnSyWDCxGmQVA==
X-Received: by 2002:a05:600c:3c98:b0:434:fb65:ebbb with SMTP id 5b1f17b1804b1-438dc3c38dcmr84375125e9.17.1738276423846;
        Thu, 30 Jan 2025 14:33:43 -0800 (PST)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-438dcc8a59dsm73532705e9.40.2025.01.30.14.33.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 14:33:42 -0800 (PST)
Message-ID: <7d1bf72b-183a-429d-9a0c-10e1936a9abe@linaro.org>
Date: Thu, 30 Jan 2025 23:33:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Claudiu Beznea <claudiu.beznea@tuxon.dev>
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
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <98ddf1b6-1804-4116-b4e2-f54a62c27966@tuxon.dev>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 30/01/2025 21:53, Claudiu Beznea wrote:
> Hi, Daniel,
> 
> On 30.01.2025 19:24, Daniel Lezcano wrote:
>> On 30/01/2025 11:30, Claudiu Beznea wrote:
>>>
>>>
>>> On 30.01.2025 12:07, Daniel Lezcano wrote:
>>>> On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
>>>>> Hi, Daniel,
>>
>> [ ... ]
>>
>>>>>> Would the IP need some cycles to capture the temperature accurately
>>>>>> after the
>>>>>> clock is enabled ?
>>>>>
>>>>> There is nothing about this mentioned about this in the HW manual of the
>>>>> RZ/G3S SoC. The only points mentioned are as described in the driver code:
>>>>> - wait at least 3us after each IIO channel read
>>>>> - wait at least 30us after enabling the sensor
>>>>> - wait at least 50us after setting OE bit in TSU_SM
>>>>>
>>>>> For this I chose to have it implemented as proposed.
>>>>
>>>> IMO, disabling/enabling the clock between two reads through the pm
>>>> runtime may
>>>> not be a good thing, especially if the system enters a thermal situation
>>>> where
>>>> it has to mitigate.
>>>>
>>>> Without any testing capturing the temperatures and compare between the
>>>> always-on
>>>> and on/off, it is hard to say if it is true or not. Up to you to test
>>>> that or
>>>> not. If you think it is fine, then let's go with it.
>>>
>>> I tested it with and w/o the runtime PM and on/off support (so, everything
>>> ON from the probe) and the reported temperature values were similar.
>>
>>
>> Did you remove the roundup to 0.5°C ?
> 
> I did the testing as suggested and, this time, collected results and
> compared side by side. I read the temperature for 10 minutes, 60 seconds
> after the Linux prompt showed up. There is, indeed, a slight difference b/w
> the 2 cases.
> 
> When the runtime PM doesn't touch the clocks on read the reported
> temperature varies b/w 53-54 degrees while when the runtime PM
> enables/disables the clocks a single read reported 55 degrees, the rest
> reported 54 degrees.
> 
> I plotted the results side by side here:
> https://i2.paste.pics/f07eaeddc2ccc3c6695fe5056b52f4a2.png?trs=0a0eaab99bb59ebcb10051eb298f437c7cd50c16437a87392aebc16cd9013e18&rand=vWXm2VTrbt
> 
> Please let me know how do you consider it.

Thanks for taking the time to provide a figure

Testing thermal can be painful because it should be done under certain 
conditions.

I guess there was no particular work load on the system when running the 
tests.

At the first glance, it seems, without the pm runtime, the measurement 
is more precise as it catches more thermal changes. But the test does 
not give information about the thermal behavior under stress. And one 
second sampling is too long to really figure it out.

In the kernel source tree, there is a tool to read the temperature in an 
optimized manner, you may want to use it to read the temperature at a 
higher rate. It is located in tools/thermal/thermometer

Compiling is a bit fuzzy ATM, so until it is fixed, here are the steps:

(you should install libconfig-dev and libnl-3-dev packages).

cd $LINUX_DIR/tools/thermal/lib
make
LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$LINUX_DIR/tools/thermal/lib

cd $LINUX_DIR/tools
make thermometer



Then change directory:

cd $LINUX_DIR/tools/thermal/thermometer


Run the tool:

./thermometer -o out -c t.conf -l DEBUG -- <my_command>


The content of the configuration file t.conf is:

thermal-zones = (
	      {	name = "cpu[0_9].*-thermal";
		polling = 100; }
       )

All the captured data will be in the 'out' directory

For 'my_command', I suggest to use a script containing:

sleep 10; dhrystone -t 1 -r 120; sleep 10

If you need the dhrystone binary, let me know.

The thermal zone device tree configuration should be changed to use a 
65°C passive trip point instead of 100°C (and the kernel setup with the 
step wise governor as default).

The resulting figure from the temperature should show a flat temperature 
figure during 10 seconds, then the temperature increasing until reaching 
the temperature threshold of 65°C, the temperature stabilizing around 
it, then followed by a temperature decreasing when the test finishes.

If the temperature does not reach the limit, decrease the trip point 
temperature or increase the dhrystone duration (the -r 120 option)

At this point, you should the test with and without pm runtime but in 
order to have consistent results, you should wait ~20 minutes between 
two tests.

The shape of the figures will give the immediate information about how 
the mitigation vs thermal sensor vs cooling device behave.

Additionally, you can enable the thermal DEBUGFS option and add the 
collected information statistics from /sys/kernel/debug/thermal/*** in 
the results.


Hope that helps






-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

