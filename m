Return-Path: <devicetree+bounces-6998-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 538847BE785
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 19:17:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1329428194D
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 17:17:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5A1736B08;
	Mon,  9 Oct 2023 17:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dILau7xp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88FA9134BE
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 17:17:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A225AC433C7;
	Mon,  9 Oct 2023 17:17:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696871873;
	bh=I2CqfpW+7rJT51XxTDy4/99F+BBs6j5la8HhfMmDYG0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dILau7xpGTyhEqgp1wj91xacT0IEjGgVwMlraH9WRIJa8rLhzW5iopRZwm1cerz9+
	 u8uDxM9uEMUnK2RNu41kVIZQ4K83W9t5kk4Suj5XTJ/cGIqsEYutpLz2LMjO96itnn
	 caVyuKiCIkSdeoG77zH7Yc2cDkpbbJM2Jcu4TGHuWG5GrsqHTVQdcgf9SwoQI6WCvb
	 JGH7ERC4oTRX5n1b2ROfr2Y6gNELPI2cLwS/3WVdGPL2SY+Hmo7t//PUSXEcLmh2/Z
	 dhtiIpPp8pRJNYeTUQ4yys4ydDkd3UeTSMC4SZcF4tbou52tixH+oMHvOH0RYwG9bx
	 TBwVYeVDig70w==
Date: Mon, 9 Oct 2023 22:47:35 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitheesh Sekar <quic_nsekar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, vkoul@kernel.org, kishon@kernel.org,
	mani@kernel.org, p.zabel@pengutronix.de, quic_srichara@quicinc.com,
	quic_varada@quicinc.com, quic_ipkumar@quicinc.com,
	linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH 5/6] arm64: dts: qcom: ipq5018: Add PCIe related nodes
Message-ID: <20231009171735.GB31623@thinkpad>
References: <20231003120846.28626-1-quic_nsekar@quicinc.com>
 <20231003120846.28626-6-quic_nsekar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231003120846.28626-6-quic_nsekar@quicinc.com>

