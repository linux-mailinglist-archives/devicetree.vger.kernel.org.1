Return-Path: <devicetree+bounces-274330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qOmmJtbGsWnvFAAAu9opvQ
	(envelope-from <devicetree+bounces-274330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:47:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F302B2699A2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 20:47:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEB863184531
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 19:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC0B02D0C7B;
	Wed, 11 Mar 2026 19:45:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9164295DAC
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 19:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773258358; cv=none; b=bzA8+t01kLK8jtRDwehbXeMSfiBc+ofOLA18s5ameg8TgbY/zjS+YyWt2jdPEYe18v6wCCaUAMuMssmDjjJAQ9A1fMW729ruUq/8ISstvdUaNf/c090Dc8nbbiwcSu/zH5U5RcEvSZnGRpjXGDUUbhm6obs33BlevuuURxjdQjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773258358; c=relaxed/simple;
	bh=28bBRNfsyPKm+eji2CAGQaH32hvOKs3oH5Dmh4xphLY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=okn10nO4YK0mqnj5O+e/9cqu1qCNWxzFTLUlNaGf9uPjB5b2cpSmzG3yGxvmhSTxDmp2jRYBEXBD4izIUsTDhwp2zq+ma2OeDS59fXNuqamAHh4zonWmkjTK4RNIBOYDYOz8UFk0nxk/0Rv9QP+gcKYuneAUeLRryQc5WG0jqQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0PUl-0003Gd-NH; Wed, 11 Mar 2026 20:45:27 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0PUi-004uHc-1s;
	Wed, 11 Mar 2026 20:45:25 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1w0PUj-0000000DVMM-3LA5;
	Wed, 11 Mar 2026 20:45:25 +0100
Date: Wed, 11 Mar 2026 20:45:25 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Liu Ying <victor.liu@nxp.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Frank Li <Frank.Li@nxp.com>, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v11 2/3] drm/bridge: imx: Add i.MX93 parallel display
 format configuration support
Message-ID: <ot5qypkeirkiweicjijholt2hwfpnnfhrcm3d6euqfnupptsab@din4bkq2sh5h>
References: <20260303-v6-18-topic-imx93-parallel-display-v11-0-1b03733c8461@pengutronix.de>
 <20260303-v6-18-topic-imx93-parallel-display-v11-2-1b03733c8461@pengutronix.de>
 <33e09cc9-69bd-468b-8361-b92a50686f74@nxp.com>
 <DGZ2XYTVUR28.16ITKRM9S2ACV@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DGZ2XYTVUR28.16ITKRM9S2ACV@bootlin.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-274330-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[27];
	FREEMAIL_CC(0.00)[nxp.com,kernel.org,pengutronix.de,gmail.com,intel.com,linaro.org,ideasonboard.com,kwiboo.se,linux.intel.com,suse.de,ffwll.ch,vger.kernel.org,lists.linux.dev,lists.infradead.org,lists.freedesktop.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,pengutronix.de:url]
X-Rspamd-Queue-Id: F302B2699A2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Liu, Luca,

sorry for the delayed response, I was at the EW26.

On 26-03-10, Luca Ceresoli wrote:
> Hi Liu, Marco,
> 
> On Tue Mar 10, 2026 at 3:57 AM CET, Liu Ying wrote:
> > Hi Marco, Luca,
> >
> > On Tue, Mar 03, 2026 at 11:34:27AM +0100, Marco Felsch wrote:
> >
> > [...]
> >
> >> +	next_bridge = devm_drm_of_get_bridge(dev, dev->of_node, 1, 0);
> >> +	if (IS_ERR(next_bridge))
> >> +		return dev_err_probe(dev, PTR_ERR(next_bridge),
> >> +				     "failed to get next bridge\n");
> >> +	pdfc->dev = dev;
> >> +	pdfc->bridge.of_node = dev->of_node;
> >> +	pdfc->bridge.type = DRM_MODE_CONNECTOR_DPI;
> >> +	pdfc->bridge.next_bridge = next_bridge;
> >
> > When I was reviewing another patch[1], I was aware of the necessity of
> > calling drm_bridge_get() for next_bridge to balance the next bridge's
> > refcount put from __drm_bridge_free() for this bridge.  I'd be good if
> > Luca may confirm this is correct.  Sorry for bringing this up late.
> 
> Indeed you have a good point.

At which stage did you faced this issue? During driver probe, because of
EPROBE_DEFER?

That's the reason for having the local next_bridge variable since I
faced with the same issue. In other words this driver is correct and
it's on purpose to not assign it directly. Albeit I could/should have
added a comment.

> After re-checking devm_drm_of_get_bridge(), as I wrote on the other thread
> you pointed to, you should call drm_bridge_get():
> 
> -	pdfc->bridge.next_bridge = next_bridge;
> +	pdfc->bridge.next_bridge = drm_bridge_get(next_bridge);
>
> Marco, you can keep my R-by if you resend with just this change.
> 
> Sorry about the confusion here.
> 
> As mention on the other thread, devm_drm_of_get_bridge() is unable to
> support bridge hotplug. So it should be deprecated, but as of now there is
> no alternative.

Sorry I need a bit more context. What's the issue? How can I trigger the
issue? Why is bridge hotplug required at this stage? Why is only this
bridge affecte by the hotplug issue?

Regards,
  Marco



> 
> Luca
> 
> --
> Luca Ceresoli, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |

