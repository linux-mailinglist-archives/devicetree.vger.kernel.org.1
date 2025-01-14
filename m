Return-Path: <devicetree+bounces-138411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4EBA10469
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:38:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 80B623A3F8D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 10:38:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819E7284A4C;
	Tue, 14 Jan 2025 10:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZVYngFy1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B93E22DC27
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 10:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736851110; cv=none; b=cQdOU/Y3hj24UMtTU/bb4voEFZnb5wyR0MJnxb8SogcOxCDpyhS2RMadPXBWRxD8PuY/vFxuqRid5f7s27jTw4zByAXrSkuYwUtB5Xi9aY8obPQPZEF1RtX0kzhJ2EVALVd46F3ipvktLYcYyu6jPHYqVU3YJzwD0mqcGglUQ6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736851110; c=relaxed/simple;
	bh=R1Tk783hfRtPKsihEFcpmlIEDLctCnv9KDLzdCmuyqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YG8ivNt394EutgBb64qT8zGDQiHF5vjJq4hu2vOlXuaffcEwDtwidxn8V/poDSSIPVBgMm8RUS2z3kFIUp2x0b2mRdnKcIw1Fn7+U8bKyybSnYVNSe80iPb96//5AD1pk9s4hTtnnKuxcQiQLP3OYjScRb6wH1OUS+HnBJyIM2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZVYngFy1; arc=none smtp.client-ip=209.85.208.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-30036310158so42000471fa.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 02:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736851105; x=1737455905; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=uNN7B9q2J4hdcvsmifk7w5aJJJisTFxNMJ5KcojNYOk=;
        b=ZVYngFy1Wrvl70mVNUFMgRPugW0F4B+zVfpT7SfOjyE3MQGSvgIGR5aeaYefIWDVkN
         BuX9TBAa8jzoe4AFA4DAv8QtVzz3FDQjZi/8dZNal3JKxwimbuotSJdrrmZi7gPHcJ0I
         tbIqGwhABLhtp30pW1sNv2ef/2Ibck4PSMszQ4c/zn3ceAemtUDSFtDvKZ79dNbZaohI
         8WsnqHadCwShBrDb9Fkp+7b8Y999q15nX+SSR+bagdV32FDdH5m44XbD6rgbS4ln7VNe
         7b9OcRWJxSY38HIulz07J8ps+Dwy7iSbcd1OqwlFMROKdOF5g+KBw2ENJYENQ8F/u0uc
         OGkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736851105; x=1737455905;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uNN7B9q2J4hdcvsmifk7w5aJJJisTFxNMJ5KcojNYOk=;
        b=fxhEeLg6WJ4frDvG+EKiNdFCOmQ49Ce5xsYLHjGxXxf6pD9FzRLhBoIkefwFWmn3+Q
         SkzapOSQMfZDBWxXa8+S6cf8iLdReBLVGupWDt3ezem/guYdMZI+xbbToEu2L9w0Le8U
         6s4cIQ5sbVMWHg8kzDmhADaex82QkAoFb9KyyhZ68fDpEvhQdYvuCJCjo6ZgN0XPTmSa
         rGNlAAkFh127vCHrq3V0ZABXVrBxH4cIu3i1eirInEWeqd9eAvOCjrw3YRYD1dad871V
         yJpajljxH3Op5ZXXxYCIjzJ3l/HX2sJuwCbB/80K9vCkb/bJzoJ32TNo6yw2pEBR8QtT
         O+FA==
X-Forwarded-Encrypted: i=1; AJvYcCWp3c74CccuIy4l/U0NDQNgqhIUEZyxvZeih/ioWFq0KuAC3T7dDZMmaw8zUW/uaxCrHQO3CySbyogB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi/PNPDxGCCeMrPcnUrIPkt+il82+y71yUXZ1LMfq73y0ARI6a
	JMXILDU0lKan21zIzIDBohmDberP4iXK6bSGRmvqD4ZDGBQp5xT9BJYhtsQH8d0=
X-Gm-Gg: ASbGncudyCKmPP7lugCEkhoqnC/vxOtVhyZ07ZRt0EesAUbF+CWxbJzun1oXXj7NVLW
	eL/kscbULXQ7pEDV9t/Yfuo13n2f9zBR3EvNsepFTEYwphSIpK5TUyn1lQ3C2ZrzhBhkbud68wA
	OUlXmPBVATY0LJFTBbDwJsioHlkShgsrXrXUaYRZuX22WYVMrsjec+tfSY00IkbwnRMbSaOogfy
	8LOp9sszkrGz7uO/tgsottxKIwKyFag6OCFUt1Joa7zH+1Gu6aw4rEGN5FlFOABziBa00O75vQ5
	qJVjp3J+pB+4nGvOZpl1AqUBfkT1Cpcz+GBy
X-Google-Smtp-Source: AGHT+IH9mYReL6tlrIcgo5opzWGTvKgKAIdX/HKYiCEzoUfpZVvDTRHMg3q7JMHy6gADKHC6a95e6g==
X-Received: by 2002:a05:651c:1a0b:b0:2ff:cc65:68aa with SMTP id 38308e7fff4ca-305f45ebec5mr63982821fa.31.1736851105153;
        Tue, 14 Jan 2025 02:38:25 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff1ec12bsm16951771fa.110.2025.01.14.02.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 02:38:24 -0800 (PST)
