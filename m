Return-Path: <devicetree+bounces-248799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA8CCD5C80
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:18:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 546EF300E3FF
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:18:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9734313555;
	Mon, 22 Dec 2025 11:18:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eLbt7u8H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F318D275AE3
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:18:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766402304; cv=none; b=i48HgPm16ZDFucYTkMXtLj7PS2gshsCWAloYLCFDrvG/BSi3V6ecCoC5r2qrw+k+5+adH8BNJk0zworiZ6w+USQNc6Hswm7l5yYOnk+qQgZp/tA8nVgbTCX1RvjusALcsY4Am0PL1HlnrL6N8chzO7XKDJcorH3jt2C8+wLqC1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766402304; c=relaxed/simple;
	bh=y2VplXurPY+PJR7CkrOdjaPooAL6MHR8YNC5Lz8z2s4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0au1hUou6KSwb0+0k1k2mh7lwbG6usm+STjIFo+EMsASH62ZzXPSk5wJPMU2DXqiHbiAL4OlUD2nrYPb9N6pGUsJiVGpDMffNVXBQRRZ9dEi9cVB7CPZEUVUmbIsuidSnqgMiWAtqHiGOzFPwOPOregnNWLtPp7W2Rt5rBVE7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eLbt7u8H; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-64b81ec3701so5467107a12.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:18:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766402300; x=1767007100; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=P7zPB0Fj60BtFrcAhKNEThzdtqddYqvCFvGAwUlxNL8=;
        b=eLbt7u8HcTArl4Gtc9AQNSpKDVd/N12zpWNCXTehXdLlAQ0WYFlWULNracq8rC2DfD
         eX5YCCKmDFM+Fc5z+jWfmfehxEj8xfh16al47FlL/bXzR6aj4iTTsktcxCO8kZ+zzccM
         5TB8TvscLab8YDdC0qzz7e0uI7w+LHgbMB549Us8SjNr+uO4qs7+BKCtGWvK/Vy99aUK
         ItqSd065peoJpKBqEyKz4yVrEp/M13MzliH3TqZel2I5Rf/zQh/4hsA24Ta0vz77HZBJ
         j3BiymS31uMjlnTGtE/KVaJ6fB092GnzKkBpDoOFXe6Mp+Q7SwGidNCdfZSzGtmm4O5e
         bxQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766402300; x=1767007100;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P7zPB0Fj60BtFrcAhKNEThzdtqddYqvCFvGAwUlxNL8=;
        b=skm7i0pDsPttUh8MxN5wZ/WgtXRd9unuoQkpu1W5pxQwicvvzrVlpOsDWLrJdHAYsk
         SERNuaxaJU15LKGkP7FwJIzUmed0+iOLG8ITuwdMfuBvHKPn2gYpNYkM3YnuCObhM/pT
         MGswpnCXT5i6eGtzxDEVOjNJFfq0c7hKBe0GRnjO6i/9989AFIHMbqW4010ndYaxgndB
         8FYfGpc4Qd+v9CNX/2JDzpceTK4q4MI0Pzi6755lRMh9iTQg9AbtjYRY4YO7byJEdXUo
         93pJU0ZD4SNJ0G7xXaKlAmcKwfBKlxLcPS4gqCHNu6xQzxYSaPwS5tsfhPFpeVgqcZR2
         zOMQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4SvolwjHB7WbiMjac1CJRk/D/9XxquGmtR+fd8RDW4yxcHvgDm6RqY3UFIsOCOgYFoqlowuUyWDHB@vger.kernel.org
X-Gm-Message-State: AOJu0YxEMgJZXXt4CdPgKn/Kr/JcZ0zsIaRiwcExoUh6T4JBgnaSVdk3
	nLwnPkXPKHu0jNKOVPmUkkqxNQIUCVTZp8cLc2YVVdjIiGvyn40giPseve0df1ZRB+g=
X-Gm-Gg: AY/fxX55kPoWGLZGeuhcWW2QvUkd6OI0OyEu8XvZu9rxKogPEbgjRrAbtp90Qgoz5vt
	5Lr2fSjMMr3hl+Wx7jGndfThbR2bTpmiYstchwjxGKvN2JIEWPJmp0V4sZjDkW3od2WXRP51L0L
	jHstDscEYkvlUnYWPXw+j4pmwkNckkIFBz3HL1pSs/Lh2kBql56KqX9xyFxcAXuwVSSCIv6WovE
	hkBo3SdntsD4SU0cXaL4Tdxrw74cuLqwi3bClnEePu4zMko2Yj3kZsr4kmHjY8SN4lnmfwDryij
	Pa9ExseryT8SgpYdcdXahRjBf+I65c8sZLxYCV4BZHsMRDAnGGjQ47UzjkgkneHE0/godOoyOnL
	11rXW5SBSyp6kVfMfmJRTx9uHiqniQYXZfQ42QIYIvn7+DO+ck1g7solFJ4jq8Bp2lf4Gf8tW0Y
	4pxdZHYXdFM5FZbaHz3t/CqPvSaBY=
