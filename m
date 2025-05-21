Return-Path: <devicetree+bounces-179267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E08F7ABF600
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:23:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7EF303BDB50
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:23:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38BA1279797;
	Wed, 21 May 2025 13:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="lqS5gWCU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF97268689
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:23:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747833802; cv=none; b=jC1wer/qbDaapgChPIUaDc+KkIbM/wOcOYXuC2YG22ryWqX1eUmkgn8WtPVD5AgKuX+fYXpNmcoOYyA05nSnGtA/jANIkk3VSR2xWByhbct7QKY+L1vfiqT79+OQUMNnPXieAQdy3mAwLbF/RptDe3QnKnDdUOlqbXyFQ10RCLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747833802; c=relaxed/simple;
	bh=w73AQw8+g5fBpedRVPUGGRopTEwJA46061csugvI/zo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qZ2SUELK6xHdbwBkrKiz12UKJRi+kwHqRl8QU7zl7FmU3Xq9+n+qKSRK+TFsbWj8hyDq+rXPlJ7fHDH38/ix/wLOu/MFj7ad0WKgaSTwzGyb8vkEvEPswSSJi5EZcM3jI9beDpc1E5RD35iNUVwRhHNRJ7pC2PwsAX67jMULC9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=lqS5gWCU; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3feaedb39e9so2375800b6e.1
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:23:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747833797; x=1748438597; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=73+Ub5D7zbTT7WbMLp31ncO7kWmhvFAqTPjsH0ZsZhs=;
        b=lqS5gWCUR4SPY9ewYeFIUWBdlTIFTKDNqHLML7XSuNWvilvicm29/SevLvdA7rPT/v
         /o2OIM2fTYfIYmqRkhHgICFHkKzk9ho+Hqzbqrcg0+zvx7ws3z/fVY06kfWFqJ4lfEef
         tyqeGx+qF2u10PgiGo72FzrcubSnhuzw2C9E9xh5XjkNR55z/6+NUMGha8ihdpteGHLB
         Q6aEj/UTi9mqop2itFHRJt6jMr8GuigOFgHfrGnUimRYB38kP9lhoGyhEm4iksDuC9Ql
         Bz3H4MxvnYUnpiPCjHyNKJ5uYVhRX55osI+N2whlZLToTW7PNIocZaesSR9h7Ha+9+MX
         zhBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833797; x=1748438597;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=73+Ub5D7zbTT7WbMLp31ncO7kWmhvFAqTPjsH0ZsZhs=;
        b=d2vD23iGGCvuw+WllAV97q2kLYMSCh4CuZkb/6qNdcKYrHDthiUbAkMi/6MF+gH0wS
         fqToLbHRh8ht/c6NuSkiQOlMVt5lhtRCYaVXVZkd+nUuPT46sboeIsaDPKw2sNWtYdNl
         5Z4ubhqukLvnXv+fR0eNAgIINsSFNP2AJ37s9o2erfZERckqDYlbhLblclZfdRSw9Wxu
         RvPJNJs+LW8gxzxqByMVnUrpzedITwp6R1wn2ldyRednHvJRYItVjl+E/FNd/BXv3bxn
         v4Nj+ClWZnEDsbRhMdjpRKgcEjXlLPTACSf5RVpzdP+heW1nEK0NpiSh7x+/Ndojeann
         m/nQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8p94oqiW+ijNgdCY489jPb8g0yoSBh6wF6zQPOEuRltLHZxV6L9WNsimqR7c7iUdPUMPOlG3UB/Ms@vger.kernel.org
X-Gm-Message-State: AOJu0YztUnTsiBz4c4GG7oRLmDb0fcCNw0B60Zfa7ycSDROf+RVkprmC
	u/QB9atLu1/61GcEmCshxunbLRMryjjWewSJPcScitGlERZeoDl8f1lxPTftXSedaFU=
