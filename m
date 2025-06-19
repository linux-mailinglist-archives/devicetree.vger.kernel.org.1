Return-Path: <devicetree+bounces-187550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DB5AE06E5
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:23:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10F4A16F6BC
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D89259CAF;
	Thu, 19 Jun 2025 13:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="xNf2PZZu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEAC254AE0
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750339405; cv=none; b=j/fvuQHq8x/tiLFNXSHYI/tfNev4jEJO3Vf7oijkQoIslu4jkdZq2tR7HEa0lkoU7xVL/8bxId9ryr0pDzJfQtq4P+khN2KlWkcUlsPiU6XT5Qtr98cCg04ucp3ivW56HX0ZHAtnHLSvMITEZZ8fNv2RNcgXwbW+PGM46Co3cxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750339405; c=relaxed/simple;
	bh=1VIncuOXKXIdppmIXOnXByGjjj43tUTod0CayZIPC38=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RToZn2Vt4PxI+p0Ts7mfpuhkxePF7dG7RhCBk3gkU+LT2fEEbt4JE3Rza5+6g+SLhZ2zXLJ1Z8fN4/vGsfwrSsOeCiu93xL02APTZXnWZs2SxvUQc8o7iqNNaYmLhLsgbKihWPXMMiAqJjSgmvU92pQ5dqvjIZNO0cwAAGjJm9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=xNf2PZZu; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-407a6c6a6d4so195600b6e.1
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750339403; x=1750944203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/8CfBC2bXTzgQwWZYshC/feOH//kuqxuZpnRg/tZqBY=;
        b=xNf2PZZum0GL45x+L+CeiHfBIEe41ZVccD7eabWd8ZrRHBayi5DgLcn5BS/N8gQn65
         fNmI1n80juTpaxIzyV7R3/5JnGCT3bbpXRhSmAzBceN0hEDEADX5ng06KEALhSHdIqDH
         MEd4ldtzFn5ffNmtLsYgOBpvOg6lrQckUBT9TXekwA7jcPu0rsB3ie5JY7pOLx9WdySa
         EW65KKsu1bbv0nUioa8WTzRiMVQ+XbXBxMDdJrakC+8V2OsEZhH3TkrDx2SkcmUKH5mO
         BrGsaJdkmERI/KjeecvPqcnMI0bFI6jch1UJzx7B4xgOlfp+vl6JoWm+HgbL8oN3oVhz
         t9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750339403; x=1750944203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/8CfBC2bXTzgQwWZYshC/feOH//kuqxuZpnRg/tZqBY=;
        b=EX29ZxfGAvUIJpq2fY5ghq0bgEvT0HHigWeUEFBK2Iqr7mRIjqf1D2LdG7e+8xvND0
         xbx5bj9WLxCm+eGqi17y6bI+mEmqI9ZKr24OXQuHC8y6z8EPnVdjBQxQIGKZDTKgtZVx
         8jsy2DQO2HX7EcH53KDIiTzXzevRmDA+gICXag7LXI7E5QEcvnDVkKkcElIX1GtF2NS6
         0RqweNKDhL/pMO3AGtK9VW78SSR8qYMur48wIe/1W9CAMfxIUBU7Zaq1dVjksLgVPrWW
         mD4hh3Je9bDyWKBf9W7iY0Mz8hfBJ6b64gcURTa8Kwh60X5JwK5HEf52wyPUrYn43QvB
         Fv+w==
X-Forwarded-Encrypted: i=1; AJvYcCVh0IpaH9TKfOi/vA6YtFLpIKJX4Em7G6snase2uexRHlSnUAmwIfT1gNv+RE1PKjJ+BqYfzv3OjSM+@vger.kernel.org
X-Gm-Message-State: AOJu0Yyi9JZyhA2Y2qQg8HNiB+z1nmUTG5yHuIAS4VSPrP9ZDc6lfrSS
	FDYw++vtofMJsY+Q5joDOQUjyI8abEafiFjndeparlUYyAB1HmxcIaMpn+uESTabmy0=
