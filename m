Return-Path: <devicetree+bounces-270414-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UEgiHXa1pmk7TAAAu9opvQ
	(envelope-from <devicetree+bounces-270414-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:18:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EC45B1EC910
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 11:18:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2B763079E22
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 10:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCAD1399004;
	Tue,  3 Mar 2026 10:13:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FFB5398915
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 10:13:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772532826; cv=none; b=g77yF2Z3/UMzDqWYxn+ZtorPzbcXviXbu9fGV+SEbeiv/fXUWdWmOp9cjg0pHKNW39pPnIZ4BCcQ2/qjrEwlbNJCbTBf2ow1qakNY08qf6TeSwK/Ciw5VN7mXHVzgsvU127+fqk7yxaUGnvsBSF7NpF25zkgQ+RJAEMAHYV9RFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772532826; c=relaxed/simple;
	bh=aOxhc6XiKyqjFRyylPkVA9D1penuoruaQ6JHGItXsGU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZCAvW0/l1QBzV2FF2v7pf3s/Z2u2V46pE6yK0Oqv142MRjJViO+mseqpn0+dhsJaGKIkid2vscUq2YnhnBtYRZceH0NE1ygCIQHg0o57ujeM8xIKVkS26El03VSpG2kkh2QmLW49J2/Xo8wSmy0HbrgI5XXlhlBZLUTJJWaXA84=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxMkl-0001RA-VG; Tue, 03 Mar 2026 11:13:23 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxMkj-003Wua-0a;
	Tue, 03 Mar 2026 11:13:22 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxMkk-0000000G2Od-1b45;
	Tue, 03 Mar 2026 11:13:22 +0100
Date: Tue, 3 Mar 2026 11:13:22 +0100
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
Message-ID: <2mbaz4jixv3h5ofvaneoe7muwr7snvwzs6lulorj4yul6arglt@ac5kzsx7zw4c>
References: <20260302-v6-18-topic-imx93-parallel-display-v10-0-634fe2778c7a@pengutronix.de>
 <20260302-v6-18-topic-imx93-parallel-display-v10-2-634fe2778c7a@pengutronix.de>
 <d97a9c0c-bdda-466a-8131-73799cdb20cd@nxp.com>
 <jyawx2cllg2jecdvx6bdfv4qiinfiwb6cuuwdhditpr2g2evee@qiox37ahgczd>
 <edc74093-abe3-4782-8e81-afd87222c146@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <edc74093-abe3-4782-8e81-afd87222c146@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: EC45B1EC910
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-270414-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[kernel.org,pengutronix.de,gmail.com,nxp.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,bootlin.com,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.freedesktop.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.570];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,pengutronix.de:url,pengutronix.de:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 26-03-03, Liu Ying wrote:
> On Tue, Mar 03, 2026 at 09:05:43AM +0100, Marco Felsch wrote:
> > On 26-03-03, Liu Ying wrote:
> >> On Mon, Mar 02, 2026 at 05:10:41PM +0100, Marco Felsch wrote:
> >>> From: Liu Ying <victor.liu@nxp.com>
> >>>
> >>> NXP i.MX93 mediamix blk-ctrl contains one DISPLAY_MUX register which
> >>> configures parallel display format by using the "PARALLEL_DISP_FORMAT"
> >>> field. Add a DRM bridge driver to support the display format configuration.
> >>>
> >>> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >>> [m.felsch@pengutronix.de: port to v7.0-rc1]
> >>> [m.felsch@pengutronix.de: add review feedback (Alexander)]
> >>> [m.felsch@pengutronix.de: fix to short Kconfig description (checkpath)]
> >>> [m.felsch@pengutronix.de: use "GPL" instead of "GPL v2" (checkpatch)]
> >>> [m.felsch@pengutronix.de: add bus-width support]
> >>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> >>> ---
> >>>  drivers/gpu/drm/bridge/imx/Kconfig      |  11 ++
> >>>  drivers/gpu/drm/bridge/imx/Makefile     |   1 +
> >>>  drivers/gpu/drm/bridge/imx/imx93-pdfc.c | 225 ++++++++++++++++++++++++++++++++
> >>>  3 files changed, 237 insertions(+)
> >>>
> >>
> >> [...]
> >>
> >>> +static bool imx93_pdfc_bus_output_fmt_supported(const  u32 fmt)
> >>
> >> As I mentioned in v9, can you drop const?
> >> I don't think const is needed.
> > 
> > It makes sense to spot failures early. Albeit this function is very
> > small, the fmt shouldn't be changed and therefore needs to be const.
> 
> If fmt is a pointer, then I think it makes sense to keep const.
> Otherwise, it looks a bit over engineered to have const, since this
> function is really small and no one would try to change fmt.

I'm aware that this is a copy of the output_cfg.format value. Would it
be a non const value you could mess with it and return the wrong value
afterwards. Keeping it const avoids this. Not sure why a 'const' is
worth the discussion :/

> > I forgot to add the double space fix though, thanks.
> > 
> >>> +{
> >>> +	int i;
> >>> +
> >>> +	for (i = 0; i < ARRAY_SIZE(imx93_pdfc_bus_output_fmts); i++) {
> >>> +		if (imx93_pdfc_bus_output_fmts[i] == fmt)
> >>> +			return true;
> >>> +	}
> >>> +
> >>> +	return false;
> >>> +}
> 
> [...]
> 
> >>> +static int imx93_pdfc_bridge_atomic_check(struct drm_bridge *bridge,
> >>> +					  struct drm_bridge_state *bridge_state,
> >>> +					  struct drm_crtc_state *crtc_state,
> >>> +					  struct drm_connector_state *conn_state)
> >>> +{
> >>> +	struct imx93_pdfc *pdfc = bridge_to_imx93_pdfc(bridge);
> >>> +	const u32 format = bridge_state->output_bus_cfg.format;
> >>
> >> Can you drop const?
> > 
> > No because this function is not supposed to change the format. The
> > function documentation says: this function can alter the bus_cfg.flags
> > bit _not_ the format.
> 
> The local variable format is not a pointer, so literally the value of
> bridge_state->output_bus_cfg.format cannot be changed through format,
> which follows the documentation.  So, I think const could be dropped.

Same here, I'm aware that this is not the pointer value but it holds a
copy of the value. Any adaptions made to the copy will fail, any
assignment of a const value to a non const value will prints at least a
warning to show that something is wrong within this function. Only a
direct bridge_state->output_bus_cfg.format assigned would cause no
compiler error/warning, fingers crossed that this will not happen.

I'm not sure why the 'const' is such a big problem in your oppinion.
Everything works just fine and we've done everything in our power to
avoid a wrong function behavior.

Regards,
  Marco


> 
> > 
> > Regards,
> >   Marco
> > 
> > 
> > 
> >>
> >> -- 
> >> Regards,
> >> Liu Ying
> >>
> > 
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

