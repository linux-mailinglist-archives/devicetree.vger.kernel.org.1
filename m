Return-Path: <devicetree+bounces-57337-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F87F89D2FE
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 09:27:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51B21B219D2
	for <lists+devicetree@lfdr.de>; Tue,  9 Apr 2024 07:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 151A57BB17;
	Tue,  9 Apr 2024 07:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pqy7DAjq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F187537E6
	for <devicetree@vger.kernel.org>; Tue,  9 Apr 2024 07:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712647611; cv=none; b=BT7Q8vNk7xpEyhxxyTG+oxf3K13qKSnW55fqSWLCpM3KYrTlZF9f+fF0XDvwfBej3Y4H60y/Uqcv7ObPKWiDy//Um5pa1Rc4CkkIU7CJhrNoVjFxzVd/63x0LzR9qEayvp974CgrAf4O7sGdrgxZt2iTKkbO+d2uk+2HXw+00A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712647611; c=relaxed/simple;
	bh=D2RANzTZPct/PEiYzS0P1/hEuKo1C/y8HwYbbQiEk5A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=roUHBAW9wX37Seq50p/0AJnetScgkyph7Z9n/52hRWSMDMO5Xh+0g1LvNzmcq28yJi47dI/87y12jVtPaqSJyaEw5ESl6jQwwzpD/okjyvrspOQ23wDiXKWCnMUmxTEhroNBK8d3ZIPxKqAMhnhwfVDdZ+1S3KQv0VhTMFjhDPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pqy7DAjq; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41691fb4c8fso9007235e9.1
        for <devicetree@vger.kernel.org>; Tue, 09 Apr 2024 00:26:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712647606; x=1713252406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cXUoshLRji4XqKr9821nuiLVvVOgcr80bLjeMSp8dBk=;
        b=Pqy7DAjqL74ibzK7S2KFtnfyvf18KRGE2bsAK72Ix2CVcc+EuFF58Ho9IhqkMtu38S
         MUwYZ4JDS0JrGpqR7IsjSKguFi7+dynDVBOhmFNJgCvek5MfQ2fD5NJBC+m+1SdRKrW3
         2VRGFuAp+ChvC1sbPfg4W60ajHQbgOuipHuwKEIGKr03trJ99YZti+6LGrghGh4f+1Ga
         KYzq2ekg6MmvPsUM4LJDhYzUKlo4ZN4AMRRnUx+F7FEZmrpVy726bU8KdGxbvrjAYp+N
         IG6JkQtaH99c5i2Qu7deL9kGNJC/vZKqvcWpkfZS3aLbf/lehd612/Gy8LkyvaTlvH0w
         3hvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712647606; x=1713252406;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cXUoshLRji4XqKr9821nuiLVvVOgcr80bLjeMSp8dBk=;
        b=SgywC8Zf2KD6O5Q2NPOBttJ6ynC49VJkezm+ijengaew46eLXKES9QOllma+O8/ozg
         W4gSAIl2xQwmuCjZ0uitTm+c8cy+kDyNFvxHGKLXj4NPJTWPwU6327V9dWZeB5IBgHFy
         azfNsX4jRyyD+Rb3w0Lj0IrdOtRxafHsmNKYWPuh6rj4AhiKWx/xrlXDqvKxxUzIdxyD
         sUpYxG635I1RGc3DOQO8TUMO918aFLwUvO7nx09JLnzSi3d6jkIFQkNlGSdNRgJsFp/R
         nb8ujYG7Wg6vypzDXTCkgE7DzgDb9Sbjvi4/8+j8p8HzNLKzd5a9oLQT6nH4rpQNapNg
         UQbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBofDRbzOuGaH1JTtZgNS/PSnyyfQKNjtxxK1myK8yQNBNVlnESUaPaJFnTX4yrPhfFM9g5QzW6NPKN+5muR2qmeTkxCtsbvp/Sw==
X-Gm-Message-State: AOJu0YzX0gpGfmp+xmLYhF3U9Q8ET0RLlJBX+LZqgtSqPXa4ZUM3bxf/
	YM5qQwwKGXaJ5Kzc5yOB1AAk+Qb4r4wTrkuAMyLK49SdK+LM+rx+/AAAjhj+hdQ=
X-Google-Smtp-Source: AGHT+IFAVCXtpFB5SEvpVjund4jEOkIlW1Bq8gcn8j30UM7GPSZDXOjI3NPUXGvS7ik9MOA3EHP7vQ==
X-Received: by 2002:a5d:5511:0:b0:343:3f5a:bd53 with SMTP id b17-20020a5d5511000000b003433f5abd53mr6767771wrv.30.1712647606539;
        Tue, 09 Apr 2024 00:26:46 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id d6-20020a056000114600b003456c693fa4sm6448902wrx.93.2024.04.09.00.26.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Apr 2024 00:26:46 -0700 (PDT)
Message-ID: <e63cd9ec-45f3-4ae7-8d68-e923b35d05f6@linaro.org>
Date: Tue, 9 Apr 2024 09:26:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: imx8ulp: add caam jr
To: Pankaj Gupta <pankaj.gupta@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, peng.fan@nxp.com, ping.bai@nxp.com, haibo.chen@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Cc: Varun Sethi <v.sethi@nxp.com>
References: <20240409070616.3868152-1-pankaj.gupta@nxp.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240409070616.3868152-1-pankaj.gupta@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 09/04/2024 09:06, Pankaj Gupta wrote:
> Add crypto node in device tree for:
> - CAAM job-ring
> 
> Signed-off-by: Varun Sethi <v.sethi@nxp.com>
> Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>

v3? Where is the changelog? What was happening here?

> ---
>  arch/arm64/boot/dts/freescale/imx8ulp.dtsi | 32 ++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> index 8a6596d5a581..946f2b68d16f 100644
> --- a/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8ulp.dtsi
> @@ -252,6 +252,38 @@ pcc3: clock-controller@292d0000 {
>  				#reset-cells = <1>;
>  			};
>  
> +			crypto: crypto@292e0000 {
> +				compatible = "fsl,sec-v4.0";
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +				reg = <0x292e0000 0x10000>;
> +				ranges = <0 0x292e0000 0x10000>;

Keep the order as requested in DTS coding style.

Best regards,
Krzysztof


