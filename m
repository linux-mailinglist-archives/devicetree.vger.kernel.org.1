Return-Path: <devicetree+bounces-200976-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75541B16CD6
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 09:42:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 822463A77E9
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 07:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAF8C29CB58;
	Thu, 31 Jul 2025 07:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XWOBup87"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB8629CB3E
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 07:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753947711; cv=none; b=sE1tEpgjKbFS4skTjxHwXEjQn0+3DPkTCjALNT5uhAMWN2hLGphUU23+xtEyZUUqvXfm/GGZRDSbwCC9qqQlksUwNDoykpDml1eDmcAF7MPvljTb6C61ZFrynFBAZc4Kl7rRxUZKoSS0IegbM1WSzry0vonvUFQ3I8yC/arvqqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753947711; c=relaxed/simple;
	bh=FUk+hS8UV3ct/Zmfxgtd4RMf6XdZWYcVB8mHR4pLQno=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L5QpHW6Ifc55is06hkshyVRrfiXZuQgJW654W1BJe78zGNr8eU2Z9AbWiXfpC7rvcqfRXa2A1wzVyjOHbBWhgW+vB/ZCXGNJKN0PjCyRAvwUi6Jbh2F86rWQoraeAz/OQBpHJbPaZoSnuiokNe1m9tpeRKc/cuvaiPUgfjfP6OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XWOBup87; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3b78315ff04so78965f8f.0
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 00:41:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753947708; x=1754552508; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rg8qJybgcN2QySvV7zBDwm9nfaW7SarG7SeeC2wAVGI=;
        b=XWOBup87NdeToIdH0PJk9b6pVxx7RXm66HQ1olaNVoaKT0pnxulmW23pKYYd9xBdF5
         ND2xp9UvHRMSDqqrn4n+StUZczbiNJ4Tw5Dduw78CXIpqlMavkjIKsC/+E7urbUDWzgj
         IGmjUlrXPtzEe8VM7uH4GM+Dni7dESeLk+8dw9Oyu0F55TW9Aa7gyZ+MJfrfTSmEU0P5
         tALTxdRwt+1JWdV5wVvX49V+8tGAUXRQgfBl32lzpqvMASWno6Te4TuQQr1ILwNPpoAA
         3ifDJXzH4WuX2UgqVc4xgkfVpu22BuK0Az9I016RT52n9GblAT+5IrpOF0QL2WyKPclC
         ExEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753947708; x=1754552508;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rg8qJybgcN2QySvV7zBDwm9nfaW7SarG7SeeC2wAVGI=;
        b=ghMe+bVedNobbgsdKNkNGELlyt/ADJyeygS2AxYltGbm8IK2rgHUAPwFjkBSJeUW4j
         rpjTLSaqp7lYiq7YbxTH3Liw0IPLQmm4qgYlNAVGp594a3dc7+0BVd55TnsS7UM0uAOa
         o5SytSI6XW3jf/Fh2Yd4/XIcT1u8eMLc1/861TL4YWtgpL8x8/OyRRWHOicBkLAr/0bX
         SZ1ygd8QTeLosfY8FYx9XfzrjqjzHSPJok1XGcuMO5aIjYsRyGUL8VAcX1tg0aVxDQET
         xKC74BRI5j/kur3bPImyKvR04Aa7q+BI+PpEN70o+Q94T66BHl7lmkl7pJwCPgdArZ5n
         JJxw==
X-Forwarded-Encrypted: i=1; AJvYcCVOCKNGqteg5nJZD6Bmqw96lxb35zEXtSVTdm9nXsThrYt2+4GZXZWSY5lBZKFX+9QCeNxISAwj+AHn@vger.kernel.org
X-Gm-Message-State: AOJu0YxxOrU1vMx2XoQZ9eZNi7UL3Xe9npHixHAn9VXrfYj9tQsXH6ds
	MmxLQ++H+MzruqNWVR1LAM3z729/EyVZYlOZwsUTm+/jsCNIDeSH7NkJji09bEUcDna8L6ztScN
	HQp9m