X-Google-Smtp-Source: AGHT+IE00LMyqiVxLZ9MnQFDwF6e9c2zrtVjwFvmbCmP678z6S9lZDOsUYygR8GMYx2UGEMrT3J1OA==
X-Received: by 2002:a17:907:706:b0:b7c:e758:a79d with SMTP id a640c23a62f3a-b803717dbf0mr1122554466b.37.1766402299574;
        Mon, 22 Dec 2025 03:18:19 -0800 (PST)
Received: from linaro.org ([77.64.146.193])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037de074dsm1074038666b.44.2025.12.22.03.18.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 03:18:19 -0800 (PST)
Date: Mon, 22 Dec 2025 12:17:47 +0100
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	rajendra.nayak@oss.qualcomm.com, sibi.sankar@oss.qualcomm.com,
	Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
	Qiang Yu <qiang.yu@oss.qualcomm.com>,
	Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: glymur: Enable Glymur CRD board
 support
Message-ID: <aUko20ORsgrlZrIn@linaro.org>
References: <20251219-upstream_v3_glymur_introduction-v3-0-32271f1f685d@oss.qualcomm.com>
 <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251219-upstream_v3_glymur_introduction-v3-4-32271f1f685d@oss.qualcomm.com>

On Fri, Dec 19, 2025 at 08:16:57PM +0530, Pankaj Patil wrote:
> Add initial device tree support for the Glymur Compute Reference
> Device(CRD) board, with this board dts glymur crd can boot to shell
> with rootfs on nvme and uart21 as serial console
> 
> Features enabled are:
> - Regulators 0 - 4
> - Power supplies and sideband signals (PERST, WAKE, CLKREQ) for
>   PCIe3b/4/5/6 controllers and PHYs
> - QUPv3 instances
> - PMIC thermal-zone updates
> 
> Co-developed-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> Co-developed-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Co-developed-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
> Co-developed-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile       |   1 +
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 860 ++++++++++++++++++++++++++++++++
>  2 files changed, 861 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6f34d5ed331c..6ff911cca06c 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= glymur-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> new file mode 100644
> index 000000000000..7c168e813f1e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -0,0 +1,860 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +/dts-v1/;
> +
> +#include "glymur.dtsi"
> +#include "glymur-pmics.dtsi"
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +/ {
> +	model = "Qualcomm Technologies, Inc. Glymur CRD";
> +	compatible = "qcom,glymur-crd", "qcom,glymur";
> +
> +	aliases {
> +		serial0 = &uart21;
> +		serial1 = &uart14;
> +		i2c0 = &i2c0;
> +		i2c1 = &i2c4;
> +		i2c2 = &i2c5;
> +		spi0 = &spi18;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clocks {
> +		xo_board: xo-board {
> +			compatible = "fixed-clock";
> +			clock-frequency = <38400000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32000>;
> +			#clock-cells = <0>;
> +		};
> +	};
> +
> +	gpio-keys {
> +		compatible = "gpio-keys";
> +
> +		pinctrl-0 = <&key_vol_up_default>;
> +		pinctrl-names = "default";
> +
> +		key-volume-up {
> +			label = "Volume Up";
> +			linux,code = <KEY_VOLUMEUP>;
> +			gpios = <&pmh0101_gpios 6 GPIO_ACTIVE_LOW>;
> +			debounce-interval = <15>;
> +			linux,can-disable;
> +			wakeup-source;
> +		};
> +	};
> +
> +	vreg_nvme: regulator-nvme {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmh0101_gpios 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&nvme_reg_en>;
> +		pinctrl-names = "default";

This should be probably "regulator-boot-on" to avoid temporarily
powering off the regulator during boot.

> +	};
> +
> +	vreg_nvme_sec: regulator-nvme-sec {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_SEC_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmh0110_f_e1_gpios 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&nvme_sec_reg_en>;
> +		pinctrl-names = "default";

Maybe this one too, not sure.

> +	};
> +
> +	vreg_wlan: regulator-wlan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WLAN_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 94 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_reg_en>;

This one too, if it is already turned on during boot.

> +	};
> +
> +	vreg_wwan: regulator-wwan {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_WWAN_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 246 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wwan_reg_en>;

Yeah ...

> +	};
> +
> +	vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;

regulator-always-on;
regulator-boot-on;

> +	};
> +
> +	thermal-zones {
> +		pmh0101-thermal {

I guess these could be device-specific, but I doubt they ever will be in
practice. Can you put these in the PMIC dtsi or the glymur-pmics.dtsi to
avoid duplication?

> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&pmh0101_temp_alarm>;
> +
> +			trips {
> +				trip0 {
> +					temperature = <95000>;
> +					hysteresis = <0>;
> +					type = "passive";
> +				};
> +
> +				trip1 {
> +					temperature = <115000>;
> +					hysteresis = <0>;
> +					type = "hot";

Given the temperature, it feels like this one should be "critical".

> +				};
> +			};
> +		};
> +
> [...]

Thanks,
Stephan

