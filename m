Return-Path: <devicetree+bounces-224536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AEFBC4F30
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 14:48:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1EFCE400B3E
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 12:48:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3833257423;
	Wed,  8 Oct 2025 12:48:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="lHT51kpd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACDF1251795
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 12:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759927680; cv=none; b=u2V/8cSY+xi/XWvlx8PXfZ0NNb87/Ry67qWw/HJQAnAvti7h7ZRvc9XB2VVh//AvLoEI0251rh6kNZJI6K93nA5zWaQ8BuiJacepj5vW2uWp821OFQZOzD+KhUG0Nw4CGMqHoyTtRw4W+9XllUfb9mS5GHST7d3xlaTL37s3o+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759927680; c=relaxed/simple;
	bh=P51AzmQJe4s0CJL4Wwu7Z0oBZHbLe0/rr/yjZVDr1J0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=Bcnac3MNL+/YHry9MNvtfx1BY91wTfEyGq36jiTyYniZ073uQwxrRZJ7qP8HZEPn2R2xjRZpKiYt7Pxt+dsYcECBo1cz78B1/60Bdk4ImBkIfg7yuvK5V7vDaCnYLd1IXCnlz0KdbA9OlaZcqC533wIT1eigRAq72TUjaXXCObI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=lHT51kpd; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b3b3a6f4dd4so1363407266b.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 05:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1759927677; x=1760532477; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AXhIFAPZtegMDAxULdLjEweIkAMVkFzkJ9S+EwaPmEY=;
        b=lHT51kpdQKVwU6CizDgUwD+Rvjv8IjElzQcz7hafByUFiZf4f98aJRKpx0GdwJ1n2k
         Z1LR9BvOVF0RZA+rSKLBtss5BJhscBlrcPCHcjBt0OGrVuzCpjnQwVTLJ29vOI50Fu2r
         zBntPzPKFHWhwZsrk2Dmj2yu5pkfbQtxq05P97LyAG14ueP0WbFnV/r5H8ERaLtcuUjL
         x0Xwky8aTZNWHjbX5fkHY8dqHn2GNN3eNm2elpINlTsh/pf/wbnun9/Yg3476RVS/tZm
         E76HvJf+Hkm9BpsNkKRcrT5i5WafMYAreVhF7A7ecXC/WLSHTG6cKx86C2zjhpt2vZpl
         +5lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759927677; x=1760532477;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AXhIFAPZtegMDAxULdLjEweIkAMVkFzkJ9S+EwaPmEY=;
        b=wC43de2/Iq8aAkCWxZDPH2LWIw+hAm2obYLHavTM6uKIbmcuYsWIU+LXE1TpKubcak
         3MEQ6APjryZ4QumzUOKbrF74u7K0y54i21SaTSm7UDLD8JdCE5uONyIrrmddQmZInyWO
         pm1p6pXOUnJUpJzAL5dJMBNfzLVOfrpYnw+0zRUb3tBYTlbiRKdZqeR7rL9pA0frKnnS
         WFBavcUuHsGkEjI7cjxU+OnaeLyAxVAHFTcZQGfIglBD2Ks0oI7M59ymSV2sgPifr5Vu
         KR99fCex4IfsFazZjDkr/7QzlS8HwCbs1HK9+0FrkIWX0NcwFjQYhz1/RkAMVM3Bkjlo
         XkBw==
X-Forwarded-Encrypted: i=1; AJvYcCWSp0ev/60sN+LCm+W/VHWAqxnoepqF/TsFtr/2qDGjAFOFEUa5R/UGle6C4wexZR3Sb2YWbhmglZ8T@vger.kernel.org
X-Gm-Message-State: AOJu0YxNAmtLwV3g1e4QvRoeBlNAvGd1InPNGduN4o0JijPWDwguoRD8
	LtBOVzzd9w7c+BAP4iRZ3uA5u0mUXKJZo9+MQdyiOVthi34bzYtDucYn25uyOlmQoWM=
X-Gm-Gg: ASbGncs7uPOj+FsqCLCDXzA6aLcCQKswupp4TdFYuz9wykbwmJSC+PWDA5X0R+x7r7m
	jpiXkm3f/6DV+9fGrXbpFxVyusOBppHZ7HwWO9p3ybeFc962tWfqyPoe7YXy5RsqN/7SF6y/tem
	lf4yOyp5TVjDuTvXQ2FTmnTD0xr3lmJqQG5y9hj8eGLaESkuIRVDDm+PPUt+zLdpWetsTbehQzY
	QN+SrIfStkLkQFDKyk0mlILL35qe7OwfpjY7LVg+tWoWLXKcxK4BEwmiBFBEbD6L54DW7th2UuG
	nRwgkZABvu+ogN5Ti8/T+0HvJ8XOiH1iuBV4f8AULPUHEjgQWVebXw/wcrEL4Z5icY9MSUPmfnP
	xjPoyKVoV2jG/YCOBc997MQiiVg/LEgbDytOCUbzLpd+wxjqoGs8fMA==
