Return-Path: <devicetree+bounces-141826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EC4A22B9D
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 11:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9B9A3A9546
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 10:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A769A1B87ED;
	Thu, 30 Jan 2025 10:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="amRDREqI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C581BBBCA
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 10:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738233018; cv=none; b=qDvkE/u2/oyq7TQsrXdJScSnqVw1vqYfvibxL2cPchetzTgxZBUKj1zh1tFVbjp/sdK+6b1TcD1IgfWLcxtgpR6tk0gujx3i6IxQmxxyn0v8zGVB4nsxHCZmElbfVNk6WYTK8oeFvpr/9BRqeGipJTTUkJB7Hq1WeGmXTpMOnxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738233018; c=relaxed/simple;
	bh=9BITPfhJak9yxr63zwmqmILswJmVJcpMs/eWfAuDZB8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mctuFC6mx+ttaZRuH4+CcxSMqDVt8CTjUYy2RHF3PSoDQsFinFJ2bkE9PKcVNXlTmqsVP7Zm9b6QyOZau6BxdPxn+cHXkIM7mNAtAKM5nL2VReEskmc/OTsKjD+Nfha5oW4hGPVlv5+iNZ58eI212DU1F97CmDE8Wyx/XgbJvkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=amRDREqI; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-385e3621518so321399f8f.1
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 02:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738233014; x=1738837814; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6wXtZy6LMBzv/duDzrc4vs7XbX/T/7y1xABAgQu3rKE=;
        b=amRDREqIMrQuoHZoASBVKJ7NUt8cZ4T1zPYQrt8+vOm+dYYulOoaszWsJdT+3S/3iZ
         YwOnZ24TqPCSXY1Nvv4op1yEWDyDuZLByXNluHiTf/j2mFjLMGVJDk7nioG2nY3kjXWn
         AYtwqD80r4zz5u6nnnrh1XWQalSMJGkjykf+BDG7Q6TvrDJhOWuAjY1KkZqi0Y0/bfWi
         Yp+AkMlflx1SZqCtZ4B9+ujzJU0zs/d+sNOI+UGd3q2xdyXX46o5a1UDh9sAkX73/VfE
         4jeMQHRPvNVEYv2sAAY65QfERAQzzbZlg+KG8rtWFGzhqgm+bMqptjeOlsoDpSVWtqNw
         b8GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738233014; x=1738837814;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6wXtZy6LMBzv/duDzrc4vs7XbX/T/7y1xABAgQu3rKE=;
        b=ias422n09yeOHGaHJRxUbHgDkWkH/Z3RQO8clbFWzjcSiv1f5gnOmrEPNNuHeCbd6f
         H+yxLjgktM7AOg2DfU3FpocLnt7jcoENCBn32y/EnwDvWT+r/0FOXNlbx8pdtxOFs2Kd
         nimZB89D6t9/w1cY/giZlYTywU9Ral9m/vCkFjrVzfpd431ZYUAEcmJe+cIz+BZISpLr
         RmJviofojkwAtgqj1HiNctrE3jhSLRedFcy1RtfqBopFuAHescMnfrOEN6yZy7xBXi5L
         l8VGZC7KKVw+B5/wtiJM1Rj67LtnZWL9AqUk+MKHQuIpGM8jgcN++HardoCuAlBLGnm5
         wjaQ==
X-Forwarded-Encrypted: i=1; AJvYcCU+l8Q/aOCfy8bcdTkngGd83MQ9X58k0WDsCkderT2p0fNyIf60313qdVPwPdt74LY2uw9CFXRVknl4@vger.kernel.org
X-Gm-Message-State: AOJu0YzQPYkLMsSZ3Ve/2HqUjwy0FXGqa6N0VGRPoUaWaTirqMLlNjpC
	gglOOWMEzhA/OKubYtep3LMqfpvJSS3h7OMggTBfRZTzCTS2Tc/2tuZaem8tbww=
X-Gm-Gg: ASbGncud1+XR/iJXi4+iyc11WgwTFJAt8DcvD6sp+ayiBIksA623Ijjka7ne84lcIuJ
	CnmmdGoaXiMVHFmHkklsPtjaAxdXGgDeFlepu/TBh+5KTb4okM1CzlAqKV6DE65BjUMaHDUkKcw
	dvEPiml9bq10jrK1bencDll3Bt+XdJ4MBKv+CWBsA0W257kjozIO+onMIoEFkP+U0I50eJFAvpH
	bfcPYoYJMWeXp+4j1MiHibaoj5bBB0ibtSpiERrldjGk5Iwb6FIyLMBblJMnw3cNFJ5pbFi+406
	kU1pNGdygDAczkDo0AhMl7tH
