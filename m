Return-Path: <devicetree+bounces-172495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3251EAA4E5C
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 16:21:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBBBD5A4ACC
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 14:21:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FEF25C6E8;
	Wed, 30 Apr 2025 14:21:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Mcdb7T1c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 036C27DA93
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 14:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746022892; cv=none; b=cU7taTPv7oQ93vRoRRi0ZFqL7kYSjNyhEKsLkuZ6r37fHFjybKJyNV20ODnbluB6TTTAi+JspJmVRklYfXoJpKdiLrxhyLFSW1NrYZBz3COLwReyTEq2gAZAa2sBvAag2lkoLqkvjoT75MLktcHi/OoJpoPqeU7FOq1pM5Xnpgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746022892; c=relaxed/simple;
	bh=sQ3uGnHXH5pOVC81pZdY1hVXCJqW8kE2I+Llf8pVa9Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KO0pOUTaGYb0gN8FHgS2wLA6Wi7V1EjJq29KWKBamRPs4h0iQJef6fdDlfm14M9kT5piczvO+zMVLDJyB8KSPOGm6VkoMGrYhumgIe8IwzdudR6ZRSmcNbUFTXj08iLDaLwn6fqxQREK83Pkh3JRr+eRZkHP4/hHvp6b6umsRRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Mcdb7T1c; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-60402c94319so3851948eaf.1
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746022890; x=1746627690; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z1J21N20NQgiRAPGKjWxJGQE1CtsIaoc0bg+24VnTew=;
        b=Mcdb7T1cWn1syaEhX00J6XyY1jUP/9i2FcK2VsRDyh/LmWHlBEh66jQuRTcCIWbL9D
         eR0ZUgrweVHwnXPDrXOCGpnQfrufRqhx4N8fdOWHKFoz80qQkj22m7+YNVlYKG2nlf5p
         WyRAszw6eBhW7iHaNLbwbunl2fRBs+hB+lEV0ytBZB95ZUEV3ukAyHgGL5rKWwAuVqrj
         2zC+YHC9HSJwKqvjkKUN/izO+F9x8q0SUe3f8Mflhfrk/igMlVilOG7mo9vOy/fEHnGA
         t9FXYKDM2x8UNdCpD0iHglhn1v05Q1ea3C9KxSEUHBfXsFcyuRW2vZdbsopGqzHeIqCP
         fSxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746022890; x=1746627690;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z1J21N20NQgiRAPGKjWxJGQE1CtsIaoc0bg+24VnTew=;
        b=CoDRpUy49mYeWjg8W44TNovrdKRJlzosBXz7pL0Jt+wu6cE+kDeWZnod0g4TGrTo9g
         Akfn2D4nrJ3OQirDsXnmLxUgUkqY+uoYtExA7DzX1gpbbQpp+2EYMcVFheNzQwwMoxDD
         8fArFpWfgdQx0ut0vClvCQZkZAM0XxTsZCnbnFRX3MxAMhkomIhGMCjU4t13Hl4Fg+N2
         XTUCRKdajep5W6k42PTD5e67GhvSsATpeaHw7z3a8ShZHqfqmSVgzklCGAKzwko4mUuI
         XrHmxS3tV9klWxFoB4tLP8dcHYtf1nFxOwFGX2/G+LUzIRY8xDIVYxFTR5DC7eB5Luen
         C3cw==
X-Forwarded-Encrypted: i=1; AJvYcCVegnroO1cKlf3U+2GXxyxCj4WbG6CaMl83tremvc0laEqTsogXSDLkSzUyIXZx+mPT6B54l0fURrVc@vger.kernel.org
X-Gm-Message-State: AOJu0YzxGnobZaLZT9ONC8dj0YvBQyA+5e+wu0Jd16NG156S1Y/ZxTT4
	HKnuj2vnsYqoGxotiCuxtB/UPFmD6J9QZvqFg33Z/bSzuA2250bGCjeKIVnOriQ=
