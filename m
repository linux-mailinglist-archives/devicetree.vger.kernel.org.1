Return-Path: <devicetree+bounces-222380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8797BA8821
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:03:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82EEE3A10AD
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 09:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F1D8272E61;
	Mon, 29 Sep 2025 09:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dDBoMyhc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AA2208994
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 09:03:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759136594; cv=none; b=BjbdnfdxxeW/nSZKkphgO6suA02rU+uojKqK+5Rla+WM+KXcwixzHagZ4Aq8KPbk16nfGei+GeIB51YOBKa1dR5Dkkp+P+3eD+bXlq/tj24UVJ8fycm6SG0kV9U5RgxWDxRfPXXvbhPhYzm2i9VcuBMCiMSOryycEUJGlIbbL6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759136594; c=relaxed/simple;
	bh=YDkB1cC1lei3HB7fQRoAVOGBWOAs06N/aEhJ0IeU4eQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d30eqD7XvWZS8DausVhDdO+EY6eEKzCfH7nB9EXn5bF4/RUfwWJPNcgBtAARGi66pgUS5aqgnYl2Au9MdGnQxhs4uSd0nB2yR2P6gZBDzzpolqrFT40N9Bwq66QzVdU/Z4lMTyD8DFsDubm7k5ef88foeV4nZ2Elj76FgCDBjKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dDBoMyhc; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-5796051ee6aso913662e87.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 02:03:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759136590; x=1759741390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SQ1kR/YUyZ1nKY+v1ygHX/aXlVuO3SwbSwJRstRbb9s=;
        b=dDBoMyhc87yvAJOHgaElDJMprkqDNtYY8fXo7lOlADdonOZ/cJYXHdOcxQ9rQueuBR
         LERpIoy2kOXv+/KEbIpKqeKu4wq95AGTEyiEwXZHtnI8HMTLzF6sj6Blh35h+Hvgefoq
         sRYzZtXijZjKxrJR9T2PYGrsGZbPNBNnHMzGHfZwRHZOXi02I0yV3VWAiIeWjMJ2ncvh
         XiuUscm1Ea/CkRtqt7sBf4rVE+9G2kcqO8Fes2EZW0At0HqeddhTqIWWjS+xb31wKSwg
         7c3FTEqrVe4FnFJPctZJJTaHeTjtS/eWyZgWAjxas/nJToi0p3Yyefp0kHabOB2VJVrw
         Z5mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759136590; x=1759741390;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SQ1kR/YUyZ1nKY+v1ygHX/aXlVuO3SwbSwJRstRbb9s=;
        b=lS7MBM/6Yms79XuRxVUF/18UWO8sZgcXMYxJhm4tSVbHRFYsHSn4lq3N2340Npf0lH
         mpysgE1MDLuKRnjiA+esdB3GJ9dOiFKD3xzLP04VKaBcdFB7pAOHgPKNsh8rvhdo928k
         Gi6utPcc2dqJNW64loitCkMwgjArNqfoHapM/tjIYeBPj2IB27ttCeDcy7Ce7eoAdjlV
         gWteUArHZSm0vH3Ttc802WNybLQTeakxAMIfdW7mQK/DTvRiFjL5h/xHkaDyQPFaoOk5
         W2mmjvi9EGXmZzI6ADMil7wVJ4go+SUlagTVviTwP2GeZ3XVfY0uPRovbrht9RCzv1/m
         i6GQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOKK/u6Uhecm+SXwxsDe9QRI/lycPqc0H7zdC4Aq2ooCYxfE7SyV6FKUh/70dAnjxf07xH9RwdcH2x@vger.kernel.org
X-Gm-Message-State: AOJu0YxXFTpvx1xL5pwrkRTEe9YgVOOq44RUtggoXrrS3HQKAZqp0y30
	3eh+sokQzIGDCX5pu8Bw7tOM5f8Ef9f/Ain5Jiiq2kIgKA6UP4hHf0AhcIMjki3vmJk=
X-Gm-Gg: ASbGncug/KKoXNtY7RJkZoiwSdwfgs9/7q+sg+RYTuSh2D1IL7FEShlI2cYJBPkuUHk
	XqnjvHWQbWAK2jByZ930V6oHNSh2w1O5wmj3Ln0vd1INNUq/KENDv8YHfvbpXU4yrWNePn1CbHP
	n80FUI6+iobLrNOA475NZOZ++gy7ipDPDwYf7H8hMNvzoFvnnBTiclfldvDUF8xmzdWchsE4/fc
	LLD1NWPddzYxxhISs032I4Obu5is+8r7i+2t60PSIytnGqSc+R8KFwGRE/hT0dkDnqfX2qHyIA/
	0MM4tm6Fr6dbF4X9AQ3gAlKVSwoW40Rg9r8PkFVdErpXJhAxxpHD26TpQeLv5wahpCp5ShV22w5
	aQrf0J88rlZCUBhB4ZY3KIBwyJsuN2XL0vgyNE/7SGQcujuaZG7ro21+rrpxkXjH2tNynUflWo+
	2L6A==
