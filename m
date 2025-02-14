Return-Path: <devicetree+bounces-146569-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6F6EA3573A
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 07:39:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 80D0716E3EF
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 06:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CA45201271;
	Fri, 14 Feb 2025 06:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YpQ3el9J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524C218D65C
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 06:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739515150; cv=none; b=HxLJGr4gowAU76GXcFQiELklKzpsuqqtWgfiHvd6iCssmqfbB6RdZyc/0WKdIpRqC1DhD6lAD6VMQH55DiKLjDkfbTtlKUb/hE/J4fcvQTTdUnMzmaPHD5QZnvaRrKo/6V63nUHqkkH0BVXECJNyERsXzuw+ThDjg2rzmNSz+14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739515150; c=relaxed/simple;
	bh=wM4tKt7wnAjL5plOI4BRiyB+09XoZe0tKNq0DJSi+xg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UErYUsN5vojO/CBs0McrIgUg7bocwlADDczzoy3DFV4m25JJpbBNpWy966mVBtAYzvve7jEP+M6a9RSqlazsIDjlmLepFVBZmM6AntsJXoIPOXkI+SPKPGBGL3U4o1DHS/9RU1srYNwhuZNUrv9AQ1ndHPqGfE/Q4K7+nPXNIHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YpQ3el9J; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aaeec07b705so280105766b.2
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 22:39:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739515147; x=1740119947; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n0sU8UuAz6zX29kmBzzz54CB+mIZrBU5m5rlPw1QPe4=;
        b=YpQ3el9JyDtytDF1ggQ59bMI/wJQEtgyGxBm3ugSRebGJwOkMKScLcV/ZPTLNdfGKZ
         X4HhcHT3UXlhmo6XJUAiAz5tu5Jvnc754r781IrG7fQEHRkNJ+pf833Awa7TCZetbO1n
         WnWKWI6Q/OMDO+toSnncco1gCpHsfSwbAtCZra3BGDF/yS9c1gCPxmdON0fQ7aBIXjFZ
         eS6u4h8pTNHBp4qKoNWRrEsClILIytW9miaBkEyyhaRdcxBYZVl/RFSf06Ras5CYs8QR
         b4I1rOP7WvCA8uoI3dqm1j6LZUMI7mG86gwsoukeXcrqQcRTeL18ijBiwO6057QgcH85
         TzTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739515147; x=1740119947;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n0sU8UuAz6zX29kmBzzz54CB+mIZrBU5m5rlPw1QPe4=;
        b=bveNJRlHmLZ3Tc0SXqLlYuPUUIpMvR6BiadXs7DTPwHwf1n31WrCMlaDvDDGZkSH0w
         X0dA01F2I7/lYtYOcyJIPEYiRaHelSvWeec+5aP2w8B2zWz8FEkRl/MCDD/iJD8nCuOQ
         hycI0yxPzFLn04dLSMVgJ2ariQn53e6fnaW+hIhHIcRPm3wY+4KKmIR6spFPCmD/i2dS
         0awFa6uXn2LPsjEub5QLHwVU2dYK6n5kYuBmhFOIoN0+1ENAStW9vTxlRyf9aEvxgLm4
         WPEc5ZD2XjgdkPhMg7Wt1GJcA86qASZPOdkTRuOgtN4oG6UwarsnCpo3LsZ/7eHEFlju
         IE0w==
X-Forwarded-Encrypted: i=1; AJvYcCXEFSxhQxaOiu3i7dk0FrogDSDzM6g1TjHNE5waBnbZC8d7PRVkl0YSpRntc7mrdypCTukHEqjbFvmx@vger.kernel.org
X-Gm-Message-State: AOJu0Yzj94gZBXDAVO1EvdBQ/Lah8bsbdIqTCV+0WM4Qs7x0fegGm9O1
	4IEuD4OYc8cEiEoZOSrikYZVKafvlTxFOTRmDVya8h2KqwM+Ox/4A8Krc+zCvnE=
