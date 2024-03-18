Return-Path: <devicetree+bounces-51352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2786887EFF7
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 19:51:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 82E15B22C45
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 18:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0238E4779F;
	Mon, 18 Mar 2024 18:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G6GVTNt0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B49056461
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 18:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710787857; cv=none; b=iLNVUAUqDqIM9wKT28ANZ1DQ3NygMeDlVMP3bopE7oPSdznMR/kPDyfs753xOGBU0ezcVaqN/Cq4OEoy5oWpLc/fOi4yLbVwzgVhUQDQvVSWNItDwFBo2vd1MAt6VqM7eY4vDSLDkTBooIoKmiVfrmiGYxT23UPwDph6siw0yl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710787857; c=relaxed/simple;
	bh=ZZnUzHL1R+g203H/X3W0UckOlqmasHtjX78IG3duC1c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=a7rwE1vXVdxWa/TvrtO/OBLtBYsZitcmZT76SHgiB89CyAFuSmWTFzxYvo5ULbSBKp3ufJnwo1Oe6CLYzk2VxD15zbEdMrTwbARFVnYeA8uvlp7tyUvSxZdT+HjFym6mQsedbFamA7dqHPGvEQ2aLWfnVyy/Wg5SOE7zE/ZpaII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=G6GVTNt0; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a44ad785a44so557936166b.3
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 11:50:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710787854; x=1711392654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NYnTvRYJCDpikaVcJBg4LOB/aMy9Y5IcqwiMloUXvu4=;
        b=G6GVTNt0mJ2FhcdOGCafGnIhGuBkxKnvdWVdfYZIai2nmPpnRd52Byk+qtYje5fAfF
         rzppg5rqVH0sXeW7UbAwQyCyogsVpJdCsCzgW1ZYgY1BTLFGeQK4CyIxp7CBzWxGOdWG
         SGITaY6h1oG+Kz+XcbpxojAhGWEMmbvtwDwjdS6NsgYoqt5/S09Qgf/JGmYhdLSznXrY
         zrRVjXnBdmPj0SkPmlG6XgGPa0lDn5eqSpv2WbJqSdtgJg3zf0t7pWJcnDTOFpjWpRMg
         NulN6uuDPwrB+sPNzAa37VRDnUS1T8SBCRPzpFu67dKxji5R2H95wHRft+nSIsxg/nku
         1FAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710787854; x=1711392654;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NYnTvRYJCDpikaVcJBg4LOB/aMy9Y5IcqwiMloUXvu4=;
        b=WjaWY9ShwAOgbL82ie1W6gVk7qn07AcxaWq+dFehLRE9omCpKXp4XwAo8IsOEH+gab
         g7nLEjBBHgORR8CypdJ61/+j2SiB9dI+SYb841C4yHvxmaSK/O1c1laypkqzNQZxP9ZV
         9DhrAiTsVNDcjoP13sh130ViY3DsGAal5qkDucpXxliUworowwHXtx+rw/OUM8KqW4yY
         yHkBHPj1gPXHOZVHWNpQjCVt2FXDTP2j+cm3cBM+HlcZO/j22nZacj8XoZGmA2fiFktl
         GG9J6PMXh+n8x7x3NGTfBa9QBffO5R5zu6X0QqjNF8DgyJrtYQMqPjI7bM+q/NiP/iIC
         LX4g==
X-Forwarded-Encrypted: i=1; AJvYcCU+qufDasNqndal1krdnCbeWDwzIjfR5DG2kMZQh6xjaHWk8xTNjqdMwt8dyT21pcK8Z/GN+4oNcff4qSuz6LRu9q1BgPK9YHrLMQ==
X-Gm-Message-State: AOJu0YwCP07y6kZ+IthHsdR/Y8LvM+MTCYo4ZE9zduwxPtnBzOmw5hxk
	56T3GPwqz/Ym5fKINAh837OmSzXugFzNxA25mB8expp5zDQbA36vUql9YaR+t8U=
X-Google-Smtp-Source: AGHT+IEgpn7lhcPgKF7K3fjaFNef1MdlCbVGRJYRoKe8iOu8Nlb0FYH17JMXL7Jdh+PzV8/Iff4o0A==
X-Received: by 2002:a17:906:af8f:b0:a46:d850:4784 with SMTP id mj15-20020a170906af8f00b00a46d8504784mr132185ejb.33.1710787854207;
        Mon, 18 Mar 2024 11:50:54 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.97])
        by smtp.gmail.com with ESMTPSA id o19-20020a17090611d300b00a46bd891b5bsm1519414eja.225.2024.03.18.11.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 11:50:53 -0700 (PDT)
Message-ID: <7f601f5e-98af-4a78-a3eb-04d814669973@linaro.org>
Date: Mon, 18 Mar 2024 19:50:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: imx93-11x11-evk: add pca9451a support
Content-Language: en-US
To: Joy Zou <joy.zou@nxp.com>, frank.li@nxp.com, ping.bai@nxp.com,
 lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de
Cc: kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev
References: <20240318095633.4079027-1-joy.zou@nxp.com>
 <20240318095633.4079027-4-joy.zou@nxp.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240318095633.4079027-4-joy.zou@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/03/2024 10:56, Joy Zou wrote:
> Support pca9451a on imx93-11x11-evk.
> 
> Signed-off-by: Joy Zou <joy.zou@nxp.com>
> ---
> Changes in v5:
> 1.adjust gpio@22 to the front of pmic@25.
> 
> Changes in v4:
> 1. modify the comment for uSDHC but not i2c.
> 
> Changes in v3:
> 1. modify the voltages constraints according to the imx93 datasheet.
> ---
>  .../boot/dts/freescale/imx93-11x11-evk.dts    | 111 ++++++++++++++++++
>  1 file changed, 111 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> index 9921ea13ab48..478a134d4416 100644
> --- a/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> +++ b/arch/arm64/boot/dts/freescale/imx93-11x11-evk.dts
> @@ -183,6 +183,104 @@ &wdog3 {
>  	status = "okay";
>  };
>  
> +&lpi2c2 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	clock-frequency = <400000>;
> +	pinctrl-names = "default", "sleep";
> +	pinctrl-0 = <&pinctrl_lpi2c2>;
> +	pinctrl-1 = <&pinctrl_lpi2c2>;
> +	status = "okay";
> +
> +	pcal6524: gpio@22 {
> +		compatible = "nxp,pcal6524";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pcal6524>;
> +		reg = <0x22>;

reg is the second property. Please do not introduce some other coding style.

Best regards,
Krzysztof