X-Google-Smtp-Source: AGHT+IGpOYxdU1TjlTUaBcL5WSDuVrPngUkKCAdSSFEPYFhIoh1b/oFl2+SzF4mi5hdAxR3O/fYw6A==
X-Received: by 2002:a17:906:6a22:b0:b37:4f78:55b2 with SMTP id a640c23a62f3a-b50ac1cba08mr336276266b.34.1759927676843;
        Wed, 08 Oct 2025 05:47:56 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.59])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b486970b5acsm1639393966b.60.2025.10.08.05.47.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 05:47:56 -0700 (PDT)
Message-ID: <d0fa09bb-3e2c-478b-a9b1-af57254a4fb1@tuxon.dev>
Date: Wed, 8 Oct 2025 15:47:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 4/7] reset: rzg2l-usbphy-ctrl: Add support for USB
 PWRRDY
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Philipp Zabel <p.zabel@pengutronix.de>, vkoul@kernel.org,
 kishon@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 geert+renesas@glider.be, magnus.damm@gmail.com,
 yoshihiro.shimoda.uh@renesas.com, biju.das.jz@bp.renesas.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
 <20250925100302.3508038-5-claudiu.beznea.uj@bp.renesas.com>
 <c7fc31f1247332196516394a22f6feef9733a0b4.camel@pengutronix.de>
 <66d85e70-efb8-4a45-9164-55b123691b70@tuxon.dev>
 <bcf6113b0025777db1cb2ace1618fed8fac2dfc6.camel@pengutronix.de>
 <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
Content-Language: en-US
In-Reply-To: <cca1061e-df67-4b5b-99bd-9721c72a0f88@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/8/25 15:16, Claudiu Beznea wrote:
> Hi, Philipp,
> 
> On 10/8/25 13:23, Philipp Zabel wrote:
>> Hi Claudiu,
>>
>> On Mi, 2025-10-08 at 12:29 +0300, Claudiu Beznea wrote:
>>> Hi, Philipp,
>>>
>>> On 10/8/25 11:34, Philipp Zabel wrote:
>>>> Hi Claudiu,
>>>>
>>>> On Do, 2025-09-25 at 13:02 +0300, Claudiu wrote:
>>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>>
>>>>> On the Renesas RZ/G3S SoC, the USB PHY block has an input signal called
>>>>> PWRRDY. This signal is managed by the system controller and must be
>>>>> de-asserted after powering on the area where USB PHY resides and asserted
>>>>> before powering it off.
>>>>>
>>>>> On power-on the USB PWRRDY signal need to be de-asserted before enabling
>>>>> clock and switching the module to normal state (through MSTOP support). The
>>>>> power-on configuration sequence
>>>>
>>>> The wording makes me wonder, have you considered implementing this as a
>>>> power sequencing driver?
>>>
>>> No, haven't tried as power sequencing. At the moment this was started I
>>> think the power sequencing support wasn't merged.
>>>
>>> The approaches considered were:
>>> a/ power domain
>>
>> Letting a power domain control a corresponding power ready signal would
>> have been my first instinct as well.
>>
>>> b/ regulator
>>> c/ as a reference counted bit done through regmap read/writes APIs
>>>
>>> a and b failed as a result of discussions in the previous posted versions.
>>
>> Could you point me to the discussion related to a?
> 
> It's this one
> https://lore.kernel.org/all/CAPDyKFrS4Dhd7DZa2zz=oPro1TiTJFix0awzzzp8Qatm-8Z2Ug@mail.gmail.com/
> 
> 
>>
>> I see v2 and v3 tried to control the bit from the PHY drivers, and in
>> v4 we were are already back to the reset driver.
> 
> v2 passed the system controller (SYSC) phandle to the USB PHYs only (though
> renesas,sysc-signals DT property) where the PWRRDY bit was set. The PWRRDY
> bit was referenced counted in the SYSC driver though regmap APIs.

Sorry, I forgot to mention: in v2, the SYSC phandle was passed to the PHYs
only as I wasn't aware of the block diagram presented in this patch
description. I got aware of the block diagram starting with v3.

Thank you,
Claudiu