X-Gm-Gg: ASbGncsYWeJURak4EoeFFhdpY7rSepzGm3N/eHd0jnAwrfnpcZBP/+8B58rhknqh+B7
	aEIrOp+mt6jiKOEpAYvYCue0vEO769bVyWNia85NPuv3II0JqigPyaNkXRBQf4HNEvFZq1g+k6e
	gzIy4nKRkliTqk9EXN1AoWB14fX0/gjaoXXD8c3zgwW/822CN/Hh5OqCU3AFOFDrs0/M6UCVIYX
	J+I3rsEwC2knmaXmc7Oi9a8iS1zr06vyizZxrnVxFdtMsZmIQmbn5jw7I89SH0F2dAVR16VSYCv
	2ZysQHCxh/V9j2CFkEM0cr6e
X-Google-Smtp-Source: AGHT+IF1d6cYVnJi5xW59uL3+6NvNiwx8uIujRV1yuXHWDc54Fra2mr4R1Bhi8JKR7ZMNqzyULR9og==
X-Received: by 2002:a17:907:d26:b0:ab7:da56:af95 with SMTP id a640c23a62f3a-ab7f336e7b4mr907392566b.2.1739515146641;
        Thu, 13 Feb 2025 22:39:06 -0800 (PST)
Received: from [192.168.0.14] ([79.115.63.124])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aba53231f36sm276066166b.33.2025.02.13.22.39.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Feb 2025 22:39:06 -0800 (PST)
Message-ID: <cf0a5ab5-265f-4429-8c11-8b669f00bc70@linaro.org>
Date: Fri, 14 Feb 2025 06:39:04 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] spi: s3c64xx: add support exynos990-spi to new
 port config data
To: Sam Protsenko <semen.protsenko@linaro.org>,
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: andi.shyti@kernel.org, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, alim.akhtar@samsung.com,
 linux-spi@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250213204044.660-1-wachiturroxd150@gmail.com>
 <20250213204044.660-3-wachiturroxd150@gmail.com>
 <CAPLW+4nJVf0raJ-O3u6uUteBi--N5xGwvzXp7cHqbkdMJ8gCSQ@mail.gmail.com>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <CAPLW+4nJVf0raJ-O3u6uUteBi--N5xGwvzXp7cHqbkdMJ8gCSQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Sam,

On 2/14/25 12:08 AM, Sam Protsenko wrote:
> On Thu, Feb 13, 2025 at 2:41 PM Denzeel Oliva <wachiturroxd150@gmail.com> wrote:
>>
>> Exynos990 uses the same version of USI SPI (v2.1) as the GS101.
>> Removed fifo_lvl_mask and rx_lvl_offset, and changed to the new data
>> configuration port.
>>
>> The difference from other new port configuration data is that fifo_depth
>> is only specified in fifo-depth in DT.
>>
> 
> In the code below I can see this bit:
> 
>     /* If not specified in DT, defaults to 64 */
>     .fifo_depth     = 64,
> 
> Is that intentional or is it some leftover that was meant to be
> removed before the submission? From s3c64xx_spi_probe() it looks like
> the "fifo-depth" DT property is ignored if .fifo_depth is set in the
> port_config:

fifo-depth in port config is intended for IPs where all their instances
use the same FIFO depth. fifo-depth from DT is ignored because the
compatible knows better than what developers may in DT in this case, it
is intentional.

> 
>     if (sdd->port_conf->fifo_depth)
>         sdd->fifo_depth = sdd->port_conf->fifo_depth;
>     else if (of_property_read_u32(pdev->dev.of_node, "fifo-depth",
> &sdd->fifo_depth))
>         sdd->fifo_depth = FIFO_DEPTH(sdd);
> 
> Btw, wouldn't it be reasonable to flip this probe() code the other way

No, please. IPs that have instances with different FIFO depths shall
rely only on DT to specify their FIFO depths.

Cheers,
ta

