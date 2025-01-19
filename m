Return-Path: <devicetree+bounces-139545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA19EA161BD
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 13:46:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2723F3A264B
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 12:46:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 329E21DEFE1;
	Sun, 19 Jan 2025 12:46:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P7b1Tzwd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577941DED78
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 12:45:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737290761; cv=none; b=qOY4164pA11SPNQNqBlL4RrKdx5eAYf7tnXtkwEgZcr6CDcdmbEM8A2tjs4M/lvC/D+Ysjillr0Hwhm5F7oudUYkhjGGfc0A6NOWX8/pY3QgBV07NZEO+q1KnW6yZj/f9oj8leatCSI0CUSnuKTBr3erE4iwviIB5rWX0/NkrR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737290761; c=relaxed/simple;
	bh=pJI+8vd2G7hq72X9zTYCXC2WcbCZx25RKFRZIvMSa5Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jcQUe8YNoUbR+wDZ4boLfo+AASFxngQTi0g1fh+IgVuxVzPhGLZIRjqC8aI2fqwT3GrZlBP8fmNBgZnk1ebAh++a81hKfngb88UF5Fubyovf9dg5HyvhkAjEo0O4WeSa+U4v1eyaZjJABzVjh4049DakdZ/K2OgWUP0PJyJdkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P7b1Tzwd; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-21636268e43so82742125ad.2
        for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 04:45:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737290758; x=1737895558; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yPz+MOVCycMnW47xZjDRQ5EN55NxOWin/KiyqxaKAV4=;
        b=P7b1TzwdULwaK1kiF6ut6BowuaF18g336NxcYRDtqTgJkAhBj07FBY2DxjssXhqywo
         nshajJOKVmXCYAuwye0C6LaPlak7GGeb7G1c+26UvY9ZDyPoH7cXQm/GtNhcXYWQmVxk
         NwHxApZYd1ZticgDjOGkD3InuhwLIGr53WKjdWjoIndt0s/KH8i7hCpNRnXs3sBb5JWB
         OZRuN9pYP4Nwvf0ceCo9VsU1ixmyrI+7cnpRLgEJRFRYQ4lPX6U8xib+BvX7joPIHlhU
         EpeYpRjA9a3w7eHj7pVvZYFbjALhSdjTlsFGUkl/H1dB1QM/ju/GvPODve4OUshAzO9A
         bHMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737290758; x=1737895558;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yPz+MOVCycMnW47xZjDRQ5EN55NxOWin/KiyqxaKAV4=;
        b=LF7Bb7/PGB4P0s+p7a6Q3yvZqpUP2UvbOoILKVFYK2fiDRMFreGu1Hj1pRLNIFZGRt
         uaJrJHypsOGmrD8JvDwwUlB6lLz0DfPLGyJKRLjJwCUpSh6UjoVegi1WpUEd/C3fk5TB
         /VTrVZ+RzcAegyJ8qfLMdypHzBzHQZ4Kymfyf8FloMJ5wuubQGlZg59VWH9ZKR2fx/mc
         PIHLc4BJlyBAR6nSrh8sD1M8Zhj1JaKREd04kZq6oW7FgeHBNR+rgoF2/dq5N7vGlVZS
         oqMbKsQmsxh1MLPuj1Ub6bxXTaWUbOk0l9dOL/yzjP1pRP0OTsGCNIzIwOmAQ/rZ/qWK
         fhGQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+hZYb+sOapHtuafekFW0RyQ4lhiE6y7Wc6NA1QisaMFcl2i+NIloT7dtIWHwLhWgcL4DfM43sxXhz@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7wymPRZLAYtQ8nvKQzOigOJGQPGDUwRCUvl0QFQKflyT4R5FS
	jKVCDKPNQGg/P6KK1Ayk5wzNGgACMcmBtnbYXPSwjdNbuU+hpTjKdcBvrPR0kQ==
X-Gm-Gg: ASbGncteP+ui/djrxs3tpfEHrpOKQJDdf2g1rD5ueSI3lyHC9uJCRXaDXA9oW2cBJgP
	Te0JmQ42o2NYTwlpryzDCK6LU3GXM9YYMTBJ/PWOg1y0e85rHS+aMRHiH8kMEMn4IpoWZRTeSxF
	TNBklHW0lJ+PtY3R4GOu9U8nO2lNFpUrRwGg7Pv9FSlZCP4ccaM2bgK2KrrBWIyP5euXp5Lzt43
	QqECsLxLeIXOBq0wHbuGbeV/OlaY3CUfKihxO1SET9SzekF2D5zEKCGZPoqTQWdSN3sDjS4sQqM
	aCKMVQ==
X-Google-Smtp-Source: AGHT+IFBGdgLgMu2L22B8uYHrR9bJB24mlPXIF442piELf0Vq0HcJ6iVq6kkx5d6CjZ6/f4EPuU77Q==
X-Received: by 2002:a17:903:2b06:b0:215:50fb:ae4a with SMTP id d9443c01a7336-21c34cd3f0cmr151038935ad.0.1737290758559;
        Sun, 19 Jan 2025 04:45:58 -0800 (PST)
Received: from thinkpad ([120.56.195.253])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a9bca47e6fbsm4945945a12.14.2025.01.19.04.45.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Jan 2025 04:45:58 -0800 (PST)
Date: Sun, 19 Jan 2025 18:15:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	quic_srichara@quicinc.com, quic_varada@quicinc.com
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: ipq5424: Add PCIe PHYs and
 controller nodes
Message-ID: <20250119124551.nl5272bz36ozvlqu@thinkpad>
References: <20250115064747.3302912-1-quic_mmanikan@quicinc.com>
 <20250115064747.3302912-3-quic_mmanikan@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250115064747.3302912-3-quic_mmanikan@quicinc.com>

