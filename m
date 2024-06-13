Return-Path: <devicetree+bounces-75467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F772907554
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92ABF1C21DC3
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 14:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFE63145B12;
	Thu, 13 Jun 2024 14:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RQESr830"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E20D61422B4
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718289564; cv=none; b=iGlGFeIQp7kFr0MhlTUR7Ccl4eBKMIbpASGGo9ipuqPyj4KKFbRDTJUh8bg83FpeD+9uw5zn2S1w/Xvtevw8dzfPKyovQQ3vDEEW02CzGN5YIzCh9fPco78q2gGgZqDpKs50gAMHFZVgIBhdlAUlDLWmvbihBAEZntOL2mUUSIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718289564; c=relaxed/simple;
	bh=TGYwQdD0hydwVFCQEXTmPl0v48jG53So9o6AmWcYSLY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kzVdZdwK+9GM4qe2HK2IxzTc6HL+ULKUP5YMRGztGnqINhYZH/wnckLYB1hXkw7Ba1VlOq9zZD/ePegu5W6Sg9A0Qs9uGxL8Lf9jFUVcvFqqCqMTwTe7158+cQEfaV6v9KD2H/Y40oaFjKs2BhbeQZhqIIrIOIIxDoJ7Gm8/b3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RQESr830; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6f9b4d69f53so596743a34.0
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 07:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718289562; x=1718894362; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0N4XXQrV3Vj1p76CTTLMvxUKN2Z68IrEsu0illIw4/U=;
        b=RQESr830Y121jVe87be5ALDhgW/cxS+UIt8XUXNxzL7HJaprA4+itpz5lDxjZ7uUYu
         KSfdHKxslikVYRaMqEApdvn3AnEqww8FJIH88pHxS/hp2T/6Ra5o0/3jdIuELwi4VpOK
         TN/vJweO7iMO0nEegMFKVvfKaa+XYz3cHEkGgvVOf8Pf1E4/oi2Kgn8qwMRagbxWEHnr
         AlNfKlS6D/tCSUzMmQ8kfD4wLQsZIO0tt0hbberkbt0rV2wdLcfhCsMqdD2y9x0KE2vd
         FjJkrzzrEkgYQwD17YqnahGAc5010Ibz+jTJu+4fMCe01c1ZPWDyka1wiEvKEPagxzS3
         AhKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718289562; x=1718894362;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0N4XXQrV3Vj1p76CTTLMvxUKN2Z68IrEsu0illIw4/U=;
        b=KOs6tAyakwrSromIaJbyFxQ2KAdMBB3LJI6HJIx0UhL+6Q8zBTwQT1SOr+Hf1sSL2g
         ZOXxHGpPYjrUPnVvfwGgzza55aA0FhpXowmKyigcGtoDGO8ybNHvY6pbSVD66Gz3NEeL
         iNEst5G+C0BWxH9Nuof0jh4EVd+sD9Yew9Dpk9lD1xX/js6nRoU7Vo/BfKSTyVW7IEbc
         v6l7hZF8KBJ3ZybmZhKOHf38LrsKB4Fo/q+hX5h6SjGz7m8YutRoJSfUa4bCT9MqWstX
         6m9a4hEmBy0LAhrHU8iKOu2DTs08uEBoz7uPb2MifpLGI6flXpoKgvYB49owpkGS2neg
         K1NA==
X-Forwarded-Encrypted: i=1; AJvYcCWWRbKolUpGIkDLDIYlaSIf5+IXNlvkqZkH0rYcQ4n7phgikPsu3VNh7Lj23Kal2+Wj0rQN/YsECLCbkXIilZcuwDCbWbYKyL+22w==
X-Gm-Message-State: AOJu0YwftsVFj2pP4+FuIdxIJauVggDl+PRZ0G9i3+Us7GZRMaxr5f5r
	HO0ow79n/SXxtGSjJSqU/utn/COVvk8CrjMdsWZz703DrXq/cbrs0goLIqZ55AA=
X-Google-Smtp-Source: AGHT+IG95TqU5M84bOISdVcjzil531JdHikT5kRxpc3XBVOTexFZ4lLkN7JG2P7LUMplLqCWy/iU6w==
X-Received: by 2002:a05:6830:603:b0:6f9:c46e:af75 with SMTP id 46e09a7af769-6fa1bf726a8mr4806080a34.11.1718289562014;
        Thu, 13 Jun 2024 07:39:22 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6fb5b8651d7sm236097a34.81.2024.06.13.07.39.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 07:39:21 -0700 (PDT)
Message-ID: <b6b52b1e-847b-44ca-87f9-095a78164771@baylibre.com>
Date: Thu, 13 Jun 2024 09:39:20 -0500
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
 <f765ef30-a777-4dfc-8f93-0f15b46f91ae@baylibre.com>
 <e09fecf4-bde2-4feb-8312-22c530c6a960@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <e09fecf4-bde2-4feb-8312-22c530c6a960@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/13/24 9:18 AM, Krzysztof Kozlowski wrote:
> On 13/06/2024 15:57, David Lechner wrote:
>>
>>>
>>>> +          - const: adi,ad4695
>>>> +      - items:
>>>> +          - const: adi,ad4697-wlcsp
>>>> +          - const: adi,ad4697
>>>> +      # same chips with higher max sample rate
>>
>> I suppose one could make the argument that the programming model is
>> the same on these too, but the maximum sampling frequency does seem
>> like an important bit of information so that you don't try to set
>> the conversion trigger rate too high.
>>
> 
> which property is that? I don't see differences in the driver, so I
> don't get how these wlcsp compatibles allow you to control value of
> conversion trigger.

This comment is unrelated to the package type (WLCSP or LFCSP).

What I mean is that e.g. AD4695 and AD4696 are virtually identical
other than the maximum allowable sample rate (500 kSPS or 1 MSPS).

So my thinking was that it would make sense to have:

	compatible = "ad4695";

for the lower sample rate chip and

	compatible = "ad4696", "ad4695";

for the higher sample rate chip since ad4696 can do everything
that ad4695 does plus a bit more.

We haven't implemented buffered reads in the driver yet, so there
isn't anything currently to be seen there. But when we do, we probably
want to limit the allowable value for the sampling_frequency attribute
based on which version of the chip is present. (I would like to get
Jonathan's opinion of if this is something we actually need to do
or not.)