X-Google-Smtp-Source: AGHT+IFxskxasAcUCzpw5FlswrTo8wIg2CVztTjf3s5U11u0jYRFd9ekebyNAAIZnj0TT5QUNQxd4w==
X-Received: by 2002:a19:5212:0:b0:584:2ad8:7cd1 with SMTP id 2adb3069b0e04-5842ad87ee4mr1305280e87.3.1759136590100;
        Mon, 29 Sep 2025 02:03:10 -0700 (PDT)
Received: from [192.168.1.100] (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316ff552esm4006185e87.127.2025.09.29.02.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 02:03:09 -0700 (PDT)
Message-ID: <d6530142-469e-4859-ac71-fd4af82ed4be@linaro.org>
Date: Mon, 29 Sep 2025 12:03:08 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: qrb2210-rb1: Add overlay for
 vision mezzanine
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
 konradybcio@kernel.org, dave.stevenson@raspberrypi.com,
 sakari.ailus@linux.intel.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-media@vger.kernel.org, mchehab@kernel.org, conor+dt@kernel.org,
 robh@kernel.org
References: <20250926073421.17408-1-loic.poulain@oss.qualcomm.com>
 <20250926073421.17408-4-loic.poulain@oss.qualcomm.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250926073421.17408-4-loic.poulain@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/26/25 10:34, Loic Poulain wrote:
> This initial version includes support for OV9282 camera sensor.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |  5 ++
>   .../qcom/qrb2210-rb1-vision-mezzanine.dtso    | 76 +++++++++++++++++++
>   2 files changed, 81 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index d7f22476d510..bee021efc249 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -138,6 +138,11 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1.dtb
> +
> +qrb2210-rb1-vision-mezzanine-dtbs	:= qrb2210-rb1.dtb qrb2210-rb1-vision-mezzanine.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= qrb2210-rb1-vision-mezzanine.dtb
> +
>   dtb-$(CONFIG_ARCH_QCOM)	+= qrb4210-rb2.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= qrb5165-rb5.dtb
>   
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> new file mode 100644
> index 000000000000..3b6261131b75
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1-vision-mezzanine.dtso
> @@ -0,0 +1,76 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.

Year is missing, please set it.

> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/clock/qcom,gcc-qcm2290.h>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&tlmm {
> +	cam0a_default: cam0a-default-state {
> +		pins = "gpio28";
> +		function = "cam_mclk";
> +		drive-strength = <16>;
> +		bias-disable;
> +	};
> +};

This is a generic non-changeable MCLK3 pin configuration, which is
specific to the SoC. Like in a number of other cases please consider
to define this and other MCLKx pin configurations in the SoC .dtsi file.

> +
> +&pm8008 {
> +	status = "okay";
> +};
> +
> +&camss {
> +	status = "okay";
> +
> +	vdd-csiphy-1p2-supply = <&pm4125_l5>;
> +	vdd-csiphy-1p8-supply = <&pm4125_l13>;
> +
> +	ports {
> +		port@0 {
> +			csiphy0_ep: endpoint {
> +				data-lanes = <0 1>;
> +				remote-endpoint = <&ov9282_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci {
> +	status = "okay";
> +};
> +
> +&cci_i2c1 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	/* Vision Mezzanine DIP3-1 must be ON (Selects camera CAM0A&B) */
> +	camera@60 {
> +		compatible = "ovti,ov9282";
> +		reg = <0x60>;
> +
> +		/* Note: Reset is active-low but ov9282 driver logic is inverted... */
> +		reset-gpios = <&tlmm 18 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&cam0a_default>;
> +		pinctrl-names = "default";
> +
> +		clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
> +		assigned-clocks = <&gcc GCC_CAMSS_MCLK3_CLK>;
> +		assigned-clock-rates = <24000000>;
> +

It makes little sense to split properties with blank lines.

> +		avdd-supply = <&vreg_l3p>;
> +		dvdd-supply = <&vreg_l1p>;
> +		dovdd-supply = <&vreg_l7p>;
> +
> +		port {
> +			ov9282_ep: endpoint {
> +				link-frequencies = /bits/ 64 <400000000>;
> +				data-lanes = <1 2>;
> +				remote-endpoint = <&csiphy0_ep>;

It's quite strange to see CSI0 and MCLK3 in the same boat, but the
schematics says so.

> +                        };
> +                };
> +	};
> +};

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