X-Google-Smtp-Source: AGHT+IFRsLdabS1EP/8zZABqYuIxLkY55xahqM3ApidGDdm8kd9LPTBfoVk1hedbQbX+OgyCR0PRRg==
X-Received: by 2002:a05:6000:1548:b0:385:e429:e591 with SMTP id ffacd0b85a97d-38c51973d2fmr6410045f8f.23.1738233014363;
        Thu, 30 Jan 2025 02:30:14 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c1cf53asm1512693f8f.87.2025.01.30.02.30.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 02:30:13 -0800 (PST)
Message-ID: <6ed7d545-82d7-4bca-95ec-95447586bb58@tuxon.dev>
Date: Thu, 30 Jan 2025 12:30:12 +0200
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <Z5tPR_tv7vWDkUI7@mai.linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 30.01.2025 12:07, Daniel Lezcano wrote:
> On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
>> Hi, Daniel,
>>
>> On 29.01.2025 19:24, Daniel Lezcano wrote:
>>> Hi Claudiu,
>>>
>>> On Fri, Jan 03, 2025 at 06:38:01PM +0200, Claudiu wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
>>>> clocks are managed through PM domains. These PM domains, registered on
>>>> behalf of the clock controller driver, are configured with
>>>> GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
>>>> clocks are enabled/disabled using runtime PM APIs.
>>>>
>>>> During probe, devices are attached to the PM domain controlling their
>>>> clocks. Similarly, during removal, devices are detached from the PM domain.
>>>>
>>>> The detachment call stack is as follows:
>>>>
>>>> device_driver_detach() ->
>>>>   device_release_driver_internal() ->
>>>>     __device_release_driver() ->
>>>>       device_remove() ->
>>>>         platform_remove() ->
>>>> 	  dev_pm_domain_detach()
>>>>
>>>> In the upcoming Renesas RZ/G3S thermal driver, the
>>>> struct thermal_zone_device_ops::change_mode API is implemented to
>>>> start/stop the thermal sensor unit. Register settings are updated within
>>>> the change_mode API.
>>>>
>>>> In case devres helpers are used for thermal zone register/unregister the
>>>> struct thermal_zone_device_ops::change_mode API is invoked when the
>>>> driver is unbound. The identified call stack is as follows:
>>>>
>>>> device_driver_detach() ->
>>>>   device_release_driver_internal() ->
>>>>     device_unbind_cleanup() ->
>>>>       devres_release_all() ->
>>>>         devm_thermal_of_zone_release() ->
>>>> 	  thermal_zone_device_disable() ->
>>>> 	    thermal_zone_device_set_mode() ->
>>>> 	      rzg3s_thermal_change_mode()
>>>>
>>>> The device_unbind_cleanup() function is called after the thermal device is
>>>> detached from the PM domain (via dev_pm_domain_detach()).
>>>>
>>>> The rzg3s_thermal_change_mode() implementation calls
>>>> pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
>>>> accessing the registers. However, during the unbind scenario, the
>>>> devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
>>>> Consequently, the clocks are not enabled, as the device is removed from
>>>> the PM domain at this time, leading to an Asynchronous SError Interrupt.
>>>> The system cannot be used after this.
>>>
>>> I've been through the driver before responding to this change. What is the
>>> benefit of powering down / up (or clock off / on) the thermal sensor when
>>> reading the temperature ?
>>>
>>> I can understand for disable / enable but I don't get for the classic usage
>>> where a governor will be reading the temperature regularly.
>>
>> I tried to be as power saving as possible both at runtime and after the IP
>> is not used anymore as the HW manual doesn't mentioned anything about
>> accuracy or implications of disabling the IP clock at runtime. We use
>> similar approach (of disabling clocks at runtime) for other IPs in the
>> RZ/G3S SoC as well.
>>
>>>
>>> Would the IP need some cycles to capture the temperature accurately after the
>>> clock is enabled ?
>>
>> There is nothing about this mentioned about this in the HW manual of the
>> RZ/G3S SoC. The only points mentioned are as described in the driver code:
>> - wait at least 3us after each IIO channel read
>> - wait at least 30us after enabling the sensor
>> - wait at least 50us after setting OE bit in TSU_SM
>>
>> For this I chose to have it implemented as proposed.
> 
> IMO, disabling/enabling the clock between two reads through the pm runtime may
> not be a good thing, especially if the system enters a thermal situation where
> it has to mitigate.
> 
> Without any testing capturing the temperatures and compare between the always-on
> and on/off, it is hard to say if it is true or not. Up to you to test that or
> not. If you think it is fine, then let's go with it.

I tested it with and w/o the runtime PM and on/off support (so, everything
ON from the probe) and the reported temperature values were similar.

Thank you,
Claudiu

>  
>> If any, the HW manual is available here
>> https://www.renesas.com/en/document/mah/rzg3s-group-users-manual-hardware?r=25458591
>> (an archive is here; the manual is in Deliverables/r01uh1014ej0110-rzg3s.pdf)
>>
>> Thank you for your review,
>> Claudiu
>>
>>>
>>>> Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
>>>> be used in the upcomming RZ/G3S thermal driver.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
> 


