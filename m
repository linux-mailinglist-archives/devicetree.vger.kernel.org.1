Return-Path: <devicetree+bounces-43197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C60859771
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:45:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F0F11C209AE
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B244D65BC4;
	Sun, 18 Feb 2024 14:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="S4TmL1kU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8886A1E535
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 14:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708267530; cv=none; b=GArtv+ou4UlYpopPmk6aEorGy2R7ZvyOcME5Wh/0RtEDVPZPVZGPx1wh/SK7OGPX8pCLbz3Z1LGLRKllmXou5EwdLA4Ng5w027szolbkMKGsqdZYL2PC+xrTBGuOgiuASQZMHz76TpL0aYhnvYM2FhvDOWAZmP//tNcso+z8K/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708267530; c=relaxed/simple;
	bh=OEucH0lCCu89DRZY1Jdo+TZ4i6H9vh3X8iFnO8oA/Fk=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=k88l0LGORtiZkInjN24TIY5GjhjatgbKGSyRzaLP0Tfm/Xkh7By8GpmFvjU1wJ9rV6Rdc1TfbI6NYQmdS/o8a0E3ylBECmGkd3SU+nRqyrMuVJcyGy4qcUGjijkN+Iu4WBgtMqBn0JCfLyu3aIhNBlKOAZvYkv1fkSRy8Om9ZAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=S4TmL1kU; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-33d0a7f2424so1916148f8f.0
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 06:45:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708267527; x=1708872327; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uBQ1bWSTcAbaXzL19RYi7sW46W818tVY0olUEzvaop0=;
        b=S4TmL1kUFyHVsFjTSnOC+qoH0xlnsH5A/HHoLDuCkgduUiW8ig6jyHjq/XDNo0Mzx+
         /cO2jeAV3m04MPEE+uorO0IX5ZDfqK9CU0OusaLXmP2cJ9M/+Flyz6iWs5FNukgfMYic
         5f9zPtzjwAo8YDlgADkGbzgkQhwMfl9mpE87/hoghC5xS5SF+GZPFTE7oCt6wicdyL/W
         piTvlufjf3qjVWvNG4iyUOBbqYTWr9kmnR1aA0KulizuQGlP5oZj32rGoeTREA1i8Ly/
         AWMHym7c/QgeNbLZ1DIRPSneCgIT4W7tMKOwtnyNb5/FUeTM45neeIdeYEUGQLM/xZpg
         rJ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708267527; x=1708872327;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uBQ1bWSTcAbaXzL19RYi7sW46W818tVY0olUEzvaop0=;
        b=blJF3DukviJOo/6dA5EheUq4+OIxmvntWHZyHupRq6unxYHZN2ihFqRD7YdcL2YYUz
         NqwYpOq8r/NEzfMSAilg66kLeBOKP/D58ZexL26/Dh8k4+UgYabHeyHyxPsWWR0TWdXW
         m1AOB5JRTodIbs8FXa3ONgQnreNA65ybCr5L9O45owvByvhYYBaNI+sIANc2VZQOtIMM
         ozI1uq5DXgnnTruW6Ney+VwtCpjsMg3Udp3Yvlp8S0G0npYLwPN+GR5Xj2cYBZC7STUg
         R6RjfHDRExmxJl+TL9U7XzRs9C8IGl+aLZQXchZYl8je3FK2UonKuPq57YFLSH9EMDyQ
         yRmA==
X-Forwarded-Encrypted: i=1; AJvYcCWeMcNbCoX1IHeKpk5zAD2kKL8xVCvkPCwjVJqAc6OyGmyfLIehV0ictloPUI+/oyKu1v5cGJfoaufISnZoS8hSaWysuaSdnM9j6A==
X-Gm-Message-State: AOJu0YyJho1jRWtkOkIU2+rZC/ofNq+5sMsnHu2fFenv9+LD4VHsa7YU
	bcQxtjLl0g0WeQvE1FysrWs1VQhr/qclY9IKvR/Wxgeg1mk+DRwwqV3ZknGhU0I=
X-Google-Smtp-Source: AGHT+IGwSoyz+nbm3/gh02PoNHlbCL981fdbCBjHg+eerTeLeQfXCsJ4XQ3PkciZteUc5BF7WO0g1w==
X-Received: by 2002:adf:f4d1:0:b0:33c:e1f8:9444 with SMTP id h17-20020adff4d1000000b0033ce1f89444mr7236686wrp.9.1708267526739;
        Sun, 18 Feb 2024 06:45:26 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id s3-20020a5d4ec3000000b0033ce06c303csm7453944wrv.40.2024.02.18.06.45.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 06:45:26 -0800 (PST)
Message-ID: <c47013b3-f542-4d17-88cb-34e1158cc743@tuxon.dev>
Date: Sun, 18 Feb 2024 16:45:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/8] ARM: dts: microchip: sama5d27_som1_ek: Add
 power-supply properties for sdmmc nodes
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240206120322.88907-1-mihai.sain@microchip.com>
 <20240206120322.88907-4-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240206120322.88907-4-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Mihai,

I'm replying to this series as the description is still better to me than
the one from v4, but, few notes:

On 06.02.2024 14:03, Mihai Sain wrote:
> The sdmmc0 and sdmmc1 controllers are powered from 3.3V regulator.

In schematic at [1] (for SDMMC0 at least) I see VDDSDHC could be either 1v8
or 3v3 and is selected by SDMMC_VDDSEL signal. Maybe update the description
to reflect the this.

[1]
https://ww1.microchip.com/downloads/aemDocuments/documents/MPU32/ProductDocuments/UserGuides/SAMA5D27-SOM1-Kit1-Users-Guide-DS50002667.pdf

> Add vmmc-supply and vqmmc-supply properties to sdmmc nodes.
> The sdmmc controller from SAMA5D2 MPU has support for
> IO voltage signaling/switching required by the UHS sd-card.

Ok, it has support as you mentioned in one of the replies to v1.

> In order to avoid the issues from the tuning procedure required by
> the UHS cards, keep the vqmmc at 3V3 to use the sd high-speed mode.

But it is still not clear enough for me why you want to keep it at 3v3.
Maybe it would have been clearer if you kept the statement from your reply
to v1:

"On the SAMA5 MPUs there is support for IO voltage switching but since we
have issues with the tuning procedure required but the UHS cards,
we want to keep vqmmc at 3V3 in order to use high-speed mode"

Thank you,
Claudiu Beznea


> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> index f3ffb8f01d8a..255ee0640133 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_som1_ek.dts
> @@ -56,6 +56,8 @@ sdmmc0: sdio-host@a0000000 {
>  			bus-width = <8>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_sdmmc0_default>;
> +			vmmc-supply = <&vddin_3v3>;
> +			vqmmc-supply = <&vddin_3v3>;
>  			status = "okay";
>  		};
>  
> @@ -63,6 +65,8 @@ sdmmc1: sdio-host@b0000000 {
>  			bus-width = <4>;
>  			pinctrl-names = "default";
>  			pinctrl-0 = <&pinctrl_sdmmc1_default>;
> +			vmmc-supply = <&vddin_3v3>;
> +			vqmmc-supply = <&vddin_3v3>;
>  			status = "okay";
>  		};
>  

