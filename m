Return-Path: <devicetree+bounces-274680-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEmAA43gsmncQQAAu9opvQ
	(envelope-from <devicetree+bounces-274680-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:49:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 62025274D9B
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 16:49:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C537D30BDF38
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 15:47:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2020E3E9F76;
	Thu, 12 Mar 2026 15:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="z1CgqqrH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF9A03EAC7E;
	Thu, 12 Mar 2026 15:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773330465; cv=none; b=C+ZEEccE8xuHBL+FoMaFzBGhY5ataPN3is2N3hUYzRcbwL+z7p8D+1iZMtgRT11jg9lTaVvJKsrGPW9fwkSnWifCd+Ny0xVmZrOIXQ7czqnZylKUntkDkFJOH0p5lw4M4hFGhhxw/sb9fN81vgZopXySMYm4/Sg6GEDqLAn3iwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773330465; c=relaxed/simple;
	bh=5ULr6tJJzyY/DrcbWDQ0hkJZQDSafRCCnWgh54WBlH0=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:Subject:Cc:To:
	 References:In-Reply-To; b=dctSXxgBUTJHTflW8J1Dt+t67Xl3R7ExBR3N3uX841BUKUxSfXP1WrMGqlXkziUC6CskJPVe6Xoy+7uXcusqN5mFwhIf5QIJ320XtQtbJlspMhe4bVlAbaTrQABv/VhHfMd9Pa6LErGpGJiPpQJHWfqU0yE+rrcZBTxNFekaYNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=z1CgqqrH; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 875E1C415AB;
	Thu, 12 Mar 2026 15:48:00 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id BE9836001B;
	Thu, 12 Mar 2026 15:47:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BD33E10369581;
	Thu, 12 Mar 2026 16:47:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1773330457; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=PT5kIaEDNi9/vOuV4B9O1BBff9a0zdlhj//IW73rDP4=;
	b=z1CgqqrHXgfJP3ikQMvIN1lXwJbF31afdY/+Bs/ZevuP6M9m67f4KsjjAeI/8A50sXWq7U
	KFoAmiQyuKj/b8IiSUmqirkt6AB0o8e2/e7bi/i1QDD/Sz3bh08eKCOCxQt+a7SBLgAsac
	vvf5XEBWeYBQSYJH+1RmcwFN6p4QXusRJ30dM0u/JrcQnb2o0T9ShOvtTcl4y7Tb2EceM5
	a6jiVhah/32vREcm7yTMRdwoEvxQL9pSn86Q/MnMN7XtfPCjtPAakPa2aBbHtcmwNzqFCz
	ntZTuBcahSQ5ulqTgUf/+aaK99ggPSxfi6paY6e7QLk/xzTr0dqWV3cq6LgL/g==
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Thu, 12 Mar 2026 16:47:33 +0100
Message-Id: <DH0X6JQP0ZIW.3F4LJLIEMWH8M@bootlin.com>
From: "Luca Ceresoli" <luca.ceresoli@bootlin.com>
Subject: Re: [PATCH v2 2/2] drm: bridge: ti-sn65dsi83: Add support for
 dual-link LVDS video mode
Cc: <Laurent.pinchart@ideasonboard.com>, <jonas@kwiboo.se>,
 <jernej.skrabec@gmail.com>, <maarten.lankhorst@linux.intel.com>,
 <mripard@kernel.org>, <tzimmermann@suse.de>, <airlied@gmail.com>,
 <simona@ffwll.ch>, <robh@kernel.org>, <krzk+dt@kernel.org>,
 <conor+dt@kernel.org>, <marex@denx.de>, <valentin@compulab.co.il>,
 <philippe.schenker@toradex.com>, <dri-devel@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>
To: "Sudarshan Shetty" <tessolveupstream@gmail.com>,
 <andrzej.hajda@intel.com>, <neil.armstrong@linaro.org>, <rfoss@kernel.org>
X-Mailer: aerc 0.20.1
References: <20260312043743.261475-1-tessolveupstream@gmail.com>
 <20260312043743.261475-3-tessolveupstream@gmail.com>
In-Reply-To: <20260312043743.261475-3-tessolveupstream@gmail.com>
X-Last-TLS-Session-Version: TLSv1.3
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[bootlin.com,reject];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[bootlin.com:s=dkim];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274680-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,intel.com,linaro.org,kernel.org];
	FREEMAIL_CC(0.00)[ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,kernel.org,suse.de,ffwll.ch,denx.de,compulab.co.il,toradex.com,lists.freedesktop.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[21];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.ceresoli@bootlin.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[bootlin.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,bootlin.com:dkim,bootlin.com:mid,bootlin.com:url]
X-Rspamd-Queue-Id: 62025274D9B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sudarshan,

On Thu Mar 12, 2026 at 5:37 AM CET, Sudarshan Shetty wrote:
> Some LVDS panels operating in dual-link mode require adjusted
> horizontal timing parameters when programmed into the SN65DSI84
> bridge. According to TI documentation, horizontal timing values
> must be divided by two when operating in dual-link mode. Without
> this adjustment, the panel may fail to display or produce corrupted
> output.
>
> Add support for an optional DT property "ti,dual-link-video-mode"
> to enable configuration required for dual-link LVDS operation.
> These settings ensure correct LVDS output for panels that require
> this mode of operation.
>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 52 ++++++++++++++++++++++++---
>  1 file changed, 48 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/bridge/ti-sn65dsi83.c b/drivers/gpu/drm/brid=
ge/ti-sn65dsi83.c
> index f6736b4457bb..9b7d35487bd8 100644
> --- a/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> +++ b/drivers/gpu/drm/bridge/ti-sn65dsi83.c
> @@ -164,6 +164,7 @@ struct sn65dsi83 {
>  	int				irq;
>  	struct delayed_work		monitor_work;
>  	struct work_struct		reset_work;
> +	bool				dual_link_video_mode;

As said in the reply to patch 1, there is already 'bool lvds_dual_link'
carrying the same info.

>  static const struct regmap_range sn65dsi83_readable_ranges[] =3D {
> @@ -667,8 +668,43 @@ static void sn65dsi83_atomic_pre_enable(struct drm_b=
ridge *bridge,
>  		     mode->hsync_start - mode->hdisplay);
>  	regmap_write(ctx->regmap, REG_VID_CHA_VERTICAL_FRONT_PORCH,
>  		     mode->vsync_start - mode->vdisplay);
> -	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
>
> +	/*
> +	 * In dual-link LVDS mode, the SN65DSI84 requires the horizontal
> +	 * timing parameters to be adjusted before being programmed into
> +	 * the device. According to TI documentation, the horizontal timing
> +	 * values must be divided by two when operating in dual-link mode.
> +	 * Without this adjustment, the connected panel may fail to light up
> +	 * or display corrupted output.
> +	 *
> +	 * TI also provides recommended register settings for this mode,
> +	 * which were derived using the TI DSI-Tuner tool. When the optional
> +	 * DT property "ti,dual-link-video-mode" is present, apply these
> +	 * configuration settings to ensure correct dual-link LVDS operation.
> +	 */
> +	if (ctx->dual_link_video_mode) {
> +		regmap_write(ctx->regmap, REG_RC_LVDS_PLL, 0x05);
> +		regmap_write(ctx->regmap, REG_RC_PLL_EN, 0x00);
> +		regmap_write(ctx->regmap, REG_DSI_CLK, 0x53);
> +		regmap_write(ctx->regmap, REG_LVDS_FMT, 0x6f);
> +		regmap_write(ctx->regmap, REG_LVDS_VCOM, 0x00);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_LOW, 0x00);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_VERTICAL_DISPLAY_SIZE_HIGH, 0x00);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_HSYNC_PULSE_WIDTH_LOW, 0x10);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_HORIZONTAL_BACK_PORCH, 0x28);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_VERTICAL_BACK_PORCH, 0x00);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_HORIZONTAL_FRONT_PORCH, 0x00);
> +		regmap_write(ctx->regmap,
> +			     REG_VID_CHA_VERTICAL_FRONT_PORCH, 0x00);
> +	}

