Return-Path: <devicetree+bounces-179265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F574ABF5DE
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D12D93BACC7
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 896D8267AF6;
	Wed, 21 May 2025 13:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uNQGANQn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3845262FFE
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747833597; cv=none; b=MA/ojD802p2StI1UE2bcXoApT0UFpGoHXOwiiv+wRlqWGCTwsFBwj4WbUValsU1m3rWuU4j+s0dgtD9X43YOFCqS7bwAaCeZpQBu0IHxKOWPWVyQDRYLGjlW9NNfLhipGx5heODgZTZQpArl3VAhoTrETT6D8D/15ujl0pe0j1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747833597; c=relaxed/simple;
	bh=zxb4XuRb5OL7RbkFWFx6WphiL7nedhvIK2jhu21lh1E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rhemizBRX2SPp2yChUeZ8M8EmriTv15C6siXPbCbqPikIM9IXfFz+wK83BlA9Ita/Dn+gjYCuiHD4cEyjTEe3rBW6tjYfbgTjgY4Gm+Rc/vWG/OdJTYrfWvTN2pnBCZkA6oU2/LIX0or+B+fHuRtvLMFSaP3hXEEBCYa+SySC6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=uNQGANQn; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-605f7d3215cso3641063eaf.0
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:19:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747833595; x=1748438395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vqHAwKXGDB470rizfijZUWFboiXZOZHB3mYiVWRIm+0=;
        b=uNQGANQn+VcDbM9bqffpTG/ZuvCWHNtmKHJ8PdQ4CXUf1++5OoJ6C4ce1a0RRZHgZw
         URkZ+y1nud19ploFIgfyTh+52NsP/YKRS7rKpTF7AiEqG0YBRSBfZ2H5QRWZgPCREfrN
         6925zM+OSo9zLJ2dz1ZLm9ReFhxDorM55vw75nBdDMi/RW+Zmgs/D4ogaXVZUoXYZsf3
         NkIRiR/r5FKmNLXOKVRXL2rmtHMwjQqi7B4HuUftB1xxYTvbBEE2ic7Iv8kweIQEPxHl
         Q2J8lf/w7azDV6v45/cEo2/oqRaGIg12FJi3hgJYQPqh/yqyj6/Cet/+XZUygoqe+7fo
         51Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747833595; x=1748438395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vqHAwKXGDB470rizfijZUWFboiXZOZHB3mYiVWRIm+0=;
        b=h/6SMLpp4OyMk0YAeCH7QQVeMkKfHF1H+bk9/qMFGMHQnSh2e0PKfvnoQtsamKYb6g
         BEi7u1XtA9KvqCG4Z+coQ4V5BnvouIsp4DAMnXOvUHlpt8c2owIIJOhOKiFqNDySPJcd
         Gdb8322nHq5gcK4ehMm1TRi0I7feE/oS/K+MPk1Qxiiu482JAwngxTSv0aUB97usmPiG
         ewZ7ShT1KXCz9mXfEM/AKXxLvcWp2zzFvQBVFJbgHD9VUCtCAhKEOyoxwoafWN773GH5
         V6j1r4bheqBKWi4BXtgeQOrzpKHOfjbOIqWWyqzQojZ9t6cqbonNGSl4v5cPeXyZ7luT
         lUJw==
X-Forwarded-Encrypted: i=1; AJvYcCU5q3gEE7wY7w33HGIucwR+yCFbLLhxxGA3PzNfY/1RDB+0XushEZQJBPxhRLw5LdDtrww8IkE7JYWU@vger.kernel.org
X-Gm-Message-State: AOJu0YwrIJbOq4v9S1MLxShbNCj+HQicQJMifPzuudwto5wGDNruMYbQ
	xYDHirPZHBa/4I4iSzTEW+VmMM66wg+muNUJnoT2g9g1IGYZynCXNUpyj/TOf0fXdVs=
X-Gm-Gg: ASbGnctn2fwNl0JcVErrraqFzmQ0LH3xSO+CaCzc5QzlW+TxvVNYrZqD05uyWlnbMMF
	GR1TpodVOgGeXdU6P/M91zgud2gug51CyfPWfiN74zTSqloGZWp/lpam8UYIPv+yFFCvK24IBBQ
	kff1pdd0AVBUEx3bDbb6WhTrsxkjNv/Ua3WgohNQ+3jdiV6Q2MMQaRqqwu1GLEMzoGLge7cctY5
	D+730aJK+/Z2fsCJpfflaLVBO7+K85IeRyQ8aLUfs3m87fbKPM8LmPcZddgfES6R7tk7yPsnqr4
	7duOBWEd+EvIbkRHW7Hi0X4NgBgT6+NOL/qQjMXdgAnRhty/jTYnZjM0iI701/J6w9vmi82QVcB
	p6nqk6RsCU7uAyRTSX5gIvOlqxw==
