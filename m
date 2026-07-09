Return-Path: <devicetree+bounces-323509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P9GvOgpqT2o9gQIAu9opvQ
	(envelope-from <devicetree+bounces-323509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:29:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CC58C72EF5D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 11:29:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ideasonboard.com header.s=mail header.b="Hqm/fPSl";
	dmarc=pass (policy=none) header.from=ideasonboard.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323509-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323509-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2DD523002D12
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 09:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C370D3F825C;
	Thu,  9 Jul 2026 09:17:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 183E13FBEC9;
	Thu,  9 Jul 2026 09:17:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783588631; cv=none; b=Cn4+ceOPJ1Fzv8Vs0XRzWPzAiYQxZoLw5e2nM5yAjGzC4LCZmIV6jWYecwhyVt82mkl1THtkq5kNNEO1yk1CPK595DGmuXTWbuNW8qzGg9FVLArxN0kDTGR9bTeyuy/ExvE0n4rpLYK7JGAhcA2+61ruNdECAmHgKtbPjNRnr94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783588631; c=relaxed/simple;
	bh=cfGBqMoCZZdYkPc6rSEc1mvwIyP87FxZlSbhBAt/oNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IVcXrkLfBR7cTi8vCrDkTtNZUyX+mpS3+7N8AUyYlWd+67IGyfvtOz8N1TpaqoUE9eDtDeQ0BUynzx2KR0ZBFVHTlvIRaFfMFHlT+bLQD6EF5l/aJYdRnMdr8ihCx4n7eNNcydiM+eLCzP0uGp1sFddfcD5AmIpyi7pw6ivXyqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=Hqm/fPSl; arc=none smtp.client-ip=213.167.242.64
Received: from killaraus.ideasonboard.com (2001-14ba-70f3-e800--a06.rev.dnainternet.fi [IPv6:2001:14ba:70f3:e800::a06])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9BAD1448;
	Thu,  9 Jul 2026 11:16:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1783588576;
	bh=cfGBqMoCZZdYkPc6rSEc1mvwIyP87FxZlSbhBAt/oNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hqm/fPSlAfZsUvKK92jwDnCAZ07Q3Oxpgg8qhILk74jlNvqVNnAmkTk4yGnMXtdvP
	 GXYk7GXo5GvCaleUvd7n6bfkVuFL+c0vd+Kj73+C3mqdEj2kQzlLJFuaq6GQr74q/a
	 CgCBkLxJZvpn3xH/LpOGZb72cYmFDCVV4bdfDuDc=
Date: Thu, 9 Jul 2026 12:17:05 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	Wojciech Dubowik <Wojciech.Dubowik@mt.com>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: sn65dsi83: Add reverse lanes
 property
Message-ID: <20260709091705.GA547298@killaraus.ideasonboard.com>
References: <20260707070244.230546-1-wojciech.dubowik@mt.com>
 <20260707070244.230546-2-wojciech.dubowik@mt.com>
 <8332433.DvuYhMxLoT@steina-w>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <8332433.DvuYhMxLoT@steina-w>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323509-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:linux-kernel@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:Wojciech.Dubowik@mt.com,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:luca.ceresoli@bootlin.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:marex@denx.de,m:devicetree@vger.kernel.org,m:jernejskrabec@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[20];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.freedesktop.org,mt.com,intel.com,linaro.org,kernel.org,kwiboo.se,gmail.com,bootlin.com,ffwll.ch,linux.intel.com,suse.de,denx.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mt.com:email,ideasonboard.com:from_mime,ideasonboard.com:dkim,vger.kernel.org:from_smtp,killaraus.ideasonboard.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CC58C72EF5D

On Thu, Jul 09, 2026 at 10:33:36AM +0200, Alexander Stein wrote:
> Am Dienstag, 7. Juli 2026, 09:02:42 CEST schrieb Wojciech Dubowik:
> > From: Wojciech Dubowik <Wojciech.Dubowik@mt.com>
> > 
> > Add reverse lvds lanes property for endpoints. It reverses
> > the data-lanes order i.e. <4 3 2 1> instead of default
> > <1 2 3 4>.
> 
> Wouldn't it be more reasonable to parse the data-lanes property and check
> for the order instead of introducing a new property?

I think so. That's the intended usage of data-lanes, the property is
meant to convey the order of lanes in addition to the count. Otherwise
we would have used a data-lanes-count property instead.

> > Signed-off-by: Wojciech Dubowik <Wojciech.Dubowik@mt.com>
> > ---
> >  .../devicetree/bindings/display/bridge/ti,sn65dsi83.yaml      | 4 ++++
> >  1 file changed, 4 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > index e69b6343a8eb..44483e808af9 100644
> > --- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > +++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi83.yaml
> > @@ -115,6 +115,10 @@ $defs:
> >              enum: [100, 200]
> >              default: 200
> >  
> > +          ti,lvds-reverse-lanes:
> > +            description: Reverse the order of LVDS lanes.
> > +            type: boolean
> > +
> >            ti,lvds-vod-swing-clock-microvolt:
> >              description: LVDS diferential output voltage <min max> for clock
> >                lanes in microvolts.

-- 
Regards,

Laurent Pinchart

