Return-Path: <devicetree+bounces-214508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A39F7B49652
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 18:57:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E59D3B9B7B
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 16:57:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 464083112BB;
	Mon,  8 Sep 2025 16:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="ivj7SIcU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623D030F7FF
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 16:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757350668; cv=none; b=TErpPRXOVytFlJtWhGrKg9AbTz6T16H0Rpgk8pMbghVAsCIojIv6Vl1PIPaen7IF+GKQUtV33xni8UrPaZvd4cPp6MPGdJpiT24AIIme0OZEpioFsHP2E2ajAgSGdEaDw0CXHgNtdrbEORt3q8lMmJ7KZwsbNqxs0NWK5tRUlUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757350668; c=relaxed/simple;
	bh=/qelRmYr3Q/9Ite35XcawnNc4XvZolL9PylH3Ax8o+s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RmX+YdJITUC5byHMYvFpj43h15u69sUPdj/G24phdq5MRAa4SnCuRzzxWom3oVVen5NH0HNLbw1ckmXRAK5cUrry+jook38dNpOUs8BVRvijdZRqlCrIY9Fsy0UyYznA1osnzpfeCAST73S5/8PMKGy/DdoA7HF9nkYOhDXY+rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=ivj7SIcU; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 0E66AC6B39B;
	Mon,  8 Sep 2025 16:57:28 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 90FF36061A;
	Mon,  8 Sep 2025 16:57:43 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id CE512102F289F;
	Mon,  8 Sep 2025 18:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757350662; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=fKXqpYuHrmlZ+6q6Sntvh/B1FhNEe/BmEN2KsR5ia3E=;
	b=ivj7SIcUAAyvLHTlvOAYjVWoumaZrgJ6KWxhna6Ur3x3D010MzqZQVXzsK92JTP78+yUZ1
	2tTwK1l9KsozoYegeThbog5kjttURzIUIm+UyCGnXtdvGUby1mcMLTzOX4UYYAjHJ414pz
	LjiOUrVvOp+LGW7bWPMGRLz4qFKSx5UKp6wW4N+Wn5FON4d8HYu14OSeN2MryXhYM29P6x
	txGVSHRrc7ZyLDrz0vCVtCq0FypfAzI4SlxvXxt26WKmnpa2O7fiaxOg1SfKxyvWk7PVR6
	vAwLRiZhyU7fXhXRY9brKLOnWNRJ0cuc/qZQwUOZSDM0xGhTJcy/4UfJgu9JlQ==
Date: Mon, 8 Sep 2025 18:57:28 +0200
From: Kory Maincent <kory.maincent@bootlin.com>
To: Gregory Fuchedgi <gfuchedgi@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Guenter Roeck
 <linux@roeck-us.net>, Robert Marko <robert.marko@sartura.hr>, Luka Perkov
 <luka.perkov@sartura.hr>, Jean Delvare <jdelvare@suse.com>, Jonathan Corbet
 <corbet@lwn.net>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, Network
 Development <netdev@vger.kernel.org>
Subject: Re: [PATCH v3 0/2] hwmon: (tps23861) add class restrictions and
 semi-auto mode support
Message-ID: <20250908185728.132e9665@kmaincent-XPS-13-7390>
In-Reply-To: <CAAcybuvqqKBniV+OtgfCLHJdmZ836FJ3p7ujp3is2B8bxQh4Kw@mail.gmail.com>
References: <20250904-hwmon-tps23861-add-class-restrictions-v3-0-b4e33e6d066c@gmail.com>
	<4e7a2570-41ec-4179-96b2-f8550181afd9@roeck-us.net>
	<aL5g2JtIpupAeoDz@pengutronix.de>
	<CAAcybuvqqKBniV+OtgfCLHJdmZ836FJ3p7ujp3is2B8bxQh4Kw@mail.gmail.com>
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

On Mon, 8 Sep 2025 09:39:58 -0700
Gregory Fuchedgi <gfuchedgi@gmail.com> wrote:

> On Sun, Sep 7, 2025 at 9:51=E2=80=AFPM Oleksij Rempel <o.rempel@pengutron=
ix.de> wrote:
> >
> > On Sun, Sep 07, 2025 at 09:06:25AM -0700, Guenter Roeck wrote: =20
> > > +Cc: pse-pd maintainers and netdev mailing list
> > >
> > > On 9/4/25 10:33, Gregory Fuchedgi via B4 Relay wrote: =20
>  [...] =20
> > >
> > > This entire series makes me more and more unhappy. It is not the
> > > responsibility of the hardware monitoring subsystem to control power.=
 The
> > > hardware monitoring subsystem is for monitoring, not for control.
> > >
> > > Please consider adding a driver for this chip to the pse-pd subsystem
> > > (drivers/net/pse-pd). As it turns out, that subsystem already supports
> > > tps23881. This is a similar chip which even has a similar register se=
t.
> > >
> > > This driver could then be modified to be an auxiliary driver of that
> > > driver. Alternatively, we could drop this driver entirely since the
> > > pse-pd subsystem registers the chips it supports as regulator which h=
as
> > > its own means to handle telemetry. =20
> > Yes, Guenter is right. This driver belongs to the pse-pd framework. =20
> No disagreement here in principle. However, the current hwmon driver
> already implements power control and exposes it via in*_enable sysfs
> files. I found this a bit odd, but I don't write drivers often.
> My understanding of Guenter's suggestion is that it would require breaking
> this userspace API?
>
> From a quick look at the tps23881 datasheet I can see that it is
> similar, however, it is quite different in the context of this patch.
> tps23881 (unlike tps23861) has Port Power Allocation register that can
> limit poe power class. This register can be set prior to
> detection/classification. So the extra complexity of an interrupt
> handler that decides whether to enable the power may not be required.
>=20
> Perhaps it still makes sense to merge these drivers, but I don't have
> time or hardware to do it at the moment.

In either way the tps23861 is a PoE controller therefore the driver should =
land
into the pse-pd framework. Then tweaking tps23881 driver to support tps2361=
 or
using a standalone driver is another question.
=46rom a quick look the register map is really similar so indeed using tps238=
81
driver seems relevant.

Regards,
--=20
K=C3=B6ry Maincent, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

