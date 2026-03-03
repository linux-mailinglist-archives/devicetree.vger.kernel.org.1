Return-Path: <devicetree+bounces-270342-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eDdaIxqXpmnmRQAAu9opvQ
	(envelope-from <devicetree+bounces-270342-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:08:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9B81EA913
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:08:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4E079305E333
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:06:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F943386C08;
	Tue,  3 Mar 2026 08:06:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A86F382377
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:06:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772525170; cv=none; b=aLNH6nJh6ASJmZZPmgxtkVCYGHGOSM4P2QGoD3hB5v5QQ8uN3jy9gz0vPcLkZLl8WbSxYjsZ4ZEAoPGMieGRx/InZPaHAvx6K/2TjdfA7rU7DAEJVxdmRRby9Joi0/CPnQhQPFABvQHu4dfLKiMOL0eTtUj2ux5qGGchrJD/zGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772525170; c=relaxed/simple;
	bh=0GdfgMDV4ebHY8MXT4f/HTProAYyiFFJtMvorgsnlds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O7UOS5l+1+WNpXE14jAOM47zxRLyt8y35+uLCValLMloPpMAPh00sMJjUpF8dGRDOhtAYxzCGK2ROEs+6Fhz5gYgKJuVRncPr8zRdy14Fr+70DxTBCykqRAhDGIReGatNr3XhYYe+9ay4Qx+1EoCdCXPtz5W36z1hWcRW9tW5zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKlG-0005ew-HV; Tue, 03 Mar 2026 09:05:46 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKlB-003Vqs-2g;
	Tue, 03 Mar 2026 09:05:43 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKlD-0000000FzWF-07cc;
	Tue, 03 Mar 2026 09:05:43 +0100
Date: Tue, 3 Mar 2026 09:05:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Liu Ying <victor.liu@nxp.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, frank.li@nxp.com
Subject: Re: [PATCH v10 2/3] drm/bridge: imx: Add i.MX93 parallel display
 format configuration support
Message-ID: <jyawx2cllg2jecdvx6bdfv4qiinfiwb6cuuwdhditpr2g2evee@qiox37ahgczd>
References: <20260302-v6-18-topic-imx93-parallel-display-v10-0-634fe2778c7a@pengutronix.de>
 <20260302-v6-18-topic-imx93-parallel-display-v10-2-634fe2778c7a@pengutronix.de>
 <d97a9c0c-bdda-466a-8131-73799cdb20cd@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d97a9c0c-bdda-466a-8131-73799cdb20cd@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: EA9B81EA913
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270342-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.freedesktop.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.612];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:url,pengutronix.de:email,nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 26-03-03, Liu Ying wrote:
> On Mon, Mar 02, 2026 at 05:10:41PM +0100, Marco Felsch wrote:
> > From: Liu Ying <victor.liu@nxp.com>
> > 
> > NXP i.MX93 mediamix blk-ctrl contains one DISPLAY_MUX register which
> > configures parallel display format by using the "PARALLEL_DISP_FORMAT"
> > field. Add a DRM bridge driver to support the display format configuration.
> > 
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > [m.felsch@pengutronix.de: port to v7.0-rc1]
> > [m.felsch@pengutronix.de: add review feedback (Alexander)]
> > [m.felsch@pengutronix.de: fix to short Kconfig description (checkpath)]
> > [m.felsch@pengutronix.de: use "GPL" instead of "GPL v2" (checkpatch)]
> > [m.felsch@pengutronix.de: add bus-width support]
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  drivers/gpu/drm/bridge/imx/Kconfig      |  11 ++
> >  drivers/gpu/drm/bridge/imx/Makefile     |   1 +
> >  drivers/gpu/drm/bridge/imx/imx93-pdfc.c | 225 ++++++++++++++++++++++++++++++++
> >  3 files changed, 237 insertions(+)
> > 
> 
> [...]
> 
> > +static bool imx93_pdfc_bus_output_fmt_supported(const  u32 fmt)
> 
> As I mentioned in v9, can you drop const?
> I don't think const is needed.

It makes sense to spot failures early. Albeit this function is very
small, the fmt shouldn't be changed and therefore needs to be const.

I forgot to add the double space fix though, thanks.

> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < ARRAY_SIZE(imx93_pdfc_bus_output_fmts); i++) {
> > +		if (imx93_pdfc_bus_output_fmts[i] == fmt)
> > +			return true;
> > +	}
> > +
> > +	return false;
> > +}
> > +
> > +static u32 *
> > +imx93_pdfc_bridge_atomic_get_input_bus_fmts(struct drm_bridge *bridge,
> > +					    struct drm_bridge_state *bridge_state,
> > +					    struct drm_crtc_state *crtc_state,
> > +					    struct drm_connector_state *conn_state,
> > +					    u32 output_fmt,
> > +					    unsigned int *num_input_fmts)
> > +{
> > +	struct imx93_pdfc *pdfc = bridge_to_imx93_pdfc(bridge);
> > +	u32 *input_fmts;
> > +
> > +	*num_input_fmts = 0;
> > +
> > +	input_fmts = kmalloc_obj(*input_fmts, GFP_KERNEL);
> 
> With the below two commits in v7.0-rc1, I believe that GFP_KERNEL can be
> dropped.
> 
> bf4afc53b77a Convert 'alloc_obj' family to use the new default GFP_KERNEL argument
> e19e1b480ac7 add default_gfp() helper macro and use it in the new *alloc_obj() helpers

Will drop the GFP_KERNEL.

> > +	if (!input_fmts)
> > +		return NULL;
> > +
> > +	*num_input_fmts = 1;
> > +
> > +	if (!imx93_pdfc_bus_output_fmt_supported(output_fmt)) {
> > +		dev_dbg(pdfc->dev, "No valid output bus-fmt detected, fallback to MEDIA_BUS_FMT_RGB888_1X24\n");
> > +		input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
> > +		return input_fmts;
> > +	}
> > +
> > +	switch (output_fmt) {
> > +	case MEDIA_BUS_FMT_RGB888_1X24:
> > +	case MEDIA_BUS_FMT_RGB565_1X16:
> > +		input_fmts[0] = output_fmt;
> > +		break;
> > +	case MEDIA_BUS_FMT_RGB666_1X18:
> > +	case MEDIA_BUS_FMT_FIXED:
> > +		input_fmts[0] = MEDIA_BUS_FMT_RGB888_1X24;
> > +		break;
> > +	}
> > +
> > +	return input_fmts;
> > +}
> > +
> > +static int imx93_pdfc_bridge_atomic_check(struct drm_bridge *bridge,
> > +					  struct drm_bridge_state *bridge_state,
> > +					  struct drm_crtc_state *crtc_state,
> > +					  struct drm_connector_state *conn_state)
> > +{
> > +	struct imx93_pdfc *pdfc = bridge_to_imx93_pdfc(bridge);
> > +	const u32 format = bridge_state->output_bus_cfg.format;
> 
> Can you drop const?

No because this function is not supposed to change the format. The
function documentation says: this function can alter the bus_cfg.flags
bit _not_ the format.

Regards,
  Marco



> 
> -- 
> Regards,
> Liu Ying
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

