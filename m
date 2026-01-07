Return-Path: <devicetree+bounces-252256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 98052CFD0D4
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:00:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAA5230076B3
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:00:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB18304BBC;
	Wed,  7 Jan 2026 09:37:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="eJVtBzDD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC788305E05
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 09:37:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767778636; cv=none; b=FegSTT4DoaJqzGWyTJ3Neq7woWTCj4rgNTSfQocRDTeJ2wdFFv5lQu3arOeZlTBWlS4QSajFCjReCugWz3Rs4O7CYdZmaqF1rTw8qoa0BioL09RCBvxuFJsLV0lkzXaWxpI0KnOExQ9aWCq52bJbwA5bAcc7piVdnj1HLw74BD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767778636; c=relaxed/simple;
	bh=IGbQtndseA99jDxBELG5W91MnVIu8zXlNOcTJSF/q8E=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HRvN/Kf4xa61RodnqV5V4VOLLKNtrk+oJ+VxlLUGUG665fuY0VhSpn/fYCLuYatkln2Qjht9Ut/Bb4WNs6F0Y4djTijF5J8Ph4JVUpQ0CxqTcEyql0ltVwhxv2Ko1nMMTheS0SnbfRN83+QJsxibhs+/m7YjJWn4+qpa2KUJfGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=eJVtBzDD; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id 7133E4E41FCA;
	Wed,  7 Jan 2026 09:37:11 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 3A77F606F8;
	Wed,  7 Jan 2026 09:37:11 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 438FD103C86E9;
	Wed,  7 Jan 2026 10:36:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767778628; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=Jw9fYqtCDXfPtT+8UOX2Xqrz6As8LIZX/uUf/suEIp4=;
	b=eJVtBzDDN9p/slaW/fBHnk6sVTQesibf2sguJrNYrWaLClMnA9NKlPA4Ehezr7dp/2Wuke
	TtkA9rGEI3kgx5Up+CjRj68avMbdok0rWTvevos1bkIUmBtsEc3fEQAZZNRjssRPAloNrC
	VfxUf5Z15TAE+A3Jw8pC2+6bVzQsAaV+4oOVdZHc8zL4SSQ9M3QGpLQjsSiKDMF3meKpSN
	YPF2lEeX7O9RW27hBkGMeIALtYqJ6aPxfiYjy+nR4V04yL93puBZHruosW7nlE02Kh9nWH
	Bq1tRPOh8ZxhL8aaB7bxftYzP2XBxLgSOURHpSrQZbKVffuOe3IhbgOhgwE4BA==
Date: Wed, 7 Jan 2026 10:36:55 +0100
From: Kory Maincent <kory.maincent@bootlin.com>
To: Andrew Davis <afd@ti.com>
Cc: Jyri Sarha <jyri.sarha@iki.fi>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Russell
 King <linux@armlinux.org.uk>, "Bartosz Golaszewski" <brgl@bgdev.pl>, Tony
 Lindgren <tony@atomide.com>, Andrzej Hajda <andrzej.hajda@intel.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, "Robert Foss" <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman
 <jonas@kwiboo.se>, "Jernej Skrabec" <jernej.skrabec@gmail.com>, Markus
 Schneider-Pargmann <msp@baylibre.com>, Bajjuri Praneeth <praneeth@ti.com>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Louis Chauvet
 <louis.chauvet@bootlin.com>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Miguel Gazquez
 <miguel.gazquez@bootlin.com>, Herve Codina <herve.codina@bootlin.com>,
 <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-omap@vger.kernel.org>
Subject: Re: [PATCH v3 04/22] drm/tilcdc: Add support for DRM bus flags and
 simplify panel config
Message-ID: <20260107103655.2d25bcc3@kmaincent-XPS-13-7390>
In-Reply-To: <f9fb8050-89f9-4449-bc2c-ff284873be79@ti.com>
References: <20260106-feature_tilcdc-v3-0-9bad0f742164@bootlin.com>
	<20260106-feature_tilcdc-v3-4-9bad0f742164@bootlin.com>
	<f9fb8050-89f9-4449-bc2c-ff284873be79@ti.com>
Organization: bootlin
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

On Tue, 6 Jan 2026 13:30:40 -0600
Andrew Davis <afd@ti.com> wrote:
> >   static int tilcdc_init(const struct drm_driver *ddrv, struct device *=
dev)
> >   {
> >   	struct drm_device *ddev;
> >   	struct platform_device *pdev =3D to_platform_device(dev);
> >   	struct device_node *node =3D dev->of_node;
> > +	const struct of_device_id *of_id;
> >   	struct tilcdc_drm_private *priv;
> >   	u32 bpp =3D 0;
> >   	int ret;
> > @@ -209,6 +222,10 @@ static int tilcdc_init(const struct drm_driver *dd=
rv,
> > struct device *dev) if (IS_ERR(ddev))
> >   		return PTR_ERR(ddev);
> >  =20
> > +	of_id =3D of_match_node(tilcdc_of_match, node); =20
>=20
> You should be able to use `device_get_match_data()` here, then you would
> also be able to keep the tilcdc_of_match table down were it was before.

Indeed. Didn't know this helper.
Thanks you!

--
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

