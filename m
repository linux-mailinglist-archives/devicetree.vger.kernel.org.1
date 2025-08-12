Return-Path: <devicetree+bounces-203880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D660B22BEF
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 17:45:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B4B2E6203D2
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 15:45:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34112F530B;
	Tue, 12 Aug 2025 15:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hhqohvny"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBC431E835B
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 15:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755013529; cv=none; b=TgK/o82WeOuqCtmQFmfZxILQmdbQ1oUcE9YxDVT642YzpLV7gjzSxxQxGYlGDsTj+8Lso5uub8NzWenwUgU8iATwK8scV1cdpOKrRP6vJvPbeQbUZMjhWlrtaCSH6YpOSF3BDz9yCLxy/65ZXOjgGuzvUB3N03mKXt57/K9PTb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755013529; c=relaxed/simple;
	bh=5Se+F+1EMlhc69tsHduseJG4sR0ixpFpMm5/AlgsW7s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YPhjY+602CW9nTy3980Yrfq2mUmUjC9ODbsDEK3Bk9cdjPwHBweKd3jbeJXAulFYNbkRiWl+xU+FjoAGoHU3U7fZCOfX42jG6hMiO9yhr7Y25XzafFCSjQfww5p8TfwGHfUvTWFsBiowQzV4YaqlbnTDe7wSRBXOGUjJK6dpmSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hhqohvny; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-615622ed70fso9040928a12.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:45:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755013526; x=1755618326; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=w7CnICIdbhtr4UaouZj4YBT6fSBX0mSxz7ag9u7Kuww=;
        b=hhqohvnyDtrWigVBbztXbpu8l5A/E9ddO7x6hj2u6h+FGbe9xI9Qp93uXswdQ1znG5
         kaeB1/qlTlHDozUsqHjAYHViBI7Ix6BUepCamdBpWMi029STnXLmLnzOc2BVPOC6+VA9
         7eJEIr5roYWq8QsEf0fOCHVdoshjMCUpDZNcde0o6HJTNVXoEp/XXdrnvul3YuzmZFxV
         YQh1EPdScywB1jgCQIC3pVIgcKjKDF6VZ79H27aJUmrzZWcJxUmR+ZX/JY/F9Tbx3ubv
         JJB5FuJ7V5rFJwkzkUTfPq/4k3EcFuaQsYuCUp2fDGkTk4z4Ulij69ViMvLvrZ1OicdL
         GCJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755013526; x=1755618326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w7CnICIdbhtr4UaouZj4YBT6fSBX0mSxz7ag9u7Kuww=;
        b=oZ9QDT99ePFe1w1EkbjqjKa60/XIZWqa4O2UJWxdxB3dozH47aUblNVIfPZyGJGqBN
         +OaMUHqlbH/HMUSz6zZdZCGHYNWGKuQTRQ79YQYHVj/xgq+DoZbo6ptL+8c4FNMaBomT
         68CDVCWxbQ8CBajD25mHGpQOwvVkod0Mp+yEzpASbWb4fE5UQnOOcNxsE4NwPbd2phSD
         Mr6fN7gfFFzNKWd65lehadS5wkXHZkN5Ub6C8c1FOgz4605MLpFgvartkM6Xs518FAfv
         y4lwrqsGDwS9bi8c7WqcUM4FKFdatOw6HJ7hc81sd0I+2+4Y0EmzxDhwDaXNvrkkZCx7
         vrDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUUVybu7tyWUw0DHjasKK+Yxi6ChnvMxdEAUfAcmpM1l1gAhdsTvVbGMHNYpfHkq4oBsfaYp5/FRvZV@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl+YS8eEfw6bHQrs4J1D5vZYQQafV3fdABSRwoxqTfO2ig3Go3
	P0n5ZMlFkgxPUoVHM10wpOwQS4gCCmnuUNpBYTZ47cC2o5YW07kEx225wcUbU5H3hs8=
X-Gm-Gg: ASbGncvNRuL60EkmUfesAdlJ7w1C3zcBZbn+e5R8UA2w8i8a77UxIYs8Y1QGYs7QJz6
	XvG+C5UBpSZ1vzNZc7BL/kNBYgN/cv5kKI6SjBU6v3XbJNVAjTx/Zr36k4+N+BSC/yDKPbWaFSA
	jLILisUhfwe8f3kwQwitOKuQIeyeF+jysJPYW/f6Gzl/15sW5uLX3PFWYjm7vNr5DFZD83I0urt
	R2TmcTLlWTwMjQ/zxE1hYvLjTDIErLI+MLZtNqBmA9+3XEKpmcgjkj1OZTUwhffNSsf+yMi4ndE
	mpmu6dNJtw0TZ1zgq7mlG5NPihfnuG5GLyBfVAKuT6AAfIbVmdrivWyrvAFoEwxzNU8etw5CjJI
	5RnIkJlzTzI4FUBClz2G+MG29guOsaaos7ECnl/RUoDKL3Q==
