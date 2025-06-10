Return-Path: <devicetree+bounces-184362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CAA9AD3D49
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 17:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 235B33AA477
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47F2024679A;
	Tue, 10 Jun 2025 15:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="y9z1JJwC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24807247289
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749568960; cv=none; b=H/6tYWjYwPPFhoyt8KnGLlKSGK8V+RHmhLnZr3FiEsSwWa7hs1vMY/PcvFJuhaPbr0LgdyHfFsj99ujiRZfH0FLzRRWDsZ3PPBSoSU5naK5T31xYQ4sgwjZsmn2UTCBBSc2MR7jFIu4peTg2qm0UJPFzFbObKe8L803rh01RR7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749568960; c=relaxed/simple;
	bh=hchnrIDBJ/edKu4zAm3y3cqjcujUW60/YPHrwJKD/zQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bm4jXqOZdpeFqG6fgUN0v1apEMtb2p3K3XZmpnU27UZVk/RDz0XlEKX6TzJfeWRcBTsU3ulhQ7UXLuIC7O6GH9XSVxf8dZQpZPjxLV838afTHWlLGx9/FMjobuSCMeVgoObYzaaoz1x9kATWv9BhudgeewdxCLaToStRvXlObLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=y9z1JJwC; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-73a01a7bee7so124927a34.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 08:22:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749568957; x=1750173757; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WgqBcp898rtX5fY8nnMSJASni1KQNJz9k+MA5T3aUho=;
        b=y9z1JJwC5WJwde8QMX/hl1Q0JYszJMx8ANeOgfamkQXUvKtvP+ldu2qs+TNvxPWST2
         MthGnz2ecGVpoQv45pT9FUSxB1Xgh/AQVh1819B+why9An7DxWfs6N6k91GUV+nc/bXx
         cRvN9GactFc2dSIgVzkxAYM6wsJduwFVhJ1E76GUIeUP27HtpDfYlMjTFriis9GN/beV
         2jcqT4a7JBU3MY3rTSJqX8JpqWoKmRxh7nqE0qHtqof/F1W8Zf9hbhwAkYNwEfyEesUe
         Z0vVTPPfkyeK7zrAXtT95BWCT7iyPn14W3gEw0JP+bHOg97tC9SWr2WuejIJSgFKf2tb
         RU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749568957; x=1750173757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WgqBcp898rtX5fY8nnMSJASni1KQNJz9k+MA5T3aUho=;
        b=DMJyfY+xPez0+ZOQEXlNTKXxNWAuGNVEoWNK7C9otZTYyvSr7HsBq8fL4iW0+nc1Co
         /KrOMjoolTzfXBUKyfkvGtnNMZO/nJ/KQucBg/iZ80GZEMd/9ev+CFU+MTjELQ7IS7X4
         KpnMt7KLUe9zGc9AHG1c8LRYzbfIyDZ4DIXFyTaFHfs9Gs0h4HrZIEpyLwVgqDHhOxAi
         tBpjtTKhcqmpWqjodod5af2xcSmnJUJ/BHvRrqmilF/fz6+0CpM4SVMeKCfWfrBJkYqA
         vl9ihf422w7lXA+I0ftYNL8tGhfbktMIP5tmfLvPgaBg+VmjQtA6vglC0YVIbVjmYWUD
         6mkg==
X-Forwarded-Encrypted: i=1; AJvYcCVfTT8rQTqPF3OkJ5f4ZNUcJhD6RtZzt9HqHDqAT2LvrIvPON9KvkkQt74P15P1kcOcc170uY4r3ixj@vger.kernel.org
X-Gm-Message-State: AOJu0YyzjQipzgoZ508LHL9MIDlqfqL7eARENaCZgifJTrC/BpmSrxJq
	Gg8Ujad9Stq2yqO8bLFMRLlaIy6pnqp1JeME2MLkJ4XthzhPDCBWcn8a7LkigR8gXgQ=
X-Gm-Gg: ASbGncu0gngz55eTcl3gP/58lut+MiHqLV8jdt23leXFn7blX1tIakqIfqabE76L7d1
	BadiYDjXUMnxA1lb8K9+8GWKwo8v4uBRSx/WyZuTysvYzQGfqZuyP5bv7Qz5otlIIo5/+3TWkoD
	XmWbRGQiUztZ8+jJdszO9ogsknL975yZztzUmPcgA7l13B7GunTN3UmeFOOEL+ew3cCpGiLgJT6
	clNcFrwulswUK33AcUXNay6P5sNKyw6og0F5X1F33ue5M9dGcNNN++LRhMoBjudp4llMzSi1r1z
	C5MVgl8T+H3UV+yuS8ppgcHn2H8BkjKy0RKrgGcZNDnICIZAONT1aim7bcDkd7NTRotZti2osMf
	phgkJ0TuqtSVYRDmzdMWcr5RS9rVq9HL5IlUM
