Return-Path: <devicetree+bounces-24638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2F3810B64
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 08:20:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E0C0B20F27
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 07:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C2C418B15;
	Wed, 13 Dec 2023 07:20:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kkwbyo+z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83181D3
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 23:20:29 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-40c2a444311so63657385e9.2
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 23:20:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702452028; x=1703056828; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Us9O2E/EOp4LFGB3r3Xwg2utQcDrwWyTbikZ6MeUl7c=;
        b=kkwbyo+zPIh9dr81j4epomuxDqOEQo1devVudYbJ2LX4r9dQH2qMoI5VH+fJQQPPq/
         k/0E2E0hBsReiUNtDtOAf/zK2xR4lNS4I3JcXdQO4PuG1O4FClH0jOiue9xwYeh7dPSE
         SxjcHNgKPo+vopaw524avMbZzmdtH8zvJPJ2k6KI4nGupfel9822vqTslOngDQYquW0T
         T3/t/hWEn2I8bzExxRxo0LKw0H02DhgPYHD4Y8xqLcO/QhMwEbdvpcayekge23eUV9hR
         eP6LCTMwptakdDgcfwHFoGlSgL3YrmlBp+11ADHZ4BTThxirzrYtfAe05jEm9O/UtsiD
         rUQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702452028; x=1703056828;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Us9O2E/EOp4LFGB3r3Xwg2utQcDrwWyTbikZ6MeUl7c=;
        b=tmrsEzRii62AIqzJTs2FMVKCAegUPHcG//lhSIliG8jFWOAxGy484Jt9eez6SN5NMY
         saVT9bpLelvxzBCp8WDP5fYT08XqH+wKs2MIbrclnV5S5HdNnyOCWsniikoGoASYoc+7
         CVcFuQsVPeCK9k2uBifPq1vgsc3vwl70yewBjjn9LEEfSEBB4dx5QLijJ+7UjCJVfLXI
         EvtKBtesWa/WWRGYtkMXCFuMdIUmOtTgDPzw0Oh44Uba40HkiT0Gu2Sy0+xJRluaCwWa
         1D+r2xy1ZcWI3psGpi5sWMIb+JmCkbuxOFDAAR8zUjTbQ7rF1D1MDwUAzDTbq657/eFt
         fjJw==
X-Gm-Message-State: AOJu0YwT3WPGa8TMONFjMqSRLLeD0WTMkZZWEfVGTYmTmm6p/g2GtESb
	OIbG0yx0YLJlGpI9Y9W7NxFoSw==
X-Google-Smtp-Source: AGHT+IFnYbsnPgurOdTobqAW6rgnVn4pCHJbup6+4UWOncRw7IIXI3nkeqXeJ2pgEbyYzuFNd4d5Fg==
X-Received: by 2002:a05:600c:548a:b0:40c:28fa:a630 with SMTP id iv10-20020a05600c548a00b0040c28faa630mr2057579wmb.218.1702452027884;
        Tue, 12 Dec 2023 23:20:27 -0800 (PST)
Received: from [192.168.1.20] ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id v6-20020a05600c444600b0040c4886f254sm9332771wmn.13.2023.12.12.23.20.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Dec 2023 23:20:27 -0800 (PST)
Message-ID: <ae52b0d3-84a4-4c78-97e0-e5b479b54f16@linaro.org>
Date: Wed, 13 Dec 2023 08:20:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/14] ARM: dts: aspeed: yosemite4: Revise i2c11 and
 i2c12 schematic change
Content-Language: en-US
To: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>, patrick@stwcx.xyz,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org
References: <20231211054730.208588-1-Delphine_CC_Chiu@wiwynn.com>
 <20231211054730.208588-9-Delphine_CC_Chiu@wiwynn.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20231211054730.208588-9-Delphine_CC_Chiu@wiwynn.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/12/2023 06:47, Delphine CC Chiu wrote:
