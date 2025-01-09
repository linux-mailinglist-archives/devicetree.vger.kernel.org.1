Return-Path: <devicetree+bounces-137008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE6BA073B1
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:49:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B21663A5BDE
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 10:49:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94E4B2153F9;
	Thu,  9 Jan 2025 10:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="JUkZ6akZ";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="kIxlrJyl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565131FCFF4;
	Thu,  9 Jan 2025 10:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736419766; cv=none; b=rtQikhvCYTGap3lEz3/rlSPsfw0i1NuFkNYr8SgufXwTVXCba6Z5ZsX4KEG+uRY6V0m7ZCXcd7L0m3gUB//NBL6jN8RI7oExq51nwYuGKqcBISuRQCZt1JDkPjpgJKD5Ggil5nbKlax382PpdEAPKYVcssTHd+ISCUiKq41YLB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736419766; c=relaxed/simple;
	bh=ysliMxaD4QrRmUxrUyt0cwWGOGbxoxogsyYj7C2nB6Q=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qAtiuDHJT9AVAngGYx/BWFSEa2qtC7vwpKnaxEvNLLClIKF7o47WxgXG49060EodpHrMMhVAB57GBWRZaQjcqPDqsB//EUwQFK722iYOk9x4vfF5L4fZyKa4L3PtT2dcY7Rn4ZcOrTK0ufu3grmdXnRjUr565BTACBhfg6qLzrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=JUkZ6akZ; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=kIxlrJyl reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736419764; x=1767955764;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=tVp/68k41NkFcAhuu7KioYy3MSHOTjh5xj32/pjsGg4=;
  b=JUkZ6akZL9kIsiVL90hmjLTuRmxcSWzqA/IrTVVJKEro38rP5xuaGt8X
   6/llVqwScC6FIoToFe6bL8VLCl3ETC9jNfvhdIcwyAt7bZhWtxjI4rXxO
   qHnQk5GsZzQF1Ze9PjeGqR59Nx1MHB5LL/dZ9KSM2OqZxec2C8EP2DVUb
   NA6QioF8sJHOeeiT67qgy0WCEB4aL5TFZHtBV5GsnhuW4pED1NwrePTb2
   cSz8eioTow3YSvZDjn2Pwqmox2orMYJskcNzIcJeAOnc7yxZB8mfwbwIr
   qIYRamLH6DW7gqrKtN5IvEhsE/8aKuw60rHC1CIgMKgHdUoOb2StwccTR
   A==;
X-CSE-ConnectionGUID: fA/fH8SWQ86/Mj4HifBiqw==
X-CSE-MsgGUID: X6CWfte9SgCHKg57VIV8lw==
X-IronPort-AV: E=Sophos;i="6.12,301,1728943200"; 
   d="scan'208";a="40947954"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 09 Jan 2025 11:49:20 +0100
X-CheckPoint: {677FA9B0-28-C6D8D88D-F91F9E6B}
X-MAIL-CPID: 18EC4340A80C5DF26CABB0818066624A_2
X-Control-Analysis: str=0001.0A682F29.677FA9B1.0063,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 5A721168153;
	Thu,  9 Jan 2025 11:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736419756;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tVp/68k41NkFcAhuu7KioYy3MSHOTjh5xj32/pjsGg4=;
	b=kIxlrJylsUFKd9k4Ug86GqQ8f1FamKE6IjXoic8MT26rz0nZAbIK7svuRMcr3ki5JDpbus
	NetzVPx9ArCf5zpUoAIrw654dEfrLbkpVbzDlAB/xBo2yN73oIJ5/fJ99j0kW6wsZcZ4Vl
	MLYHMAYphVJZxFvfon/b0XxLJxRjAFYOhO5RuRf4V2XzLtOAT0mLBzPAU2qBnuthDicWFh
	eNvHZEjxTvJ2XUaAp2tCDJfy0Jh8tAvcYUqvNnECT3Kn/LtrMm4MdNIvFVloCsqYk6cmNn
	2pOc/pEdvKQCm0e+u0iXvV6F65J6rLYvCJ3yowc5taUUNwZm1FhqzoRB3uNadg==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v3 3/3] drm: bridge: ti-sn65dsi83: Add error recovery mechanism
Date: Thu, 09 Jan 2025 11:49:13 +0100
Message-ID: <15398572.tv2OnDr8pf@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20250108184442.64f38fbc@bootlin.com>
References: <20250108101907.410456-1-herve.codina@bootlin.com> <115787605.nniJfEyVGO@steina-w> <20250108184442.64f38fbc@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi Herve,

Am Mittwoch, 8. Januar 2025, 18:44:42 CET schrieb Herve Codina:
> Hi Alexander,
>=20
> On Wed, 08 Jan 2025 11:54:49 +0100
> Alexander Stein <alexander.stein@ew.tq-group.com> wrote:
>=20
> [...]
> > >  #include <drm/drm_atomic_helper.h>
> > >  #include <drm/drm_bridge.h>
> > > +#include <drm/drm_drv.h> /* DRM_MODESET_LOCK_ALL_BEGIN() needs drm_d=
rv_uses_atomic_modeset() */ =20
> >=20
> > Shouldn't this include be added to include/drm/drm_modeset_lock.h inste=
ad?
>=20
> Yes indeed. I will change that in the next iteration.
>=20
> >=20
> > >  #include <drm/drm_mipi_dsi.h>
> > >  #include <drm/drm_of.h>
> > >  #include <drm/drm_panel.h>
> > > @@ -147,6 +150,9 @@ struct sn65dsi83 {
> > >  	struct regulator		*vcc;
> > >  	bool				lvds_dual_link;
> > >  	bool				lvds_dual_link_even_odd_swap;
> > > +	bool				use_irq;
> > > +	struct delayed_work		monitor_work;
> > > +	struct work_struct		reset_work; =20
> >=20
> > Can you please rebase? You are missing commit d2b8c6d549570
> > ("drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing optional properties")
>=20
> Sure, I will rebase.
>=20
> [...]
> > > +static void sn65dsi83_handle_errors(struct sn65dsi83 *ctx)
> > > +{
> > > +	unsigned int irq_stat;
> > > +	int ret;
> > > +
> > > +	/*
> > > +	 * Schedule a reset in case of:
> > > +	 *  - the bridge doesn't answer
> > > +	 *  - the bridge signals an error
> > > +	 */
> > > +
> > > +	ret =3D regmap_read(ctx->regmap, REG_IRQ_STAT, &irq_stat);
> > > +	if (ret || irq_stat)
> > > +		schedule_work(&ctx->reset_work); =20
> >=20
> > Shouldn't you clear the error bits as well?
>=20
> Thanks for pointing that.
>=20
> I can clear the error bit but further more, I probably need to simply
> disable the interrupt.
>=20
> In some cases, we observed i2c access failure. In that cases clearing err=
or
> bits is simply not possible.
>=20
> To avoid some possible interrupt storms (the chip detect a failure, set i=
ts
> interrupt line but could be not accessible anymore), the best thing to do
> is to disable the interrupt line here, let the reset work to do its job
> performing a full reset of the device and re-enabling the interrupt line
> when needed, probably in sn65dsi83_atomic_enable().
>=20
> What do you think about that?

As I read the datasheet this is a active-high level interrupt, so as
long as some enabled IRQs are pending the signal will stay high.
There are 3 notes in section 9.1.3. IRQ usage that in various situations
IRQ bits may be set/pending and have to be cleared.
At least clear the interrupts before enabling it again to be on the
safe side.

Best regards,
Alexander
=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