X-Gm-Gg: ASbGnctcs1r2on4m0bBzkon7rJiWGRQDMP9IxXBFKDNmEtk5dToBWwVM46l2HlLv0fU
	hYzfwKSaVlwkaIdbPPaWsJtX2ZxNb2bEaAUwbWymAqj3QPmSB20Q0Na3larel44PLZfk96XGGVv
	YIbZ6IjPGRcR+tyUVaORhZuQtPKn7sFwOr+u6uqgw8bhCz1IzySjZHRtq5yLVgfaPcL3K6IQLiR
	exNCmncHUGDD9uiENxDR57uQUzGGN5mgY8uYf2Qzy+TIZUVsAhiIsDxuSNZFUqJap2POEgLccHl
	c9RYcph5M9uYX/XLiwe5jOBIX+HDXkB76p5yJLv1QXRuJ7LeAVWOL8spIk+8mwqgAntIRZVn9RZ
	l50AyXpiAwMJCovTR0+VTVepzSg==
X-Google-Smtp-Source: AGHT+IHvmT2xe5UfsGuH7VhuaUgi4gdIlcSV03RlKzpEU+TwayEelqHe5C4jtIcDiTOXtQ/wc9WNfw==
X-Received: by 2002:a05:6808:338b:b0:403:3521:2475 with SMTP id 5614622812f47-404da826d65mr13000543b6e.37.1747833797424;
        Wed, 21 May 2025 06:23:17 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff? ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-404d98060ecsm2154491b6e.27.2025.05.21.06.23.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:23:16 -0700 (PDT)
Message-ID: <dc9c370c-e1e7-4ef9-8738-e6ac8887ee61@baylibre.com>
Date: Wed, 21 May 2025 08:23:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pwm: axi-pwmgen: add support for external clock
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
 <20250520-pwm-axi-pwmgen-add-external-clock-v1-3-6cd63cc001c8@baylibre.com>
 <20250521-nostalgic-pretty-hedgehog-d08a77@kuoka>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250521-nostalgic-pretty-hedgehog-d08a77@kuoka>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/21/25 5:10 AM, Krzysztof Kozlowski wrote:
> On Tue, May 20, 2025 at 04:00:46PM GMT, David Lechner wrote:
>> Add support for external clock to the AXI PWM generator driver.
>>
>> In most cases, there is a separate external clock that drives the PWM
>> output separate from the peripheral clock. This allows enabling both
>> clocks.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>  drivers/pwm/pwm-axi-pwmgen.c | 23 ++++++++++++++++++++---
>>  1 file changed, 20 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/pwm/pwm-axi-pwmgen.c b/drivers/pwm/pwm-axi-pwmgen.c
>> index 4337c8f5acf055fc87dc134f2a70b99b0cb5ede6..67992a7561ec0440b1c1fa327f844a0602872771 100644
>> --- a/drivers/pwm/pwm-axi-pwmgen.c
>> +++ b/drivers/pwm/pwm-axi-pwmgen.c
>> @@ -280,9 +280,26 @@ static int axi_pwmgen_probe(struct platform_device *pdev)
>>  	ddata = pwmchip_get_drvdata(chip);
>>  	ddata->regmap = regmap;
>>  
>> -	clk = devm_clk_get_enabled(dev, NULL);
>> -	if (IS_ERR(clk))
>> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to get clock\n");
>> +	/* When clock-names is present, there is a separate ext clock. */
>> +	if (device_property_present(dev, "clock-names")) {
> 
> No. List is ordered, you do not need such dance at all.

I should have added more to the comment here. This is also needed for
backwards compatibility where only what should be the "ext" clock is
given as clocks = <&spi_clk>; and the AXI clock was missing.

> 
>> +		struct clk *axi_clk;
>> +
>> +		axi_clk = devm_clk_get_enabled(dev, "axi");
>> +		if (IS_ERR(axi_clk))
>> +			return dev_err_probe(dev, PTR_ERR(axi_clk),
>> +					     "failed to get axi clock\n");
>> +
>> +		clk = devm_clk_get_enabled(dev, "ext");
> 
> So that's messing the order, which confirms my question from the
> binding.
> 
> No. List has a strict order, you cannot change it just because you want
> to add optional clock.
> 
> Best regards,
> Krzysztof
> 


