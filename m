Return-Path: <devicetree+bounces-87038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0C2938583
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 18:40:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B2361F2127A
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 16:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA3F616849A;
	Sun, 21 Jul 2024 16:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CgWbvpfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD551649CC
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721580010; cv=none; b=b62+o2be4OCWpmmFowBusoAL63zQQLS/w+4o8loJ+VnSQfZM82NmDNVkY8ODYzqelZwa32cPuVj0gjNEsGN/pm7rgxBKizp8rd/7htYrPI3+xjRBK/Iy7m/knvN2c6uGRR7T/jbMgSwyJjPhaqic67nCdI1mpRpSYTXDvekFb78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721580010; c=relaxed/simple;
	bh=5GBs3sS6GffttYb1SH6OSACa7GZ+aq5K6lp0mClKlYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cuYWwimtC0zyFovQp+ShBmuKnP2CnJ+ysp/8U5qtaqwJdDEFhE2o7A4O9fc8gkcyTAP9YabetI0fqLa04iQXPlC4gWuSOMA7+kDnkyMXQluhCR28zR9yPQRY4SXjllcsxEGYqCir8G3tjPVHS4cTPtBF1p7nFkn6i6o/y2m160Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CgWbvpfr; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-367e50f71bbso1867247f8f.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 09:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721580007; x=1722184807; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dt8rut9OoDlVFuaG7w8NWKSMFr7P+aJevTWLxUH5VX8=;
        b=CgWbvpfrMOY0o1T3xQIa3PVfxofHcxVMUOu2275LeZi+76cCo6Qh/YJs32wIoVkdxO
         L2PsSlwpJHzNA+9yAxvAysN23ePBpRn2HF6Q7QZx/URXRkZ5ofCZx3FlpATW855ehyNE
         NwCRZFabI5N/J3vUgLV/PpnMnQN/cnBDMDNwHY4+PC/u0GZhttVvJspjFP+9lig0VohU
         sBDoGi/+phNtEkofjICnEg69XhjiUuxOJVJ0nRbJaJEOZJ9B6ly6FcUo5TrYRb0zw6Ol
         7YgcHFgZ+P4wJ6xAfg65j2rJHMs1BA2qelUdv7nxDmTzuYy1OWQ0gh5oFcjDJAYJVtMT
         MTAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721580007; x=1722184807;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dt8rut9OoDlVFuaG7w8NWKSMFr7P+aJevTWLxUH5VX8=;
        b=s8lasDraoOwVqZoAlp+g9/SWPZoSXaDPURAOd4DH7hTqsjo+O4ruwn8CZtF6LnxdFu
         bm9tDWfOTrloa2jCanJOue+rk7YvTrLIDktj2T4uroDNJPM4i2n+Xxf0KpdoIG32zYRe
         Q2LUiOS3OS0cTQ+zCxScu884zgjOzqSsWROTW5jyqu5G46eas+N2BDG/qx0I7OLUsw0n
         qYmmm0b8hw9Ff/JaBKCq49TuVwePGVE1o878DZMHgBxWRi+3XHxAHK/P3AO1IrW8CEZ7
         gqarBIs+rARq/ea1Xyov5y6BjW3Nmo7DH9FRIWS7rxgYdSuZ++Tz1lWH2GMwuuVt42w9
         Z86A==
X-Forwarded-Encrypted: i=1; AJvYcCUhpxNgNyVDtmSyjRgjQDd93jjrLErSLE27ZEmJkNGBPp7jdBqgE61FUuz645jquLZyNZZrRQIsZb4R8ihoS8I/8h9VOC9QZx8fqw==
X-Gm-Message-State: AOJu0Yzwu7tpg144L/KE9G6Wp1fuxQqJG66NnSrDc9BuOJ3I0LyE01ZP
	tV/cdOLxNJPeRMOEPXjR14BL+v7d35QTflizbmiKy/kJwbOcL6zJISr8bMcH1G4=
