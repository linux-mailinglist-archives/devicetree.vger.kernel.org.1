Return-Path: <devicetree+bounces-166148-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B024A866B3
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 21:56:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 863C01B8713D
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 19:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60C64280A4B;
	Fri, 11 Apr 2025 19:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ICbhKt4s"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C3727F4F9
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 19:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744401371; cv=none; b=JyCl4ym6MWqXEjI+Hxzisi1ck6h4M2cuI/2qTnv1Nte4VZ74wzHGQI761Ivs1OIJ1oKhpKCHB+/SHEfB8vxw7zMfZV0IZYSFGopZEuzMNAm8ink+u5uhE4vJj3d7h1LFG1aWbNmS4Vjaf7cWmH92x/oWcwB8lzNc3rfYJ8mP2D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744401371; c=relaxed/simple;
	bh=j9Tizz+SRhxb0fTkfoOzWc/NBGesQAebEneLXbxTKRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kyuztt+qXYhrw7l/vjiwA3zzEbHbt7rmx7nSXA5BQ6TBGOIyAtwdRmFLjZdEtUH3ZkGzPr5s9pwqU7GzeOmCB4coYo0aN44M9YoVWY8Qe2BZPvi9asGpHQn7crIKo9zpFuphd8Wq+L3lvJlf+ArHDSx4R2y2cYD1F0kbSMArhLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ICbhKt4s; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-85d9a87660fso202579039f.1
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 12:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744401368; x=1745006168; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pERBQu6v36RmU72wS1eWJUx4EztB8M6FCvDbPo24Sik=;
        b=ICbhKt4seggfsPI2MVCvd1mL6sfUFbxsygcOFFyRWwH0m7MegWYVvtsyxsqgQ86j+C
         Esg4kypN4miVEfUYcGyiA4FjuS1gH+XZbycN4od1B3ueJOoPbUizUPRJwoXIjryneXHc
         J6oLoDME1yr3s5eHXm9Ufoq9Hqb3yFjAeFxCpw0YB4UP6XEY7LCmSf5uMtg2CiPpau29
         x2jZtGqG1rdced4iAXLyaq7v9YIWXs1/3HQr8bzR88Z3jfHlVKuA4Y69OmPbk5oB73Kp
         ieMgLVW8vZRa56Ar9T6Q64JctlGz2QYF0m+i2YHv3KR0eCCUW9Mdym4H4ovTE6A1rfEh
         p5Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744401368; x=1745006168;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pERBQu6v36RmU72wS1eWJUx4EztB8M6FCvDbPo24Sik=;
        b=ee8/AhdZfm+/tovnCAZ73QEj+pWduB2REl859CK3pAuqmKy7vv1p532nz1W2wNokY3
         aySnLvYDMcgHXAfVw6yqHNnces5VVkI4hUaUIQQMKkDoUcScGWBesNd7cO2nM92SA8d/
         MzD9Q997b9gbu/lR/+64PMwZ3QGK84ZssNFENz1wo2sMoQmmBCCTpgI/fk7J8nV8PWqV
         /DGcGOJTBZQ3PZz3Ep6W7UXubN7mRHeS88SHeig14l1dyreLfQA5CAO0XInTicVmRt/q
         ZBMIFxxSWQS44+TyjVZOg1gnESCl/ap3oSkVyy+/vmUjxS/4jCvhJCm2jROAZ45NzVcx
         PP0w==
X-Forwarded-Encrypted: i=1; AJvYcCWqO9iWV2B3Z696RDUOb5qXEDdxDA4h6sQsbcdlh9DekVlNPc9vHtlINc4clRITvOdEvsV91QaUGRKa@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Yy5b+/rraY9StsN0MlbrnfOZF5tnVlsW1ASXwqt9868qyhZs
	2el9b1aKLNnw+2W5YF+Z8ABO8DawFJ2NbmfbvKP+eoWK+k/ueoqLvOlEojU1bRY=
X-Gm-Gg: ASbGnctEt2V2Ov1wsC1RTu1LpHYV9qK9V+Vcgh0pzPIG8TPpsPBl7C6oPlqEh3ZmmQ0
	g5MuhV+/9RRaIp8Cec85RKxK0+UPMb58jekd1o5eH6evnG+dkKcvUzd6LKY1NT64yCrgCnVwm0l
	FX48qGOPREUlWVDl3LdSAGKtNt8rZ4LJESEWMm79lZxWfnoYIAdY1Fb5qGJ7tOjpxyyd5ukK7fn
	YyuyMUAK8KMzVmmZqvrMWb/8Pzdh0PHPl9RD0bA/0qoi7856/3/BxZZikOJrGSzewdnZSVBZXxI
	0lSFHslN0zcaEQP9fzL09pN9bnEiPe+8mQV9f67kFLYJI9oKAWSDjN8Ejjz/XKlgDnWgNKOUlPs
	arO+6
