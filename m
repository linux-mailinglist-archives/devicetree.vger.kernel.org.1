Return-Path: <devicetree+bounces-201034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EED76B1720C
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 15:29:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92DB1585C38
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 13:28:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01BB12C3761;
	Thu, 31 Jul 2025 13:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="rHju3D5P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96E82C3259
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 13:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753968506; cv=none; b=krcKh7179Bd7vPRJilMnSztPM90rthioVfFJCgLCoU2fvOFP8zFlPbKAQTfVpvCaQXSpI5iE0S2iPdBtZmLQRa7tXla2nkIrNyMszzpGUq7mJRmK3JIvTEPTUl74DY5ul9ZfnthZvH+7n9Ka87zxEEBvGp51Ucb8h/FvH461GlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753968506; c=relaxed/simple;
	bh=i9Ok6TMVJzIWF/A/OfsfP1hoZ9qTWvQyujzq0OMG6yc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=chUt/HSCnVJ/DEluzni0E1zEk82LApO9CyHaZrWDnrQC2BkuYC3AwoTlJxynVbor1M7AXQhZtpztyaPG9r1gJlGvW5r4hicrqwnpuyDBhesKH5HljXnsYKubDqXw4fRtgwgfRDiMLSGnCS1OvEIlZ96rXGEoR1qQLEGwzOtluV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=rHju3D5P; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-3dc9e7d10bdso1519115ab.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 06:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1753968504; x=1754573304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bZXm9ki9DqMqybY0nwzk30YMFU8vNsqP6e+BF0/SCW8=;
        b=rHju3D5Pb37j/G9lIDCHh+XeufJa9rwOWCrlID2sutADTkYheA7ytCOmm4WDRXqnBf
         fGb8ijZpzpAI4VUmdNbpE7qR22St5aaJJjd7EyxS2QbdiGxonpdKevDCp45rfJNN7DD7
         ZCXOPuBjhxiXfAiGkBlbGARF92lrCGILibrCpHqPpGGtV4c9ccVaBFNHzoY8okB0P9vt
         GS/5EOdew3C8MW9b5HVMpGQEx7D/jreHMOgTXLI9m7Uv7Xs3de7oEMzZqA4XPSKwqWiH
         ze6/P3RBzODONwBOWOCVJJTp+K/WmuQiKKbC1kWBOvdt+Sw6TIMC0gTvtfNIz3EjRR+b
         3z5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753968504; x=1754573304;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bZXm9ki9DqMqybY0nwzk30YMFU8vNsqP6e+BF0/SCW8=;
        b=oqHCp0KOoWHeF3qC2XeaLCK8Lr9lXR1/dDFcC09E39VnS2PRRpIalO3ofZRclOwpL+
         As1gV8QJCOBG8RTW6Jnp4Elw8GZasa6FOFjtpC07THtPNrmKm+jW4NE03LwSw8XC0e10
         O2SA90N/HggezQ2N06ryEvpB+st9ig5GnzVCy7/G0Jo9z+4iAlA12+txSltwDEeJj2Xo
         2kkdqAJSkg1u1DNUmvEATH5Mcfgf9+2BUR/xbNzYmxa6DXp5BrYNpWC+OZAhx45Klvb/
         biTQGZmzuYsM1Cq7oTZ6raqPaxcm3pgo3HH2+zMvZjGIzgsN5kWGbRcqLyiyYTPwEgP8
         uwLw==
X-Forwarded-Encrypted: i=1; AJvYcCW7X0SKwayWq9fbrdoLo/9swnr8ole+jvvyDnkQV17KEtwYpMh+9mKFDswuBjv/2m6nHVZGuOkGi6p4@vger.kernel.org
X-Gm-Message-State: AOJu0YyRdrJfpIPflSpRI3wQGHpRh9Doa544cFyGK8xNVFAvQV9PpaRr
	m4yDmGynOAP6UFIzkUu+T4JAeKBIWWajxAE8IhmpJIMLrb9pRrr9P5MtZA2YJMaKRLw=
