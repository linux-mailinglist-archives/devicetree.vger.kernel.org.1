Return-Path: <devicetree+bounces-2883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 35EFA7ACD16
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 02:27:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 5611C1C204FA
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 00:27:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F749371;
	Mon, 25 Sep 2023 00:27:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A16C7E;
	Mon, 25 Sep 2023 00:27:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0E82AC433C7;
	Mon, 25 Sep 2023 00:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695601665;
	bh=NBt2mW76tq3+pMFhISh9urmBg211Dnu8Kt16sM9vw2M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CBCWtmSLwb95mM3Dd37ZjCj5mtV7uGBMmGJzsZeUREDZZZEM622ltccwc/+mKj6+5
	 CsSasCdcRyDfd1WK1zM8NpJuJ6thJr8aDC0/GvXd1/cntdyP7gdLDRPk1ls82Rj9aw
	 bhZnVsgKSxl60t4fPpyPKXhLVf9UYan84KQjuhP4ySfjvcS2CQnsCaKIByb+CaHXTh
	 MVNa7/37h8DIhCOitgXCiFUJGVE4nPdcw5DgEqgvfggBmA5X6iEfaBHnCnV3TkHlnv
	 CnrFAfL99Ki8ebyzC7EzChL3acm1IE68fQui+sREBVPT3mM0Tixl3/S8xAmPlxtm6V
	 8qkRtUptIN0+g==
Date: Mon, 25 Sep 2023 08:27:32 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: joy.zou@nxp.com, shenwei.wang@nxp.com, sherry.sun@nxp.com,
	clin@suse.com, conor+dt@kernel.org, devicetree@vger.kernel.org,
	eagle.zhou@nxp.com, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
	leoyang.li@nxp.com, linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com, linux-kernel@vger.kernel.org,
	pierre.gondois@arm.com, robh+dt@kernel.org, s.hauer@pengutronix.de
Subject: Re: [PATCH 1/5] firmware: imx: scu-pd: added missing edma channel
 power domain
Message-ID: <20230925002732.GT7231@dragon>
References: <20230822155333.2261262-1-Frank.Li@nxp.com>
 <20230822155333.2261262-2-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230822155333.2261262-2-Frank.Li@nxp.com>

On Tue, Aug 22, 2023 at 11:53:29AM -0400, Frank Li wrote:
> There are more power resources for dma channel at 8qxp and 8qm.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Could you rebase on v6.6-rc1?

Shawn

> ---
>  drivers/firmware/imx/scu-pd.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/firmware/imx/scu-pd.c b/drivers/firmware/imx/scu-pd.c
> index 84b673427073..7d80eabd7941 100644
> --- a/drivers/firmware/imx/scu-pd.c
> +++ b/drivers/firmware/imx/scu-pd.c
> @@ -121,9 +121,11 @@ static const struct imx_sc_pd_range imx8qxp_scu_pd_ranges[] = {
>  	{ "audio-pll1", IMX_SC_R_AUDIO_PLL_1, 1, false, 0 },
>  	{ "audio-clk-0", IMX_SC_R_AUDIO_CLK_0, 1, false, 0 },
>  	{ "audio-clk-1", IMX_SC_R_AUDIO_CLK_1, 1, false, 0 },
> -	{ "dma0-ch", IMX_SC_R_DMA_0_CH0, 16, true, 0 },
> +	{ "dma0-ch", IMX_SC_R_DMA_0_CH0, 32, true, 0 },
>  	{ "dma1-ch", IMX_SC_R_DMA_1_CH0, 16, true, 0 },
> -	{ "dma2-ch", IMX_SC_R_DMA_2_CH0, 5, true, 0 },
> +	{ "dma2-ch-0", IMX_SC_R_DMA_2_CH0, 5, true, 0 },
> +	{ "dma2-ch-1", IMX_SC_R_DMA_2_CH5, 27, true, 0 },
> +	{ "dma3-ch", IMX_SC_R_DMA_3_CH0, 32, true, 0 },
>  	{ "asrc0", IMX_SC_R_ASRC_0, 1, false, 0 },
>  	{ "asrc1", IMX_SC_R_ASRC_1, 1, false, 0 },
>  	{ "esai0", IMX_SC_R_ESAI_0, 1, false, 0 },
> -- 
> 2.34.1
> 