X-Google-Smtp-Source: AGHT+IGGVgYOqXyinnwT6qaZuwXYKc6jVRRPKYnkZ8fNRAGpPWFR1hWfOKnlDOwqftP7FLSw5NTERg==
X-Received: by 2002:a05:6e02:184d:b0:3d3:e3fc:d5e1 with SMTP id e9e14a558f8ab-3d7ec1cb49bmr44622035ab.1.1744401368624;
        Fri, 11 Apr 2025 12:56:08 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d7dba6704esm14337435ab.12.2025.04.11.12.56.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 12:56:08 -0700 (PDT)
Message-ID: <925ea396-fd60-460e-a3c2-968d0d837a61@riscstar.com>
Date: Fri, 11 Apr 2025 14:56:06 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/3] serial: 8250_of: manage bus clock in
 suspend/resume
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: gregkh@linuxfoundation.org, jirislaby@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org,
 benjamin.larsson@genexis.eu, bastien.curutchet@bootlin.com,
 andriy.shevchenko@linux.intel.com, u.kleine-koenig@baylibre.com,
 lkundrak@v3.sk, devicetree@vger.kernel.org, linux-serial@vger.kernel.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250411154419.1379529-1-elder@riscstar.com>
 <20250411154419.1379529-4-elder@riscstar.com>
 <Z_ltyAO-OBzl0adV@surfacebook.localdomain>
 <a3b2d0cc-c055-4cf0-9e03-3ea73041642a@riscstar.com>
 <CAHp75VchEcpP67oPC8xD+tYrY_A0BGSJqK=1au939-W60_qQoQ@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAHp75VchEcpP67oPC8xD+tYrY_A0BGSJqK=1au939-W60_qQoQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/11/25 2:44 PM, Andy Shevchenko wrote:
> On Fri, Apr 11, 2025 at 10:36 PM Alex Elder <elder@riscstar.com> wrote:
>> On 4/11/25 2:30 PM, Andy Shevchenko wrote:
>>> Fri, Apr 11, 2025 at 10:44:18AM -0500, Alex Elder kirjoitti:
>>>> Save the bus clock pointer in the of_serial_info structure, and use
>>>> that to disable the bus clock on suspend and re-enable it on resume.
> 
> ...
> 
>>>>       if (!port->uartclk) {
>>>> -            struct clk *bus_clk;
>>>> -
>>>> -            bus_clk = devm_clk_get_optional_enabled(dev, "bus");
>>>> -            if (IS_ERR(bus_clk)) {
>>>> -                    ret = dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
>>>> +            info->bus_clk = devm_clk_get_optional_enabled(dev, "bus");
>>>> +            if (IS_ERR(info->bus_clk)) {
>>>> +                    ret = dev_err_probe(dev, PTR_ERR(info->bus_clk),
>>>> +                                        "failed to get bus clock\n");
>>>>                       goto err_pmruntime;
>>>>               }
>>>>
>>>>               /* If the bus clock is required, core clock must be named */
>>>> -            info->clk = devm_clk_get_enabled(dev, bus_clk ? "core" : NULL);
>>>> +            info->clk = devm_clk_get_enabled(dev, info->bus_clk ? "core" : NULL);
>>>>               if (IS_ERR(info->clk)) {
>>>>                       ret = dev_err_probe(dev, PTR_ERR(info->clk), "failed to get clock\n");
>>>
>>> While the first patch against this file looks okay now, this one inherits the
>>> same problem (seems like not enought thinking about the code representation).
>>>
>>> Instead of rewritting half of the lines you just introduced (which is also a
>>> bad practice), add a one-liner that assigns a field to the local variable.
>>
>> So you want me to re-spin this again so that I use the local variable?
> 
> Yes.
> 
>> I understand what you're saying based on ease of review,
> 
> No, not only review. Here the main issue is ping-pong between patches.
> If you know ahead that these lines should be changed, do it from the
> start. But I understand the need to have separate changes for
> logically different pieces. That's why

I did do it from the start (v1 of the series).  Then I reworked
it based on your feedback and concluded there was no need for
keeping a copy of the bus clock in the of_serial_info structure.
In the interest of keeping the code simple I dropped it.

Yixun asked me to disable/enable the bus clock in suspend/resume,
so I was preparing the patches for that, when Greg informed me
he had already accepted the first two patches.  So I added this
new feature on the end.  This is the reason for this "ping pong."
I would have done it from the start in this series otherwise in v3.

Anyway, I'm sending v4 shortly.  I just have to run it through
another test.  It is indeed a much simpler change.

					-Alex

>> but this
>> is a simple patch
> 
> It doesn't matter how simple it is.
> 
>> and the change is very understandable, and the
>> code is no more or less clear when using the local variable.
> 
> See above.
> 
>>>>                       goto err_pmruntime;
> 
> 