X-Google-Smtp-Source: AGHT+IFtPWfr7OsTINMHDSjbMnUGeIDJIlJTbz6Wnqqsq1eR5dWUmlV4w7BEk6oGYCE1FbS8+uBP6A==
X-Received: by 2002:a5d:498e:0:b0:368:6678:f792 with SMTP id ffacd0b85a97d-369bae6ff45mr2040076f8f.39.1721580006891;
        Sun, 21 Jul 2024 09:40:06 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-368787cedabsm6313292f8f.84.2024.07.21.09.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 09:40:06 -0700 (PDT)
Date: Sun, 21 Jul 2024 19:40:04 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6
Message-ID: <Zp055OR+OzSgiHhX@linaro.org>
References: <20240719-topic-t14s_upstream-v1-0-d7d97fdebb28@linaro.org>
 <20240719-topic-t14s_upstream-v1-3-d7d97fdebb28@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240719-topic-t14s_upstream-v1-3-d7d97fdebb28@linaro.org>

On 24-07-19 22:16:38, Konrad Dybcio wrote:
> Add support for the aforementioned laptop. That includes:
> 
> - input methods, incl. lid switch (keyboard needs the pdc
>   wakeup-parent removal hack..)
> - NVMe, WiFi
> - USB-C ports
> - GPU, display
> - DSPs
> 
> Notably, the USB-A ports on the side are depenedent on the USB
> multiport controller making it upstream.
> 
> At least one of the eDP panels used (non-touchscreen) identifies as
> BOE 0x0b66.
> 
> See below for the hardware description from the OEM.
> 
> Link: https://www.lenovo.com/us/en/p/laptops/thinkpad/thinkpadt/lenovo-thinkpad-t14s-gen-6-(14-inch-snapdragon)/len101t0099
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Few comments below. Otherwise, LGTM.

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 792 +++++++++++++++++++++
>  2 files changed, 793 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 0e5c810304fb..734a05e04c4a 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -261,6 +261,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk-display-card.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts

So what happens for SKUs of this model wil have x1e80100 ?

Maybe we should stick to x1e80100 ?

> new file mode 100644
> index 000000000000..b12953267505
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
> @@ -0,0 +1,792 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2024, Linaro Limited
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/gpio-keys.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "x1e80100.dtsi"
> +#include "x1e80100-pmics.dtsi"
> +
> +/ {
> +	model = "Lenovo ThinkPad T14s Gen 6";
> +	compatible = "lenovo,thinkpad-t14s", "qcom,x1e78100", "qcom,x1e80100";
> +
> +	aliases {
> +		serial0 = &uart21;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +

[...]

> +
> +	vreg_edp_3p3: regulator-edp-3p3 {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_EDP_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&edp_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-always-on;

Drop this.

> +		regulator-boot-on;
> +	};
> +

[...]

> +
> +&tlmm {
> +	gpio-reserved-ranges = <34 2>, /* Unused */
> +			       <44 4>, /* SPI (TPM) */
> +			       <72 2>, /* Secure EC I2C connection (?) */
> +			       <238 1>; /* UFS Reset */
> +
> +	tpad_default: tpad-default-state {
> +		pins = "gpio3";
> +		function = "gpio";
> +		bias-pull-up;
> +	};
> +
> +	nvme_reg_en: nvme-reg-en-state {
> +		pins = "gpio18";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	ts0_default: ts0-default-state {
> +		reset-n-pins {
> +			pins = "gpio48";
> +			function = "gpio";
> +			output-high;
> +			drive-strength = <16>;
> +		};
> +
> +		int-n-pins {
> +			pins = "gpio51";
> +			function = "gpio";
> +			bias-disable;
> +		};
> +	};
> +
> +	kybd_default: kybd-default-state {
> +		pins = "gpio67";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +
> +	edp_reg_en: edp-reg-en-state {
> +		pins = "gpio70";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-pull-up;

bias-disable, maybe ?

> +	};
> +
> +	hall_int_n_default: hall-int-n-state {
> +		pins = "gpio92";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +

[...]

> 
> -- 
> 2.45.2
> 

