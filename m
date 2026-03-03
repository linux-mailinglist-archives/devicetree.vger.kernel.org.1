Return-Path: <devicetree+bounces-270334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yCshE7OTpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:54:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CC71EA6A6
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:54:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B30AF305E32F
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E3D375ADC;
	Tue,  3 Mar 2026 07:49:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889BD314D35
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772524165; cv=none; b=cRk9EwSjNsH6cHIEPQNXNXWJgjUwuC9llnR8K/Puf1DFBOeDy/SMobam0TiJRMpqGpmLPCCAUS3PNm9ETgnIMnyv7QBoNW7V6HjPBtYfoLYs4YS0lQ98QwHm4EBr0LQ0IQZHuyN3BNFne0geZM3KdQbn9vJgohJW+n1q2girvws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772524165; c=relaxed/simple;
	bh=24hq2yccR5ga4w1V0CXg/NuHqGAvkaxVJhWgCnQvKX0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2XQCmMXj5hV48uI71bqDRtP0yZxqECh+AmTWCBqZwz7/GbzAhaWR8a9/FCclc+TYPfz4Nh8R2EkrruODApkw4fkua6Gn7ZS6jwT0cBW9QpTc8YBPtonPCNCAnP+VFRO+eyZbRsnQWn4lQNPTbkdHR0FX58qY9to5dmopX97/BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKUr-0003Gv-F9; Tue, 03 Mar 2026 08:48:49 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKUm-003VlA-33;
	Tue, 03 Mar 2026 08:48:46 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1vxKUo-0000000FzBo-0f4B;
	Tue, 03 Mar 2026 08:48:46 +0100
Date: Tue, 3 Mar 2026 08:48:46 +0100
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
Subject: Re: [PATCH v10 0/3] Add i.MX91/93 parallel display support
Message-ID: <zadnfoqhwtlizn4jadtydmbkcd7qweckzx7kwj4kgzhqvutfbr@nghac4fqgzp7>
References: <20260302-v6-18-topic-imx93-parallel-display-v10-0-634fe2778c7a@pengutronix.de>
 <522ab537-1460-4eea-b992-e27df85805bd@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <522ab537-1460-4eea-b992-e27df85805bd@nxp.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Queue-Id: C2CC71EA6A6
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
	TAGGED_FROM(0.00)[bounces-270334-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.676];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:url,pengutronix.de:email]
X-Rspamd-Action: no action

On 26-03-03, Liu Ying wrote:
> On Mon, Mar 02, 2026 at 05:10:39PM +0100, Marco Felsch wrote:
> > Hi,
> 
> Hi Marco,
> 
> Since Frank Li is a new "ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" maintainer,
> you should copy him.  I'm Cc'ing him here.

I forgot to run b4 'auto-cc' again since all the maintainers were in
place, but you're right. Thanks for adding him.

Regards,
  Marco


> > this patchset adds the driver, dt-bindings and dt integration required
> > to drive a parallel display on the i.MX93.
> > 
> > Since the i.MX91 register layout equals the one from the i.MX93, I added
> > the support for both but tested only the i.MX93 case.
> > 
> > This patchset depends on:
> >  - https://lore.kernel.org/all/20251201-v6-18-topic-imx93-blkctrl-v1-0-b57a72e60105@pengutronix.de/
> > 
> > @Conor Dooley
> > I dropped your r-b tag since I added the 'bus-width' property.
> > 
> > Regards,
> >   Marco
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> > Changes in v10:
> > - Link to v9: https://lore.kernel.org/r/20260115-v6-18-topic-imx93-parallel-display-v9-0-2c5051e4b144@pengutronix.de
> > - Add MEDIA_BUS_FMT_FIXED (Liu)
> > - Drop next_bridge from driver struct and use bridge.next_bridge (Liu)
> > - Drop linux/of_address.h include (Liu)
> > - imx93-pdfc: drop bridge.driver_private usage++ (Liu)
> > - Make use of kmalloc_obj() (Liu)
> > 
> > Changes in v9:
> > - Link to v8: https://lore.kernel.org/r/20260113-v6-18-topic-imx93-parallel-display-v8-0-4abccdc473a5@pengutronix.de
> > - dt-bindings: drop unncessary changes (Frank)
> > - imx93-pdfc: drop bridge.driver_private usage (Luca)
> > - Kconfig: Adapt Kconfig symbol and prompt (Luca)
> > 
> > Changes in v8:
> > - Link to v7: https://lore.kernel.org/r/20251202-v6-18-topic-imx93-parallel-display-v7-0-2cce31d64608@pengutronix.de
> > - dt-bindings: add nxp,imx91-pdfc compatible (Liu)
> > - dt-bindings: use video-interfaces.yaml# (Liu)
> > - dt-bindings: s/data lanes/data lines/ (Liu)
> > - dt-bindings: drop 'reg' poperty
> > - dt-bindings: drop #address-cells, #size-cells
> > - imx93-pdfc: drop drm/drm_print.h include (Liu)
> > - imx93-pdfc: s/exist/exists/ (Liu)
> > - imx93-pdfc: drop MEDIA_BUS_FMT_FIXED from imx93_pdfc_bus_output_fmts
> > - imx93-pdfc: imx93_pdfc_bus_output_fmt_supported: make fmt const
> > - imx93-pdfc: Rework input-fmt selection to always fallback to a sane
> >               default.
> > - imx93-pdfc: imx93_pdfc_bridge_atomic_check: make use of
> > 	      imx93_pdfc_bus_output_fmt_supported() 
> > - imx93-pdfc: drop 'reg' dt-property usage
> > - imx93-pdfc: imx93_pdfc_bridge_probe: pass -1 for endpoint reg value (Liu)
> > 
> > Changes in v7:
> > - Link to v6: https://lore.kernel.org/r/20251201-v6-18-topic-imx93-parallel-display-v6-0-7b056e1e5b1e@pengutronix.de
> > - Add missing bits.h and bitfield.h headers (lkp)
> > 
> > Changes in v6:
> > - Link to v5: https://lore.kernel.org/all/20250304082434.834031-1-victor.liu@nxp.com/
> > - Add bus-width support
> > - rebase onto v6.18-rc1
> > - add review feedback (Alexander)
> > - driver license "GPL v2" -> "GPL" (checkpatch)
> > - make use of reg of-property
> > - fix to short Kconfig description (checkpath)
> > - add OF integration
> > 
> > ---
> > Liu Ying (2):
> >       dt-bindings: soc: imx93-media-blk-ctrl: Add PDFC subnode to schema and example
> 
> This one and ...
> 
> >       drm/bridge: imx: Add i.MX93 parallel display format configuration support
> > 
> > Marco Felsch (1):
> >       arm64: dts: imx93: Add parallel display output nodes
> 
> ... this one in v9 were applied by Frank, so you should no longer send them.
> 
> > 
> >  .../bindings/soc/imx/fsl,imx93-media-blk-ctrl.yaml |  78 +++++++
> >  arch/arm64/boot/dts/freescale/imx91_93_common.dtsi |  54 +++++
> >  arch/arm64/boot/dts/freescale/imx93.dtsi           |  12 ++
> >  drivers/gpu/drm/bridge/imx/Kconfig                 |  11 +
> >  drivers/gpu/drm/bridge/imx/Makefile                |   1 +
> >  drivers/gpu/drm/bridge/imx/imx93-pdfc.c            | 225 +++++++++++++++++++++
> >  6 files changed, 381 insertions(+)
> > ---
> > base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> > change-id: 20251201-v6-18-topic-imx93-parallel-display-95f9234bf6cc
> > 
> > Best regards,
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