On Tue, Oct 03, 2023 at 05:38:45PM +0530, Nitheesh Sekar wrote:
> Add phy and controller nodes for PCIe_x2 and PCIe_x1.
> PCIe_x2 is 2-lane Gen2 and PCIe_x1 is 1-lane Gen2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi | 186 +++++++++++++++++++++++++-
>  1 file changed, 184 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> index 38ffdc3cbdcd..0818fdd1e693 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -8,6 +8,7 @@
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/clock/qcom,gcc-ipq5018.h>
>  #include <dt-bindings/reset/qcom,gcc-ipq5018.h>
> +#include <dt-bindings/gpio/gpio.h>
>  
>  / {
>  	interrupt-parent = <&intc>;
> @@ -94,6 +95,38 @@
>  		#size-cells = <1>;
>  		ranges = <0 0 0 0xffffffff>;
>  
> +		pcie_x1phy: phy@7e000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-gen2x1";
> +			reg = <0x0007e000 0x800>;
> +			#phy-cells = <0>;
> +			#clock-cells = <0>;
> +			clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +			clock-names = "pipe_clk";
> +			clock-output-names = "pcie1_pipe_clk";
> +			assigned-clocks = <&gcc GCC_PCIE1_PIPE_CLK>;
> +			assigned-clock-rates = <125000000>;
> +			resets = <&gcc GCC_PCIE1_PHY_BCR>,
> +				 <&gcc GCC_PCIE1PHY_PHY_BCR>;
> +			reset-names = "phy", "phy_phy";
> +			status = "disabled";
> +		};
> +
> +		pcie_x2phy: phy@86000{
> +			compatible = "qcom,ipq5018-uniphy-pcie-gen2x2";
> +			reg = <0x00086000 0x800>;
> +			#phy-cells = <0>;
> +			#clock-cells = <0>;
> +			clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +			clock-names = "pipe_clk";
> +			clock-output-names = "pcie0_pipe_clk";
> +			assigned-clocks = <&gcc GCC_PCIE0_PIPE_CLK>;
> +			assigned-clock-rates = <125000000>;
> +			resets = <&gcc GCC_PCIE0_PHY_BCR>,
> +				 <&gcc GCC_PCIE0PHY_PHY_BCR>;
> +			reset-names = "phy", "phy_phy";
> +			status = "disabled";
> +		};
> +
>  		tlmm: pinctrl@1000000 {
>  			compatible = "qcom,ipq5018-tlmm";
>  			reg = <0x01000000 0x300000>;
> @@ -117,8 +150,8 @@
>  			reg = <0x01800000 0x80000>;
>  			clocks = <&xo_board_clk>,
>  				 <&sleep_clk>,
> -				 <0>,
> -				 <0>,
> +				 <&pcie_x2phy>,
> +				 <&pcie_x1phy>,
>  				 <0>,
>  				 <0>,
>  				 <0>,
> @@ -246,6 +279,155 @@
>  				status = "disabled";
>  			};
>  		};
> +
> +		pcie_x1: pci@80000000 {
> +			compatible = "qcom,pcie-ipq5018";
> +			reg =  <0x80000000 0xf1d
> +				0x80000F20 0xa8
> +				0x80001000 0x1000
> +				0x78000 0x3000
> +				0x80100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +			device_type = "pci";
> +			linux,pci-domain = <0>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <1>;
> +			max-link-speed = <2>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			phys = <&pcie_x1phy>;
> +			phy-names ="pciephy";
> +
> +			ranges = <0x81000000 0 0x80200000 0x80200000

Why do you need "relocatable" flag? Same question for other range also.

> +				  0 0x00100000   /* downstream I/O */
> +				  0x82000000 0 0x80300000 0x80300000
> +				  0 0x10000000>; /* non-prefetchable memory */
> +

Don't you need "dma-coherent" to specify the devices as cache coherent? I assume
all the recent PCIe generations are cache coherent.

- Mani

> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 142
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 143
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 144
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 145
> +					 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global_irq";
> +
> +			clocks = <&gcc GCC_SYS_NOC_PCIE1_AXI_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE1_AHB_CLK>,
> +				 <&gcc GCC_PCIE1_AUX_CLK>,
> +				 <&gcc GCC_PCIE1_AXI_S_BRIDGE_CLK>;
> +
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
> +
> +			reset-names = "pipe",
> +				      "sleep",
> +				      "sticky",
> +				      "axi_m",
> +				      "axi_s",
> +				      "ahb",
> +				      "axi_m_sticky",
> +				      "axi_s_sticky";
> +
> +			msi-map = <0x0 &v2m0 0x0 0xff8>;
> +			status = "disabled";
> +		};
> +
> +		pcie_x2: pci@a0000000 {
> +			compatible = "qcom,pcie-ipq5018";
> +			reg =  <0xa0000000 0xf1d
> +				0xa0000F20 0xa8
> +				0xa0001000 0x1000
> +				0x80000 0x3000
> +				0xa0100000 0x1000>;
> +			reg-names = "dbi", "elbi", "atu", "parf", "config";
> +			device_type = "pci";
> +			linux,pci-domain = <1>;
> +			bus-range = <0x00 0xff>;
> +			num-lanes = <2>;
> +			max-link-speed = <2>;
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +
> +			phys = <&pcie_x2phy>;
> +			phy-names ="pciephy";
> +
> +			ranges = <0x81000000 0 0xa0200000 0xa0200000
> +				  0 0x00100000   /* downstream I/O */
> +				  0x82000000 0 0xa0300000 0xa0300000
> +				  0 0x10000000>; /* non-prefetchable memory */
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc 0 75
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_a */
> +					<0 0 0 2 &intc 0 78
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_b */
> +					<0 0 0 3 &intc 0 79
> +					 IRQ_TYPE_LEVEL_HIGH>, /* int_c */
> +					<0 0 0 4 &intc 0 83
> +					 IRQ_TYPE_LEVEL_HIGH>; /* int_d */
> +
> +			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global_irq";
> +
> +			clocks = <&gcc GCC_SYS_NOC_PCIE0_AXI_CLK>,
> +				 <&gcc GCC_PCIE0_AXI_M_CLK>,
> +				 <&gcc GCC_PCIE0_AXI_S_CLK>,
> +				 <&gcc GCC_PCIE0_AHB_CLK>,
> +				 <&gcc GCC_PCIE0_AUX_CLK>,
> +				 <&gcc GCC_PCIE0_AXI_S_BRIDGE_CLK>;
> +
> +			clock-names = "iface",
> +				      "axi_m",
> +				      "axi_s",
> +				      "ahb",
> +				      "aux",
> +				      "axi_bridge";
> +
> +			resets = <&gcc GCC_PCIE0_PIPE_ARES>,
> +				 <&gcc GCC_PCIE0_SLEEP_ARES>,
> +				 <&gcc GCC_PCIE0_CORE_STICKY_ARES>,
> +				 <&gcc GCC_PCIE0_AXI_MASTER_ARES>,
> +				 <&gcc GCC_PCIE0_AXI_SLAVE_ARES>,
> +				 <&gcc GCC_PCIE0_AHB_ARES>,
> +				 <&gcc GCC_PCIE0_AXI_MASTER_STICKY_ARES>,
> +				 <&gcc GCC_PCIE0_AXI_SLAVE_STICKY_ARES>;
> +
> +			reset-names = "pipe",
> +				      "sleep",
> +				      "sticky",
> +				      "axi_m",
> +				      "axi_s",
> +				      "ahb",
> +				      "axi_m_sticky",
> +				      "axi_s_sticky";
> +
> +			msi-map = <0x0 &v2m0 0x0 0xff8>;
> +			status = "disabled";
> +		};
> +
>  	};
>  
>  	timer {
> -- 
> 2.17.1
> 

-- 
மணிவண்ணன் சதாசிவம்