X-Gm-Gg: ASbGncuk8IJxhtE/92/bO6SfvRmvTIpuue/aE/PaS1yd6SQoHLsEZMn/KO3XyJc/QRO
	8xWwENmibG2VsLoLDs8ydUx9+xLdIg9GGk9BC1bG57Kwdq9uIaXFOI/0TwC7HLXzoGLEa8hhlht
	MN5dZnFUCuxLwDJlosoW5dDxW9w0rleY1ghtQ7TWJu+zG9vl5mzAZq+j3kHJZ+5If1deSH8kqBh
	n33Wgx240AsKDYVq9Cv825g/SkUCcG7YfxhXZK8Te0y0nTJ+Au320uEKMxk4mXrKxQHVSu7X1cI
	i9K4iTfuK7CN34Tzzylx3B4IFrFfQf9X6SvDGq550I4M6H3e2aIr40CyFAJj2zT9cJ8NiLVgPRh
	SZjJ1RaPLpvxLwPAbNEXkGXi7+4mODPDr8NGiOAE1mWCazz6VLixMFB974T4zKleo8U2pGeoT
X-Google-Smtp-Source: AGHT+IHVd8Qk8sqX9PKUb1Vz0+PsKeeTL23Bh9mFH1nZ3uKrxB6affe8zrVEVY8SyiLFctiuAowOkQ==
X-Received: by 2002:a05:6e02:16cc:b0:3e3:fc32:3178 with SMTP id e9e14a558f8ab-3e3fc323db0mr107094465ab.8.1753968503711;
        Thu, 31 Jul 2025 06:28:23 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3e402b34285sm6538805ab.57.2025.07.31.06.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 06:28:23 -0700 (PDT)
Message-ID: <e3cd0e11-e516-4cf6-b8f8-5cf2b5a236a4@riscstar.com>
Date: Thu, 31 Jul 2025 08:28:21 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 2/8] mfd: simple-mfd-i2c: specify max_register
To: Lee Jones <lee@kernel.org>
Cc: lgirdwood@gmail.com, broonie@kernel.org, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mat.jonczyk@o2.pl,
 dlan@gentoo.org, paul.walmsley@sifive.com, palmer@dabbelt.com,
 aou@eecs.berkeley.edu, alex@ghiti.fr, linux.amoon@gmail.com,
 troymitchell988@gmail.com, guodong@riscstar.com, linux-rtc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250726131003.3137282-1-elder@riscstar.com>
 <20250726131003.3137282-3-elder@riscstar.com>
 <20250731131827.GG1049189@google.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250731131827.GG1049189@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 7/31/25 8:18 AM, Lee Jones wrote:
> On Sat, 26 Jul 2025, Alex Elder wrote:
> 
>> All devices supported by simple MFD use the same 8-bit register 8-bit
>> value regmap configuration.  There is an option available for a device
>> to specify a custom configuration, but no existing device uses it.
>>
>> Rather than requiring a "full" regmap configuration to be provided to
>> change only the max_register value, Lee Jones suggested allowing
>> max_register to be specified in the simple_mfd_data structure.  The
>> 8-bit register 8-bit configuration is still used by default, but
>> max_register is also applied if it is non-zero.
>>
>> If both regmap_config and max_register are provided, the max_register
>> field in the regmap_config structure is ignored.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> Suggested-by: Lee Jones <lee@kernel.org>
>> ---
>> v10: - Rename simple_regmap_config() -> simple_regmap_config_get()
>>       - Introduce simple_regmap_config_put() to free regmap_config
>>
>>   drivers/mfd/simple-mfd-i2c.c | 45 ++++++++++++++++++++++++++++++++----
>>   drivers/mfd/simple-mfd-i2c.h |  5 +---
>>   2 files changed, 41 insertions(+), 9 deletions(-)
> 
> This has gone from an in-function 11 line change to 50 lines and the
> inclusion of 2 new functions.  As much as I _really_ appreciate the time
> and effort you have put into this [0], the added complexity being added
> here doesn't sit right with me.  How would you like to go back to your
> v4 idea of providing a bespoke regmap_config for for device?

I LOVE this suggestion.  I will send v11 shortly and it will
be very much like v6 (or something like that).

> [0] Beers on me for sending you down this path!

I'm looking forward to seeing you again, beer or not.

Thanks Lee.

					-Alex