X-Google-Smtp-Source: AGHT+IE/DFre7Dkj0Kr639ydBYp88P4MCJv/kcPa8lmuCXkFGm+IEWxy7IQ8BXl02A6K0PyH4aL3dw==
X-Received: by 2002:a17:907:3ccc:b0:ad8:87a0:62aa with SMTP id a640c23a62f3a-afca3986331mr19664466b.27.1755013525782;
        Tue, 12 Aug 2025 08:45:25 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef30:167b:7c8c:a586:8ebd])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a750253sm2230386566b.86.2025.08.12.08.45.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 08:45:25 -0700 (PDT)
Date: Tue, 12 Aug 2025 17:45:21 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100-romulus: Describe PCIe
 power supplies
Message-ID: <aJthkXa8BZMoW3CQ@linaro.org>
References: <20250812-topic-romulus_wifi_pci-v1-0-2adbed1b1f1d@oss.qualcomm.com>
 <20250812-topic-romulus_wifi_pci-v1-1-2adbed1b1f1d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250812-topic-romulus_wifi_pci-v1-1-2adbed1b1f1d@oss.qualcomm.com>

On Tue, Aug 12, 2025 at 03:47:23PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the power plumbing to allow fully suspending the slot and the
> connected SD controller.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Are you sure these supplies really exist on the board? E.g. on the
x1e001de-devkit, Windows toggles all these GPIOs, but there doesn't seem
to be anything connected to two of them, the 12V supply is simply always
on.

Even more importantly, for a laptop I would expect they use some part
that doesn't need a beefy 12V supply. I don't have the datasheet for
RTS5261, but e.g. in [1] this chip is explicitly advertised with 3.3V
power.

I guess it's hard to be sure without schematics and it surely doesn't
hurt to toggle these GPIOs like on Windows, but perhaps a comment that
some of these likely don't exist would be good ...

[1]: https://www.sdcard.org/cms/wp-content/uploads/2023/06/SDA_computex2023_Realtek.pdf

> ---
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi  | 71 ++++++++++++++++++++++
>  1 file changed, 71 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> index 0fd8516580b2679ee425438cb73fd4078cb20581..3a4df8f8066ae699eb7d889530f976fce565757e 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi
> @@ -331,6 +331,54 @@ vph_pwr: regulator-vph-pwr {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_pcie_12v: regulator-pcie-12v {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "vreg_pcie_12v";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +
> +		gpio = <&pm8550ve_8_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&vreg_12v_x8_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_pcie_3v3_aux: regulator-pcie-3v3-aux {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "vreg_pcie_3v3_aux";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 8 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&sde7_aux_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
> +	vreg_pcie_3v3_main: regulator-pcie-3v3-main {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "vreg_pcie_3v3_main";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmc8380_3_gpios 6 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&sde7_main_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
>  	sound {
>  		compatible = "qcom,x1e80100-sndcard";
>  		model = "X1E80100-Romulus";
> @@ -1022,6 +1070,12 @@ &pcie3_phy {
>  	status = "okay";
>  };
>  
> +&pcie3_port {
> +	vpcie12v-supply = <&vreg_pcie_12v>;
> +	vpcie3v3-supply = <&vreg_pcie_3v3_main>;
> +	vpcie3v3aux-supply = <&vreg_pcie_3v3_aux>;
> +};
> +
>  &pcie4 {
>  	status = "okay";
>  };
> @@ -1066,6 +1120,13 @@ rtmr0_3p3_reg_en: rtmr0-3p3-reg-en-state {
>  	};
>  };
>  
> +&pm8550ve_8_gpios {
> +	vreg_12v_x8_en: 12v-x8-reg-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
> +};
> +
>  &pm8550ve_9_gpios {
>  	rtmr0_1p8_reg_en: rtmr0-1p8-reg-en-state {
>  		pins = "gpio8";
> @@ -1082,6 +1143,16 @@ edp_bl_en: edp-bl-en-state {
>  		input-disable;
>  		output-enable;
>  	};
> +
> +	sde7_main_reg_en: sde7-main-reg-en-state {
> +		pins = "gpio6";
> +		function = "normal";
> +	};
> +
> +	sde7_aux_reg_en: sde7-aux-reg-en-state {
> +		pins = "gpio8";
> +		function = "normal";
> +	};
>  };

I think you should either do a full configuration (include power-source
and everything else essential as well) or omit this entirely, because
like this you will need the proper configuration from the boot firmware
anyway.

Thanks,
Stephan

