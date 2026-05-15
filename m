Return-Path: <devicetree+bounces-298537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAjfFN6LB2oI8AIAu9opvQ
	(envelope-from <devicetree+bounces-298537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:10:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FFF557A80
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 23:10:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E2C7300B3FB
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 21:10:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E19F3EB81B;
	Fri, 15 May 2026 21:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b="qCfby3Og"
X-Original-To: devicetree@vger.kernel.org
Received: from polaris.svanheule.net (polaris.svanheule.net [84.16.241.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B88A43B4EBB
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 21:10:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=84.16.241.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778879449; cv=none; b=eG17el6/W+UFH9BvtowoxzZsqNt4buIm6qoFySSq6ZlVZA24pm6clyQmKYdydo7bGIS0BouKD83m3GWzTVOOfVKp77pJT4wk36hGeTd4NUWB6vZY+LxI0uQJGJuhokHYTXJz+TaeHIyzBYE7Ioumc7wZOWkzB1/LipcNjcszn5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778879449; c=relaxed/simple;
	bh=2RUTRr/e2mDBeEQc5WgusbV5r2IsaSEwTwJeHAB9En8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=BT02ITun4E7EIzoYnlH16TjssQtd0pk5QNGhMVIW0+m3wmmBlh2Jj8e23/+DrNrcET0u4whJxOTLNxDLUfHbWafTiOfTuJ0AKS5ZLio8oHtOOk3VzaA9OVhDjvqqawi3qMsdqgtttwArf/d3fwkkpGJG/V8HpJg56JxetP+/SCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net; spf=pass smtp.mailfrom=svanheule.net; dkim=pass (2048-bit key) header.d=svanheule.net header.i=@svanheule.net header.b=qCfby3Og; arc=none smtp.client-ip=84.16.241.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=svanheule.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=svanheule.net
Received: from [IPv6:2a02:1812:162d:3d00:c381:7255:a866:916d] (2a02-1812-162d-3d00-c381-7255-a866-916d.ip6.access.telenet.be [IPv6:2a02:1812:162d:3d00:c381:7255:a866:916d])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sander@svanheule.net)
	by polaris.svanheule.net (Postfix) with ESMTPSA id E35EE780785;
	Fri, 15 May 2026 23:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=svanheule.net;
	s=mail1707; t=1778879446;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cawzNw3i1BfQgbkrGSJ5TI4CbbBN61A9TA4ImP4zRJI=;
	b=qCfby3OgmHe+GH+Ot+HJARa1Kn7+pyHzQOMRnP3Uvk1f3d0ak4IwQFNYbdEnEMf1afgzUi
	HeQp+WED+D+Hd0CkhIqDhMSUmWk0lxVN0fjC5cGvJxl4BTJ1sv5sXpP66zXQrmVl3dA67B
	u4Ry/23eLZ4VLeXjSdKfFFM2033G65qrH+F3SloxbLS+R4TFnJY+viV7jANCnkfmmwvwW9
	kkcFYhH9cwNcYNpDw5Lm2op4M38FXdNWzKHnleUDqNsMU1WpZW1wc5w9DKmtGgm/D9FHWj
	RP4u5dgYs0clKncMczrAVkXpak5kCVuiw9j0fwNGfDsZ/HHe3GenAhIEOdQIQA==
Message-ID: <173f0f7d804d3b0f33b6584b8a592d2079c593e9.camel@svanheule.net>
Subject: Re: [PATCH 1/3] watchdog: realtek-otto: Change to use regmap API
From: Sander Vanheule <sander@svanheule.net>
To: Rustam Adilov <adilov@disroot.org>, sashiko@lists.linux.dev
Cc: linux-watchdog@vger.kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org, Wim Van
 Sebroeck	 <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>
Date: Fri, 15 May 2026 23:10:44 +0200
In-Reply-To: <1d8a4fa99fa1af9e41f255ec147a7571@disroot.org>
References: <20260509163101.722793-2-adilov@disroot.org>
	 <20260509171602.6B74FC2BCB2@smtp.kernel.org>
	 <1d8a4fa99fa1af9e41f255ec147a7571@disroot.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: C5FFF557A80
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[svanheule.net,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[svanheule.net:s=mail1707];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298537-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[svanheule.net:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sander@svanheule.net,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[disroot.org:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,svanheule.net:mid,svanheule.net:dkim]
X-Rspamd-Action: no action

Adding back Guenter (and Wim) in Cc

On Fri, 2026-05-15 at 20:48 +0000, Rustam Adilov wrote:
> On 2026-05-09 17:16, sashiko-bot@kernel.org=C2=A0wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential
> > issue(s) to consider:
> > - [High] Deadlock risk in the atomic restart handler due to regmap's
> > internal spinlock.
> > --
> >=20
> > commit a520c8e2203154ba331a6ae28f00daec074e62ee
> > Author: Rustam Adilov <adilov@disroot.org>
> >=20
> > watchdog: realtek-otto: Change to use regmap API
> >=20
> > This commit converts the realtek-otto watchdog driver to use the regmap=
 API
> > instead of direct mmio accesses. It replaces direct read/modify/write
> > sequences with regmap functions and selects REGMAP_MMIO.
> >=20
> > > diff --git a/drivers/watchdog/realtek_otto_wdt.c
> > > b/drivers/watchdog/realtek_otto_wdt.c
> > > index 2c30ddd574c59..e5e9cb480f4f9 100644
> > > --- a/drivers/watchdog/realtek_otto_wdt.c
> > > +++ b/drivers/watchdog/realtek_otto_wdt.c
> > [ ... ]
> > > @@ -199,7 +189,7 @@ static int otto_wdt_restart(struct watchdog_devic=
e
> > > *wdev, unsigned long reboot_m
> > > =C2=A0
> > > =C2=A0	/* Configure for shortest timeout and wait for reset to occur =
*/
> > > =C2=A0	v =3D FIELD_PREP(OTTO_WDT_CTRL_RST_MODE, reset_mode) |
> > > OTTO_WDT_CTRL_ENABLE;
> > > -	iowrite32(v, ctrl->base + OTTO_WDT_REG_CTRL);
> > > +	regmap_write(ctrl->regmap, OTTO_WDT_REG_CTRL, v);
> >=20
> > Could this regmap_write() cause a deadlock during system restart?
> >=20
> > The restart handler is often called during system shutdown or kernel pa=
nic
> > in an atomic context with local interrupts disabled. Since
> > devm_regmap_init_mmio() configures the regmap to use a spinlock by defa=
ult,
> > if a panic occurs while another cpu holds the regmap lock (e.g., during
> > a ping or timeout update) and that cpu is halted by smp_send_stop(), th=
is
> > regmap_write() could spin endlessly and prevent the system from rebooti=
ng.
> >=20
> > Additionally, on preempt-rt kernels, the regmap spinlock becomes a slee=
pable
> > rt_mutex, which could cause a sleeping in atomic context bug when acqui=
red
> > with interrupts disabled.
> >=20
> > > =C2=A0	mdelay(3 * otto_wdt_tick_ms(ctrl, 0));
> > >=20
>=20
> Hi Sander,
>=20
> I hope it is alright if i CCd you for this as i am not an expert on watch=
dog
> stuff.
> Wonna make sure this issue applies here before i proceed with the suggest=
ed
> solution
> to add .disable_locking to regmap_config without understanding the
> consequences of it.

I'm no expert either, but AFAICT using .disable_locking would essentially m=
ean
all accesses are only protected by the watchdog subsystem. Which is also th=
e
case now, so that would mean feature parity.

I'll leave it up to Guenter to decide if this refactor is worthwhile or not=
.

Best,
Sander

