Return-Path: <devicetree+bounces-236112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A9EBDC4002F
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 29FE934CD42
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:02:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3381422538F;
	Fri,  7 Nov 2025 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AHA6WFLk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com [209.85.208.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8E9686331
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762520553; cv=none; b=Od96g/W4VXt3ptFPLSnZhnFlb6KukdQ/z0yIH2MHndLebwhPMX4o5ndVhf7FyH9ms2jjs7U8eCy3DXGdZEG3SsJh4obLpAmzQ3PvV2ko1FZWO4WWoqMz8uYO4pnCTbuAVQAq+ZTc+xROt4KcFIw/Qik62UTt4H3DDRh3C5Nb4Og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762520553; c=relaxed/simple;
	bh=RWbnMrrAIlsvnMR1DpeQrQGFqQEIvhGbUJqsuBG3ylg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fefmxE6+abewn724QFK7EFnhHy413yRPSaKjnvW8NRHzHHAGNuKgeyt8cN7nnwbvzxa3BwzLUvYUFmN2T7PwXmnA0WdQUobuLPZK4fqEy8x51o66RZ0z0A95ILQe2WU06cjmsbd2y8m+PojQ5VNl4paa1Wa5BM3Nf2I5MrLEsaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AHA6WFLk; arc=none smtp.client-ip=209.85.208.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f65.google.com with SMTP id 4fb4d7f45d1cf-64075080480so111138a12.0
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762520548; x=1763125348; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PE9M74gjR6YWPM6OBdayRitvRYrlt7L363Fv4hQdLN4=;
        b=AHA6WFLkt0rL+DWWjS/KZL6CP5LaS5G07Xa0CupO/Nib1Jn2Sjoooe6dP47PSnjNtN
         HGrTs/0XqKuDwBz+gWXrrCoS5JKz3QI9YY94/k4FFZSZJq4J5mIVQXRFym0mU3YENMUp
         MywHzGl065xpzLVWlSdSRKKq7L7T9xNW1nz2NAU7QugmUaRZM8eUmiwFmV15EqVHrnA4
         gaHYCoK0CGJ4vKjXrrjDtQbJEfiCBGmBJwjOO1XA4ROXExvoHWBtMst/mGv88NjMRhBy
         bhc/qReYQ4AF9gylbC7wkknWXqOTaXzH/I2tjL6LjGU1kv9kj7PT+Q1MdREFbZpy60uJ
         EKBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762520548; x=1763125348;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PE9M74gjR6YWPM6OBdayRitvRYrlt7L363Fv4hQdLN4=;
        b=jmSIRuBqSkF/Eio/pKUvKeZ4FgvKOZVlwb7yALx4HRkJS3fMAI+0ei+W9DyelzbQMl
         lc7dIkuyO0rMcQx5H0OKZXiaT6Vx6rdTmE+fLKzU/wv464AozZqn7LHSqwsttG2eG8Ul
         r1gU130udhs9d7enqeu0a2o3sYXXgmbg9t1LSlTLLtzx6bS+dgMVNgmoD0V0wlhV8dwg
         JTYV6yJDvMsW9uSBFneLhsFGa0vXXcjEr4/xuy7av8ykTMfkHTOvRgDWoLzPKKgVK3C7
         MvDXZ+Wz265pq2s/1vV08edSHttRlHva7cje87TQAQN3LNVOBujpFNsqvF2Ea8lS+TlI
         zbNw==
X-Forwarded-Encrypted: i=1; AJvYcCU38nMsxukcgVEufySMr74VeMXbCH4mbdwYMdHhEKBNCL6fjdHy9s/S/0bdCH6P/d9fah5VoVcjtAK/@vger.kernel.org
X-Gm-Message-State: AOJu0YyI8G4wyX1AV39ubFIiBRPfbSClOrnCSI0fELO0sM4dUkhMY8yG
	wDF2kiE4rDp/lB3PA0WwKiI8d+G6K9GL1dkxsk+zqGV58jAeZhy1Uy3X54FwqkyVte4=
X-Gm-Gg: ASbGncsRo1JSzCWQ5IJ6Az9BanYb4Bl9w2PPVD3svjEHnengXDKU0HX71iT3mkS+R+2
	hsuuaqDX+frfsMwX3Syu+z72ETQM5dqK7GiVCFTHzGqoHpZit+3On+9KBajCO4JIFUtbseuPVTd
	w2oSV3dXv6OfiKlKdlcYU5fuaL45bw27KrL1nooGv/LEkWORdZBQKpHTH+HcEGNecHHrSptlWl+
	50xOofkda2Kg6j2q0+UhNcsyNFzcOZLqZ/6jDtQvbrz6vM2r0J48hP6P0H623aQtd/dTpDzkIZI
	8Qru8Vv7c5atAlrWg5CWEl8eFCl1NWQqbmmbcM/qcjX1uvwHqP3AGRueq71H24WI4iFBF+QPjTh
	3OQgy1k5eUCNS376AWzXb0DmuC1SlAbdUj2rrioPH95Uqol01EkvWfVC3ugKP25DaUir0qGU8zl
	LeZGoK3574M2Xo+Wwkvf1aetOFsOV8Px+PHIgxSaC0
X-Google-Smtp-Source: AGHT+IGvOkFmL9EcPyObe9yuMNg94MtnF1afJg5pKx00iOvgmw3YV5QBvX5stY8cYRN0jT7sU7HliQ==
X-Received: by 2002:a17:906:7308:b0:b70:4377:4d29 with SMTP id a640c23a62f3a-b72c085dac9mr164911966b.2.1762520547933;
        Fri, 07 Nov 2025 05:02:27 -0800 (PST)
Received: from [172.20.148.107] ([87.213.113.147])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf97d16esm250406366b.35.2025.11.07.05.02.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Nov 2025 05:02:27 -0800 (PST)
Message-ID: <d56e719a-4cb3-4dd2-b241-29a1ada756d8@linaro.org>
Date: Fri, 7 Nov 2025 15:02:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: media: i2c: Add Samsung S5KJN1 image
 sensor
Content-Language: ru-RU
To: Luca Weiss <luca.weiss@fairphone.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Hans Verkuil <hverkuil@kernel.org>, Hans de Goede <hansg@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20251023025356.2421327-1-vladimir.zapolskiy@linaro.org>
 <20251023025356.2421327-2-vladimir.zapolskiy@linaro.org>
 <DDZU2RL00UD8.39GS3LN0SW7YA@fairphone.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <DDZU2RL00UD8.39GS3LN0SW7YA@fairphone.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Luca!

On 11/4/25 12:20, Luca Weiss wrote:
> Hi Vladimir,
> 
> On Thu Oct 23, 2025 at 4:53 AM CEST, Vladimir Zapolskiy wrote:
>> Add device tree bindings documentation for Samsung S5KJN1 image sensor.
> 
> Awesome that you're working on upstreaming support for this sensor!
> 
> This sensor is used for the front camera on the Fairphone 5 so I'll give
> it a try sometime soon. So far I've been using my own version of the
> driver in my tree.
> 

I haven't seen it, for the initialization sequence I used Android drivers
from github.

> Some comments below.
> 
>>
>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> ---
>>   .../bindings/media/i2c/samsung,s5kjn1.yaml    | 103 ++++++++++++++++++
>>   1 file changed, 103 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>> new file mode 100644
>> index 000000000000..f0cc0209b5f0
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/i2c/samsung,s5kjn1.yaml
>> @@ -0,0 +1,103 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/i2c/samsung,s5kjn1.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Samsung S5KJN1 Image Sensor
>> +
>> +description:
>> +  Samsung S5KJN1 (ISOCELL JN1) image sensor is a 50MP image sensor.
>> +  The sensor is controlled over a serial camera control bus protocol,
>> +  the widest supported output image frame size is 8160x6144 at 10 frames
>> +  per second rate, data output format is RAW10 transferred over 4-lane
>> +  MIPI D-PHY interface.
>> +
>> +maintainers:
>> +  - Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>> +
>> +allOf:
>> +  - $ref: /schemas/media/video-interface-devices.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    const: samsung,s5kjn1
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    description: MCLK supply clock.
>> +    maxItems: 1
>> +
>> +  reset-gpios:
>> +    description: Active low GPIO connected to RESET pad of the sensor.
>> +    maxItems: 1
>> +
>> +  afvdd-supply:
>> +    description: Autofocus voltage supply, 2.8-3.0 volts.
> 
> This is not part of the S5KJN1 though? If you have a VCM for the lens of
> the S5KJN1, this is a separate DT node?
> 

Autofocus supply is not in the list of sensor IC supplies, however
1) this is a supply line of sensor modules,
2) a sensor could have controls its controls over autofocus,

so, a VCM for the lens is the sensor.

Some time ago I discussed this particular question on the #linux-media in
connection to another Samsung and Omnivision sensors, and I got a response
that it's favourable to add an autofocus regulator control under a sensor
device tree node.

>> +
>> +  avdd-supply:
>> +    description: Analogue voltage supply, 2.8 volts.
> 
> The datasheet calls this VDDA
> 

I don't have a datasheet, and it should be updated accordingly, thank you.

>> +
>> +  dovdd-supply:
>> +    description: Digital I/O voltage supply, 1.8 volts.
> 
> The datasheet calls this VDDIO
> 

Same as above.

>> +
>> +  dvdd-supply:
>> +    description: Digital core voltage supply, 1.05 volts.
> 
> The datasheet calls this VDDD
> 

Same as above, thank you so much!

-- 
Best wishes,
Vladimir