> Revise i2c11 and i2c12 schematic change:
> - remove space for adm1272 compatible
> - enable interrupt setting for pca9555
> - add eeprom for yosemite4 medusa board/BSM use
> - remove temperature sensor for yosemite4 schematic change
> - add power sensor for power module reading

Way too many changes in one patch. Especially mixing fixes and new
features is bad. Please don't.

> 
> Signed-off-by: Delphine CC Chiu <Delphine_CC_Chiu@wiwynn.com>
> ---
>  .../aspeed/aspeed-bmc-facebook-yosemite4.dts  | 118 ++++++++++++++----
>  1 file changed, 93 insertions(+), 25 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
> index da413325ce30..ccb5ecd8d9a6 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
> @@ -821,41 +821,94 @@ imux29: i2c@1 {
>  &i2c11 {
>  	status = "okay";
>  	power-sensor@10 {
> -		compatible = "adi, adm1272";
> +		compatible = "adi,adm1272";
>  		reg = <0x10>;
>  	};
>  
>  	power-sensor@12 {
> -		compatible = "adi, adm1272";
> +		compatible = "adi,adm1272";
>  		reg = <0x12>;
>  	};
>  
> -	gpio@20 {
> +	gpio_ext1: pca9555@20 {

That's wrong name.


>  		compatible = "nxp,pca9555";
> -		reg = <0x20>;
> +		pinctrl-names = "default";
>  		gpio-controller;
>  		#gpio-cells = <2>;
> -	};
> -
> -	gpio@21 {
> +		reg = <0x20>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <94 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-line-names =
> +		"P48V_OCP_GPIO1","P48V_OCP_GPIO2",
> +		"P48V_OCP_GPIO3","FAN_BOARD_0_REVISION_0_R",
> +		"FAN_BOARD_0_REVISION_1_R","FAN_BOARD_1_REVISION_0_R",
> +		"FAN_BOARD_1_REVISION_1_R","RST_MUX_R_N",
> +		"RST_LED_CONTROL_FAN_BOARD_0_N","RST_LED_CONTROL_FAN_BOARD_1_N",
> +		"RST_IOEXP_FAN_BOARD_0_N","RST_IOEXP_FAN_BOARD_1_N",
> +		"PWRGD_LOAD_SWITCH_FAN_BOARD_0_R","PWRGD_LOAD_SWITCH_FAN_BOARD_1_R",
> +		"","";
> +	};
> +
> +	gpio_ext2: pca9555@21 {

Node names should be generic. See also an explanation and list of
examples (not exhaustive) in DT specification:
https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation


>  		compatible = "nxp,pca9555";
> -		reg = <0x21>;
> +		pinctrl-names = "default";
>  		gpio-controller;
>  		#gpio-cells = <2>;
> -	};
> -
> -	gpio@22 {
> +		reg = <0x21>;
> +		interrupt-parent = <&gpio0>;
> +		interrupts = <94 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-line-names =
> +		"DELTA_MODULE_TYPE","VSENSE_ERR_VDROP_R",
> +		"EN_P48V_AUX_0","EN_P48V_AUX_1",
> +		"MEDUSA_BOARD_REV_0","MEDUSA_BOARD_REV_1",
> +		"MEDUSA_BOARD_REV_2","MEDUSA_BOARD_TYPE",
> +		"HSC_OCP_SLOT_ODD_GPIO1","HSC_OCP_SLOT_ODD_GPIO2",
> +		"HSC_OCP_SLOT_ODD_GPIO3","HSC_OCP_SLOT_EVEN_GPIO1",
> +		"HSC_OCP_SLOT_EVEN_GPIO2","HSC_OCP_SLOT_EVEN_GPIO3",
> +		"ADC_TYPE_0_R","ADC_TYPE_1_R";
> +	};
> +
> +	gpio_ext3: pca9555@22 {

Please fix it everywhere.

In this patch and all your future patches. I keep repeating the same
feedback...


Best regards,
Krzysztof


