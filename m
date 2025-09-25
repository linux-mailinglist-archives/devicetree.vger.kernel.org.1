Return-Path: <devicetree+bounces-221352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7831FB9ED2E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:54:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88E7F1882A6B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:55:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5C72F83A0;
	Thu, 25 Sep 2025 10:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xSnbGmEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56FB72F745B
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758797665; cv=none; b=QAjI8ziPGW6ZacVlYE16M6EsyYIzaI9ckSNrlHdBs5B2Gq1VTCATSdSmKdTga2ijDFFoc7eb+0tMtChDQmAaVsUF4LIFWESVBemjaIFXO+g4o9WhN/GcSdeRYBTPcxeBFiSMIlVd1h2ym9VRBrhMKcxKoKZJvT51v8XRW1QHlRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758797665; c=relaxed/simple;
	bh=lDVDRyhyIQOwoxdA8kRcc9HiFnxnBcTmsrM2qbd2mQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eDfjAkvF33zEUDLZFGqKmApYuGO07McDDzUSU2xF0pN+eO89OvRsuuF4mTZA6YyCwUF1CgTj+6UNw96C/XRZQsGjcUQH2pkyQPjailC2DmLWJQnhbDB+bry08kjSIpKZv/fwEq0Exx3kizd94IF+PcCDrNLnLdYy8Y5UkXB+WZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xSnbGmEu; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45b4d89217aso4829325e9.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:54:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1758797662; x=1759402462; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=PuIQdPEELlx5dxRMpaw9IwcdtLBrp/P7BndMJUBnC1M=;
        b=xSnbGmEudAhhUhak45jnZvSizEISeufHbPi5bUHbDz4ky/QpmnQ1X5iLt9pK66PzQV
         9/OTfVlpboU9HrIUiGS7b72O+EiLN+4bHsVrwUymyNJ+SrDoGHSQ91js7M7JNTLoybrR
         0CflPYtiCKMqVEl2NueJtqo1U4vC1rKz5orN5+2+/SRO6BHj/gy/FG8B2hfe6niQ869r
         0s2WSG5vrlPMFtFxldA+6MutxL8mdXBO8uQUHIe3z5J/Nza/uOE+w5PgSWd1tNq9PHiz
         q4jBMPUse+v3aQoGEk8QSST/+EoCZgvyHUR+ncHfmGTFJFCLuO0bnWcHDaqit67efJwo
         43xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758797662; x=1759402462;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PuIQdPEELlx5dxRMpaw9IwcdtLBrp/P7BndMJUBnC1M=;
        b=Yt/KRSUrTS5/etP5WLszJkke1wGA1I/q7f6IGAB678M7KN0tcounaAyoJzXYpduRn4
         9Oa23s6jXFjIEwXY3zc1ZMOx67j/EkUSOR+CNXdzzy5lPhVm7axVksf5/M9uNenUWu6L
         K1wI3arqFHmapyry7Xr1fKy6ySJgjAztXHZVjgnKWh3YXOy4dwiy+80mPDfVm8lCly3Q
         z9iTe8wGW+gKDpUbyM0KIYQvu3NtiHueLCXhIcA9S43GqwfY7D2Uk45xOgE1OwwzFNXH
         8uJmfcPuenSNgUHATVZmGZv/K3iR2ZgvNPi12YiZdyUbZRAia2ax5YHwGVnb69FeF14C
         /1cw==
X-Forwarded-Encrypted: i=1; AJvYcCXLWsQw5BSWAeaAvDAYqdispH6WbJ3rx/FCIu4TKW1PoRk//3iWXN6mqS1+EbhxdOXSpNhLHp4QKsPO@vger.kernel.org
X-Gm-Message-State: AOJu0YwJkGY8B+uTuc8RA1oTrVvVcOXU3Xb2mXhu4vUqpFgvO/JNpkHN
	9h4UTn9VEP7b+HwiTJVyYTvOJXaQCK0TypCjWtJ8pET1XBY2cXSBg+R6ut1crK1+mek=
