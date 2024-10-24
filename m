Return-Path: <devicetree+bounces-115210-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DD81E9AE8C9
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:29:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 90B90B2B6D0
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 14:22:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B39421E7645;
	Thu, 24 Oct 2024 14:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tXbjfB/r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD791E6316
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 14:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729779114; cv=none; b=I1AFESP/Z2ARe+HUBvdJlPfQL7CX16FicgSEUbQhzHn/W1PUk6cl53F/bbu+Z5DqKYMidfqlK/1JSdCjFMLDSH/lEq3QZZ5rxr2l4rVgU20omlkjam+bXfPM1EHPCRJ5DL0CxBSPpA733NSWY9AR/uSWS/rdAI9VD8FtobHa6sY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729779114; c=relaxed/simple;
	bh=lqmT+r653RdRrzSZOkkjKvp3hFHCnHasX2x/4lhXbvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HUz1ztDWFarAeql+mVGD2MeXC3ALRGwWP/ijJFCazbwfosUX53ExG13czVg+zQxu71JXq8CnEEF+l5SnKYS3iVIAN5xNF2JOFDJUwHvmjXa5Ufn44UL1qFFhqOjqQvqgOJyQOyXmB4wQTkTHIEipoDwLJR+GNj5fh7tnqYWyzq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tXbjfB/r; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so948776e87.3
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 07:11:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729779110; x=1730383910; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=hBTDZGJSJezW1oIqUmwfyQ/68sB4Fcb6GTFi1oxGtnk=;
        b=tXbjfB/rF4yYfNG/b89wEHGTVVFH9gMLCW5NXRMsf6bTu6ud9yRcHH9WUHmssuZsX+
         OAT5Xzm+iFGGDtBN4B3yGHC7oNYu3wFs2UuGcBYvSbvYRGVfkX85J1QhWbRbF1nHYrGB
         oq1idDiAk2YFDrKtYFwmalO6jRK3BkFBxB2RqWExS/yn0Yc1v1EaiDFiuUZw47a5KKTH
         ffDKWJCxP7h4LysT1SHiBJ70YzuzT2sn9nS5unEyoNV3OOEccy6uMTWJ2KUV5C7jZGHm
         8rqVE5IRBizAQmk5GuU6FrX8B8XhZPwpDD3y13NfxEZMae02r4+up9st920oFiQF3kq0
         R28g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729779110; x=1730383910;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hBTDZGJSJezW1oIqUmwfyQ/68sB4Fcb6GTFi1oxGtnk=;
        b=KycbPSh8iY0VKdjDrwq8XGQlyD/hJtdBHOTiGej09OIqVYdY2d2ywZa1nF/by2ocu2
         y3RsRTPxA4WHThjebZ+IBQYWJ4n1He/xV294eSE/F6RaFHhnFZ21xGxDAp+yulGcKG8B
         JONuBgGpYijqxoJS6m49ZL/KvY+aDq4foTGsEBfJy7MAcHBw/8ciXoLNh0eENeKLxP3M
         tdYnwPalx77ErrIwm5b5U+26tjl9ba7ZhbHc+ArVQPdxDd8XklWXusewja/h347Zm0qK
         aE+OawWKOFIvlxDUVreWVPMNt3SrKCec229b1KboN27x5yrDwQDJmhzJex9brfD2xh6h
         dBDg==
X-Forwarded-Encrypted: i=1; AJvYcCVU292Yj+Lh+m6GeJOq4E4G3Bn7kRze8IVLu1J/rjoL68cUgIXenUY/4Pw+KpdAc79W7g8+LQsxxq8r@vger.kernel.org
X-Gm-Message-State: AOJu0YxF2DNIqwglyx0IA9v/9Who2+h0zfDKeN5YWdkHbmNRP5cdBq5B
	aFcKbsLSa15wmq8WGHWVjLhvzI6/JGS3Ag28j9PWfp36vk/H34TGtIiBg5CpNKE=
X-Google-Smtp-Source: AGHT+IGg7is/kIrzc6VmTxx5IqP0aKqapiA+TM635IqbIW5Gb9gpSoSXMadGLLvGOyI4kBAuaUniOQ==
X-Received: by 2002:a05:6512:1054:b0:539:efdb:4324 with SMTP id 2adb3069b0e04-53b23debc01mr1603314e87.21.1729779110076;
        Thu, 24 Oct 2024 07:11:50 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a2243ee9esm1392073e87.275.2024.10.24.07.11.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Oct 2024 07:11:49 -0700 (PDT)
Date: Thu, 24 Oct 2024 17:11:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Tingguo Cheng <quic_tingguoc@quicinc.com>
Cc: quic_fenglinw@quicinc.com, quic_tingweiz@quicinc.com, 
	kernel@quicinc.com, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: qcs615: Adds SPMI bus, PMIC and
 peripherals
Message-ID: <ddonr55gfcmaj74ciowd23y2qtq3l6yj7g6hp63xoojvkgepwr@czigbkgexbpj>
References: <20241024-adds-spmi-pmic-peripherals-for-qcs615-v2-1-f262ba243b63@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241024-adds-spmi-pmic-peripherals-for-qcs615-v2-1-f262ba243b63@quicinc.com>