X-Google-Smtp-Source: AGHT+IHxpTUjNC23qJnebWthwoWgqhpyFQhhpZJFRkAkLQNVpExAu309GNzss51U4GPATJs9EjhXDg==
X-Received: by 2002:a05:6808:3a05:b0:408:e711:9aa with SMTP id 5614622812f47-40a56b7e0e3mr2114950b6e.37.1749568957142;
        Tue, 10 Jun 2025 08:22:37 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a49:6255:d8db:1aea? ([2600:8803:e7e4:1d00:a49:6255:d8db:1aea])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7388a08979csm2044314a34.62.2025.06.10.08.22.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 08:22:36 -0700 (PDT)
Message-ID: <db78ac20-9b58-49d1-ba38-cc269eaff254@baylibre.com>
Date: Tue, 10 Jun 2025 10:22:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: adc: adding support for PAC194X
To: Marius.Cristea@microchip.com, jic23@kernel.org, nuno.sa@analog.com,
 andy@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 broonie@kernel.org, devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250606093929.100118-1-marius.cristea@microchip.com>
 <20250606093929.100118-2-marius.cristea@microchip.com>
 <92c36ad9-5f8e-4ba7-9af4-9cb640f0aa5c@baylibre.com>
 <d364524bad53f5c665071287f55a96e28dc9b231.camel@microchip.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <d364524bad53f5c665071287f55a96e28dc9b231.camel@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/10/25 9:46 AM, Marius.Cristea@microchip.com wrote:
> Hi David,
> 
>    Thank you for the feedback. Please see my comments below...
> 

...

>>> +  interrupts:
>>> +    maxItems: 2
>>> +
>>> +  interrupt-names:
>>
>> Needs minItems: 1 if we want to allow a single named interrupt.
>>
> the driver as it is right now it doesn't support any interrupt. I was
> thinking to add them here, just in case there will be a request to be
> added later.
> 

Making the bindings complete even if the driver isn't using it
yet is the right thing to do. :-)

I meant allowing just a single interrupt wired up though. So it
doesn't matter how the driver would handle it.

> 
>>> +    description:
>>> +      alert1 indicates a HIGH or LOW limit was exceeded.
>>> +      alert2 indicates a THERM limit was exceeded.
>>> +    items:
>>> +      - const: alert1
>>> +      - const: alert2
>>> +
>>

...

>>> +
>>> +      microchip,vbus-half-range:
>>> +        $ref: /schemas/types.yaml#/definitions/flag
>>> +        description: |
>>> +          In order to increase measurement resolution and keeping
>>> the same
>>> +          number the of bits the device has a configurable VBUS
>>> full range scale
>>> +          (FSR). The range should be set by hardware design and it
>>> should not be
>>> +          changed during runtime. The bipolar capability for VBUS
>>> enables
>>> +          accurate offset measurement and correction.
>>> +          The VBUS could be configured into the following full
>>> scale range:
>>> +            - VBUS has unipolar 0V to 32V FSR (default) for
>>> PAC195X or 0V to 9V
>>> +              (default) for PAC194X.
>>> +            - VBUS has bipolar -32V to 32V FSR for PAC195X or -9V
>>> to 9V for
>>> +              PAC194X. The actual range is limited to about -200
>>> mV due to the
>>> +              impact of the ESD structures.
>>> +            - VBUS has bipolar -16V to 16V FSR for PAC195X or -
>>> 4.5V to 4.5V for
>>> +              PAC194X. The actual range is limited to about -200
>>> mV due to the
>>> +              impact of the ESD structures.
>>> +
>>> +      microchip,vbus-bipolar:
>>> +        $ref: /schemas/types.yaml#/definitions/flag
>>> +        description:
>>> +          If provided, the channel is to be used in bipolar mode.
>>> The
>>> +          actual range is limited to about -200 mV due to the
>>> impact of the ESD
>>> +          structures.
>>> +
>>
>> Using Jonathan's suggestion from v2 to just have a single property
>> with 3 different
>> ranges to chose from seems simpler that this. It would only require
>> one property
>> and would be self-documenting. The description could be shortened to
>> just a couple
>> of lines.
> 
> I was thinking to add the range for this property, but it looks (for me
> at least) more complicated from the checking point of view. The driver
> is supporting two family of devices that has, each, 3 different voltage
> range as an input.
> 

Usually, having a consistent binding for the same thing among similar
devices is more important than how easy it is to implement in the driver.

Since this seems to be a common pattern, we could probably justify an
iio_property_match_ranges() helper function that would simplify the
implementation in drivers that would need to use such a property. Then
in each driver it would just be a matter of making a static const array
lookup table of ranges for each device and calling the helper function.