On Wed, Jan 15, 2025 at 12:17:46PM +0530, Manikanta Mylavarapu wrote:
> Add PCIe0, PCIe1, PCIe2, PCIe3 (and corresponding PHY) devices
> found on IPQ5424 platform. The PCIe0 & PCIe1 are 1-lane Gen3
> host whereas PCIe2 & PCIe3 are 2-lane Gen3 host.
> 
> Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
> ---
> Changes in V2:
> 	- Add a newline above status in all pcie nodes.
> 	- Changed reg-names to a vertical list format in
> 	  all pcie nodes.
> 	- Updated the order of pcie phy clocks in gcc node,
> 	  move the <0> entry to the end of clock list.
> 	- Updated the ranges property in the soc@0 node to align
> 	  with the linux-next tip.
> 
>  arch/arm64/boot/dts/qcom/ipq5424.dtsi | 500 +++++++++++++++++++++++++-
>  1 file changed, 496 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 7034d378b1ef..708cd709a495 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -9,6 +9,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,ipq5424-gcc.h>
>  #include <dt-bindings/reset/qcom,ipq5424-gcc.h>
> +#include <dt-bindings/interconnect/qcom,ipq5424.h>
>  #include <dt-bindings/gpio/gpio.h>
>  
>  / {
> @@ -152,6 +153,98 @@ soc@0 {
>  		#size-cells = <2>;
>  		ranges = <0 0 0 0 0x10 0>;
>  
> +		pcie0_phy: phy@84000 {
> +			compatible = "qcom,ipq5424-qmp-gen3x1-pcie-phy",
> +				     "qcom,ipq9574-qmp-gen3x1-pcie-phy";
> +			reg = <0 0x00084000 0 0x2000>;

Use 0x0 for consistency. Here and everywhere.

> +			clocks = <&gcc GCC_PCIE0_AUX_CLK>,
> +				 <&gcc GCC_PCIE0_AHB_CLK>,
> +				 <&gcc GCC_PCIE0_PIPE_CLK>;
> +			clock-names = "aux", "cfg_ahb", "pipe";
> +
> +			assigned-clocks = <&gcc GCC_PCIE0_AUX_CLK>;
> +			assigned-clock-rates = <20000000>;
> +
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +			reset-names = "phy", "common";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "gcc_pcie0_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +			status = "disabled";
> +		};

[...]

> +		pcie3: pcie@40000000 {
> +			compatible = "qcom,pcie-ipq5424",
> +				     "qcom,pcie-ipq9574";

Put it in previous line itself.

> +			reg = <0 0x40000000 0 0xf1d>,
> +			      <0 0x40000f20 0 0xa8>,
> +			      <0 0x40001000 0 0x1000>,
> +			      <0 0x000f8000 0 0x3000>,
> +			      <0 0x40100000 0 0x1000>;
> +			reg-names = "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "parf",
> +				    "config";
> +			device_type = "pci";
> +			linux,pci-domain = <3>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <2>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x00100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x0fd00000>;
> +			interrupts = <GIC_SPI 470 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 472 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 473 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 474 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 475 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 476 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 477 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7";

Define the 'global' interrupt if it exists in hw.

> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 479 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 480 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 481 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 482 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE3_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE3_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
> +				 <&gcc GCC_PCIE3_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE3_AHB_CLK>,
> +				 <&gcc GCC_PCIE3_AUX_CLK>;
> +			clock-names = "axi_m",
> +				      "axi_s",
> +				      "axi_bridge",
> +				      "rchng",
> +				      "ahb",
> +				      "aux";
> +
> +			assigned-clocks = <&gcc GCC_PCIE3_AHB_CLK>,
> +					  <&gcc GCC_PCIE3_AUX_CLK>,
> +					  <&gcc GCC_PCIE3_AXI_M_CLK>,
> +					  <&gcc GCC_PCIE3_AXI_S_BRIDGE_CLK>,
> +					  <&gcc GCC_PCIE3_AXI_S_CLK>,
> +					  <&gcc GCC_PCIE3_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>,
> +					       <20000000>,
> +					       <266666666>,
> +					       <240000000>,
> +					       <240000000>,
> +					       <100000000>;

Why does this platform has to assign clock rate for all the clocks?

> +
> +			resets = <&gcc GCC_PCIE3_PIPE_ARES>,
> +				 <&gcc GCC_PCIE3_CORE_STICKY_RESET>,
> +				 <&gcc GCC_PCIE3_AXI_S_STICKY_RESET>,
> +				 <&gcc GCC_PCIE3_AXI_S_ARES>,
> +				 <&gcc GCC_PCIE3_AXI_M_STICKY_RESET>,
> +				 <&gcc GCC_PCIE3_AXI_M_ARES>,
> +				 <&gcc GCC_PCIE3_AUX_ARES>,
> +				 <&gcc GCC_PCIE3_AHB_ARES>;
> +			reset-names = "pipe",
> +				      "sticky",
> +				      "axi_s_sticky",
> +				      "axi_s",
> +				      "axi_m_sticky",
> +				      "axi_m",
> +				      "aux",
> +				      "ahb";
> +
> +			msi-map = <0x0 &intc 0x0 0x1000>;
> +
> +			phys = <&pcie3_phy>;
> +			phy-names = "pciephy";
> +			interconnects = <&gcc MASTER_ANOC_PCIE3 &gcc SLAVE_ANOC_PCIE3>,
> +					<&gcc MASTER_CNOC_PCIE3 &gcc SLAVE_CNOC_PCIE3>;

Define icc tags also.

> +			interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +			status = "disabled";

Add the root port node and OPP table.

All the above comments applies to other controller nodes also.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

