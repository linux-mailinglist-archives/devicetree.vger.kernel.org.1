Return-Path: <devicetree+bounces-42408-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D632F857726
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:59:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 061F61C22117
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:59:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38BFF179AB;
	Fri, 16 Feb 2024 07:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZtmnxGDz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9D2175A9
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708070358; cv=none; b=ubEIECXC0a6rtivvkw/6uswIABFpepq3v6B41Mlyk7RvbajrmluJULLJ/icQefXWgav9vlEE8OS+MYmDUxbtgCgoKMSvKX6oP24JJCOLUhqAgh5Sz/H+MSl1Ht1Fioe0ndT6hEekuOSyaoAFZtRs3KJnL4eXkmkPPXPiqv2uI+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708070358; c=relaxed/simple;
	bh=hhId4jM1GUqxb0jYWWEctZlFKyWiYOU7olPisxXp8lg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i7/ZnSqyhPoPYT7TD+12YGKSnNpoJl30yOCKtWYcl5NMQakGDU9BaSTv9w1xfQyp3F1SdSLWbjMxHQYJ0OtkCUmvoDgGlqF4ufIkYsMUVljbwq0X9OCe0EUwyP/HoMboEKzsaSljEERex7psC6VmkMCDJNYDwQUU4wy/GNlSSDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZtmnxGDz; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a29c4bbb2f4so223011166b.1
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708070353; x=1708675153; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=usLl1SC7mqZ4nRORR9VF1N5sgvT4/fyPtc3ZzGoJbJY=;
        b=ZtmnxGDzBCzM5Or4qPy7SKAdOdJXnHN3WFyRA7BQ6xANtkDfoT9xYPRGlyrDCL0gbN
         YHARAuJonynocHgoMyZSWcL0576YUa+eIpqtxv3tsrVTArO1gq6dtKZ/fpMk21FmTP/2
         HyC3lI4Q0tU7m8noROTwPC3LyMlDir8ouqTHPEwHWk01piO7kC6l7WmZ9djU7KqcMf7/
         4/Q+UV9KfBjMJL04Gwncxp2zeqFfhw2PPasLgSMVV/qs1O/y02fGraqH616ycHgL+SE0
         SO4XS1ykc4OOasK0mTrwphR7j8EZhwiRTHhr7T0qAcWtgFrz3+RA+nAqn1Zlisw85GPF
         A6FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708070353; x=1708675153;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=usLl1SC7mqZ4nRORR9VF1N5sgvT4/fyPtc3ZzGoJbJY=;
        b=KrrQebVEnHSJpfCEXRwHy53pKSDqysSR+BNk8SnwQuDrpg6DTnWUSfkjpeGvzyr+vU
         WwZc1H8CfIHQXTETrpY1DGRpooUV8uAtkFQdKT5JJzuyWH1557DVy4yxB4+aYEmiIRPa
         N5wJ/cK6LEaxrVJZeU/8A3bRhLYb3TCn6ck7IBx+vWiki4XZ6Y03Zqkl2QVjyUVfdeu5
         RzHdo2MbajbcDyl9a/2sAeyAPn2IWDA/t6x/+GOF9Tc4NOFEasEvYg6r4eZpbQwHm6xs
         Zq5thMkcxM6Bcz9rygZS6oY56aNxBXprO3wGQwKgZaymWpuyrmoOX9Etg2jtXFdj9Nbr
         vgTw==
X-Forwarded-Encrypted: i=1; AJvYcCW//dFgYe+syCXuLdrqXXbLynFGZetIQmXMqaZ8G8OLKLKvwUXSQnuDsU+Q0jGU0SD0JoriP0lVZ39u9D3iKAd1hvlCcQsM7n0/Yw==
X-Gm-Message-State: AOJu0Yyi+iLwXtwHOGpqiVnPYwzI8ymxb+z6xviH7imr0/AGv/CYmmRe
	aQOKJwEJnBUNCbze4IKoAqYnxCOYtb8YrWCjtdyX4LW8A2bPaoLh5/njJYbAJd8=
X-Google-Smtp-Source: AGHT+IFKHhGo76S0hx7a0bcY1oJwxjoA5BJY7EqlErTpU/hlLwU0IoSjORalLVe5hY3xri0E7cGrlQ==
X-Received: by 2002:a17:906:bc5a:b0:a3c:875b:f378 with SMTP id s26-20020a170906bc5a00b00a3c875bf378mr2312843ejv.36.1708070353445;
        Thu, 15 Feb 2024 23:59:13 -0800 (PST)
Received: from [192.168.0.22] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id r5-20020a1709062cc500b00a3d1580d702sm1296186ejr.185.2024.02.15.23.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Feb 2024 23:59:12 -0800 (PST)
Message-ID: <42b16256-0dcb-4065-bdd1-a27b33f169e2@linaro.org>
Date: Fri, 16 Feb 2024 08:59:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/13] MIPS: mobileye: eyeq5: add evaluation board I2C
 temp sensor
Content-Language: en-US
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Linus Walleij <linus.walleij@linaro.org>, Andi Shyti
 <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mips@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>
References: <20240215-mbly-i2c-v1-0-19a336e91dca@bootlin.com>
 <20240215-mbly-i2c-v1-12-19a336e91dca@bootlin.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240215-mbly-i2c-v1-12-19a336e91dca@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 15/02/2024 17:52, Théo Lebrun wrote:
> Declare the temperature sensor on I2C bus 2. Its label is the schematics
> identifier.
> 
> Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
> ---
>  arch/mips/boot/dts/mobileye/eyeq5-epm5.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts b/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts
> index 6898b2d8267d..1f8549acd40d 100644
> --- a/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts
> +++ b/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts
> @@ -21,3 +21,11 @@ memory@0 {
>  		      <0x8 0x02000000 0x0 0x7E000000>;
>  	};
>  };
> +
> +&i2c2 {
> +	tmp112@48 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


temperature-sensor, power-sensor etc.

Best regards,
Krzysztof


