Return-Path: <devicetree+bounces-135057-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC509FF8FE
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 12:52:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7159A3A24F0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 11:52:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72B3F1ACEC2;
	Thu,  2 Jan 2025 11:52:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="19pNoYzq"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AD31A8408;
	Thu,  2 Jan 2025 11:52:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735818750; cv=none; b=uxS3itbWyabfKPnb3x2W95Nw7hovWn98HnIGsLa6EivpTEORKyE6FGN/7aNdX7ryDnkgfN+oGa6KdoAejrsX/sghUM9AI2O3eRP0UW/kuDyT5jAOiL37yA/XvVrtqwAa/wdDwA1/HCvJ2z0w4Z9YHPfxXIl3Pw8ulIjwCmU3FhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735818750; c=relaxed/simple;
	bh=5gThfw2b1seVSqDR+g8KzbPy0WLknyr2g/XToI05UDY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=o7LluupZWOeAfIgCwJZ39ePdVnGvZuxIn8JQIabKYygyxPBdL8Q+MkWiy8CcqOPKlv3sOZAVoOItiSv9EaZX6Eas9b2VyN7qh6d+RtrYAUsQWc/YGJAeRHFrZYO1Ne2vn9mMbgFaP134L9708R2Qsz2JViHut/XKnvq13bbrihc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=19pNoYzq; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=zAkXzjPt8X/XOE0CbwOaMJf4t29lQ3cTGBGCsqKltRU=; b=19pNoYzq8aMvqfvQhqk6BfloHt
	FGPBL1odDg6I8xokNeEptw/nvH7VUF4Ny+Z2/wUaSHGd4nK2rRJ85bxIFsTd18VBE7OxAoY6kanDD
	J6wWfBrx7VhniAVwUjKPR68Dm46azJCXSu7c131ek39CbZXHE5XkpCX7ZynR1utgd1Ez21HK9D0iN
	deTngyouwkrlo+Lmq+3UXh30wY4FQW90Utg3v3q5qvqQEDd4cNT07wnQC/giq52dsSl8tFU4f/2kp
	+Lmq6RQA2YOIm+3W16yCe+/kTePjBtMm8LgzSIazNu61tIV9xmsgWkDeoOn0T3yXFalFxKmllvnEe
	4K3ofz1w==;
Received: from i5e860d14.versanet.de ([94.134.13.20] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tTJk7-0007gM-LR; Thu, 02 Jan 2025 12:51:59 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: cristian.ciocaltea@collabora.com, krzk+dt@kernel.org, mripard@kernel.org,
 hjc@rock-chips.com, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH 1/3] drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
Date: Thu, 02 Jan 2025 12:51:58 +0100
Message-ID: <2175680.OBFZWjSADL@diego>
In-Reply-To: <20241225103741.364597-2-andyshrk@163.com>
References:
 <20241225103741.364597-1-andyshrk@163.com>
 <20241225103741.364597-2-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andy,

