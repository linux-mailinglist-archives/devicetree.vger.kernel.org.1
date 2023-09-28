Return-Path: <devicetree+bounces-4370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D211B7B2321
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 19:04:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 819E62820DB
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 17:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0BFD51235;
	Thu, 28 Sep 2023 17:04:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E39E13AFB
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:04:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B1FBCC433C7;
	Thu, 28 Sep 2023 17:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695920645;
	bh=jE9tXKJu50DRo7zgYMe7bHQgTESkYh7mtAmR3OQEMpg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UlsIKJ7TuQZmmFT8Wjami1xXfBlzop3WKPQT6HsEijfovQ3Urvv0e33AUvrhlz+/U
	 vjS88aYIuJq3cWfdrTZ4DhUo6In1syyXbSCHe4BToSuwslHkZH7dPQo8Ti78ycDuw9
	 3fwBzw6aX2QFDYQ5S3JMRJHen/AQWkQaA7g0wuh4NjOCwaPN1epyjLOhIPyLFfqkil
	 FuKjAn/kVXUYWOaX+r1TGiVoeeMAI/eSwXLNgkbvDMvXuDXWag5T/Hh5ZassG1vO10
	 SuYQ0LBGWi6qnRLBg/uHUo5Kcpp0lRCzvnezd5rzufzlNRPRiKJGBxfnhzLWRBq7am
	 s0emOKO5muLiw==
Received: (nullmailer pid 854231 invoked by uid 1000);
	Thu, 28 Sep 2023 17:04:02 -0000
Date: Thu, 28 Sep 2023 12:04:02 -0500
From: Rob Herring <robh@kernel.org>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org, mani@kernel.org, alim.akhtar@samsung.com, bvanassche@acm.org, avri.altman@wdc.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V3 4/4] dt-bindings: ufs: qcom: Align clk binding
 property for Qualcomm UFS
Message-ID: <20230928170402.GA852313-robh@kernel.org>
References: <20230927082700.17593-1-quic_nitirawa@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230927082700.17593-1-quic_nitirawa@quicinc.com>

On Wed, Sep 27, 2023 at 01:57:00PM +0530, Nitin Rawat wrote:
> Align the binding property for clock such that "clocks" property
> comes first followed by "clock-names" property.

Why do we care?

> 
> Signed-off-by: Nitin Rawat <quic_nitirawa@quicinc.com>
> ---
>  .../devicetree/bindings/ufs/qcom,ufs.yaml        | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 802640efa956..d17bdc4e934f 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -295,14 +295,6 @@ examples:
>                              <&gem_noc MASTER_APPSS_PROC &config_noc SLAVE_UFS_MEM_CFG>;
>              interconnect-names = "ufs-ddr", "cpu-ufs";
> 
> -            clock-names = "core_clk",
> -                          "bus_aggr_clk",
> -                          "iface_clk",
> -                          "core_clk_unipro",
> -                          "ref_clk",
> -                          "tx_lane0_sync_clk",
> -                          "rx_lane0_sync_clk",
> -                          "rx_lane1_sync_clk";
>              clocks = <&gcc GCC_UFS_PHY_AXI_CLK>,
>                       <&gcc GCC_AGGRE_UFS_PHY_AXI_CLK>,
>                       <&gcc GCC_UFS_PHY_AHB_CLK>,
> @@ -311,6 +303,14 @@ examples:
>                       <&gcc GCC_UFS_PHY_TX_SYMBOL_0_CLK>,
>                       <&gcc GCC_UFS_PHY_RX_SYMBOL_0_CLK>,
>                       <&gcc GCC_UFS_PHY_RX_SYMBOL_1_CLK>;
> +            clock-names = "core_clk",
> +                          "bus_aggr_clk",
> +                          "iface_clk",
> +                          "core_clk_unipro",
> +                          "ref_clk",
> +                          "tx_lane0_sync_clk",
> +                          "rx_lane0_sync_clk",
> +                          "rx_lane1_sync_clk";
>              freq-table-hz = <75000000 300000000>,
>                              <0 0>,
>                              <0 0>,
> --
> 2.17.1
> 

