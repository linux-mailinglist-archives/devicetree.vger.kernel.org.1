Return-Path: <devicetree+bounces-104891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B28F9984744
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 16:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A4231C22984
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 14:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957DC1A76B9;
	Tue, 24 Sep 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rOWVmwNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7DF8C06
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 14:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727186784; cv=none; b=BIm3Wf3En67f6JsxyhAqCuF751E0E4GY1vYfr6fO/qpcv+chvm5iDBc66NH4fC9DfSuMo02nk2151HAogPKTLZqGVORziTpMFmQn6BPfTbJUotZ7z+8MPqoOmC4ERPMsw5M2uy8Yl99pu/XVN8aewWQ7/CAbUn+Uw/cdgJadsYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727186784; c=relaxed/simple;
	bh=fxeW8/ncwIZcB6RQrXj06SQA9gpkVTUseAMQwXO6O/g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gr836RVMhg4UN4wnaBOvFDqY+bQfGZbWCtdaXeg9Bin85WRMncTmN1lht+3OVIlXy6bVNki2c/U88kgdP0MhvHI1/VMTgwRfVpTBv8lSNA22NLwbzSYm6yNkOn1NIQ2DLtK4p2EB+5C3ybIqNL9YkddY+hBlZ2JDK8K/nM1sx80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rOWVmwNk; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-42cde6b5094so51740095e9.3
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 07:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727186780; x=1727791580; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQuJDS2p2nHDgfX+yjcD6xSYkM92DOywSwMA+XRxBgs=;
        b=rOWVmwNkdpNshkdbmwEyeJscYuwfw7M8ldtA6aawh1KXL/p20Prqcsa1fUR0kgx/dE
         IgYVv+YCksFE1CTM02xz40YjVoTNl91KicLF/QCdiDpONUGD5fPbEEVoRJfjs81jswUx
         KH8xGeen1uOCZw7ivx5B8tADA3FYAjVrTqF03vbWAdwLJUmP5w4/HOT/OfI/xLCxmmV5
         GKUoJbHs0Sv0cQRwd2R+osuN9kNqPMirZuXrUQzWxj69bzYHanmumq5IBywk69I7mz/G
         GeTz+Nw6eKU84aOB2u+xSpnUX9HrjFDBOP8RujcM+G1lsjRkC6vzmlRnHJHQPflW7h5e
         g3WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727186780; x=1727791580;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aQuJDS2p2nHDgfX+yjcD6xSYkM92DOywSwMA+XRxBgs=;
        b=VX3i8FXKZNIV5wQF8RLwGIZ6qKgusDCf7cjq91sBa+p25/1NVeBhv/l1ibp5BjLJAE
         QJjJElFV2m9ODiId5uPoh3et4yLqqH3WLuiISuorFqhDHHZmkqDSJNNcfH65v7rVaDnA
         Sd9rbaASetyT8RSEsPDGXEqX3Neqr8mch60Bon7vbjebfsOlis/AXeBorGeLIAlOr2sa
         shIAuhNCLRFAYvtnbJI81rOhbQoSwha+UikWlB6PacrsEvbTwZWmDRLKSvaO71YqHcK1
         /qXBPDaLG+EeEMIf+cft8haAnvrCD/nf+2uL9UOXiOy7TqqjpURMEV8/dfCD+WKS2iQv
         0dXA==
X-Forwarded-Encrypted: i=1; AJvYcCU0zE23rgPHAl9tWtTmhZRhSzB+0xFypKRFWjS4c/X1joTYSD5V13V25N0pAccuJTsT1/mCSDKEr6rW@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/XylFhG77MlT/k5q4K+Yzphl+RcGqKf5UUJD07YBw2Qd5SU1p
	5bIq9SQv1IEG66JSTpVDQpe30leBQmyxZ7UMzfHW/tKXwy5Q/kIvCkC5ygjRBg==
X-Google-Smtp-Source: AGHT+IHU4kvIqsUW9tfGMm57l30NViD2L3ov9CyYk2djN3TJXKiHwPX3y36c6PXwW7xl/drzs60iCA==
X-Received: by 2002:a05:600c:3b9a:b0:42c:c401:6d86 with SMTP id 5b1f17b1804b1-42e7ad8859emr97008525e9.27.1727186780057;
        Tue, 24 Sep 2024 07:06:20 -0700 (PDT)
Received: from thinkpad ([80.66.138.17])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e902b67b8sm23480865e9.29.2024.09.24.07.06.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 07:06:19 -0700 (PDT)
Date: Tue, 24 Sep 2024 16:06:18 +0200
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Qiang Yu <quic_qianyu@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, robh@kernel.org,
	andersson@kernel.org, konradybcio@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
	abel.vesa@linaro.org, quic_msarkar@quicinc.com,
	quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org,
	kw@linux.com, lpieralisi@kernel.org, neil.armstrong@linaro.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: x1e80100: Add support for PCIe3
 on x1e80100
Message-ID: <20240924140618.dgaiisihyuqf4vrr@thinkpad>
References: <20240924101444.3933828-1-quic_qianyu@quicinc.com>
 <20240924101444.3933828-7-quic_qianyu@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240924101444.3933828-7-quic_qianyu@quicinc.com>

