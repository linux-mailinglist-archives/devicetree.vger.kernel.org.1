Return-Path: <devicetree+bounces-179279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C5DABF6A3
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:53:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 417BC1890AD0
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 13:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB7F3156678;
	Wed, 21 May 2025 13:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QZwU5kyJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3AF21547C0
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 13:53:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747835629; cv=none; b=KeJtn2HCS7SN6mpZoN+5lEkhomTl1dZ7wMbt3Til2M/L9Wp80KNcvh8fkKbnhUVN+E3W+1rQ8Tm2p1+sACegHF4QsrK2h0P0YNz/fyNJoFkpVRXCe5SMGQd53SsLkqoIkilUMf9nJ1IKW4XAgjm7Ozh6kZqTHlM0uKoH644aMns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747835629; c=relaxed/simple;
	bh=IrZ5eRKdvHnLfdBgA5Nxy0weSbvz1ttlkMPa/YVUH3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FBOPLCcfDrpFLjkSv6oNIAxiCtkE70IPZ2dF0hFBBaRrzYR8fBdHIDcK+1Cbf4gOG1921mKvxzbzmuaPs0JuMr/lLxuyJGjrlLI1r2yV4pAAj4HodQmyxEsg1+cQG5GT39hc9IHtfG987ZIkyRm/oFZ9np7hQEYtbf2F+8zZ50I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QZwU5kyJ; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3fbaa18b810so2208823b6e.2
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 06:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747835627; x=1748440427; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TN8vNo4OsWHNsyvidVWWosuPqSbZZ3DbbQtiLkxvupM=;
        b=QZwU5kyJp0JmCMBREBew1TKaiL1qXlLZhkany+saxezNUpRsyLhA11LVE7RrUbnv+G
         8+iER+bT/aDJc5X6rqZ8Ah3tP9pKpp3DDsSBXMfmL6vneSw5m25M4nvOsyh5VptH2s9Z
         OK3yi8O/wWe4LoFkOkdSknFOG90oel6gotMBIQYPu3bT4kmrZ+5zLAoooltsd8k13NQ/
         hIcwaG96f+ctNZP2CPpIbeKQovtdXQ2d7rciAoH0QOgZK4UQ1mkkoJxUMmL1Orww4Jdi
         0CC3IuJcw71pQxtbYMJHl3qGpjMdbLKyLfuEeK40bGagVADY1edtnaTwoTCHBdEuR9rT
         bX+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747835627; x=1748440427;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TN8vNo4OsWHNsyvidVWWosuPqSbZZ3DbbQtiLkxvupM=;
        b=keDCb46Geg14P7RHB2tvMlubplH2KcbvH0nF2WyUgY3tXW03z2u2Y6IHtdotxfmFUb
         JSkgQbbABoyJ5+2QQgn+vkBMJ3quL7sdTZritL6i/f1ZjzwAgn1I64A9Oe5qeNY1enJ/
         OkYVT4Lt4XqnI6+yd7NDTKxTOMBi1LZBXTGAZLa5aa+2NayguIk7q1LUFwquK4w/4nSO
         mILKqozN1pd0iCFYLDW1QR3Hj/vANtxTSmAwXRHHeNENsWWbzbAP86ag9SSSmXoUO33e
         Jxuisd/pfadXrn2OZEIaHRyQ28OJlMZO1/W+L6ZYVoFTWdufIF6sBsOfoJHqSZfJ3F4Y
         Op3w==
X-Forwarded-Encrypted: i=1; AJvYcCUw+/Lvhwjl2r1XGkTeehHH8J0FEFCwxyEYd2o8nLPDfXVQNlEDl9nOgWXidTnoF9SO8NSpiFgstgOw@vger.kernel.org
X-Gm-Message-State: AOJu0YyErxqL+1qb4+3o0IFcz5eD1hoQG+hq60LCiwwSBClVaN/CjG+f
	VJd1coApeHgkPHI1AecLvPlD8Uee2nEO4KFZHnPPLT0sqCifrh803yxletZ6LT5mwgM=
