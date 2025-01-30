Return-Path: <devicetree+bounces-141819-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C627A22A10
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 10:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AAE977A257A
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 09:07:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59D491B4228;
	Thu, 30 Jan 2025 09:08:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EJy4UFpK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB9F1AF0BA
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 09:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738228090; cv=none; b=SKP2UMMEFHEyWwCmW1lqj+oMgPB8E8emWoSN32p3fguOn8FISPq8Rq6K7K5/jy/E5W+SZ9iYeCv5dMTRkri4/uNGsocGgCbhtu+z6Z/ygNg+c2snHfUb++RhdcHeXZDFZYuarUMzRJjpd9MRUN7FrDJBORgUDkS0XjhWowgjpZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738228090; c=relaxed/simple;
	bh=OBNGLE/SBRHOIMdTMZvbtABJhm/g1DTPsBcuphE4iS4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fDUvgkEVlM+gmdP5yximWDN5mBE5ICINiEjy1PebR/mMBBqFAFmkxt5TJFg/93eWjWG2K8D0/bNixtyeXY5mrGE/roOzC8+9Jpe/WIznSjY8uLFozdJkidMT+d4zlKgcvmZqccv1iAkt4lFfl7BbwwUcxkhYu3auvSjDnQWedyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EJy4UFpK; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385e1fcb0e1so260546f8f.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 01:08:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738228086; x=1738832886; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ANhml7M+MMMD3LKkNci+JpTEfPstAMQQQpY+9UHoOXg=;
        b=EJy4UFpKS+n6GHSFxX1+XPhIPnP2n9VHhsq11l/oDiEbOpn3dyPHXMUGjWcujTbSZJ
         rk5B9F4a9M/U6qIJ/qHySCVswSmZo9rZ0MCbjwaTi5mc9I/BdBbGDCPrNy5aBoK0OCje
         ME3zbo904Lk9QcgdTne41r6jcO1Lpn2UFolG2VrFYYgsJ0lNECv6teWsqAeRYHgLOS/A
         DHhM+V+Z87JR4nVBwUc6fvlUBWq/RWJ8dWtZyXLmp2QHeSTdLSEyJTw7JsqZSesxRS8u
         idRz7aIjPomosaaOdgKMnttXeaFrYcrliUi/54PfoSv2t59cBJY7mdW5/LBTBocvyR+j
         U0cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738228086; x=1738832886;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ANhml7M+MMMD3LKkNci+JpTEfPstAMQQQpY+9UHoOXg=;
        b=NjweM22u3RlzMf2Gw1per1Flv4Ou+wvypFmDs69BxmT1SiTR14I5wnHdIgm8B295vJ
         MQ3XVqR45rg/1JWzPM7K/Vgs2xpFnPhT37wjxj6WU413OQdLO/YIUZDFVuTI8JQr9saD
         5jJ879dbJ1SqzLTzcARVnl12SZUCi4/bhh8hTA5nn43jl3GKu1zElsGOHDxYWqC/V40Q
         7HNDiqw6IpwfynZKwNLbrGTvw0NecVZiOSukH9O65y6LO7nVb5Lo0yA0nnEaq5rah2BW
         1naBOVmVqgcDhQDqA9haFncjn1RF/S669lcn9FSRc9uyzEMIyeErdu1d/5uNqwLmK/ya
         Z5hQ==
X-Forwarded-Encrypted: i=1; AJvYcCU0aKVpoi8pUardXPk0gOmtreL1sCk8rAhNGvEknm6tZLfsyfvc8RVUFuEvcLdfrrUmYGvLprznwfG4@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+zvlMH5KyLbrLzJrujTUpukb3FKtJcU/FHumCGWs5RVdBk6A2
	dKFQqMCDF+7I7XoHAXx9JOpEbLj1MwdBcRasr2tbDVliTQDL3PmF/HtV8oQuRIc=
X-Gm-Gg: ASbGncvifuXeicSaI1xRVodnPNHn8UnoKciL7nxtkL5tpys6EZFIFiO5JUC5xPg8zph
	71yJEzg096b2vPiQUJg948M30Se3p1D5finTZnBrJvCneW4xxVlOCshoB/oHYpNqf8rA8a1x9P3
	CDhbRFl7BHytreuFxcpPpz9OuaKEqKxIZ+x87w7wc/s6LGoBO8maQSJRdNeeLLvmtAe4uHkfliY
	EIBi6f43jTjUdS1CNXYWmNB9f0YQspYl/zCv556ZZweIkqCV510/tB4pHYVZuTg/ZEopO7qe9vo
	MO56Nfbdd8PIvOmmiMkYDcC7
