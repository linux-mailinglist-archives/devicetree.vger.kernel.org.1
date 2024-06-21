Return-Path: <devicetree+bounces-78380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD2591221A
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 12:19:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9CBC1F26178
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2024 10:19:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A46F176239;
	Fri, 21 Jun 2024 10:16:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7F3171647
	for <devicetree@vger.kernel.org>; Fri, 21 Jun 2024 10:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718965005; cv=none; b=n4CThbMswckMHTSnxn/SYom+wmpMkFgqUl5no/qFcKY3h4ppizU0ETMf4xfveX07wLPWpRvipBIOZ5Y72ejo7xQa0OYJctgoyltBDYoSDsubt3Ta8H47vlGK4vEJCDkgE3MTcTsc/5aW4iIHTSS5gkMxfax+Tt105Mj6abgSIlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718965005; c=relaxed/simple;
	bh=z/vMJ/233cW88QFWLyoyAyDnxzzbRSS6ywN0tB7Mq3o=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=UYGVau+Gawx4zAMC1uiC2gf5wJmrTvPNqnsQj1iFvmVHA0c4p1hwngZ56VvSfkbGUmRsb9Dg/x6xxO9rdzmlDa+UTWuZnwHIfPR4wjH2eE07dLEq540dbdKBNCFJdwtRy9Epbnq7AQPvoh++3oqNb+Py/AxHkRayjU2Pcat23+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKbJb-0000u2-Ur; Fri, 21 Jun 2024 12:16:19 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKbJZ-003uxc-IY; Fri, 21 Jun 2024 12:16:17 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1sKbJZ-0006sF-1W;
	Fri, 21 Jun 2024 12:16:17 +0200
Message-ID: <4530ebe947b3754dd03b3614bc805195dd69db2e.camel@pengutronix.de>
Subject: Re: [PATCH 04/17] reset: core: add get_device()/put_device on rcdev
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Herve Codina <herve.codina@bootlin.com>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Lee Jones
 <lee@kernel.org>,  Arnd Bergmann <arnd@arndb.de>, Horatiu Vultur
 <horatiu.vultur@microchip.com>,  UNGLinuxDriver@microchip.com, Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, Russell King
 <linux@armlinux.org.uk>, Saravana Kannan <saravanak@google.com>, Bjorn
 Helgaas <bhelgaas@google.com>, Lars Povlsen <lars.povlsen@microchip.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>,  Daniel Machon
 <daniel.machon@microchip.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 netdev@vger.kernel.org, linux-pci@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, Allan Nielsen
 <allan.nielsen@microchip.com>,  Luca Ceresoli <luca.ceresoli@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?ISO-8859-1?Q?Cl=E9ment_L=E9ger?= <clement.leger@bootlin.com>
Date: Fri, 21 Jun 2024 12:16:17 +0200
In-Reply-To: <20240430083730.134918-5-herve.codina@bootlin.com>
References: <20240430083730.134918-1-herve.codina@bootlin.com>
	 <20240430083730.134918-5-herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Di, 2024-04-30 at 10:37 +0200, Herve Codina wrote:
> From: Cl=C3=A9ment L=C3=A9ger <clement.leger@bootlin.com>
>=20
> Since the rcdev structure is allocated by the reset controller drivers
> themselves, they need to exists as long as there is a consumer. A call to
> module_get() is already existing but that does not work when using
> device-tree overlays. In order to guarantee that the underlying reset
> controller device does not vanish while using it, add a get_device() call
> when retrieving a reset control from a reset controller device and a
> put_device() when releasing that control.
>=20
> Signed-off-by: Cl=C3=A9ment L=C3=A9ger <clement.leger@bootlin.com>
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/reset/core.c | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/drivers/reset/core.c b/drivers/reset/core.c
> index dba74e857be6..999c3c41cf21 100644
> --- a/drivers/reset/core.c
> +++ b/drivers/reset/core.c
> @@ -812,6 +812,7 @@ __reset_control_get_internal(struct reset_controller_=
dev *rcdev,
>  	kref_init(&rstc->refcnt);
>  	rstc->acquired =3D acquired;
>  	rstc->shared =3D shared;
> +	get_device(rcdev->dev);
>=20

Looks good to me, but can we put this right after the try_module_get()
above ...
=20
>  	return rstc;
>  }
> @@ -826,6 +827,7 @@ static void __reset_control_release(struct kref *kref=
)
>  	module_put(rstc->rcdev->owner);
> =20
>  	list_del(&rstc->list);
> +	put_device(rstc->rcdev->dev);

... and this right before module_put()?

regards
Philipp