Date: Tue, 14 Jan 2025 12:38:22 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wesley Cheng <quic_wcheng@quicinc.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Catalin Marinas <catalin.marinas@arm.com>, 
	Will Deacon <will@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, 
	Trilok Soni <quic_tsoni@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 7/7] arm64: dts: qcom: sm8750: Add USB support to SM8750
 platforms
Message-ID: <lk26ltslmijj7tj2kst2wsvd6d2hyj3zjzcwavwl63evjhcgdh@ewqliiijispu>
References: <20250113-sm8750_usb_master-v1-0-09afe1dc2524@quicinc.com>
 <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_usb_master-v1-7-09afe1dc2524@quicinc.com>

On Mon, Jan 13, 2025 at 01:52:13PM -0800, Melody Olvera wrote:
> From: Wesley Cheng <quic_wcheng@quicinc.com>
> 
> Enable USB support on SM8750 MTP and QRD variants. SM8750 has a QMP combo
> PHY for the SSUSB path, and a M31 eUSB2 PHY for the HSUSB path.
> 
> Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts |  24 ++++++
>  arch/arm64/boot/dts/qcom/sm8750.dtsi    | 134 ++++++++++++++++++++++++++++++++

Separate SoC and board patches.

>  3 files changed, 182 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..059eccbbc3fb05fc8806e36d35dc469d44443a26 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -792,3 +792,27 @@ &tlmm {
>  &uart7 {
>  	status = "okay";
>  };
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l2d_0p88>;
> +	vdda12-supply = <&vreg_l3g_1p2>;
> +
> +	phys = <&pmih0108_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +	vdda-phy-supply = <&vreg_l3g_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p88>;
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> index f77efab0aef9bab751a947173bcdcc27df7295a8..01c0af643626917614fbd68cf8962ef947ca6548 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> @@ -790,3 +790,27 @@ &tlmm {
>  &uart7 {
>  	status = "okay";
>  };
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l2d_0p88>;
> +	vdda12-supply = <&vreg_l3g_1p2>;
> +
> +	phys = <&pmih0108_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +	vdda-phy-supply = <&vreg_l3g_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p88>;
> +
> +	status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> index 3bbd7d18598ee0a3a0d5130c03a3166e1fc14d82..54522fd3d0e11c3cff02beaf1d249fe654cacc0f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/interconnect/qcom,icc.h>
>  #include <dt-bindings/interconnect/qcom,sm8750-rpmh.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/phy/phy-qcom-qmp.h>
>  #include <dt-bindings/power/qcom,rpmhpd.h>
>  #include <dt-bindings/power/qcom-rpmpd.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
> @@ -1966,6 +1967,139 @@ lpass_lpicx_noc: interconnect@7420000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		usb_1_hsphy: phy@88e3000 {
> +			compatible = "qcom,sm8750-m31-eusb2-phy";
> +			reg = <0x0 0x88e3000 0x0 0x29c>;
> +
> +			clocks = <&tcsrcc TCSR_USB2_CLKREF_EN>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_dp_qmpphy: phy@88e8000 {
> +			compatible = "qcom,sm8750-qmp-usb3-dp-phy";
> +			reg = <0x0 0x088e8000 0x0 0x3000>;
> +
> +			clocks = <&gcc GCC_USB3_PRIM_PHY_AUX_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_COM_AUX_CLK>,
> +				 <&gcc GCC_USB3_PRIM_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "com_aux",
> +				      "usb3_pipe";
> +
> +			resets = <&gcc GCC_USB3_PHY_PRIM_BCR>,
> +				 <&gcc GCC_USB3_DP_PHY_PRIM_BCR>;
> +			reset-names = "phy",
> +				      "common";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			#clock-cells = <1>;
> +			#phy-cells = <1>;

Missing orientation-switch and ports{} description.

> +
> +			status = "disabled";
> +		};
> +
> +		usb_1: usb@a6f8800 {
> +			compatible = "qcom,sm8750-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			status = "disabled";
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&tcsrcc TCSR_USB3_CLKREF_EN>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "xo";
> +
> +			assigned-clocks = <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_PRIM_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +						  <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 14 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "pwr_event",
> +					  "hs_phy_irq",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> +
> +			interconnects = <&aggre1_noc MASTER_USB3_0 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_USB3_0 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";
> +
> +			usb_1_dwc3: usb@a600000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x0a600000 0x0 0xe000>;
> +
> +				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +
> +				iommus = <&apps_smmu 0x40 0x0>;
> +
> +				phys = <&usb_1_hsphy>, <&usb_dp_qmpphy QMP_USB43DP_USB3_PHY>;
> +				phy-names = "usb2-phy", "usb3-phy";
> +
> +				snps,hird-threshold = /bits/ 8 <0x0>;
> +				snps,usb2-gadget-lpm-disable;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;
> +				snps,dis-u1-entry-quirk;
> +				snps,dis-u2-entry-quirk;
> +				snps,is-utmi-l1-suspend;
> +				snps,usb3_lpm_capable;
> +				snps,usb2-lpm-disable;
> +				snps,has-lpm-erratum;
> +				tx-fifo-resize;
> +
> +				dr_mode = "peripheral";

This goes to the board files.

> +
> +				dma-coherent;
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_dwc3_ss: endpoint {

QMP endpoint.

> +						};
> +					};
> +				};
> +			};
> +		};
> +
>  		pdc: interrupt-controller@b220000 {
>  			compatible = "qcom,sm8750-pdc", "qcom,pdc";
>  			reg = <0x0 0x0b220000 0x0 0x10000>, <0x0 0x164400f0 0x0 0x64>;
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

