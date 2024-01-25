Return-Path: <devicetree+bounces-34909-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AAC83BAB3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 08:34:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A65DB283DBA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 07:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0E1D11C92;
	Thu, 25 Jan 2024 07:34:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4AC810A0A
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 07:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706168045; cv=none; b=jEUQtBwgtvk7mwhigkbLp4yyhuONZgckzc9MRilPhq31CbdNC5pN2KEddwCRtE6bJ8v4fcLCk/0DUjs2LKtny2GE64qJcUbZc+5t+9pL4xQHfVI5onVWRO3qgNGuH9ViQNfjCQG7dmSdbs5JkEJO/dmCqanQ9v4JeYdHW2VvRBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706168045; c=relaxed/simple;
	bh=zWuuoLQAoZjrXyDjbBpmUae4TEtY/rgducb5N8oECCY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lOuZB54QdIENtkIhjHPLP4Sz8G8hfNPCj8RJR64RC9b6RvRQbaj4ueF3OgRQAE85l75ky9fo6OlkOBsKmrI/gqQLppgtSqav3MlkDL/mOvUfLQTYT84P0jKZZqCekjn4gbjfuna4pETM47SpLrfwevKylER8E4mjSJPDm+IZ1Lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuFG-0002nn-Gk; Thu, 25 Jan 2024 08:33:54 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuFF-002EXJ-Ur; Thu, 25 Jan 2024 08:33:53 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rSuFF-001hWD-Rv; Thu, 25 Jan 2024 08:33:53 +0100
Date: Thu, 25 Jan 2024 08:33:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dong Aisheng <aisheng.dong@nxp.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>, devicetree@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 3/4] mailbox: imx: get RR/TR registers num from
 Parameter register
Message-ID: <20240125073353.GH324503@pengutronix.de>
References: <20240125-imx-mailbox-v4-0-800be5383c20@nxp.com>
 <20240125-imx-mailbox-v4-3-800be5383c20@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240125-imx-mailbox-v4-3-800be5383c20@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, Jan 25, 2024 at 01:20:05PM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX8ULP, i.MX93 MU has a Parameter register encoded as below:
> BIT: 15 --- 8 | 7 --- 0
>       RR_NUM    TR_NUM
> 
> So to make driver easy to support more variants, get the RR/TR
> registers number from Parameter register.
> 
> The patch only adds support the specific MU, such as ELE MU.
> For generic MU, not add support for number larger than 4.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>

Sascha