X-Gm-Gg: ASbGnct5+aZpcpX9t5L5E+MHkxCPmwJ7bhcnzIvK/PXPtAk3Ny5O6yaZ0J/pdgQ89+8
	yXOiRy/YHJ4g/SDTE87Zxh7GeCmLyY2WHZoPTRZ9JAdaqqI+cQfVQEMM8ttV79NYLeXo0/iRVrd
	CK0aKS5JRUYzeZbB4KPpfMzsldbJCWrmPWmsJ2ulle3on3D0T7HrlSHQYeouLo/RHxb1yvnacP8
	RkvzIDLAGQujkD+HFOc+jPpKQoM+0tUHQrzDfFSqdcr8fkggXZXN/8m5V8uJR1fiTBPkdf3X7ji
	cv/IDyKEbaP5feE+uKyKCWrqJxRLAgMkKd1GKcjr/bEm0lBPO+gb6UWdyqNLGtDbS2xn3yevMTj
	1OCXKylJmSj7dKVHnjUu8r1Uj+w==
X-Google-Smtp-Source: AGHT+IHWCsLcDIxL6ytR5QTqeptmdFdVVO+xqRDcmlgk7+/1KWk02aStJmqcNR/mTszyOY6C7kGxXw==
X-Received: by 2002:a05:6820:8c9:b0:606:85ad:881 with SMTP id 006d021491bc7-607d40e2902mr1899866eaf.0.1746022890085;
        Wed, 30 Apr 2025 07:21:30 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-607d8dbd96fsm232384eaf.35.2025.04.30.07.21.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 07:21:29 -0700 (PDT)
Message-ID: <070b269c-c536-49c5-a11d-7e23653613f9@baylibre.com>
Date: Wed, 30 Apr 2025 09:21:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] Documentation: ABI: IIO: add calibphase_delay
 documentation
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Angelo Dureghello <adureghello@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250429-wip-bl-ad7606-calibration-v1-0-eb4d4821b172@baylibre.com>
 <20250429-wip-bl-ad7606-calibration-v1-1-eb4d4821b172@baylibre.com>
 <4645ae3e0c3bb1ada9d4cadce77b64fe5e651596.camel@gmail.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <4645ae3e0c3bb1ada9d4cadce77b64fe5e651596.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 4/30/25 12:40 AM, Nuno Sá wrote:
> On Tue, 2025-04-29 at 15:06 +0200, Angelo Dureghello wrote:
>> From: Angelo Dureghello <adureghello@baylibre.com>
>>
>> Add new IIO calibphase_delay documentation.
>>
>> The delay suffix is added to specify that the phase, generally in
>> radiants, is for this case (needed from ad7606) in nanoseconds.
>>
>> Signed-off-by: Angelo Dureghello <adureghello@baylibre.com>
>> ---
>>  Documentation/ABI/testing/sysfs-bus-iio | 20 ++++++++++++++++++++
>>  1 file changed, 20 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-iio
>> b/Documentation/ABI/testing/sysfs-bus-iio
>> index
>> 33c09c4ac60a4feec82308461643134f5ba84b66..f233190d48a34882b7fed2d961141cc6bec3ddb2
>> 100644
>> --- a/Documentation/ABI/testing/sysfs-bus-iio
>> +++ b/Documentation/ABI/testing/sysfs-bus-iio
>> @@ -559,6 +559,26 @@ Description:
>>  		- a small discrete set of values like "0 2 4 6 8"
>>  		- a range specified as "[min step max]"
>>  
>> +What:		/sys/bus/iio/devices/iio:deviceX/in_voltageY_calibphase_delay
> 
> Not sure if I'm too convinced on the _delay suffix
> 
Phase is measured in radians, not seconds, so it seems wrong to use it here.

https://en.wikipedia.org/wiki/Phase_(waves)

And the delay here is with respect to individual samples in a simultaneous
conversion without regard for a sampling frequency, so I don't see how we could
convert the time to radians in any meaningful way.


