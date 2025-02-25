Return-Path: <devicetree+bounces-150905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB49A43E4D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 12:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 78D90442820
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 11:49:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41794267F71;
	Tue, 25 Feb 2025 11:49:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ImpAUPrm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8310263C85
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 11:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740484176; cv=none; b=mQGAeecSYHCbB9qz1zekKT+pp/orodV+eI7GD+gfEFVzUv6n7SWQ/E31tCX2Fpm1Xf3Gdo3dEhaokDs07rE6xeGp5/XyMUMapq35pUloEDXBvPUbFmmLudUyN+hKbrv1LjVo2fAjISxTieMCeOfaVxrwumL0ZFa/zxFif/o71xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740484176; c=relaxed/simple;
	bh=5JyTXm1C7TLfUgdWh6JUEGg5OiPQQfcMcYocIRYLAuE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Xf3GzxNluI6q/n2EbU5PiQJg1Ob1CQUXD3MhDUlRuBviWCB8HBiwv9T8aeVkau85Y06WSok1LfHGIVX72tTRRUl19Qe/p93vl89xZYam6FSu+AjhBMCfOf5InDlvLNiidLpLH8kdpGPFWO+blK24CXimE7WvPux6S/VJ/Koo0+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ImpAUPrm; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-54298ec925bso7774141e87.3
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 03:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740484171; x=1741088971; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MRXJ0sgeLLR+ArObNCkDui7AFges8ho1M4llXnQe6m4=;
        b=ImpAUPrmsWUb1ne2XcVYI8rBDVEJb7qDjcbHHwrUMkUTNRKuQnlsk4ZNoIxDA0xO1o
         +7lWbHX+mdW/cvh0QILVapSB+U/ohTSpQN2duJg+WF6tcHTdCNXjkQxA2PM8T1kn7PFj
         rGoEkz64rzjJLpBGUqOFe78xKCpYz6znel/x5dg1Q3ZgKI6P39Vos/8gOZjueMm9zHVf
         nO70vueDz/1MPrpwdNQk0wkQdV7xPa8qzVTRYg71Nhq9IJhqRaB7IiFowsuVw7xBTD+Q
         DOAkJuBR5zYliSogJHK72wcToDGu6kztLqac8viideanAtSX4xiB+wjv/sa6ODLttaMd
         EW0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740484171; x=1741088971;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MRXJ0sgeLLR+ArObNCkDui7AFges8ho1M4llXnQe6m4=;
        b=SMmAKnNCQKYTI/lE2tij+QU2dPhPLvVh1PRGdNa4+R3rTtCQyGHWPZxuAvwlvjGOqr
         x4hTIm7z6W3FNPvrnlbkHI3U2tFu5Y2yAkPksNgQ+6RIjgZeDGkAi1VNRe6qxNu2etZw
         SQQz6omwMzMMiWf2E1Lo7xE1r21Zjy5gUMbKgFjZMGzN+sjYUA67N01aUK/SwVAdP6I/
         SHUGg/ltRDqhSjP+BZR6BSK2h2SDswjfQjzOuLQfPrIcJ8kbX7OLIvBdQs55NebV2RkI
         j3y7dfnMFQwCdPQEt2pzB07Af5UPLrd4nQE3gCUZ4suzMEiCOkM9w4083V8HVYje6gnt
         Nskw==
X-Forwarded-Encrypted: i=1; AJvYcCXYLe2MZuIqFYgh0csiO1bxILv23H0gl1mgOgWyRl+DuedvodAAY42hmpL/oKJmfLshm56eNzXTcJGv@vger.kernel.org
X-Gm-Message-State: AOJu0YyGOh0UH3mbb0IQts49ZTbhw4gUFN4yec2g1earXstW65ifWmac
	0MCg/9z4y3P82j4T13ZVeYbJN4CMvtb8siMCqkthC0QVxRlBa3+cTfbUncPA7Hc=
X-Gm-Gg: ASbGnculwoSBVGO3QHVM8ipSSdeN2iJUOrD91IvT5r2zp3MKudJqCaRsrFI0h9adQ7m
	DyC7gg6gaRlssoqDRrhxaCLDsUm2iYG5aM3DRQUj5eYg2mA1Q6vYgdoD6Aw3wUXnECkcTkMbngY
	GghKyObl8syZOPc2VSHgIUvIivPmODp3nX/V/ozYgNJBQdKz//PcWQa5t8PyVhUnB1lUMKIiod7
	DMm4mv7hDLvue4bGBwYr7e2n0c4iXifeFhYS0uwf4Dd6H8kAC1OxcZXSpmZs8z1Wxe20BLElPY3
	NV9vwoEz8koFHNfywvbhljCcsJ4nDM9FZMlJMTzVuNT+pEu6Krr8KiYCYwE8CF2oXI9gCub6hv5
	UJ1bWHg==
