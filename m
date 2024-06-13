Return-Path: <devicetree+bounces-75451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C8C907474
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 15:58:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0038A1F23D63
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 13:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EF57145326;
	Thu, 13 Jun 2024 13:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nWQeNOir"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94CAF139CFE
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 13:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718287072; cv=none; b=bY93U/MpKIs3IPbe9iQc+9ndLdg28V3rG3qoKI9llRfMwKtqrBAM3N8qWHADOZBPs8ho9dN2hU2tSY8Qk28r47iOtmq/J6K586WR2HY/Ud/g6pldmcnTQk5ECA7W+n9PmEUDuE/4dqe+RGQ9G7NbxEdI837imI8ij4Sx/PlDlNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718287072; c=relaxed/simple;
	bh=GrIGi5Raom3cBopM6onz7enFC19BTnxh+2SvPTD5iMQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rbRdd3Mm/rdvgrpR2ZjdckA//w188E/SDgWIFaUOsGu60QFNezyjeaG/3oYOoSGUThNSSVbv2DqJQjZDWlMRAVdqztNp/MZawPnobo5TKlZwj6QW0LwAfughkBzFVCn7UGpTMueMpJhzrqlg0HTg30Rk6JoBvuu31KA+Zlj6IDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nWQeNOir; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-3c9cc681ee4so491300b6e.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 06:57:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718287069; x=1718891869; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yAF//HO0SkiGruVZH/oa4D5CEEiCpOQwdcWhLFwGOe4=;
        b=nWQeNOirVscLswJy1r0TNhO6laI+1c2Mq2JR2ZUjoyZm61LK44eYujABKkF47ZifkN
         h0Dl7dMrKQp8m6ER5oymN4q2RIBkgXCHAnCMrkqlvyFgmNbxeo+ZRwsAOC/NGGPWj/i8
         9C0aMZffQcar89f2mTSTOZ0ucmwJozP72SEUlgzXsUA9nNxQDxIM0OnwksPdBDq7F0aT
         q4NTe3PxzgRrFMFJ60zh56IV+1Mne7pv8ZKEtpeXao3jVVFKbb6ocCMe8eV+sy6X1IsO
         MUPThPVxNozvZFT88bHVNK9xkVXVvxXNgMjqbcq1UjYCWFOM+3j5dmluSgcdgBWWUcGM
         aE/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718287069; x=1718891869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yAF//HO0SkiGruVZH/oa4D5CEEiCpOQwdcWhLFwGOe4=;
        b=cySpF4JHI9Fi6rOztppN9UKiFi+wnTOehmdgJC2QkYyKTvSmnuHsLscNfAcou9fL1z
         oWo7aeM72yfPWARLiX9dSaGrY+Pc+pN906sbgOZ/TLLtEVB5zhGSHmVPVlgdLtdHyRYN
         48SR7hU8DCt8B67rCrjo2SuuCy7eLQ/uvwsjt2Cjeujowb94Ei7ry/ObuECrQ41mZ5y/
         wavAGgEjWJCqW9+ibm5uGei7d5EeXLBt28SGk8BFsusyKgAKlVTBQwLUWHA4EUIcdPW6
         rl6w0E3qG1WlhC0cAISlB22yrvrklqMPsNR/26+1j0xw1ZQ1R7IorWmKoD6Lh+zDRa0b
         wx3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXPFWRcOqj0czqQfkHjVk84eIer9iNy5/exsyHthKAlHBu1Fwz+MwexRQ/VSYb6WXIKdYWx17LWnLF3iBU79GG6IpX3Vr4fYnBRSA==
X-Gm-Message-State: AOJu0Yy2/hqGMHwQlw8kuYnqqnuo59FprCi6TT/HN3BLeCyvpSmvf3IX
	yOUN6667yS2r1N6dYV1IjWLtyAgZfBAh3r3Dc1n/pqMtLCxBwiPsJtPOkl7J2tE=