X-Gm-Gg: ASbGncuhOTV03oMH09feBjdekNobDYYfXN9bWHcri+ROAYK47GeR6YA7Hlt/g2pEBc+
	l3pFRGaI25DiU7qfhkyPDLdh6ELDHg2m8Z3jLIJVSWzIHFIU85gRZ7I1RFxgUaJqmcOTIBXI1lP
	pPbVpXIzY5ZDhrhspGqNnj+oVR32NgFqdipNsY1hR2mzCUbhjE1+qceOMuhYMrnfDz617p+VUBH
	1g5tWg2evwosPBUnBj4584v+iyzv90VePpbJEIOMDi8B9fBtUAPJj/jTIM5ukEMLZdwYjr2iSaS
	QoxNfcfNSVXgKpcKOovSNKaObdFnPPhDThf6cRaxXR0NNw8t6SanH7KOXoSfLEP1oixLLie44F2
	BEnpvDaoLoUKMlZ7jj+x5aoZ5wQ==
X-Google-Smtp-Source: AGHT+IFYCXtc00k34yANAC2zmBuis0tebfqeNN9MhmWjygKNfbvjf2hqAzmrtv2L+E0iPrKoPM/yoQ==
X-Received: by 2002:a05:6808:4486:b0:3f7:dd2b:229 with SMTP id 5614622812f47-404da70a2c2mr12335197b6e.7.1747835626938;
        Wed, 21 May 2025 06:53:46 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff? ([2600:8803:e7e4:1d00:d77b:6acc:2ad1:8ff])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-404eacec299sm1630070b6e.26.2025.05.21.06.53.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 May 2025 06:53:45 -0700 (PDT)
Message-ID: <99c6295c-9ed8-4611-a3db-ad57a33f4f38@baylibre.com>
Date: Wed, 21 May 2025 08:53:43 -0500
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
 <dc9c370c-e1e7-4ef9-8738-e6ac8887ee61@baylibre.com>
 <17a9ee62-8185-4833-acfc-1639fd17efc5@kernel.org>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <17a9ee62-8185-4833-acfc-1639fd17efc5@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/21/25 8:30 AM, Krzysztof Kozlowski wrote:
> On 21/05/2025 15:23, David Lechner wrote:
>> On 5/21/25 5:10 AM, Krzysztof Kozlowski wrote:
>>> On Tue, May 20, 2025 at 04:00:46PM GMT, David Lechner wrote:
>>>> Add support for external clock to the AXI PWM generator driver.
>>>>
>>>> In most cases, there is a separate external clock that drives the PWM
>>>> output separate from the peripheral clock. This allows enabling both
>>>> clocks.
>>>>
>>>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>>>> ---
>>>>  drivers/pwm/pwm-axi-pwmgen.c | 23 ++++++++++++++++++++---
>>>>  1 file changed, 20 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/pwm/pwm-axi-pwmgen.c b/drivers/pwm/pwm-axi-pwmgen.c
>>>> index 4337c8f5acf055fc87dc134f2a70b99b0cb5ede6..67992a7561ec0440b1c1fa327f844a0602872771 100644
>>>> --- a/drivers/pwm/pwm-axi-pwmgen.c
>>>> +++ b/drivers/pwm/pwm-axi-pwmgen.c
>>>> @@ -280,9 +280,26 @@ static int axi_pwmgen_probe(struct platform_device *pdev)
>>>>  	ddata = pwmchip_get_drvdata(chip);
>>>>  	ddata->regmap = regmap;
>>>>  
>>>> -	clk = devm_clk_get_enabled(dev, NULL);
>>>> -	if (IS_ERR(clk))
>>>> -		return dev_err_probe(dev, PTR_ERR(clk), "failed to get clock\n");
>>>> +	/* When clock-names is present, there is a separate ext clock. */
>>>> +	if (device_property_present(dev, "clock-names")) {
>>>
>>> No. List is ordered, you do not need such dance at all.
>>
>> I should have added more to the comment here. This is also needed for
>> backwards compatibility where only what should be the "ext" clock is
>> given as clocks = <&spi_clk>; and the AXI clock was missing.
> 
> I do not see this needed at all. That's already handled by old code. You
> only need to take new optional, second clock - axi clk. You take it by
> index.

Except that it is the "ext" clock that is supposed to be optional and
the "axi" clock is supposed to be required.

> 
> Best regards,
> Krzysztof