X-Google-Smtp-Source: AGHT+IFyPF+05j6PQr+C+0URjfCkkwkHxs7RWK4V64HpQyr1wOWt4SpVijtFSG3Diuo6wjyM5MQDBw==
X-Received: by 2002:a19:8c4e:0:b0:549:38eb:d68b with SMTP id 2adb3069b0e04-54938ebdad6mr193636e87.33.1740484170953;
        Tue, 25 Feb 2025 03:49:30 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514b97a9sm155591e87.70.2025.02.25.03.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 03:49:30 -0800 (PST)
Date: Tue, 25 Feb 2025 13:49:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	chaitanya chundru <quic_krichai@quicinc.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, cros-qcom-dts-watchers@chromium.org, 
	Jingoo Han <jingoohan1@gmail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com, 
	amitk@kernel.org, linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, jorge.ramirez@oss.qualcomm.com
Subject: Re: [PATCH v4 02/10] arm64: dts: qcom: qcs6490-rb3gen2: Add TC956x
 PCIe switch node
Message-ID: <ciqgmfi4wkvqpvaf4zsqn3k2nrllsaglbx7ve3g2nbecoj35d6@okgcsvfx27z5>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250225-qps615_v4_1-v4-2-e08633a7bdf8@oss.qualcomm.com>

On Tue, Feb 25, 2025 at 03:03:59PM +0530, Krishna Chaitanya Chundru wrote:
> Add a node for the TC956x PCIe switch, which has three downstream ports.
> Two embedded Ethernet devices are present on one of the downstream ports.
> 
> Power to the TC956x is supplied through two LDO regulators, controlled by
> two GPIOs, which are added as fixed regulators. Configure the TC956x
> through I2C.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 116 +++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sc7280.dtsi         |   2 +-
>  2 files changed, 117 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 7a36c90ad4ec..13dbb24a3179 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -218,6 +218,31 @@ vph_pwr: vph-pwr-regulator {
>  		regulator-min-microvolt = <3700000>;
>  		regulator-max-microvolt = <3700000>;
>  	};
> +
> +	vdd_ntn_0p9: regulator-vdd-ntn-0p9 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_NTN_0P9";
> +		gpio = <&pm8350c_gpios 2 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <899400>;
> +		regulator-max-microvolt = <899400>;
> +		enable-active-high;
> +		pinctrl-0 = <&ntn_0p9_en>;
> +		pinctrl-names = "default";
> +		regulator-enable-ramp-delay = <4300>;
> +	};
> +
> +	vdd_ntn_1p8: regulator-vdd-ntn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDD_NTN_1P8";
> +		gpio = <&pm8350c_gpios 3 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		enable-active-high;
> +		pinctrl-0 = <&ntn_1p8_en>;
> +		pinctrl-names = "default";
> +		regulator-enable-ramp-delay = <10000>;
> +	};
> +
>  };
>  
>  &apps_rsc {
> @@ -735,6 +760,75 @@ &pcie1_phy {
>  	status = "okay";
>  };
>  
> +&pcie1_port {
> +	pcie@0,0 {
> +		compatible = "pci1179,0623", "pciclass,0604";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +		#address-cells = <3>;
> +		#size-cells = <2>;
> +
> +		device_type = "pci";
> +		ranges;
> +		bus-range = <0x2 0xff>;
> +
> +		vddc-supply = <&vdd_ntn_0p9>;
> +		vdd18-supply = <&vdd_ntn_1p8>;
> +		vdd09-supply = <&vdd_ntn_0p9>;
> +		vddio1-supply = <&vdd_ntn_1p8>;
> +		vddio2-supply = <&vdd_ntn_1p8>;
> +		vddio18-supply = <&vdd_ntn_1p8>;
> +
> +		i2c-parent = <&i2c0 0x77>;
> +
> +		reset-gpios = <&pm8350c_gpios 1 GPIO_ACTIVE_LOW>;
> +
> +		pcie@1,0 {

PCIe bus can be autodetected. Is there a reason for describing all the
ports and a full topology? If so, it should be stated in the commit
message.

> +			reg = <0x20800 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x3 0xff>;
> +		};
> +
> +		pcie@2,0 {
> +			reg = <0x21000 0x0 0x0 0x0 0x0>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			device_type = "pci";
> +			ranges;
> +			bus-range = <0x4 0xff>;
> +		};
> +
> +		pcie@3,0 {

-- 
With best wishes
Dmitry