X-Gm-Gg: ASbGncu3vJ4QNKK8ZMVwm+JoBh1Abfn29c/n94pptpmpZ4LksNUaMQkBfuRiDODWefb
	Mxoqw7GtqhbhY+DIksCkc5+BVbmj8+2SOU/oIkbqfNV1/7fSNo7sc0euwEYn/8wl7sE3G7k9QwL
	OOK+WhV4WSx1ycEzJapJdxhpXA7Exl+QZbMSzDWMvM3UK5mb6hmvXMDlTdzr/M5sj9ceJwLthA2
	Ok6RJjD9e8Awd64vtIJ2/GXlqIYWOLgDCiOw861F7XEPMqd8uvjUbhZ475vLDN33i8AouoiXF0Z
	hIhwiYIVJ5+IDd+iWBZUoWMzUUq6gya+KygLx9ep2VwP5nnfILI5x87YMPVs7PojUJIVsraexqi
	rtBc3f4J99yGJCqbRrYI1oMQKFQ==
X-Google-Smtp-Source: AGHT+IGY28hFmDr7ULoWj9fl8QS8bDjzI+smc76lgSZ1x1dv+k82B0BpK2D8Bz8W0iYI/okzRPVkRA==
X-Received: by 2002:a05:6808:2128:b0:3f4:1c2:874a with SMTP id 5614622812f47-40a7c23eabdmr13775263b6e.24.1750339403015;
        Thu, 19 Jun 2025 06:23:23 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-40a741b8837sm2759463b6e.46.2025.06.19.06.23.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Jun 2025 06:23:22 -0700 (PDT)
Message-ID: <13cd66da-dff4-4985-989d-d757fbae99e7@riscstar.com>
Date: Thu, 19 Jun 2025 08:23:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/6] dt-bindings: mfd: add support the SpacmiT P1 PMIC
To: Vivian Wang <wangruikang@iscas.ac.cn>, lee@kernel.org,
 lgirdwood@gmail.com, broonie@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, dlan@gentoo.org
Cc: paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
 alex@ghiti.fr, troymitchell988@gmail.com, guodong@riscstar.com,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20250613210150.1468845-1-elder@riscstar.com>
 <20250613210150.1468845-2-elder@riscstar.com>
 <123a7558-fda9-4b56-b6ae-a29d704419ac@iscas.ac.cn>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <123a7558-fda9-4b56-b6ae-a29d704419ac@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/19/25 1:03 AM, Vivian Wang wrote:
> Hi Alex,
> 
> Before the patch body, there's a typo in the subject line: "SpacmiT" ->
> "SpacemiT".

Thank you, I will fix that in v2, which I plan to post today.

					-Alex

> On 6/14/25 05:01, Alex Elder wrote:
>> Enable the SpacemiT P1, which is an I2C-controlled PMIC.  Initially we
>> only the regulators will be supported.
>>
>> Signed-off-by: Alex Elder <elder@riscstar.com>
>> ---
>>   .../devicetree/bindings/mfd/spacemit,p1.yaml  | 86 +++++++++++++++++++
>>   1 file changed, 86 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
>>
>> <snip>
>>
>> +
>> +examples:
>> +  - |
>> +    i2c {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        pmic@41 {
>> +            compatible = "spacemit,p1";
>> +            reg = <0x41>;
>> +            interrupts = <64>;
>> +
> 
> (Not really a review, just a note.)
> 
> I couldn't believe it at first, but it looks like the SpacemiT K1 really
> does have PLIC interrupt 64 dedicated to receiving PMIC interrupt [1]
> over pin "PMIC_INT_N".
> 
> Regards,
> Vivian "dramforever" Wang
> 
> [1]: https://developer.spacemit.com/documentation?token=AZsXwVrqaisaDGkUqMWcNuMVnPb
> 
>> <snip>
> 


