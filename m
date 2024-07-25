Return-Path: <devicetree+bounces-88088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE94493C0DE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 13:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3EE6F1F22318
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2024 11:33:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF9771991CF;
	Thu, 25 Jul 2024 11:32:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HYWDi9za"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D75BF198A3E
	for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 11:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721907177; cv=none; b=PDuUxA5U42YMrNIlpLOd1HESZtwiQzzDncOpRYv9xDjaNYOLLDNTbUpcKR29ItmWgfogTy7mOQuis4qDgHuMM+a/9WtTczyPdDO2TBg7PTH+VMm5iIDu7zRxCG/03twKxW9eSvgmF9tuXAfEIgT/yydOGj2xR/XNNZ5pNu9E1LU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721907177; c=relaxed/simple;
	bh=vLVT2dmJtzRMqR7wdki8ubcQEcAqgRgxqN11pDymsDg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=esEvAPIJEucL4TIQxBR8mg3kNKfYgwRO48ggfrNvgNreLVZxbBU4RLW+UKCB6YiwMTmWadeWcvOlXx8U4X9cDg/5xxsmAv/PFajwj9fWwF00z4QDVLMhZ170GrbaTm/HstQR9u7qFcAL+/7DC1weHXx0GNcFsyVep5U0U6EBAP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HYWDi9za; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-427d2cc1c4eso5808145e9.1
        for <devicetree@vger.kernel.org>; Thu, 25 Jul 2024 04:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721907174; x=1722511974; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=05jFSS4FK+T4+v4aB/xXAgNXrGo90zcvQYL+PFEGhs8=;
        b=HYWDi9zaEQmjmNQ5c3AjuiottDnhT24v2sP/JpiKJOJ14HVpOIVugmuHWoADzx+DpV
         qGmeb4shfqn/BHgkYKS1xelCjffWLb1BmFrwMv/O0nY/8j6ahZE6eDEz+Rh2SD+qy1rs
         D7BcrFgawdYBHlM+V+JEEZymsY3IWhgIB4oHw5vAbHQBnjwZn09SDgUytcuSxAQJ+C0/
         zbAJLD7MuIvjImpuFBTXnc80QT656cZBOYJKWBDY19TurM/XBwnBx7Rw/HRZMzYOZVBH
         BHz8uWKw8mKOqlo0m63AqMarA2fjmyK9YQ0IvyDWKxpRHBu8x+C2uMgL2pPrWirUaA1Z
         clIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721907174; x=1722511974;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05jFSS4FK+T4+v4aB/xXAgNXrGo90zcvQYL+PFEGhs8=;
        b=FkRpZhIPJXXx4Xa4eg0i1cgfh/x4BXoo6+gn+AwjVjjZ8xO9JaZJJZGG+9I9uKsvzM
         HXk6BRF8KTx0HXjUcrR7yazl20MJvnbPkn69UWVDBC3r+ZyUI+dDzh7etd3R7P2XyZz9
         FQKGbdD6qbxJM4WBo3D3HQAafG0XxAvrlVN7qahzZzP/cdQnoE5hzh7dVl8niLZp10qf
         4EJTbFvRTIQLYFK2l3FpP9kqpMeF1oPW/7rDaNuqnoZ3xmuTSpmZfsc26QUJmSaUNTFb
         n20km+ML37DKoOhYImek8q4YGwySltLWjhjoHGSJ+j74rRUzXuE7LKuWStmw7jw5ogar
         XaUw==
X-Forwarded-Encrypted: i=1; AJvYcCXCzQ8tgUKNFN1sZGMHret4ZmhG04e60yHZWpTEkPW2+2Ngrwe+zgL7MnjSl4Qcw7maLlPIiEgK70RjbgOjZaQ7Kn2E9TlTCz0Frw==
X-Gm-Message-State: AOJu0YyQfaZuvoPgzjasVdAEsc2s0LiP2GFwiCSCajkyA4t+EqTdYT7t
	vLLk92NDkD9JiOe/uGSQuIx7qPyD//ixMjFNG2g6TPYBXlkiY56M0gaXGFLSL70=
