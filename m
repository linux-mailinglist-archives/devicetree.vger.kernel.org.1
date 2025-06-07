Return-Path: <devicetree+bounces-183478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D9AAD0D07
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:10:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B0F383A2852
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:09:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A0F12185B1;
	Sat,  7 Jun 2025 11:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oQsMlDVK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B5E7EC4
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294609; cv=none; b=ZcEm8VUItS0VduQoFKlzJ90Y+fs52uP/JvwsUX3KFLzYdoui8+ck1VoXNTmTo+ZArgGd8ERjhDgpR+DaCiG0xsn/FR4GXKkME3dHKL8svMAjdYXQ5M0qyvk7e5jG4RH+dMK1nAeiFk+fiUcITXCvMgoT6ZCmAvEfqVsbkNKGqYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294609; c=relaxed/simple;
	bh=pHbXW/qp92BqKV/u6Z7RoGfi4O6Rcc30pPkk7OEorrI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=psg8xhilZjx9aO5m6KrTCVw5EHf6tBr4wbDT3s0wJ7XoOnSPHYEoX7a80o2znkOXUQ9HwDXtniIGQcWJXOBmDQhsJPzs5Ni2TreA8MfXvCP3hWCS/2lfqtP1jqBvb32MZXsDckeumFhEIY90JFTsC2zC8mgZ5P9livW8l/m1A7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oQsMlDVK; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-ad572ba1347so413986566b.1
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:10:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294606; x=1749899406; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1PTfBD3stG5QBQvRznIOQO3iudOANMtq2ogixVLY+hE=;
        b=oQsMlDVKpg2Lm43UHEBQP55mY4nngOMHB7mvkeRZEMryPUPK4Ro0C++vifoF+vb1n8
         jCZRzrD7z8Ncdp66qkCoAej4z0lONvVy1duL7Ick5YfnUFQeP6FpCv7/c/2kJV8XQTax
         FhSnemT6mwxLRjmuaUEpTRYcSe9aZDZiaVb0NLaiNR7ZP4c/vSUmHCPtZCZcgtabq8qY
         bYdeZL7NNyb4X+VvHXBSU5HKlJa19WRRlIjqZWVb3lVNOYWwb0rY0MSZVDs2AzMPx3UG
         Qx4Am+WbfiAyiMniOEdN3kZU3ZIRIgYw7hCkKYoCqIks9+5vI2Qlo4h92zvUyWk4047b
         aPfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294606; x=1749899406;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1PTfBD3stG5QBQvRznIOQO3iudOANMtq2ogixVLY+hE=;
        b=peX3Ptbillbm/9SHEu3ienb6DxsT8vAc7vrfYvzsLMctDeQm7xpQOkCUCFyZIxQoP+
         xZ/OjYuATmE2FNiPCY7afp1+jsQZjZG36nk8HZxTpTvTZSx8ahcv4UhEysj/yPzxi+ra
         trcHXjjKMHryfCowBcaQsOnidsT0A08+nhK29446TquUR5UedBvEijNP4Z0mPB1f5uZp
         1/c75K1PDdJfEHJUavoAeMIlNI3Nxxin/h7Exr24uoAhkQlMtUfv7awMvq28Vy8Xz1hF
         hcE9GiQeUF56IxzFfeneMhydWAw6f5qncS2qeecmIM4iBm7Fa3TBrBVZGvcXOkhh3hXH
         SJVg==
X-Forwarded-Encrypted: i=1; AJvYcCW3mRZLbIBBgwfc8qlf1ZOV5c4BPo+33aYhj5Fu/Dc7140+EilxKQGPSAbzvNjyntUCDZ+Xl3OHLMaa@vger.kernel.org
X-Gm-Message-State: AOJu0Yyh0Css4T21JNB6BXf50CjslX4LZCdCSWhXH9HO6kkMHBSVynTb
	aJNRNIVKRF4tHMPCzdPABhchnc0ujfdhFE/4AMc3cSd3nLKqYtzjWTQH2WoCrxfHYrM=
X-Gm-Gg: ASbGncsmKubXzeAc6bAEQ2lzJR8b5rsBeB6iPmmfnyOcaTqecaodFRGrnEqdNPf4HDM
	uf53t/DR2ykuZpLV7I7tg0i14OKiGXPdClq7lUxt2TsaT75QZWDnyymcYj7xupTvUNiIxzJDRVL
	S27y56KbUPsnqElEjs9FPCxunf3Qevmor0p7h6nx4SkxEnY+fCToJyA47ZuHaZ71IThJkuIAFic
	0BdbZl+hUDpFxHkFslaI29wgMewpdmBpzWKxlcIJXXiS2QMJSawO7Tr8woFBEyKLNmOjUMTIRO+
	vCsMxQJ0avYDRp31sRxEGNqaHhoB65mzBf/1yMPuJcjIUBtiMvY2HFVgf1q+
X-Google-Smtp-Source: AGHT+IF3DQUEodlloMNaPTNxoK2FYWgdATNtvJwE5PCDK7H2qA3FtmE+6FFdjpNw+6Ekq/8IYTrKCQ==
X-Received: by 2002:a17:907:2da0:b0:ad8:9b5d:2c0c with SMTP id a640c23a62f3a-ade1a924887mr568188466b.33.1749294605805;
        Sat, 07 Jun 2025 04:10:05 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc78b30sm256310766b.155.2025.06.07.04.10.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:10:05 -0700 (PDT)
Message-ID: <e962bb23-8a36-4684-8add-29ce589978b1@tuxon.dev>
Date: Sat, 7 Jun 2025 14:10:03 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: at91-sama5d27_wlsom1: Improve the Wifi
 compatible
To: Fabio Estevam <festevam@gmail.com>, nicolas.ferre@microchip.com
Cc: alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
References: <20250519165352.1314199-1-festevam@gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250519165352.1314199-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 19.05.2025 19:53, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The at91-sama5d27_wlsom1 SoM has a WIL3000 Wifi SDIO device populated.
> 
> Improve the description of the Wifi compatible string by passing the
> more specific "microchip,wilc3000" string. 
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
>  arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> index ef11606a82b3..e35dd79beb16 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d27_wlsom1.dtsi
> @@ -385,7 +385,7 @@ &sdmmc1 {
>  
>  	wilc: wifi@0 {
>  		reg = <0>;
> -		compatible = "microchip,wilc1000";
> +		compatible = "microchip,wilc3000", "microchip,wilc1000";
>  		pinctrl-names = "default";
>  		pinctrl-0 = <&pinctrl_wilc_default>;
>  		clocks = <&pmc PMC_TYPE_SYSTEM 9>;


