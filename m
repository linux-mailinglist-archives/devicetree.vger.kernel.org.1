Return-Path: <devicetree+bounces-5818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E597B80C2
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:23:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 50E91B2080B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:23:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3518A14291;
	Wed,  4 Oct 2023 13:23:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237FE1427E
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:22:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5CEA4C433C8;
	Wed,  4 Oct 2023 13:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696425779;
	bh=8vh1d1eTIrYIW13hLHU58d1P1KWHliFeTI8hRPHr+P0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OzYGoSCR9AQKMiioz15psSSfr0wQyhkagR+2L1Vj3NDolpfNuxgyZ1NX6Tp9b+65u
	 nu9QP5YFoDlh75NjBfyWFfv+qOjpJK9o57sEEZ/cL9x1k/BafEfjf33JIQv9hcXhDU
	 sCiwD/IWPTf2tdzdsalQPjUkVimuasRgImlQGjsKcLLvV/vz4251K8sVvdMJtHiwN4
	 BnUUrQ6UZVJiwwP5CQQzoCiVyMPQZ/EOrwlA+tcUnj8EDmAbnzTc77kSOYISY7k4df
	 5RRWYPfEX6uKHYl4nPsRkqoO+YdrrT12jKbagRqD11PxKnBDSUjJFtrf76sRijjCoN
	 SVYE7I2/n66jw==
Received: (nullmailer pid 2747138 invoked by uid 1000);
	Wed, 04 Oct 2023 13:22:57 -0000
Date: Wed, 4 Oct 2023 08:22:57 -0500
From: Rob Herring <robh@kernel.org>
To: shravan chippa <shravan.chippa@microchip.com>
Cc: green.wan@sifive.com, vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com, paul.walmsley@sifive.com, conor+dt@kernel.org, dmaengine@vger.kernel.org, devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, nagasuresh.relli@microchip.com, praveen.kumar@microchip.com
Subject: Re: [PATCH v2 3/4] dmaengine: sf-pdma: add mpfs-pdma compatible name
Message-ID: <20231004132257.GA2743005-robh@kernel.org>
References: <20231003042215.142678-1-shravan.chippa@microchip.com>
 <20231003042215.142678-4-shravan.chippa@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231003042215.142678-4-shravan.chippa@microchip.com>

On Tue, Oct 03, 2023 at 09:52:14AM +0530, shravan chippa wrote:
> From: Shravan Chippa <shravan.chippa@microchip.com>
> 
> Sifive platform dma does not allow out-of-order transfers,
> Add a PolarFire SoC specific compatible and code to support
> for out-of-order dma transfers
> 
> Signed-off-by: Shravan Chippa <shravan.chippa@microchip.com>
> ---
>  drivers/dma/sf-pdma/sf-pdma.c | 27 ++++++++++++++++++++++++---
>  drivers/dma/sf-pdma/sf-pdma.h |  6 ++++++
>  2 files changed, 30 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/dma/sf-pdma/sf-pdma.c b/drivers/dma/sf-pdma/sf-pdma.c
> index 06a0912a12a1..a9ff319d4ca3 100644
> --- a/drivers/dma/sf-pdma/sf-pdma.c
> +++ b/drivers/dma/sf-pdma/sf-pdma.c
> @@ -21,6 +21,7 @@
>  #include <linux/dma-mapping.h>
>  #include <linux/of.h>
>  #include <linux/of_dma.h>
> +#include <linux/of_device.h>

Wrong header.

>  #include <linux/slab.h>
>  
>  #include "sf-pdma.h"
> @@ -66,7 +67,7 @@ static struct sf_pdma_desc *sf_pdma_alloc_desc(struct sf_pdma_chan *chan)
>  static void sf_pdma_fill_desc(struct sf_pdma_desc *desc,
>  			      u64 dst, u64 src, u64 size)
>  {
> -	desc->xfer_type = PDMA_FULL_SPEED;
> +	desc->xfer_type =  desc->chan->pdma->transfer_type;
>  	desc->xfer_size = size;
>  	desc->dst_addr = dst;
>  	desc->src_addr = src;
> @@ -520,6 +521,7 @@ static struct dma_chan *sf_pdma_of_xlate(struct of_phandle_args *dma_spec,
>  
>  static int sf_pdma_probe(struct platform_device *pdev)
>  {
> +	const struct sf_pdma_driver_platdata *ddata;
>  	struct sf_pdma *pdma;
>  	int ret, n_chans;
>  	const enum dma_slave_buswidth widths =
> @@ -545,6 +547,14 @@ static int sf_pdma_probe(struct platform_device *pdev)
>  
>  	pdma->n_chans = n_chans;
>  
> +	pdma->transfer_type = PDMA_FULL_SPEED;
> +
> +	ddata  = of_device_get_match_data(&pdev->dev);

Use device_get_match_data() instead

> +	if (ddata) {
> +		if (ddata->quirks & NO_STRICT_ORDERING)
> +			pdma->transfer_type &= ~(NO_STRICT_ORDERING);
> +	}
> +
>  	pdma->membase = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(pdma->membase))
>  		return PTR_ERR(pdma->membase);
> @@ -632,11 +642,22 @@ static int sf_pdma_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static const struct sf_pdma_driver_platdata mpfs_pdma = {
> +	.quirks = NO_STRICT_ORDERING,
> +};
> +
>  static const struct of_device_id sf_pdma_dt_ids[] = {
> -	{ .compatible = "sifive,fu540-c000-pdma" },
> -	{ .compatible = "sifive,pdma0" },
> +	{
> +		.compatible = "sifive,fu540-c000-pdma",
> +	}, {
> +		.compatible = "sifive,pdma0",
> +	}, {
> +		.compatible = "microchip,mpfs-pdma",
> +		.data	    = &mpfs_pdma,
> +	},
>  	{},
>  };
> +
>  MODULE_DEVICE_TABLE(of, sf_pdma_dt_ids);
>  
>  static struct platform_driver sf_pdma_driver = {
> diff --git a/drivers/dma/sf-pdma/sf-pdma.h b/drivers/dma/sf-pdma/sf-pdma.h
> index 5c398a83b491..3b16db4daa0b 100644
> --- a/drivers/dma/sf-pdma/sf-pdma.h
> +++ b/drivers/dma/sf-pdma/sf-pdma.h
> @@ -49,6 +49,7 @@
>  
>  /* Transfer Type */
>  #define PDMA_FULL_SPEED					0xFF000008
> +#define NO_STRICT_ORDERING				BIT(3)
>  
>  /* Error Recovery */
>  #define MAX_RETRY					1
> @@ -112,8 +113,13 @@ struct sf_pdma {
>  	struct dma_device       dma_dev;
>  	void __iomem            *membase;
>  	void __iomem            *mappedbase;
> +	u32			transfer_type;
>  	u32			n_chans;
>  	struct sf_pdma_chan	chans[];
>  };
>  
> +struct sf_pdma_driver_platdata {
> +	u32 quirks;
> +};
> +
>  #endif /* _SF_PDMA_H */
> -- 
> 2.34.1
> 

