Return-Path: <devicetree+bounces-14187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5CD7E2977
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 17:13:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 39BF8281005
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 16:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64BB828E33;
	Mon,  6 Nov 2023 16:13:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DyNL/Qwq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D48C2EE
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 16:13:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6391DC433C7;
	Mon,  6 Nov 2023 16:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699287180;
	bh=0H1dc6HEmRBipKy8E5yk0M2LZ1eX6eHdMCL4x9+kr4s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DyNL/QwqDDRkV01QwKcgdEd2Bu5G+zzEPC9ycp0QdDGw0GJdSh97VsFF/AI7QejaL
	 0q6UEbtp1zR1QbBAy2qlRk5TKstR6bNPc2moLb9PJ/x3MBSuhGX0F8HmPpUTvrF6Qe
	 hVZkF5APmmAS5dA4jqBb5qRAnNgYXm3k0+BOpbq/Vc1xqEKDIM9brLzTsOs3DpNFLZ
	 HItclxvXMpEbZJ9rlwtHNqnsq7IrEKn/nPQ24uybJbRGxVU6x9aU+sCtf8mzYexSCP
	 0UiZTwteOPzRRJ720P4+ciJjj+Xe29LV3Kgw1Sd+wp7m7IZgHMixXIDKJgwHZtiuH+
	 n8Ak/x5PaLfow==
Date: Mon, 6 Nov 2023 08:17:01 -0800
From: Bjorn Andersson <andersson@kernel.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, quic_vbadigan@quicinc.com, quic_ramkri@quicinc.com, 
	quic_nitegupt@quicinc.com, quic_skananth@quicinc.com, quic_vpernami@quicinc.com, 
	quic_parass@quicinc.com
Subject: Re: [PATCH 2/2] phy: qcom-qmp-pcie: Add support for keeping refclk
 always on
Message-ID: <p3ozkq2rjkl2qowkbb5oq2bk33s476ismuxhkxv3ttlvafjyis@ctmowtnwg4rp>
References: <20231106-refclk_always_on-v1-0-17a7fd8b532b@quicinc.com>
 <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231106-refclk_always_on-v1-2-17a7fd8b532b@quicinc.com>

On Mon, Nov 06, 2023 at 05:22:35PM +0530, Krishna chaitanya chundru wrote:
> In PCIe low power states like L1.1 or L1.2 the phy will stop
> supplying refclk to endpoint. If endpoint asserts clkreq to bring
> back link L0, then RC needs to provide refclk to endpoint.
> 
> If there is some issues in platform with clkreq signal propagation
> to host and due to that host will not send refclk which results PCIe link
> down. For those platforms  phy needs to provide refclk even in low power

Double <space> ------------^^

> states.
> 
> Add a flag which indicates refclk is always supplied to endpoint.
> 

The patch itself look good, the problem description looks good, but if
you have an indication that the refclk "is always supplied to the
endpoint", then you don't have a problem with refclk and I don't think
you need this patch.

Something to the tune of "keep refclk always supplied to endpoint" seems
to more appropriately describe what this flag is doing.

> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 21 +++++++++++++++++----
>  1 file changed, 17 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> index a63ca7424974..d7e377a7d96e 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> @@ -43,6 +43,8 @@
>  /* QPHY_PCS_STATUS bit */
>  #define PHYSTATUS				BIT(6)
>  #define PHYSTATUS_4_20				BIT(7)
> +/* PCS_PCIE_ENDPOINT_REFCLK_CNTRL */
> +#define EPCLK_ALWAYS_ON_EN			BIT(6)
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
> @@ -77,6 +79,7 @@ enum qphy_reg_layout {
>  	QPHY_START_CTRL,
>  	QPHY_PCS_STATUS,
>  	QPHY_PCS_POWER_DOWN_CONTROL,
> +	QPHY_PCS_ENDPOINT_REFCLK_CNTRL,
>  	/* Keep last to ensure regs_layout arrays are properly initialized */
>  	QPHY_LAYOUT_SIZE
>  };
> @@ -103,10 +106,11 @@ static const unsigned int sdm845_qhp_pciephy_regs_layout[QPHY_LAYOUT_SIZE] = {
>  };
>  
>  static const unsigned int pciephy_v4_regs_layout[QPHY_LAYOUT_SIZE] = {
> -	[QPHY_SW_RESET]			= QPHY_V4_PCS_SW_RESET,
> -	[QPHY_START_CTRL]		= QPHY_V4_PCS_START_CONTROL,
> -	[QPHY_PCS_STATUS]		= QPHY_V4_PCS_PCS_STATUS1,
> -	[QPHY_PCS_POWER_DOWN_CONTROL]	= QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +	[QPHY_SW_RESET]				= QPHY_V4_PCS_SW_RESET,
> +	[QPHY_START_CTRL]			= QPHY_V4_PCS_START_CONTROL,
> +	[QPHY_PCS_STATUS]			= QPHY_V4_PCS_PCS_STATUS1,
> +	[QPHY_PCS_POWER_DOWN_CONTROL]		= QPHY_V4_PCS_POWER_DOWN_CONTROL,
> +	[QPHY_PCS_ENDPOINT_REFCLK_CNTRL]	= QPHY_V4_PCS_PCIE_ENDPOINT_REFCLK_CNTRL,
>  };
>  
>  static const unsigned int pciephy_v5_regs_layout[QPHY_LAYOUT_SIZE] = {
> @@ -2244,6 +2248,8 @@ struct qmp_pcie {
>  	struct phy *phy;
>  	int mode;
>  
> +	bool refclk_always_on;
> +
>  	struct clk_fixed_rate pipe_clk_fixed;
>  };
>  
> @@ -3159,6 +3165,10 @@ static void qmp_pcie_init_registers(struct qmp_pcie *qmp, const struct qmp_phy_c
>  	qmp_pcie_configure(pcs, tbls->pcs, tbls->pcs_num);
>  	qmp_pcie_configure(pcs_misc, tbls->pcs_misc, tbls->pcs_misc_num);
>  
> +	if (qmp->refclk_always_on && cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL])
> +		qphy_setbits(pcs_misc, cfg->regs[QPHY_PCS_ENDPOINT_REFCLK_CNTRL],
> +			     EPCLK_ALWAYS_ON_EN);
> +
>  	if (cfg->lanes >= 4 && qmp->tcsr_4ln_config) {
>  		qmp_pcie_configure(serdes, cfg->serdes_4ln_tbl, cfg->serdes_4ln_num);
>  		qmp_pcie_init_port_b(qmp, tbls);
> @@ -3681,6 +3691,9 @@ static int qmp_pcie_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto err_node_put;
>  
> +	qmp->refclk_always_on = of_property_read_bool(dev->of_node,
> +						      "qcom,refclk-always-on");

Leave this line unwrapped, for readability.

Regards,
Bjorn

> +
>  	ret = phy_pipe_clk_register(qmp, np);
>  	if (ret)
>  		goto err_node_put;
> 
> -- 
> 2.42.0
> 