X-Google-Smtp-Source: AGHT+IH3FobjnIT9ezOvkBxmGoeb1bIx5tKpCWIG+BFLVBcWGSdq0/JnkW7t18DR7UV+tcRQ8GNnSg==
X-Received: by 2002:a05:600c:1c21:b0:426:6f31:a605 with SMTP id 5b1f17b1804b1-42805711950mr14683645e9.17.1721907174002;
        Thu, 25 Jul 2024 04:32:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-428081420b1sm15803455e9.45.2024.07.25.04.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jul 2024 04:32:53 -0700 (PDT)
Message-ID: <e4ab2fc9-eac4-4ab7-9346-d4129fd778e6@linaro.org>
Date: Thu, 25 Jul 2024 13:32:51 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: imx93-11x11-evk: add bt-sco sound card
 support
To: Shengjiu Wang <shengjiu.wang@nxp.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: shengjiu.wang@gmail.com
References: <1721897948-6306-1-git-send-email-shengjiu.wang@nxp.com>
 <1721897948-6306-2-git-send-email-shengjiu.wang@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <1721897948-6306-2-git-send-email-shengjiu.wang@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 25/07/2024 10:59, Shengjiu Wang wrote:
> Add bt-sco sound card, which is used by BT HFP case.
> It supports wb profile as default

<form letter>
Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC (and consider --no-git-fallback argument). It might
happen, that command when run on an older kernel, gives you outdated
entries. Therefore please be sure you base your patches on recent Linux
kernel.

Tools like b4 or scripts/get_maintainer.pl provide you proper list of
people, so fix your workflow. Tools might also fail if you work on some
ancient tree (don't, instead use mainline) or work on fork of kernel
(don't, instead use mainline). Just use b4 and everything should be
fine, although remember about `b4 prep --auto-to-cc` if you added new
patches to the patchset.
</form letter>

> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> index a15987f49e8d..7ed75fb287df 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -80,6 +80,30 @@ reg_usdhc2_vmmc: regulator-usdhc2 {
>  		off-on-delay-us = <12000>;
>  		enable-active-high;
>  	};
> +
> +	bt_sco_codec: bt_sco_codec {

No underscores, generic node names. Please follow DTS coding style.

> +		#sound-dai-cells = <1>;

Order properties and nodes according to DTS coding style.

> +		compatible = "linux,bt-sco";
> +	};
> +
> +	sound-bt-sco {

Why this is not "sound"?

How many sound cards do you have there?

> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "bt-sco-audio";
> +		simple-audio-card,format = "dsp_a";
> +		simple-audio-card,bitclock-inversion;
> +		simple-audio-card,frame-master = <&btcpu>;
> +		simple-audio-card,bitclock-master = <&btcpu>;
> +
> +		btcpu: simple-audio-card,cpu {
> +			sound-dai = <&sai1>;
> +			dai-tdm-slot-num = <2>;
> +			dai-tdm-slot-width = <16>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&bt_sco_codec 1>;
> +		};
> +	};
>  };
>  
>  &adc1 {
> @@ -345,6 +369,18 @@ &mu2 {
>  	status = "okay";
>  };
>  
> +&sai1 {
> +	#sound-dai-cells = <0>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_sai1>;
> +	pinctrl-1 = <&pinctrl_sai1_sleep>;
> +	assigned-clocks = <&clk IMX93_CLK_SAI1>;
> +	assigned-clock-parents = <&clk IMX93_CLK_AUDIO_PLL>;
> +	assigned-clock-rates = <12288000>;
> +	fsl,sai-mclk-direction-output;
> +	status = "okay";
> +};
> +
>  &usbotg1 {
>  	dr_mode = "otg";
>  	hnp-disable;
> @@ -528,6 +564,24 @@ MX93_PAD_CCM_CLKO2__GPIO3_IO27			0x31e
>  		>;
>  	};
>  
> +	pinctrl_sai1: sai1grp {
> +		fsl,pins = <
> +			MX93_PAD_SAI1_TXC__SAI1_TX_BCLK			0x31e
> +			MX93_PAD_SAI1_TXFS__SAI1_TX_SYNC		0x31e
> +			MX93_PAD_SAI1_TXD0__SAI1_TX_DATA00		0x31e
> +			MX93_PAD_SAI1_RXD0__SAI1_RX_DATA00		0x31e
> +		>;
> +	};
> +
> +	pinctrl_sai1_sleep: sai1grpsleep {

Does not look like tested. Srsly, NXP, start doing basic tests before
posting your code.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).


Best regards,
Krzysztof