I guess these hard-coded values are sepcific to your panel. They must
instead be computed based on the timings in order to work for every panel.

> +
> +	regmap_write(ctx->regmap, REG_VID_CHA_TEST_PATTERN, 0x00);
>  	/* Enable PLL */
>  	regmap_write(ctx->regmap, REG_RC_PLL_EN, REG_RC_PLL_EN_PLL_EN);
>  	usleep_range(3000, 4000);
> @@ -965,9 +1001,15 @@ static int sn65dsi83_host_attach(struct sn65dsi83 *=
ctx)
>
>  	dsi->lanes =3D dsi_lanes;
>  	dsi->format =3D MIPI_DSI_FMT_RGB888;
> -	dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> -			  MIPI_DSI_MODE_VIDEO_NO_HFP | MIPI_DSI_MODE_VIDEO_NO_HBP |
> -			  MIPI_DSI_MODE_VIDEO_NO_HSA | MIPI_DSI_MODE_NO_EOT_PACKET;
> +	if (ctx->dual_link_video_mode)
> +		dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO;
> +	else
> +		dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO |
> +				  MIPI_DSI_MODE_VIDEO_BURST |
> +				  MIPI_DSI_MODE_VIDEO_NO_HFP |
> +				  MIPI_DSI_MODE_VIDEO_NO_HBP |
> +				  MIPI_DSI_MODE_VIDEO_NO_HSA |
> +				  MIPI_DSI_MODE_NO_EOT_PACKET;

There is no explanation about this, can you elaborate on why?

I'm working on bringing up a dual-LVDS panel on a board with the SN65DSI84,
and the removing MIPI_DSI_MODE_VIDEO_BURST seems to help, but I still have
no idea why. Should you have any info, maybe from TI, it would be very
interesting.

Luca

--
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