On Thu, Oct 24, 2024 at 04:09:48PM +0800, Tingguo Cheng wrote:
> Add SPMI bus arbiter and include pm8150.dtsi for PMIC peripherals in
> pmm6155au which is a variant of pm8150. The power key and volume do-
> wn key are controlled by PMIC PON hardware on pmm6155au.
> 
> Signed-off-by: Tingguo Cheng <quic_tingguoc@quicinc.com>
> ---
> This patch depends on the patch series:
> - https://lore.kernel.org/all/20241022-add_initial_support_for_qcs615-v4-0-0a551c6dd342@quicinc.com/
> ---
> Changes in v2:
> - Include "pm8150.dtsi" for QCS615 PMIC instead of creating a new
>   qcs615-pmic.dtsi in the case that pmm6155au is a variant of pm8150.
> - Fixed comments from community in V1.
> - Link to v1: https://lore.kernel.org/r/20241014-adds-spmi-pmic-peripherals-for-qcs615-v1-1-8a3c67d894d8@quicinc.com
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 27 +++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qcs615.dtsi     | 23 +++++++++++++++++++++++
>  2 files changed, 50 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index ee6cab3924a6d71f29934a8debba3a832882abdd..71ea0cb32eebed713b2a80ab692b14fdb4bd0ce4 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -6,6 +6,7 @@
>  
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "qcs615.dtsi"
> +#include "pm8150.dtsi"
>  / {
>  	model = "Qualcomm Technologies, Inc. QCS615 Ride";
>  	compatible = "qcom,qcs615-ride", "qcom,qcs615";
> @@ -210,6 +211,32 @@ &rpmhcc {
>  	clocks = <&xo_board_clk>;
>  };
>  
> +&spmi_bus {
> +	pmm6155au_0: pmic@0 {

There is a label already, please use it.

> +
> +		pon: pon@800 {

No, use the label syntax instead of extending the node in-tree.

> +
> +			/delete-property/ mode-bootloader;
> +			/delete-property/ mode-recovery;
> +
> +			pon_pwrkey: pwrkey {
> +				status = "okay";
> +			};
> +
> +			pon_resin: resin {
> +				linux,code = <KEY_VOLUMEDOWN>;
> +				status = "okay";
> +			};
> +		};
> +
> +		pmm6155au_0_gpios: gpio@c000 {};

What for?

> +	};
> +
> +	pmm6155au_1: pmic@1 {
> +		status = "disabled";

Why?

> +	};
> +};
> +
>  &uart0 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index ac4c4c751da1fbb28865877555ba317677bc6bd2..3fc928913239cfc61c24d1b16c183b96f38e589d 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi

Don't mix SoC and board changes into a single patch, unless they are
really touching the same function. In this case they are not.

> @@ -517,6 +517,29 @@ sram@c3f0000 {
>  			reg = <0x0 0x0c3f0000 0x0 0x400>;
>  		};
>  
> +		spmi_bus: spmi@c440000 {
> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0x0 0x0c440000 0x0 0x1100>,
> +			      <0x0 0x0c600000 0x0 0x2000000>,
> +			      <0x0 0x0e600000 0x0 0x100000>,
> +			      <0x0 0x0e700000 0x0 0xa0000>,
> +			      <0x0 0x0c40a000 0x0 0x26000>;
> +			reg-names = "core",
> +				    "chnls",
> +				    "obsrvr",
> +				    "intr",
> +				    "cnfg";
> +			interrupts-extended = <&pdc 1 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "periph_irq";
> +			interrupt-controller;
> +			#interrupt-cells = <4>;
> +			#address-cells = <2>;
> +			#size-cells = <0>;
> +			cell-index = <0>;
> +			qcom,channel = <0>;
> +			qcom,ee = <0>;
> +		};
> +
>  		intc: interrupt-controller@17a00000 {
>  			compatible = "arm,gic-v3";
>  			reg = <0x0 0x17a00000 0x0 0x10000>,     /* GICD */
> 
> ---
> base-commit: de938618db2bafbe1a70c8fc43f06ccdd60364b2
> change-id: 20240929-adds-spmi-pmic-peripherals-for-qcs615-16ee53179a7d
> prerequisite-change-id: 20241022-add_initial_support_for_qcs615-2256f64a9c24:v4
> prerequisite-patch-id: 09782474af7eecf1013425fd34f9d2f082fb3616
> prerequisite-patch-id: 624720e543d7857e46d3ee49b8cea413772deb4c
> prerequisite-patch-id: 04ca722967256efddc402b7bab94136a5174b0b9
> prerequisite-patch-id: ab88a42ec69ad90e8509c9c5b7c6bdd595a7f783
> prerequisite-patch-id: 918724fafe43acaa4c4b980bfabe36e9c3212cd1
> prerequisite-patch-id: 3bd8edd83297815fcb1b81fcd891d3c14908442f
> prerequisite-patch-id: fc1cfec4ecd56e669c161c4d2c3797fc0abff0ae
> 
> Best regards,
> -- 
> Tingguo Cheng <quic_tingguoc@quicinc.com>
> 

-- 
With best wishes
Dmitry

