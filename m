Return-Path: <devicetree+bounces-3862-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 948C57B0474
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 14:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id AC7CB1C209E5
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 12:42:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2AE6286B9;
	Wed, 27 Sep 2023 12:41:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE5D3286B0
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 12:41:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99629C433C7;
	Wed, 27 Sep 2023 12:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695818519;
	bh=Ixc8H3ujplWohF9UM5gKrnB7hfl3ihySOlnIo40lRmI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XCHhvG16RGel5+Z1+o7eXq/d2peVyJWwL08/o6DS/knRJrIU3Hl9QEDUJidqXCM9f
	 1qPzrVo4ADY3eRQULUSGuqIKEX1ft+XhsDXoWLDH2qHv40v3F5jfD5W1a9/ypgdHMa
	 aNq4icL5RReK2pLwud1NYh+SYaSXwheGsj5vd0hTEBf2rGZ0mkPE/M1/HL3y/MFzAh
	 SUJHUdjlJ4i2+QIbniS4NILR2JJ5VKWl++S8RaHOkT8tBm+F7cQIxJGJ5z1ip5ktI6
	 BH+kQIUp5SMGNCxOxcSG/bluG6P4kwyhMbmZFW11mtArIP2W4m547AxPvwobbB1ntP
	 w25hFpMVRikMQ==
Date: Wed, 27 Sep 2023 14:41:49 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
	mani@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org,
	avri.altman@wdc.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH V3 2/4] arm64: dts: qcom: sc7280: Add UFS nodes for
 sc7280 soc
Message-ID: <20230927124149.GB18050@thinkpad>
References: <20230927081858.15961-1-quic_nitirawa@quicinc.com>
 <20230927081858.15961-3-quic_nitirawa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230927081858.15961-3-quic_nitirawa@quicinc.com>

On Wed, Sep 27, 2023 at 01:48:56PM +0530, Nitin Rawat wrote:
> Add UFS host controller and PHY nodes for sc7280 soc.
> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 63 ++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 66f1eb83cca7..0b50b8557311 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -3353,6 +3353,69 @@
>  			};
>  		};
> 
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,sc7280-ufshc", "qcom,ufshc",
> +				     "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <2>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x80 0x0>;
> +			dma-coherent;
> +
> +			clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
> +				 <&gcc GCC_UFS_PHY_AHB_CLK>,
> +				 <&gcc GCC_UFS_PHY_UNIPRO_CORE_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
> +				 <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +			clock-names = "core_clk",
> +				      "bus_aggr_clk",
> +				      "iface_clk",
> +				      "core_clk_unipro",
> +				      "ref_clk",
> +				      "tx_lane0_sync_clk",
> +				      "rx_lane0_sync_clk",
> +				      "rx_lane1_sync_clk";

Please add the interconnect properties since mainline has the support.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

