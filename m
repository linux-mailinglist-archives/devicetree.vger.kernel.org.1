Return-Path: <devicetree+bounces-11627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4A77D640E
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:52:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F07971C20A23
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 529831BDE3;
	Wed, 25 Oct 2023 07:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Au1eplrq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3066D19461;
	Wed, 25 Oct 2023 07:52:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93E63C433C7;
	Wed, 25 Oct 2023 07:52:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698220355;
	bh=AjvHbivfFAj4feaP3aHyTgho0kLeTTMjqn0xHKJqObY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Au1eplrqt71V0W8QiBWNe2G4Yt1Oo5Nwe1X9M5FenWXHtTYUyb207aW2LFGcyCWhS
	 zV7j5ngxfjrhePd3EDD3Jm+6rbJM4NaiyRax0zGFz4DBTz+PHXLLknRC2YjWVpJ3Oy
	 jXEp0aJZYsV8DWK0QjVwU1724Ebqkh7EtBUXSTt7FTqH4r8c7cl33Osn2PGke1fPtn
	 LXj9gnwfXVYYHR9uRm8ne146V2qe1GEJ+lrc+a5S49DyJncP47JS5D87NUURR60Mzn
	 hbNMX2JBySi4GYlW9fExrNPnywHtX69EINNWbSk+YzS7o4Tnyl81i4FMjg4bcz4fKS
	 b0ZDKaaj0dTTw==
Date: Wed, 25 Oct 2023 13:22:24 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, dmitry.baryshkov@linaro.org,
	robh@kernel.org, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v3 5/5] arm64: dts: qcom: sa8775p: Add ep pcie0
 controller node
Message-ID: <20231025075224.GB3648@thinkpad>
References: <1697715430-30820-1-git-send-email-quic_msarkar@quicinc.com>
 <1697715430-30820-6-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1697715430-30820-6-git-send-email-quic_msarkar@quicinc.com>

On Thu, Oct 19, 2023 at 05:07:10PM +0530, Mrinmay Sarkar wrote:
> Add ep pcie dtsi node for pcie0 controller found on sa8775p platform.
> It supports gen4 and x2 link width. Due to some stability issue in
> gen4 enabling gen3 as of now.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p.dtsi | 48 +++++++++++++++++++++++++++++++++++
>  1 file changed, 48 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 13dd44d..2aa7383 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -3714,4 +3714,52 @@
>  
>  		status = "disabled";
>  	};
> +
> +	pcie0_ep: pcie-ep@1c00000 {
> +		compatible = "qcom,sa8775p-pcie-ep";
> +		reg = <0x0 0x01c00000 0x0 0x3000>,
> +		      <0x0 0x40000000 0x0 0xf20>,
> +		      <0x0 0x40000f20 0x0 0xa8>,
> +		      <0x0 0x40001000 0x0 0x4000>,
> +		      <0x0 0x40200000 0x0 0x100000>,
> +		      <0x0 0x01c03000 0x0 0x1000>,
> +		      <0x0 0x40005000 0x0 0x2000>;

Can we sort the reg entries?

> +		reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +			    "mmio", "dma";
> +
> +		clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +			<&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +			<&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +			<&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +			<&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
> +
> +		clock-names = "aux",
> +			      "cfg",
> +			      "bus_master",
> +			      "bus_slave",
> +			      "slave_q2a";
> +
> +		interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 147 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 630 IRQ_TYPE_LEVEL_HIGH>;
> +
> +		interrupt-names = "global", "doorbell", "dma";
> +
> +		interconnects = <&pcie_anoc MASTER_PCIE_0 0 &mc_virt SLAVE_EBI1 0>,
> +				<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_0 0>;
> +		interconnect-names = "pcie-mem", "cpu-pcie";
> +
> +		iommu-map = <0x0 &pcie_smmu 0x0000 0x1>,
> +			    <0x100 &pcie_smmu 0x0001 0x1>;

I think I recommended using "iommu-map" instead of "iommus" property. But
looking at it again, I think it is fine to use just "iommus" property as the SID
will be associated with the EP directly.

Unless you want to have different SID for each function.

> +
> +		resets = <&gcc GCC_PCIE_0_BCR>;
> +		reset-names = "core";
> +		power-domains = <&gcc PCIE_0_GDSC>;
> +		phys = <&pcie0_phy>;
> +		phy-names = "pciephy";
> +		max-link-speed = <3>;

Please add a comment here that you are limiting the Gen speed due to stability
issues. Like,

		max-link-speed = <3>; /* FIXME: Limiting the Gen speed due to stability issues */

> +		num-lanes = <2>;

Can you check if the controller is cache coherent? If so, we should add
"dma-coherent" property.

- Mani

> +
> +		status = "disabled";
> +	};
>  };
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

