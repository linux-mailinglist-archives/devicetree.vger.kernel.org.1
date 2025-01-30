Return-Path: <devicetree+bounces-141919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4E4A232F0
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 18:32:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 06DA9164DE7
	for <lists+devicetree@lfdr.de>; Thu, 30 Jan 2025 17:32:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B5301EF084;
	Thu, 30 Jan 2025 17:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="dDQX9FKQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510501EE7B4
	for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 17:32:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738258359; cv=none; b=P0764h2Ud3hq+Gv6Eh9kvRIyhMPXOb08nSvCNVJ2JSP5iELLRnMru7TFvxEGdt9mOF7YUTIxHPqFp2ovT7LXPtvp6ZqE342RRzzp/ly0SsZW2VrQZfQNEgcEhjsqj7++LM5ALvbmHpMUknmFl8nvVOI99nFpzUDtdK7U0YSQjiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738258359; c=relaxed/simple;
	bh=hT7kPUT71Rn2wgaiKE56N2bGMy3aiQWOQ7ryplZAs4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tElRtDIR8TjsoWzLbDppbOwJZ+JneToQscTtRe4sBpXsYQRLQf9eLd7kwGec8Hk1E+TrYb2HJxn2AgCj+HULw6952ajqJt6qTU/DLTYl42GDPo+3ia/EPsa4u9fsOFjkm35eHfutNJiBnZfaeKDH4x7dqBHffPvpVLZDSuqN9F4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=dDQX9FKQ; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-385de9f789cso908362f8f.2
        for <devicetree@vger.kernel.org>; Thu, 30 Jan 2025 09:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1738258355; x=1738863155; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xKM3RWBudOMOvAAaqh0C7cledBNgLwcsgWWCL/oBsw8=;
        b=dDQX9FKQw+x1gmzfvZHJPoXCQfkZicTBfIN8TEk6wDTi7faWREltQyd3H9SZZbQRYG
         5t5wlBaPLC8y3GZwffQjvdy78aa8QLnSQ1eirtd3BXU79NzbtPP9AHkPgBNjXCfDLOEv
         nCxsqBFYK3SPJSXHz3hZawHjNvDNfA96WedkGWrxv68En/gv32NUo3yU9x5hJVd9o8H+
         Uq+7ZzebllVzRXs7eOggrnPqphjbAD5CyEFyzlbHVjvlb4+uWjrLTHh1F8I3Yxj/dWuC
         NJ9Gn1M+8CNmMhgE51qWZ7olpqmxoRtL8XM7h55tny9JQaMt2BxpzRiPt9lj5Ngm0lmC
         9uSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738258355; x=1738863155;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xKM3RWBudOMOvAAaqh0C7cledBNgLwcsgWWCL/oBsw8=;
        b=vkVCd9+yNY5UhDlaC7EM7UBGNF5hbOQaZuamaj63kT48KYf2Z1SB+US+4nhmBJPAfD
         BwZBzpMKsSJLQ1zLFriP3t9pvsD9byYYtJWsph9ySVOJNlsTmOwyb0hGSgGpWJlFpuse
         fuMljt0JeZbPXisHePQ1+ePNPXae18VbCpz5xXOFuFvH7PwxQARvrZl7Coerwc+LghKE
         alcYn/dzfZgw+CSWTOagUSCFGrnR2C6TT+VnwCmQG2+PodNC1reLojh88KK8TPvo7pVO
         3JuO3UNLaQmMBGiMa/TjKo/Ib4D3cGIxHW6S8avPaPGtj8jmPgmpAnXlHIZ8Pboh1d89
         I/Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVTVudX6fzV2XhHDWV8j5fD/9PJz4Xx6CXqHcjvvN3UD8XL30vUoVeSd1fM3Opaymm4KGLsiqSXbUHJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzGGaOta7ocEXVjYzF0zbPUr8itvyPK2EvUETjZGntXKgd38oqn
	T/qsIK9OTRNbpYD2DAG3rW0rRyDnOAwxCrLmtF84Nr0PMgYKt+owRr3OMxFU4MQ=
X-Gm-Gg: ASbGncusuuWMTp3ZjG4yJt1M6tUHKjEi1Kdfymj7GI+lZvPnNRKk7rcjEw4fI20F0Q3
	FKIOe4TaI+gZLe9LBaN8tnZPI6rVZTH3EqVfSGMg+fiFO/mCotYJeUn9esi2iwdTihsNlYhAEMA
	hu6wnx4PTLBOu0nf3bIdjyCzp9JQ5xfHgRUKklqRqdQInErBHIPfwNjIjWgp3ogZcSvyS2g01RY
	oN5cemcaKTDSce+YQE+SlPxTdfjhbm+V5/Cw1ox3D7Sf9Ls9tmzQuv46kVd27Uh8qqH3NNUvkiH
	Kk00VqmlmxtzFiX2z0kcIcIg
X-Google-Smtp-Source: AGHT+IG0JtM8ysE8yCX0gXJFKaojoUHoYmkNQfMIe/tVvsLydgMxPhUkmT/xfpvP3KXVGI9I0CFgmA==
X-Received: by 2002:a5d:6d09:0:b0:385:fae7:fe50 with SMTP id ffacd0b85a97d-38c5209128bmr6322840f8f.42.1738258355362;
        Thu, 30 Jan 2025 09:32:35 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38c5c102bdbsm2538261f8f.28.2025.01.30.09.32.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jan 2025 09:32:34 -0800 (PST)
Message-ID: <2d5be56d-4334-4ad3-a98b-33d3a86f028a@tuxon.dev>
Date: Thu, 30 Jan 2025 19:32:33 +0200
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
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <b496d933-3c57-4b02-ab65-0582a30939af@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 30.01.2025 19:24, Daniel Lezcano wrote:
> On 30/01/2025 11:30, Claudiu Beznea wrote:
>>
>>
>> On 30.01.2025 12:07, Daniel Lezcano wrote:
>>> On Thu, Jan 30, 2025 at 11:08:03AM +0200, Claudiu Beznea wrote:
>>>> Hi, Daniel,
> 
> [ ... ]
> 
>>>>> Would the IP need some cycles to capture the temperature accurately
>>>>> after the
>>>>> clock is enabled ?
>>>>
>>>> There is nothing about this mentioned about this in the HW manual of the
>>>> RZ/G3S SoC. The only points mentioned are as described in the driver code:
>>>> - wait at least 3us after each IIO channel read
>>>> - wait at least 30us after enabling the sensor
>>>> - wait at least 50us after setting OE bit in TSU_SM
>>>>
>>>> For this I chose to have it implemented as proposed.
>>>
>>> IMO, disabling/enabling the clock between two reads through the pm
>>> runtime may
>>> not be a good thing, especially if the system enters a thermal situation
>>> where
>>> it has to mitigate.
>>>
>>> Without any testing capturing the temperatures and compare between the
>>> always-on
>>> and on/off, it is hard to say if it is true or not. Up to you to test
>>> that or
>>> not. If you think it is fine, then let's go with it.
>>
>> I tested it with and w/o the runtime PM and on/off support (so, everything
>> ON from the probe) and the reported temperature values were similar.
> 
> 
> Did you remove the roundup to 0.5°C ?

No, the roundup was present in both tested versions.

Thank you,
Claudiu

> 
> 