X-Google-Smtp-Source: AGHT+IF6bjcZSnWMyEtkHan92hgo9U9vcd8IIa+fICj/3epkw5ppZ2rEbJOtmgyzeuASqb04o0vNwg==
X-Received: by 2002:a05:6808:d49:b0:3d2:1a26:8a43 with SMTP id 5614622812f47-3d23dfd87d4mr5716375b6e.9.1718287068043;
        Thu, 13 Jun 2024 06:57:48 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d2476e31cbsm194695b6e.50.2024.06.13.06.57.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 06:57:47 -0700 (PDT)
Message-ID: <f765ef30-a777-4dfc-8f93-0f15b46f91ae@baylibre.com>
Date: Thu, 13 Jun 2024 08:57:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: iio: adc: add AD4695 and similar ADCs
To: Krzysztof Kozlowski <krzk@kernel.org>, Jonathan Cameron
 <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
References: <20240612-iio-adc-ad4695-v1-0-6a4ed251fc86@baylibre.com>
 <20240612-iio-adc-ad4695-v1-1-6a4ed251fc86@baylibre.com>
 <94448c2c-e7b2-4191-858c-529b254994f1@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <94448c2c-e7b2-4191-858c-529b254994f1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/13/24 2:11 AM, Krzysztof Kozlowski wrote:
> On 12/06/2024 21:20, David Lechner wrote:
>> Add device tree bindings for AD4695 and similar ADCs.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>  .../devicetree/bindings/iio/adc/adi,ad4695.yaml    | 297 +++++++++++++++++++++
>>  MAINTAINERS                                        |   9 +
>>  2 files changed, 306 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
>> new file mode 100644
>> index 000000000000..8ff5bbbbef9f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/iio/adc/adi,ad4695.yaml
>> @@ -0,0 +1,297 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/iio/adc/adi,ad4695.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Analog Devices Easy Drive Multiplexed SAR Analog to Digital Converters
>> +
>> +maintainers:
>> +  - Michael Hennerich <Michael.Hennerich@analog.com>
>> +  - Nuno Sá <nuno.sa@analog.com>
>> +
>> +description: |
>> +  A family of similar multi-channel analog to digital converters with SPI bus.
>> +
>> +  * https://www.analog.com/en/products/ad4695.html
>> +  * https://www.analog.com/en/products/ad4696.html
>> +  * https://www.analog.com/en/products/ad4697.html
>> +  * https://www.analog.com/en/products/ad4698.html
>> +
>> +$ref: /schemas/spi/spi-peripheral-props.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    oneOf:
>> +      - enum:
>> +          - adi,ad4695
>> +          - adi,ad4697
>> +      # same chips in WLCSP package with more pins
>> +      - items:
>> +          - const: adi,ad4695-wlcsp
> 
> Usually we do not add compatibles for such differences. Programming
> model is the same. Same for all other wlcsp. Unless something differs?

OK, I will drop all of the -wlcsp stuff. It made the .dts validation
catch more stuff, but wasn't being used in the driver because there
really isn't a difference other than some of the pins not being there.

> 
>> +          - const: adi,ad4695
>> +      - items:
>> +          - const: adi,ad4697-wlcsp
>> +          - const: adi,ad4697
>> +      # same chips with higher max sample rate

I suppose one could make the argument that the programming model is
the same on these too, but the maximum sampling frequency does seem
like an important bit of information so that you don't try to set
the conversion trigger rate too high.

>> +      - items:
>> +          - const: adi,ad4696
> 
> Anyway, keep all fallbacked variants in one entry, so enum with const
> fallback.
> 
>> +          - const: adi,ad4695
>> +      - items:
>> +          - const: adi,ad4698
>> +          - const: adi,ad4697
>> +      # same chips with higher max sample rate in WLCSP package
>> +      - items:
>> +          - const: adi,ad4696-wlcsp
>> +          - const: adi,ad4696
> 
> That's wrong. ad4696 is compatible with 4695 as stated before. It is not
> compatible with ad4695-wlcsp.
> 
>> +          - const: adi,ad4695-wlcsp
>> +          - const: adi,ad4695
>> +      - items:
>> +          - const: adi,ad4698-wlcsp
>> +          - const: adi,ad4698
>> +          - const: adi,ad4697-wlcsp
>> +          - const: adi,ad4697
>> +