> ---
>  drivers/mailbox/imx-mailbox.c | 46 ++++++++++++++++++++++++++++++++-----------
>  1 file changed, 35 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/mailbox/imx-mailbox.c b/drivers/mailbox/imx-mailbox.c
> index dced4614065f..9e89f773d2f9 100644
> --- a/drivers/mailbox/imx-mailbox.c
> +++ b/drivers/mailbox/imx-mailbox.c
> @@ -29,7 +29,9 @@
>  #define IMX_MU_S4_CHANS		2
>  #define IMX_MU_CHAN_NAME_SIZE	20
>  
> -#define IMX_MU_NUM_RR		4
> +#define IMX_MU_V2_PAR_OFF	0x4
> +#define IMX_MU_V2_TR_MASK	GENMASK(7, 0)
> +#define IMX_MU_V2_RR_MASK	GENMASK(15, 8)
>  
>  #define IMX_MU_SECO_TX_TOUT (msecs_to_jiffies(3000))
>  #define IMX_MU_SECO_RX_TOUT (msecs_to_jiffies(3000))
> @@ -93,10 +95,11 @@ struct imx_mu_priv {
>  	struct clk		*clk;
>  	int			irq[IMX_MU_CHANS];
>  	bool			suspend;
> -
> -	u32 xcr[IMX_MU_xCR_MAX];
> -
>  	bool			side_b;
> +
> +	u32			xcr[IMX_MU_xCR_MAX];
> +	u32			num_tr;
> +	u32			num_rr;
>  };
>  
>  enum imx_mu_type {
> @@ -264,18 +267,17 @@ static int imx_mu_generic_rxdb(struct imx_mu_priv *priv,
>  static int imx_mu_specific_tx(struct imx_mu_priv *priv, struct imx_mu_con_priv *cp, void *data)
>  {
>  	u32 *arg = data;
> +	u32 num_tr = priv->num_tr;
>  	int i, ret;
>  	u32 xsr;
> -	u32 size, max_size, num_tr;
> +	u32 size, max_size;
>  
>  	if (priv->dcfg->type & IMX_MU_V2_S4) {
>  		size = ((struct imx_s4_rpc_msg_max *)data)->hdr.size;
>  		max_size = sizeof(struct imx_s4_rpc_msg_max);
> -		num_tr = 8;
>  	} else {
>  		size = ((struct imx_sc_rpc_msg_max *)data)->hdr.size;
>  		max_size = sizeof(struct imx_sc_rpc_msg_max);
> -		num_tr = 4;
>  	}
>  
>  	switch (cp->type) {
> @@ -324,6 +326,7 @@ static int imx_mu_specific_rx(struct imx_mu_priv *priv, struct imx_mu_con_priv *
>  	int i, ret;
>  	u32 xsr;
>  	u32 size, max_size;
> +	u32 num_rr = priv->num_rr;
>  
>  	data = (u32 *)priv->msg;
>  
> @@ -345,13 +348,13 @@ static int imx_mu_specific_rx(struct imx_mu_priv *priv, struct imx_mu_con_priv *
>  
>  	for (i = 1; i < size; i++) {
>  		ret = readl_poll_timeout(priv->base + priv->dcfg->xSR[IMX_MU_RSR], xsr,
> -					 xsr & IMX_MU_xSR_RFn(priv->dcfg->type, i % 4), 0,
> +					 xsr & IMX_MU_xSR_RFn(priv->dcfg->type, i % num_rr), 0,
>  					 5 * USEC_PER_SEC);
>  		if (ret) {
>  			dev_err(priv->dev, "timeout read idx %d\n", i);
>  			return ret;
>  		}
> -		*data++ = imx_mu_read(priv, priv->dcfg->xRR + (i % 4) * 4);
> +		*data++ = imx_mu_read(priv, priv->dcfg->xRR + (i % num_rr) * 4);
>  	}
>  
>  	imx_mu_xcr_rmw(priv, IMX_MU_RCR, IMX_MU_xCR_RIEn(priv->dcfg->type, 0), 0);
> @@ -737,11 +740,30 @@ static struct mbox_chan *imx_mu_seco_xlate(struct mbox_controller *mbox,
>  	return imx_mu_xlate(mbox, sp);
>  }
>  
> +static void imx_mu_get_tr_rr(struct imx_mu_priv *priv)
> +{
> +	u32 val;
> +
> +	if (priv->dcfg->type & IMX_MU_V2) {
> +		val = imx_mu_read(priv, IMX_MU_V2_PAR_OFF);
> +		priv->num_tr = FIELD_GET(IMX_MU_V2_TR_MASK, val);
> +		priv->num_rr = FIELD_GET(IMX_MU_V2_RR_MASK, val);
> +	} else {
> +		priv->num_tr = 4;
> +		priv->num_rr = 4;
> +	}
> +}
> +
>  static int imx_mu_init_generic(struct imx_mu_priv *priv)
>  {
>  	unsigned int i;
>  	unsigned int val;
>  
> +	if (priv->num_rr > 4 || priv->num_tr > 4) {
> +		WARN_ONCE(true, "%s not support TR/RR larger than 4\n", __func__);
> +		return -EOPNOTSUPP;
> +	}
> +
>  	for (i = 0; i < IMX_MU_CHANS; i++) {
>  		struct imx_mu_con_priv *cp = &priv->con_priv[i];
>  
> @@ -768,8 +790,8 @@ static int imx_mu_init_generic(struct imx_mu_priv *priv)
>  	imx_mu_write(priv, val, priv->dcfg->xSR[IMX_MU_GSR]);
>  
>  	/* Clear any pending RSR */
> -	for (i = 0; i < IMX_MU_NUM_RR; i++)
> -		imx_mu_read(priv, priv->dcfg->xRR + (i % 4) * 4);
> +	for (i = 0; i < priv->num_rr; i++)
> +		imx_mu_read(priv, priv->dcfg->xRR + i * 4);
>  
>  	return 0;
>  }
> @@ -874,6 +896,8 @@ static int imx_mu_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> +	imx_mu_get_tr_rr(priv);
> +
>  	priv->side_b = of_property_read_bool(np, "fsl,mu-side-b");
>  
>  	ret = priv->dcfg->init(priv);
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