On Tue, Sep 24, 2024 at 03:14:44AM -0700, Qiang Yu wrote:
> Describe PCIe3 controller and PHY. Also add required system resources like
> regulators, clocks, interrupts and registers configuration for PCIe3.
> 
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 204 ++++++++++++++++++++++++-
>  1 file changed, 203 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> index a36076e3c56b..c615c930cf0c 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> @@ -744,7 +744,7 @@ gcc: clock-controller@100000 {
>  
>  			clocks = <&bi_tcxo_div2>,
>  				 <&sleep_clk>,
> -				 <0>,
> +				 <&pcie3_phy>,
>  				 <&pcie4_phy>,
>  				 <&pcie5_phy>,
>  				 <&pcie6a_phy>,
> @@ -2907,6 +2907,208 @@ mmss_noc: interconnect@1780000 {
>  			#interconnect-cells = <2>;
>  		};
>  
> +		pcie3: pcie@1bd0000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-x1e80100";
> +			reg = <0x0 0x01bd0000 0x0 0x3000>,
> +			      <0x0 0x78000000 0x0 0xf1d>,
> +			      <0x0 0x78000f40 0x0 0xa8>,
> +			      <0x0 0x78001000 0x0 0x1000>,
> +			      <0x0 0x78100000 0x0 0x100000>,
> +			      <0x0 0x01bd3000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x78200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x78300000 0x0 0x78300000 0x0 0x3d00000>,
> +				 <0x03000000 0x7 0x40000000 0x7 0x40000000 0x0 0x40000000>;
> +			bus-range = <0x00 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <3>;
> +			num-lanes = <8>;
> +
> +			interrupts = <GIC_SPI 158 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 166 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 769 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 836 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 671 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 218 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 219 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
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
> +			interrupt-map = <0 0 0 1 &intc 0 0 GIC_SPI 220 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc 0 0 GIC_SPI 221 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc 0 0 GIC_SPI 237 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc 0 0 GIC_SPI 238 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_3_AUX_CLK>,
> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_3_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_3_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_3_SLV_Q2A_AXI_CLK>,
> +				 <&gcc GCC_CFG_NOC_PCIE_ANOC_NORTH_AHB_CLK>,
> +				 <&gcc GCC_CNOC_PCIE_NORTH_SF_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "noc_aggr",
> +				      "cnoc_sf_axi";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_3_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_south_anoc MASTER_PCIE_3 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &cnoc_main SLAVE_PCIE_3 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "pcie-mem",
> +					     "cpu-pcie";
> +
> +			resets = <&gcc GCC_PCIE_3_BCR>,
> +				 <&gcc GCC_PCIE_3_LINK_DOWN_BCR>;
> +			reset-names = "pci",
> +				      "link_down";
> +
> +			power-domains = <&gcc GCC_PCIE_3_GDSC>;
> +
> +			phys = <&pcie3_phy>;
> +			phy-names = "pciephy";
> +
> +			operating-points-v2 = <&pcie3_opp_table>;
> +
> +			status = "disabled";
> +
> +			pcie3_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};
> +
> +				/* GEN 1 x4 and GEN 2 x2 */
> +				opp-10000000 {
> +					opp-hz = /bits/ 64 <10000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <1000000 1>;
> +				};
> +
> +				/* GEN 1 x8 and GEN 2 x4 */
> +				opp-20000000 {
> +					opp-hz = /bits/ 64 <20000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <2000000 1>;
> +				};
> +
> +				/* GEN 2 x8 */
> +				opp-40000000 {
> +					opp-hz = /bits/ 64 <40000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <4000000 1>;
> +				};
> +
> +				/* GEN 3 x1 */
> +				opp-8000000 {
> +					opp-hz = /bits/ 64 <8000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <984500 1>;
> +				};
> +
> +				/* GEN 3 x2 and GEN 4 x1 */
> +				opp-16000000 {
> +					opp-hz = /bits/ 64 <16000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <1969000 1>;
> +				};
> +
> +				/* GEN 3 x4 and GEN 4 x2 */
> +				opp-32000000 {
> +					opp-hz = /bits/ 64 <32000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <3938000 1>;
> +				};
> +
> +				/* GEN 3 x8 and GEN 4 x4 */
> +				opp-64000000 {
> +					opp-hz = /bits/ 64 <64000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <7876000 1>;
> +				};
> +
> +				/* GEN 4 x8 */
> +				opp-128000000 {
> +					opp-hz = /bits/ 64 <128000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <15753000 1>;
> +				};
> +			};
> +		};
> +
> +		pcie3_phy: phy@1be0000 {
> +			compatible = "qcom,x1e80100-qmp-gen4x8-pcie-phy";
> +			reg = <0 0x01be0000 0 0x10000>;
> +
> +			clocks = <&gcc GCC_PCIE_3_PHY_AUX_CLK>,
> +				 <&gcc GCC_PCIE_3_CFG_AHB_CLK>,
> +				 <&tcsr TCSR_PCIE_8L_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_3_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_3_PIPEDIV2_CLK>;
> +			clock-names = "aux",
> +				      "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe",
> +				      "pipediv2";
> +
> +			resets = <&gcc GCC_PCIE_3_PHY_BCR>,
> +				 <&gcc GCC_PCIE_3_NOCSR_COM_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_nocsr";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_3_PHY_RCHNG_CLK>;
> +			assigned-clock-rates = <100000000>;
> +
> +			power-domains = <&gcc GCC_PCIE_3_PHY_GDSC>;
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "pcie3_pipe_clk";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>  		pcie6a: pci@1bf8000 {
>  			device_type = "pci";
>  			compatible = "qcom,pcie-x1e80100";
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