X-Gm-Gg: ASbGncutV/E5izOLMKqFQucHPbXniFY5WTkOvTfqQzawziytsM4u2LcU6SxYxVLnTVj
	SGFGO9WsWrN5wzPGUWuMorrLJ2clCHNC9zYp1wVZooEHy387Fm0fL15kXBUQeKq4OEdzfz2BZi+
	PXJWP20yd6EuaSNEqDvQV4jcjO85eKDDhP4KCrYITROGSxA+JXr58PEpy0HupbMGQoIVC1kbVcE
	+Ew0O6vflUFKhD7NQ9Xovu04b1RikR2ehK4AUaOy/Nm/jpxDLJzypub2lKGcfA/TIWIKNYX+b+8
	xU9v40u2s3OzJaLE/EsG2su0IXjYeV1JK1+2FZUhBJ/qhkWODCNqrwSqozbCS57rkyoAoDrGpao
	lRUxQ+IvZVj+GhfL4xhwi5Q==
X-Google-Smtp-Source: AGHT+IFzKX5aZk1u6UpDVnhT75JisGlWcw36YLSk6ZsbiG84Pwg3ru3jMlvXGGdEc423gBrEG/rGbw==
X-Received: by 2002:a05:600c:a086:b0:45f:28dc:60ea with SMTP id 5b1f17b1804b1-46e329b63a8mr33773845e9.15.1758797661600;
        Thu, 25 Sep 2025 03:54:21 -0700 (PDT)
Received: from linaro.org ([86.121.170.238])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fe4237f32sm2405184f8f.63.2025.09.25.03.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:54:20 -0700 (PDT)
Date: Thu, 25 Sep 2025 13:54:19 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH v2 23/24] arm64: dts: qcom: glymur: Add USB support
Message-ID: <dzjj344c6zlkg4rvi455xoedhd4d2kjvodi6yftv7svhvvmxbz@kwq7rkq45tms>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v2-23-8e1533a58d2d@oss.qualcomm.com>

On 25-09-25 11:58:29, Pankaj Patil wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Glymur USB system contains 3 USB type C ports, and 1 USB multiport
> controller.  This encompasses 5 SS USB QMP PHYs (3 combo and 2 uni) and 5
> M31 eUSB2 PHYs.  The controllers are SNPS DWC3 based, and will use the
> flattened DWC3 QCOM design.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 243 ++++++++++++++
>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 569 ++++++++++++++++++++++++++++++++

This should be split into two commits. One adds the support to the SoC,
the other to the CRD device.


> diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
> index 8a563d55bdd4902222039946dd75eaf4d3a4895b..c48d3a70820e551822c5322761528159da127ca6 100644
> --- a/arch/arm64/boot/dts/qcom/glymur.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur.dtsi

[...]

> +
> +		usb_1_ss0: usb@a600000 {

This is usb_1_ss0, but then you have usb1_ss1 ? 

> +			compatible = "qcom,glymur-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a600000 0 0xfc100>;
> +
> +			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,
> +				 <&gcc GCC_AGGRE_USB3_PRIM_AXI_CLK>,
> +				 <&gcc GCC_USB30_PRIM_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_PRIM_MOCK_UTMI_CLK>,
> +				 <&gcc GCC_CFG_NOC_USB_ANOC_AHB_CLK>,
> +				 <&gcc GCC_CFG_NOC_USB_ANOC_SOUTH_AHB_CLK>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi",
> +				      "noc_aggr_north",
> +				      "noc_aggr_south";
> +
> +			interrupts-extended = <&intc GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&intc GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 90 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 60 IRQ_TYPE_EDGE_BOTH>,
> +					      <&pdc 17 IRQ_TYPE_EDGE_BOTH>;
> +			interrupt-names = "dwc_usb3",
> +					  "pwr_event",
> +					  "dp_hs_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "ss_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_PRIM_GDSC>;
> +			resets = <&gcc GCC_USB30_PRIM_BCR>;
> +
> +			iommus = <&apps_smmu 0x1420 0x0>;
> +			phys = <&usb_1_ss0_hsphy>,
> +			       <&usb_1_ss0_qmpphy QMP_USB43DP_USB3_PHY>;
> +			phy-names = "usb2-phy",
> +				    "usb3-phy";
> +
> +			snps,dis_u2_susphy_quirk;
> +			snps,dis_enblslpm_quirk;
> +			snps,dis_u3_susphy_quirk;
> +			snps,usb2-lpm-disable;
> +
> +			dr_mode = "peripheral";
> +
> +			status = "disabled";

So you have the glue defined above, but not the actual controller (compatible snps,dwc3) ?

I don't see how this would work.

Same for all other controllers.