X-Google-Smtp-Source: AGHT+IEjxgi6T0u+WBslXxqIsPByCV1IEbwLcjNUUJAJZf9hq5VGIBAWjwewMxDvT3YhfK7VwFb5eQ==
X-Received: by 2002:a5d:5f4c:0:b0:38a:4184:151c with SMTP id ffacd0b85a97d-38c519602e8mr4907671f8f.27.1738228085612;
        Thu, 30 Jan 2025 01:08:05 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102d2esm1368334f8f.33.2025.01.30.01.08.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 01:08:05 -0800 (PST)
Message-ID: <65a16c3f-456e-40ec-91b0-afb57269ed46@tuxon.dev>
Date: Thu, 30 Jan 2025 11:08:03 +0200
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <Z5pkUNNvsWPjRQvy@mai.linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Daniel,

On 29.01.2025 19:24, Daniel Lezcano wrote:
> Hi Claudiu,
> 
> On Fri, Jan 03, 2025 at 06:38:01PM +0200, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
>> clocks are managed through PM domains. These PM domains, registered on
>> behalf of the clock controller driver, are configured with
>> GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
>> clocks are enabled/disabled using runtime PM APIs.
>>
>> During probe, devices are attached to the PM domain controlling their
>> clocks. Similarly, during removal, devices are detached from the PM domain.
>>
>> The detachment call stack is as follows:
>>
>> device_driver_detach() ->
>>   device_release_driver_internal() ->
>>     __device_release_driver() ->
>>       device_remove() ->
>>         platform_remove() ->
>> 	  dev_pm_domain_detach()
>>
>> In the upcoming Renesas RZ/G3S thermal driver, the
>> struct thermal_zone_device_ops::change_mode API is implemented to
>> start/stop the thermal sensor unit. Register settings are updated within
>> the change_mode API.
>>
>> In case devres helpers are used for thermal zone register/unregister the
>> struct thermal_zone_device_ops::change_mode API is invoked when the
>> driver is unbound. The identified call stack is as follows:
>>
>> device_driver_detach() ->
>>   device_release_driver_internal() ->
>>     device_unbind_cleanup() ->
>>       devres_release_all() ->
>>         devm_thermal_of_zone_release() ->
>> 	  thermal_zone_device_disable() ->
>> 	    thermal_zone_device_set_mode() ->
>> 	      rzg3s_thermal_change_mode()
>>
>> The device_unbind_cleanup() function is called after the thermal device is
>> detached from the PM domain (via dev_pm_domain_detach()).
>>
>> The rzg3s_thermal_change_mode() implementation calls
>> pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
>> accessing the registers. However, during the unbind scenario, the
>> devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
>> Consequently, the clocks are not enabled, as the device is removed from
>> the PM domain at this time, leading to an Asynchronous SError Interrupt.
>> The system cannot be used after this.
> 
> I've been through the driver before responding to this change. What is the
> benefit of powering down / up (or clock off / on) the thermal sensor when
> reading the temperature ?
> 
> I can understand for disable / enable but I don't get for the classic usage
> where a governor will be reading the temperature regularly.

I tried to be as power saving as possible both at runtime and after the IP
is not used anymore as the HW manual doesn't mentioned anything about
accuracy or implications of disabling the IP clock at runtime. We use
similar approach (of disabling clocks at runtime) for other IPs in the
RZ/G3S SoC as well.

> 
> Would the IP need some cycles to capture the temperature accurately after the
> clock is enabled ?

There is nothing about this mentioned about this in the HW manual of the
RZ/G3S SoC. The only points mentioned are as described in the driver code:
- wait at least 3us after each IIO channel read
- wait at least 30us after enabling the sensor
- wait at least 50us after setting OE bit in TSU_SM

For this I chose to have it implemented as proposed.

If any, the HW manual is available here
https://www.renesas.com/en/document/mah/rzg3s-group-users-manual-hardware?r=25458591
(an archive is here; the manual is in Deliverables/r01uh1014ej0110-rzg3s.pdf)

Thank you for your review,
Claudiu

> 
>> Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
>> be used in the upcomming RZ/G3S thermal driver.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>