X-Gm-Gg: ASbGncsUMxVaL4bp1ZZD+fYmmdJ3G76W4+sFwAL9mqkFXBlbxOA93ECv+pgHKaU1WDO
	TglfZOpiJPJKUM1EAE18X6ZdmyvBPEEkVR+ukl2gC4Ee8JUmKktSwFwYWvPgQ8QmS5r5t+c3/Ty
	synFgZCxMzPKJ8krbHpyAatuH5UO2v5TGF+3updzPFpH99xAwO5dRaHZLqsz/lGcbHf3XDLULhm
	koKN5ecVC4ywqQ2D11aYo7+mGW+EpgwrQ63Tasi89xE1h1ymmHg1WopfbckSilECLK+nLg+PybW
	QXf5Uc5ViTglFbExMpBXOWi+wOJ0BW+FzTmMt0xy7/uOE7YpYg8R6TtVE6JJczUOauSXH0Rs6y8
	ddJw8P9rqc1IcVbaHsolNYygTwlcdGd+iN8b3VYgJxJ4Iey/v6UQpVNuqWgoasg==
X-Google-Smtp-Source: AGHT+IF/E5/SuU8iV+jCxBPuKgOukgigRyRn5Br/+JMK7Nzazv6QWnZ9AFSrYVbUlRdayFffY5H5aw==
X-Received: by 2002:a05:6000:250f:b0:3b4:58ff:ed1 with SMTP id ffacd0b85a97d-3b79503e0a1mr4697527f8f.52.1753947708090;
        Thu, 31 Jul 2025 00:41:48 -0700 (PDT)
Received: from [192.168.10.46] (146725694.box.freepro.com. [130.180.211.218])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3b79c3b9386sm1439883f8f.18.2025.07.31.00.41.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 00:41:47 -0700 (PDT)
Message-ID: <858e9dd6-b3a7-4ff7-aaa1-02a140b93de8@linaro.org>
Date: Thu, 31 Jul 2025 09:41:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 19/20] dt: bindings: fsl,vf610-pit: Add compatible for
 s32g2 and s32g3
To: Rob Herring <robh@kernel.org>
Cc: tglx@linutronix.de, S32@nxp.com, linux-kernel@vger.kernel.org,
 ghennadi.procopciuc@oss.nxp.com, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20250730082725.183133-1-daniel.lezcano@linaro.org>
 <20250730082725.183133-20-daniel.lezcano@linaro.org>
 <20250730233547.GA1887794-robh@kernel.org>
Content-Language: en-US
From: Daniel Lezcano <daniel.lezcano@linaro.org>
In-Reply-To: <20250730233547.GA1887794-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


Hi Rob,

On 31/07/2025 01:36, Rob Herring wrote:
> On Wed, Jul 30, 2025 at 10:27:21AM +0200, Daniel Lezcano wrote:
>> The Vybrid Family is a NXP (formerly Freescale) platform having a
>> Programmable Interrupt Timer (PIT). This timer is an IP found also on
>> the NXP Automotive platform S32G2 and S32G3.
>>
>> Add the compatible for those platforms to describe the timer.
>>
>> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
>> ---
>>   .../devicetree/bindings/timer/fsl,vf610-pit.yaml          | 8 ++++++--
>>   1 file changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>> index bee2c35bd0e2..2aac63a58bfd 100644
>> --- a/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>> +++ b/Documentation/devicetree/bindings/timer/fsl,vf610-pit.yaml
>> @@ -15,8 +15,12 @@ description:
>>   
>>   properties:
>>     compatible:
>> -    enum:
>> -      - fsl,vf610-pit
>> +    oneOf:
>> +      - const: fsl,vf610-pit
>> +      - const: nxp,s32g2-pit
> 
> These 2 can be a single enum. Otherwise,

Do you mean this ?

    enum:
      - fsl,vf610-pit
      - nxp,s32g2-pit

> Acked-by: Rob Herring (Arm) <robh@kernel.org>

Thanks for the review

>> +      - items:
>> +          - const: nxp,s32g3-pit
>> +          - const: nxp,s32g2-pit
>>   
>>     reg:
>>       maxItems: 1
>> -- 
>> 2.43.0
>>


-- 
<http://www.linaro.org/> Linaro.org │ Open source software for ARM SoCs

Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
<http://twitter.com/#!/linaroorg> Twitter |
<http://www.linaro.org/linaro-blog/> Blog

