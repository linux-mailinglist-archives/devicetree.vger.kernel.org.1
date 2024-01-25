Return-Path: <devicetree+bounces-34908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BC06283BAAE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:32:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 421DF282DD1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 07:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2773912B8A;
	Thu, 25 Jan 2024 07:32:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C06E125B2
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706167953; cv=none; b=R5940I5nQgeiZFTULEwjkC02JXvNnS6DKVDCMkqfN1Lu9NNJ+s1eWosZ40weQ+3Rj+7cByoSeWfZnamB9YejsohXjB3w9iQ1BgIpUVrE7oEQuoUfei/RO+IGUZc4ldbVyYXzgaYc8wv3oqchD4yXoFhPheMJbZFkNqnZ+pt6hlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706167953; c=relaxed/simple;
	bh=gfF68lbPdV5hS04ql6w0rrdGPxjfb4MFByyAPLhlyCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bg/jdAhd6xFFEufk0IszVKM0sseeNKrDVy+CGUPQ6uafLs0LjMNJV5pYUAu+KeX21Tg3Rpc3VBi3+6eI+pH6c1WPy9n4tZUCKbDDZsxAjmdw1l5wFdSPK7BQBcbsU4BKj9WRSKELjja3tZ1WHRfPzRNp6eVvdtDTfOnXrXa41XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuDj-0002fb-9C; Thu, 25 Jan 2024 08:32:19 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuDh-002EXC-VE; Thu, 25 Jan 2024 08:32:17 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuDh-001hVW-Ru; Thu, 25 Jan 2024 08:32:17 +0100
Date: Thu, 25 Jan 2024 08:32:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH v4 2/4] mailbox: imx: support return value of init
Message-ID: <20240125073217.GG324503@pengutronix.de>
References: <20240125-imx-mailbox-v4-0-800be5383c20@nxp.com>
 <20240125-imx-mailbox-v4-2-800be5383c20@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240125-imx-mailbox-v4-2-800be5383c20@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Jan 25, 2024 at 01:20:04PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> There will be changes that init may fail, so adding return value for
> init function.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  drivers/mailbox/imx-mailbox.c | 35 ++++++++++++++++++++++++-----------
>  1 file changed, 24 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index 656171362fe9..dced4614065f 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -110,7 +110,7 @@ struct imx_mu_dcfg {
>  	int (*tx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void *data);
>  	int (*rx)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
>  	int (*rxdb)(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp);
> -	void (*init)(struct imx_mu_priv *priv);
> +	int (*init)(struct imx_mu_priv *priv);
>  	enum imx_mu_type type;
>  	u32	xTR;		/* Transmit Register0 */
>  	u32	xRR;		/* Receive Register0 */
> @@ -737,7 +737,7 @@ static struct mbox_chan *imx_mu_seco_xlate(struct mbox_controller *mbox,
>  	return imx_mu_xlate(mbox, sp);
>  }
>  
> -static void imx_mu_init_generic(struct imx_mu_priv *priv)
> +static int imx_mu_init_generic(struct imx_mu_priv *priv)
>  {
>  	unsigned int i;
>  	unsigned int val;
> @@ -757,7 +757,7 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
>  	priv->mbox.of_xlate = imx_mu_xlate;
>  
>  	if (priv->side_b)
> -		return;
> +		return 0;
>  
>  	/* Set default MU configuration */
>  	for (i = 0; i < IMX_MU_xCR_MAX; i++)
> @@ -770,9 +770,11 @@ static void imx_mu_init_generic(struct imx_mu_priv *priv)
>  	/* Clear any pending RSR */
>  	for (i = 0; i < IMX_MU_NUM_RR; i++)
>  		imx_mu_read(priv, priv->dcfg->xRR + (i % 4) * 4);
> +
> +	return 0;
>  }
>  
> -static void imx_mu_init_specific(struct imx_mu_priv *priv)
> +static int imx_mu_init_specific(struct imx_mu_priv *priv)
>  {
>  	unsigned int i;
>  	int num_chans = priv->dcfg->type & IMX_MU_V2_S4 ? IMX_MU_S4_CHANS : IMX_MU_SCU_CHANS;
> @@ -794,12 +796,20 @@ static void imx_mu_init_specific(struct imx_mu_priv *priv)
>  	/* Set default MU configuration */
>  	for (i = 0; i < IMX_MU_xCR_MAX; i++)
>  		imx_mu_write(priv, 0, priv->dcfg->xCR[i]);
> +
> +	return 0;
>  }
>  
> -static void imx_mu_init_seco(struct imx_mu_priv *priv)
> +static int imx_mu_init_seco(struct imx_mu_priv *priv)
>  {
> -	imx_mu_init_generic(priv);
> +	int ret;
> +
> +	ret = imx_mu_init_generic(priv);
> +	if (ret)
> +		return ret;
>  	priv->mbox.of_xlate = imx_mu_seco_xlate;
> +
> +	return 0;
>  }
>  
>  static int imx_mu_probe(struct platform_device *pdev)
> @@ -866,7 +876,11 @@ static int imx_mu_probe(struct platform_device *pdev)
>  
>  	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
>  
> -	priv->dcfg->init(priv);
> +	ret = priv->dcfg->init(priv);
> +	if (ret) {
> +		dev_err(dev, "Failed to init MU\n");
> +		goto disable_clk;
> +	}
>  
>  	spin_lock_init(&priv->xcr_lock);
>  
> @@ -878,10 +892,8 @@ static int imx_mu_probe(struct platform_device *pdev)
>  	platform_set_drvdata(pdev, priv);
>  
>  	ret = devm_mbox_controller_register(dev, &priv->mbox);
> -	if (ret) {
> -		clk_disable_unprepare(priv->clk);
> -		return ret;
> -	}
> +	if (ret)
> +		goto disable_clk;
>  
>  	pm_runtime_enable(dev);
>  
> @@ -899,6 +911,7 @@ static int imx_mu_probe(struct platform_device *pdev)
>  
>  disable_runtime_pm:
>  	pm_runtime_disable(dev);
> +disable_clk:
>  	clk_disable_unprepare(priv->clk);
>  	return ret;
>  }
> 
> -- 
> 2.37.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

