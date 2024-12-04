Return-Path: <devicetree+bounces-127023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3609E3FAE
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 17:30:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02767164369
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 16:30:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AABDF156C6A;
	Wed,  4 Dec 2024 16:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="X+zfg9iu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0291F1316
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 16:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733329823; cv=none; b=YlshrbG0ay7w76xq/6iwsEGNHPxzNpaHJaLh5NZrOfSRupY9aQk6FrzbowA296aSwB5Quto5OaOMuDpkAlxI7SZKVU0BGzkfU9GfjFkeA//m3UUA+JZ5FLjvBR3tBRdnWsXSBPHkw+0nqwZ6jYytP6q/hIcL+rbwrXDDiEl0Ymg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733329823; c=relaxed/simple;
	bh=thgMt5oOkCDSC48kZPkzM7HNTCLSaLWJrJuzdHUbcoo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P+jA9cGBXD58V9ymKFbrfIDCsbsC8Bqh978BMFDP7x9CBAunnebtOE3nkLX22TCkn+kkXoeK86ZL2CKdQun3nxYbXDi1z0EYbQg3nXH5A0JWCxssA7ZIJu3auR6JP67wsTs0ySRuu516wCuW02bwHafompkBjH/CwLevaI53CXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=X+zfg9iu; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-434a099ba95so63554505e9.0
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 08:30:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733329820; x=1733934620; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BrQinLFv8ymHrMMRcJBp3H6sh/YyzVemksPWSpbvKz0=;
        b=X+zfg9iuUiA4wH9umB+ftgLHQ+WyXmY2eGhHuiHwMRCAYqmkjzQccYZ2eefGIiw1I6
         34ACmv9z6CtQlPt+n53xbSULPxHWPYHygsK6hZT1MvBDzEljIIBKuYiA1YVPOwH1/2e0
         54XeGgAdxLCUdhxTIwtL1IzbBUP68exD2yvMeoSTVQg5c/SczQvdLSQ3vw85CZXxABsc
         1OvMbxKcOveREYw31KUknwWEuF9+evzSi1+JOWaRmhaTEcFBobT6iaDahjXctN/J5IfK
         C3STuN3zukxXvoeX3hyAZPTgQ8m0Mf2AfvOJv5MrCpJ7zIXWb0GAK+0cmdI/3UCLaBsA
         j9vA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733329820; x=1733934620;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BrQinLFv8ymHrMMRcJBp3H6sh/YyzVemksPWSpbvKz0=;
        b=CnYP6vx8pLeDzFS0P9aS1nApHVgxyR/GR9ELji/x3mUSMPLC5e9uWuXfwDBBmF8Uf2
         lLhQTaV6MsOXFJ+NAkFnJNk5hv3nCdZxwhvBEf/0KbbGvDlcod8i+DocmapkCCavBuI2
         dY4i7e0psm9V/wO3hOBjkRdvN1YfilI5VUJHFcBfpmIA8x6DJnTf+LPW0KfDl8LSCWjk
         sOWCefim9aroBfQEM3wK+DJ6U19TEuYUCZNMlzaSgsZAPrB8fZQhgrvs5i0QFebIjEk7
         kQIeGpugOilU0jOfbiXbuhkwaFQk6cRx4NqUk2BKbBSFrCJMQj2c2uk03u8Lcf/X4zNl
         6dCw==
X-Forwarded-Encrypted: i=1; AJvYcCULhiSQui06qX2C8wWto/2/PfMN6u7sZ2ESpoeNLfLLfzxfh9qfi8lYGmUMofIN4qN2EwBc3z848shW@vger.kernel.org
X-Gm-Message-State: AOJu0YzRnV6JxbRCPMOEJeFz8UmIz006z7/AyQPUT6ssX5jwI/di3BrK
	0KaMbBXc/mP8PIt8AeYsTCQIqfhf1jAoT5QrCk2iR8U+OTUL/1XVeJxCOHBae6g=
X-Gm-Gg: ASbGncs/Opy+R3Y8YtEV96pw1TicEVGM6UxiZwlUllb5blnU7ppLZUCQgiJrf30dBYG
	Mxky80XI78Lww88mWnC5PcMBfmjMRCUNsz4ugqzRZj2m6nZj4oLE8WgHzzKgEN1dfQvu8UlFLyZ
	B+fYEb7Nx5YebEfj9wNpyG08X9sUcfcVK7fh8NTSrjLEjF9Bjwa7BX2QcHu617M2FeojGkL0Q3M
	vC/n8GeeSIxrK0OWUBAr7WC4/R9IPyu7lN9iAgju3e8VH7Oh1Ex1vaDSdo=
X-Google-Smtp-Source: AGHT+IEJjin9oQpmKSImnwO7+sXeF3u6nObq01UhSCPPk/+4V+h/bVgDfEFHT0Nc3qSjHT5jWzKGFg==
X-Received: by 2002:a5d:5888:0:b0:385:ebaf:3826 with SMTP id ffacd0b85a97d-385fd3f19dbmr5021359f8f.33.1733329820069;
        Wed, 04 Dec 2024 08:30:20 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ebaf3bccsm11283335f8f.68.2024.12.04.08.30.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 08:30:19 -0800 (PST)
Message-ID: <1b691ff5-2240-4eba-bc3a-b33193ba0630@tuxon.dev>
Date: Wed, 4 Dec 2024 18:30:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: renesas: rzg3s-smarc: Enable I2C1 and
 connected power monitor
Content-Language: en-US
To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-renesas-soc@vger.kernel.org
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org
References: <20241120085345.24638-2-wsa+renesas@sang-engineering.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20241120085345.24638-2-wsa+renesas@sang-engineering.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Wolfram,

On 20.11.2024 10:49, Wolfram Sang wrote:
> Enable I2C1 for the carrier board and the connected power monitor
> ISL28022. Limit the bus speed to the maximum the power monitor supports.
> 
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> ---
> 
> i2c1 gets enabled in the current SoM-DTSI as well, but to be safe
> regarding other SoM DTSIs to come, I opted for explicitly enabling it in
> the carrier board as well.
> 
> I picked the 'average-samples' value using my gut feeling. If someone
> has a reason to pick a better one, I am all for it.
> 
>  arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> index 7945d44e6ee1..5e4bfaeafd20 100644
> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
> @@ -73,6 +73,19 @@ &i2c0 {
>  	clock-frequency = <1000000>;
>  };
>  
> +&i2c1 {
> +	status = "okay";
> +
> +	clock-frequency = <400000>;

This could be moved before status to comply with [1]. I can take care of it
later as I failed to follow [1] for i2c0 as well.

Other than this:
Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

I gave it a try on RZ/G3S:
Tested-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Thank you,
Claudiu

[1]
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst#n112

> +
> +	power-monitor@44 {
> +		compatible = "renesas,isl28022";
> +		reg = <0x44>;
> +		shunt-resistor-micro-ohms = <8000>;
> +		renesas,average-samples = <32>;
> +	};
> +};
> +
>  &pinctrl {
>  	key-1-gpio-hog {
>  		gpio-hog;