Am Mittwoch, 25. Dezember 2024, 11:37:29 CET schrieb Andy Yan:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> There are some control bits for IO and interrupts status scattered
> across different GRF on differt SOC.
> Add platform callback for this IO setting and interrupts status
> handling.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> 
> ---
> 
>  .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 81 ++++++++++++-------
>  1 file changed, 54 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> index c36fc130b734..b21e868e7c16 100644
> --- a/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c
> @@ -62,6 +62,12 @@ struct rockchip_hdmi_qp {
>  	int port_id;
>  };
>  
> +struct rockchip_hdmi_qp_ctrl_ops {
> +	void (*io_init)(struct rockchip_hdmi_qp *hdmi);
> +	irqreturn_t (*irq_callback)(int irq, void *dev_id);
> +	irqreturn_t (*hardirq_callback)(int irq, void *dev_id);
> +};
> +
>  static struct rockchip_hdmi_qp *to_rockchip_hdmi_qp(struct drm_encoder *encoder)
>  {
>  	struct rockchip_encoder *rkencoder = to_rockchip_encoder(encoder);
> @@ -226,9 +232,47 @@ static irqreturn_t dw_hdmi_qp_rk3588_irq(int irq, void *dev_id)
>  	return IRQ_HANDLED;
>  }
>  
> +static void dw_hdmi_qp_rk3588_io_init(struct rockchip_hdmi_qp *hdmi)
> +{
> +	u32 val;
> +
> +	val = HIWORD_UPDATE(RK3588_SCLIN_MASK, RK3588_SCLIN_MASK) |
> +	      HIWORD_UPDATE(RK3588_SDAIN_MASK, RK3588_SDAIN_MASK) |
> +	      HIWORD_UPDATE(RK3588_MODE_MASK, RK3588_MODE_MASK) |
> +	      HIWORD_UPDATE(RK3588_I2S_SEL_MASK, RK3588_I2S_SEL_MASK);
> +

nit: below val = ... and regmap_write don't have a blank line between them
which makes sense to show that they belong together. So the blank above
can probably also go away.

> +	regmap_write(hdmi->vo_regmap,
> +		     hdmi->port_id ? RK3588_GRF_VO1_CON6 : RK3588_GRF_VO1_CON3,
> +		     val);
> +
> +	val = HIWORD_UPDATE(RK3588_SET_HPD_PATH_MASK, RK3588_SET_HPD_PATH_MASK);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON7, val);
> +
> +	if (hdmi->port_id)
> +		val = HIWORD_UPDATE(RK3588_HDMI1_GRANT_SEL,
> +				RK3588_HDMI1_GRANT_SEL);
> +	else
> +		val = HIWORD_UPDATE(RK3588_HDMI0_GRANT_SEL,
> +				RK3588_HDMI0_GRANT_SEL);
> +	regmap_write(hdmi->vo_regmap, RK3588_GRF_VO1_CON9, val);
> +
> +	if (hdmi->port_id)
> +		val = HIWORD_UPDATE(RK3588_HDMI1_HPD_INT_MSK, RK3588_HDMI1_HPD_INT_MSK);
> +	else
> +		val = HIWORD_UPDATE(RK3588_HDMI0_HPD_INT_MSK, RK3588_HDMI0_HPD_INT_MSK);
> +	regmap_write(hdmi->regmap, RK3588_GRF_SOC_CON2, val);
> +}
> +
> +static const struct rockchip_hdmi_qp_ctrl_ops rk3588_hdmi_ctrl_ops = {
> +	.io_init		= dw_hdmi_qp_rk3588_io_init,
> +	.irq_callback	        = dw_hdmi_qp_rk3588_irq,
> +	.hardirq_callback	= dw_hdmi_qp_rk3588_hardirq,
> +};
> +
>  struct rockchip_hdmi_qp_cfg {
>  	unsigned int num_ports;
>  	unsigned int port_ids[MAX_HDMI_PORT_NUM];
> +	const struct rockchip_hdmi_qp_ctrl_ops *ctrl_ops;
>  	const struct dw_hdmi_qp_phy_ops *phy_ops;
>  };
>  
> @@ -238,6 +282,7 @@ static const struct rockchip_hdmi_qp_cfg rk3588_hdmi_cfg = {
>  		0xfde80000,
>  		0xfdea0000,
>  	},
> +	.ctrl_ops = &rk3588_hdmi_ctrl_ops,
>  	.phy_ops = &rk3588_hdmi_phy_ops,
>  };
>  
> @@ -282,6 +327,12 @@ static int dw_hdmi_qp_rockchip_bind(struct device *dev, struct device *master,
>  	if (!cfg)
>  		return -ENODEV;
>  
> +	if (!cfg->ctrl_ops || !cfg->ctrl_ops->io_init ||
> +	    !cfg->ctrl_ops->irq_callback || !cfg->ctrl_ops->irq_callback) {

cfg->ctrl_ops->irq_callback is checked twice, I guess one of them
should've been ctrl_ops->hardirq_callback?

Patch looks good otherwise.

Thanks
Heiko




