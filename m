Return-Path: <devicetree+bounces-158431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18564A66B66
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 08:18:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 600EC3BB6A2
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 07:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 717A31EB5CC;
	Tue, 18 Mar 2025 07:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MQ2Dj7Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33965195808
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 07:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742282298; cv=none; b=eH7TXq0ELEtTvATDP8aPq7p3VI7n91KwDLwRDf5Z5B54Q/7HPXluy0iBOJJx54O3ZIj/9ND184JxPSW/OaUUMtWogk/obPLNHGfNQITy6X4N0O8ittltUsZhquJNXWc602tM17LBKl2vOB7bPEXwRu6xO0B0SoWUnJQ/ynuj9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742282298; c=relaxed/simple;
	bh=sHkWokmPrqXsdDV7+i8VB3rJOPWoE1XI438bG7S5Nlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G1tLDpGuVG5JHGP/dq7YVMn+gQUm5KZ1ldD8V1rtbS233EU96RABeJ7Kw5nSNvrbf/X6ZRPwWDuY804z2O+xQj14CADz9NvF1gsLeZj9IsXvGgesX/n3OamhqfWq+efY9Ed9Xh9OzQmkYUnOp+tOPJ4qWjQVXYDr8AMcTxqmPqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MQ2Dj7Fu; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-223fd89d036so104222925ad.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 00:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742282295; x=1742887095; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=uL3J0kJ07qCQwLi/H8v/Z+UezU+LpDO7hkpWTExk8ys=;
        b=MQ2Dj7FuHbOQVJ5YTk0xYiXvhy57ZnHOSkxAJ0yPyePEmJh9SaVwgup/Sc6Fq8A4v3
         7Mwe3Duhv/9grkY8khBxRl1JLymtWOG6oIBV+Z9acEtLjDNp6xvNAFeha/7Kp4xnZYsV
         qvpVlpGnAVZtKHmq1J7HqZigN8n5ETDmNxtiZGhP5ejtRlt92HBuUNU1n9R72ehYwIum
         BmQ3VTYZ+t7zsJuTozqLaK4193Xj9bTYZ7h4TOw0VOV2USV+Lw8SMZb7oCkT1qEBPTMU
         EokAipHKCrPZiY8Zkx/9csn8fQoUOmCvQoJ+epj8M4RTK7/QRPzJFj25ZC89Ab0KRD62
         FFXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742282295; x=1742887095;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uL3J0kJ07qCQwLi/H8v/Z+UezU+LpDO7hkpWTExk8ys=;
        b=lhTtp6LjBYXTUWDtUg1KMkTeTgg5adxiuowXeIg3qBDSnjh2GkZcgh4Kqcmwniu5ez
         oP0lU4vfPaGhCELz9Y24yixMDzNgboTqPWP2K3uHYv9KCRX1Tnllca2D7zOb1WhdmW2b
         ieCPAwAG4IXG17bXHRm/njVyTa8IyAkdLVIricDEB3bqj0Oo0m/AKcquTSX/spi6Kd2v
         QC/G1ETcQL6Lkmz7HSezUhnwOqu5hGJSka86KubDGbng7/c90oWtgmkcTdQIQ0ON/xe8
         UjbLz8bD+Gt1P9bEycfwFZmaebo5J1ImS4bJYD28fFKPxM1Mw3f9cZUFaOVr7QcLPzLs
         hkwg==
X-Forwarded-Encrypted: i=1; AJvYcCUojmOU6t3g2ni4l2ZMD/O4BpQzM63Wv5nLhHX+CAMUMNp0Rxp8hYmMFh/nzSds9Nsci2N3FrW4i6UU@vger.kernel.org
X-Gm-Message-State: AOJu0YxqJht3Zp/UITjbPUF6XL1cNoydjReU05z3U9M1Lo0LXPVAY+bL
	TLCwysufPEk3z9oPWV7lp2QrwcqEK85vf24qtrz0SO5A5MLKQu6BymwYcrBJDQ==
X-Gm-Gg: ASbGnct7omyafXCci7RPFS/0tITSAXo45b8a1i/Nipq2nxoFWRGurVUwPF1Tx/OjY7d
	g/7nkftcUiWMIszLUI68/LQE3Ps82ejOjFhFHCXtgCDpW2NI24sjbFuhavYywQHxsz5Zn7a+RSM
	dBQ8L+2lPFuVhkle2ZHmuSZEpXyDe5WfhjpsvYUYs1hVrRF+vrH79YKDbxAx63Vg8oNWu8AQZrX
	BV+a1qA43N0/9L556RfEk4q4PLa2A+OAFF9qvHLQLC3jRnq2EG3iwldQe+NPBhdfuJEwD1T6z4r
	l8MPmHs/BHKRWpweEOEKU8jzJlBqyfxlobYHOedJbzjA2VDBS2vpuTTXRQDS/vgEshQ=
