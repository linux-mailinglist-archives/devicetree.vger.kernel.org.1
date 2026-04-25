Return-Path: <devicetree+bounces-290254-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SKBYMudS7WlLiAAAu9opvQ
	(envelope-from <devicetree+bounces-290254-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 01:48:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 47ADA4685CA
	for <lists+devicetree@lfdr.de>; Sun, 26 Apr 2026 01:48:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3EBE4300A4CD
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2026 23:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C02038237A;
	Sat, 25 Apr 2026 23:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="aBosJ+CP"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7A732DB7B7;
	Sat, 25 Apr 2026 23:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777160932; cv=none; b=iUypgG0FryzOqO0Vo8uDXnJojR6x2b13yoecCL8xrdOH3x3Bf9qpOF90mtWRcN+GB7m1pS76+g2IMg3yvvpKGa9Ge1OHegBQHPzkRzLeNF/Oj4A7EuyRpA4XUzowm0AszrLXiviyH0wSj62gq5dIfpPYaMLbi0zw7D7w3Iz2/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777160932; c=relaxed/simple;
	bh=Bp8RyEnQL0UxPw7eElHX5mckH3F8+ELKhrN2JVsixec=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IOLqPhgsnXiEipodCpuKXFksMOx+17naBbveefCiOZSlpC9G9KbuXqERU6YN945NsloNcfzR12cz7ysDKAt7y22nY1Zb/dcJVTv0l78v53KLSwuZm2z3G06uJvMEPJYOthYTfcmcPJ1/ZS1UJgqsxeHIIxRTcWJBo8GYFmWrVgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=aBosJ+CP; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from killaraus.ideasonboard.com (2001-14ba-703d-e500--2a1.rev.dnainternet.fi [IPv6:2001:14ba:703d:e500::2a1])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id A956F1544;
	Sun, 26 Apr 2026 01:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1777160826;
	bh=Bp8RyEnQL0UxPw7eElHX5mckH3F8+ELKhrN2JVsixec=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aBosJ+CPRWpbzNhjnEakqNIWx8v6lvj20KVcTdhjJHN+Ndm/UNWPtYyXx6WQQbise
	 L8hXN5SGvJ/awHLT9vgqFhYtYGLwhcvKW6IpH+xHcG2egbT8THwrLcbcNhFYgXfQdc
	 j4ji2Tag7R41Gax3AEIZ/M90dRFcVrQECrMOoRD0=
Date: Sun, 26 Apr 2026 02:48:45 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dennis Gilmore <dennis@ausil.us>, Heiko Stuebner <heiko@sntech.de>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Alexey Charkov <alchark@gmail.com>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v8 3/6] drm/bridge: simple: Add the Lontium LT8711UXD
 DP-to-HDMI bridge
Message-ID: <20260425234845.GC2964234@killaraus.ideasonboard.com>
References: <20260425031011.2529364-1-dennis@ausil.us>
 <20260425031011.2529364-4-dennis@ausil.us>
 <20260425112844.GB2964234@killaraus.ideasonboard.com>
 <45evt7lkzuykoqsc2z27hsvm7fasmn6sr6gbjtdnme54jauehf@dmvon2o5emzd>
 <CAABkxwt1=n=CnrVfCcw+EHjqjfsLkp67POk451fV8Gqw4vdnQw@mail.gmail.com>
 <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ur7mow4lw47ylxj3uigwwasrfywe6n42zb2to7ygeyjlkcgfkf@guzkembyy5hc>
X-Rspamd-Queue-Id: 47ADA4685CA
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290254-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[ausil.us,sntech.de,intel.com,linaro.org,kernel.org,kwiboo.se,gmail.com,vger.kernel.org,lists.infradead.org,lists.freedesktop.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurent.pinchart@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]