X-Google-Smtp-Source: AGHT+IFlO2y1ouZt315gbUk3Y6YIYIDNy5KFOP0whnds4skxAXxnCCpG1q9rhgZvtK70Het4S+QSwQ==
X-Received: by 2002:a05:6820:1806:b0:606:5531:d903 with SMTP id 006d021491bc7-609f36b742bmr12050006eaf.2.1747833594667;
        Wed, 21 May 2025 06:19:54 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff? ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60a03f5bcbasm1675485eaf.19.2025.05.21.06.19.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:19:53 -0700 (PDT)
Message-ID: <0dd1a97e-ff7c-4d09-b18e-5df9944488c6@baylibre.com>
Date: Wed, 21 May 2025 08:19:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] pwm: axi-pwmgen: add support for external clock
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-pwm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250520-pwm-axi-pwmgen-add-external-clock-v1-0-6cd63cc001c8@baylibre.com>
 <20250520-pwm-axi-pwmgen-add-external-clock-v1-3-6cd63cc001c8@baylibre.com>
 <zdltaexty6pzbqesoluuyluygyt6w7nq7r2wccmtfktppwuw3e@qb36fsu3jq4k>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <zdltaexty6pzbqesoluuyluygyt6w7nq7r2wccmtfktppwuw3e@qb36fsu3jq4k>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 5/21/25 4:22 AM, Uwe Kleine-König wrote:
> On Tue, May 20, 2025 at 04:00:46PM -0500, David Lechner wrote:
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
>> +		struct clk *axi_clk;
>> +
>> +		axi_clk = devm_clk_get_enabled(dev, "axi");
>> +		if (IS_ERR(axi_clk))
>> +			return dev_err_probe(dev, PTR_ERR(axi_clk),
>> +					     "failed to get axi clock\n");
>> +
>> +		clk = devm_clk_get_enabled(dev, "ext");
>> +		if (IS_ERR(clk))
>> +			return dev_err_probe(dev, PTR_ERR(clk),
>> +					     "failed to get ext clock\n");
>> +	} else {
>> +		/* Otherwise, a single clock does everything. */
>> +		clk = devm_clk_get_enabled(dev, NULL);
>> +		if (IS_ERR(clk))
>> +			return dev_err_probe(dev, PTR_ERR(clk),
>> +					     "failed to get clock\n");
>> +	}
> 
> Can you achieve the same effect with the (IMHO slightly nicer but
> hand-crafted) following patch:
> 
>  	ddata = pwmchip_get_drvdata(chip);
>  	ddata->regmap = regmap;
>  
> -	clk = devm_clk_get_enabled(dev, NULL);
> -	if (IS_ERR(clk))
> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to get clock\n");
> +	axi_clk = devm_clk_get_enabled(dev, "axi");
> +	if (IS_ERR(axi_clk))
> +		return dev_err_probe(dev, PTR_ERR(axi_clk), "failed to get axi clock\n");
> 
> +	clk = devm_clk_get_enabled_optional(dev, "ext");
> +	if (IS_ERR(clk))
> +		return dev_err_probe(dev, PTR_ERR(clk), "failed to get ext clock\n");
> +	}

The trouble with this is that it would not work with existing .dtbs
that don't have clock-names set. I think it would need to be more like this:


	axi_clk = devm_clk_get_enabled(dev, NULL);
	if (IS_ERR(axi_clk))
		return dev_err_probe(dev, PTR_ERR(axi_clk), "failed to get axi clock\n");

	clk = devm_clk_get_enabled_optional(dev, "ext");
	if (IS_ERR(clk))
		return dev_err_probe(dev, PTR_ERR(clk), "failed to get ext clock\n");

	if (!clk)
		clk = axi_clk


> 
>  	ret = devm_clk_rate_exclusive_get(dev, clk);
>  	if (ret)
> 
> with the only side effect that for machines with a single clk we get
> axi_clk == clk and it's enabled twice.
> 
> Another upside is that
> 
> 	clock-names = "axi";
> 	clocks = <...>;
> 
> still works.
> 
> Best regards
> Uwe