X-Google-Smtp-Source: AGHT+IEzVk5IzlQIC5VwuXRJuSpzspEea6bADLr7EeZbZUTj69tT3vTxsaaX4dqVtRwwYUxDGF902w==
X-Received: by 2002:a17:903:3bad:b0:223:2cae:4a96 with SMTP id d9443c01a7336-225e0b0fa67mr181209535ad.42.1742282295391;
        Tue, 18 Mar 2025 00:18:15 -0700 (PDT)
Received: from thinkpad ([120.56.195.170])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-225c6ba7275sm87355885ad.115.2025.03.18.00.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:18:15 -0700 (PDT)
Date: Tue, 18 Mar 2025 12:47:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: George Moussalem <george.moussalem@outlook.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, linux-phy@lists.infradead.org,
	andersson@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
	devicetree@vger.kernel.org, dmitry.baryshkov@linaro.org,
	kishon@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	kw@linux.com, lpieralisi@kernel.org, p.zabel@pengutronix.de,
	quic_nsekar@quicinc.com, robh@kernel.org, robimarko@gmail.com,
	vkoul@kernel.org, quic_srichara@quicinc.com
Subject: Re: [PATCH v3 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <20250318071756.uilfhwfzgr5gds3o@thinkpad>
References: <20250305134239.2236590-1-george.moussalem@outlook.com>
 <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DS7PR19MB8883E4A90C8AFF66BCAE14F49DCB2@DS7PR19MB8883.namprd19.prod.outlook.com>

On Wed, Mar 05, 2025 at 05:41:30PM +0400, George Moussalem wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add phy and controller nodes for a 2-lane Gen2 and
> a 1-lane Gen2 PCIe bus. IPQ5018 has 8 MSI SPI interrupts and
> one global interrupt.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan R <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 232 +++++++++++++++++++++++++-
>  1 file changed, 230 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 8914f2ef0bc4..301a044bdf6d 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -147,6 +147,234 @@ usbphy0: phy@5b000 {
>  			status = "disabled";
>  		};
>  
> +		pcie1: pcie@78000 {
> +			compatible = "qcom,pcie-ipq5018";
> +			reg = <0x00078000 0x3000>,
> +			      <0x80000000 0xf1d>,
> +			      <0x80000f20 0xa8>,
> +			      <0x80001000 0x1000>,
> +			      <0x80100000 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			max-link-speed = <2>;

Why do you want to limit link speed?

> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			phys = <&pcie1_phy>;
> +			phy-names ="pciephy";
> +
> +			ranges = <0x81000000 0 0x80200000 0x80200000 0 0x00100000>,	/* I/O */
> +				 <0x82000000 0 0x80300000 0x80300000 0 0x10000000>;	/* MEM */

These ranges are wrong. Please check with other DT files.

Same comments to other instance as well.

> +
> +			msi-map = <0x0 &v2m0 0x0 0xff8>;
> +
> +			interrupts = <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 142 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 143 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 144 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 145 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE1_AHB_CLK>,
> +				 <&gcc GCC_PCIE1_AUX_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
> +			clock-names = "iface",
> +				      "axi_m",
> +				      "axi_s",
> +				      "ahb",
> +				      "aux",
> +				      "axi_bridge";
> +
> +			resets = <&gcc GCC_PCIE1_PIPE_ARES>,
> +				 <&gcc GCC_PCIE1_SLEEP_ARES>,
> +				 <&gcc GCC_PCIE1_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE1_AXI_MASTER_ARES>,
> +				 <&gcc GCC_PCIE1_AXI_SLAVE_ARES>,
> +				 <&gcc GCC_PCIE1_AHB_ARES>,
> +				 <&gcc GCC_PCIE1_AXI_MASTER_STICKY_ARES>,
> +				 <&gcc GCC_PCIE1_AXI_SLAVE_STICKY_ARES>;
> +			reset-names = "pipe",
> +				      "sleep",
> +				      "sticky",
> +				      "axi_m",
> +				      "axi_s",
> +				      "ahb",
> +				      "axi_m_sticky",
> +				      "axi_s_sticky";
> +
> +			status = "disabled";
> +
> +			pcie@0 {
> +				device_type = "pci";
> +				reg = <0x0 0x0 0x0 0x0 0x0>;
> +
> +				#address-cells = <3>;
> +				#size-cells = <2>;
> +				ranges;
> +			};
> +		};
> +
> +		pcie1_phy: phy@7e000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-phy";
> +			reg = <0x0007e000 0x800>;
> +
> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +
> +			#clock-cells = <0>;
> +

Please get rid of these newlines between -cells properties.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