On Sun, Apr 26, 2026 at 12:44:59AM +0300, Dmitry Baryshkov wrote:
> On Sat, Apr 25, 2026 at 01:10:02PM -0500, Dennis Gilmore wrote:
> > On Sat, Apr 25, 2026 at 9:24 AM Dmitry Baryshkov wrote:
> > > On Sat, Apr 25, 2026 at 02:28:44PM +0300, Laurent Pinchart wrote:
> > > > Hi Dennis,
> > > >
> > > > Thank you for the patch.
> > > >
> > > > On Fri, Apr 24, 2026 at 10:10:08PM -0500, Dennis Gilmore wrote:
> > > > > The Lontium LT8711UXD is a high performance two lane Type-C/DP1.4
> > > > > to HDMI2.0 converter, designed to connect a USB Type-C source or
> > > > > a DP1.4 source to an HDMI2.0 sink.
> > > >
> > > > As far as I can tell, the LT8711UXD has an I2C control interface.
> > > > Shouldn't it be an I2C device ?
> > >
> > > From the datasheet:
> > >
> > > The device is capable of automatic operation which is
> > > enabled by an integrated microprocessor that uses an
> > > embedded SPI flash for firmware storage. System control
> > > is also available through the use of a dedicated
> > > configuration I2C slave interface.
> > >
> > > My guess was that it can either be an I2C device or it can function as a
> > > simple platdev with no I2C controls. Please correct me if my
> > > understanding was wrong.
> > >
> > > But now looking at the schematics, it seems to be connected to I2C6.
> > > Which means that it should be desribed (and bound) as such.
> > 
> > Hi Dmitry and Laurent,
> > 
> > While the schematic shows that it can use I2C and has been wired up,
> > it also shows that both MODE_SEL and I2C_ADDR have unpopulated 10k
> > resistors; as a result, MODE_SEL is connected directly to GND, putting
> > the bridge in autonomous mode. I confirmed this by running `i2cdetect
> > -r -y 6`, with the only device on the bus being the HYM8563 RTC at
> > 0x51. Without reworking the board, the device is not directly
> > controllable and just runs autonomously.
> 
> I think it would be nice to mention:
> - In the commit for the bindings, that the device can be running
>   uncontrolled or it can be attached over I2C, bindings describe the
>   uncontrolled mode.
> - In this commit message, the same.
> - In the commit message for the board DT mention your findings about the
>   board, mention soldering R9 or R17 (which one?) and R27.

Additionally, how are we going to handle boards where the device
operates in I2C mode ? Will we use a different compatible string (maybe
"lontium,lt8711uxd-i2c") ? If DT maintainers are fine with that, I have
no objection to this patch.

> > > > > Signed-off-by: Dennis Gilmore <dennis@ausil.us>
> > > > > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > > > > ---
> > > > >  drivers/gpu/drm/bridge/simple-bridge.c | 5 +++++
> > > > >  1 file changed, 5 insertions(+)
> > > > >
> > > > > diff --git a/drivers/gpu/drm/bridge/simple-bridge.c b/drivers/gpu/drm/bridge/simple-bridge.c
> > > > > index 8aa31ca3c72d..42c1f3d5ba0c 100644
> > > > > --- a/drivers/gpu/drm/bridge/simple-bridge.c
> > > > > +++ b/drivers/gpu/drm/bridge/simple-bridge.c
> > > > > @@ -270,6 +270,11 @@ static const struct of_device_id simple_bridge_match[] = {
> > > > >             .data = &(const struct simple_bridge_info) {
> > > > >                     .connector_type = DRM_MODE_CONNECTOR_HDMIA,
> > > > >             },
> > > > > +   }, {
> > > > > +           .compatible = "lontium,lt8711uxd",
> > > > > +           .data = &(const struct simple_bridge_info) {
> > > > > +                   .connector_type = DRM_MODE_CONNECTOR_HDMIA,
> > > > > +           },
> > > > >     }, {
> > > > >             .compatible = "parade,ps185hdm",
> > > > >             .data = &(const struct simple_bridge_info) {

-- 
Regards,

Laurent Pinchart

