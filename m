Return-Path: <devicetree+bounces-26453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 24BE181689A
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 09:49:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D5C9128180E
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 08:49:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE775107BA;
	Mon, 18 Dec 2023 08:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="EfxGBHup"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A509107AD
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 08:49:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id DD407FF80D;
	Mon, 18 Dec 2023 08:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1702889335;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WEjNyui8dpICoN03Dmtc/o7axfHFy2V2/ve4imiJSQY=;
	b=EfxGBHupUDheNnjomSJdSFxBQyn7KjPnJ87Dukk7wAEypxePvm+GJYd5W0WeQ8bKMIrLsU
	chq/IgWlXZwksnhFYshwV74+dNMUfgRFUIxG3mc+DysLRL5xOFctbqtCo35x8ezYLvi2LL
	FQZTSz0O83/lP8BlyMPRjLkoS2cyRGrrDVbXijwphB4PgF4ScLXm+WExn7WLFP4WnzdJU3
	jUWF2/dgr5Riq/CUvbP0YQJo1hEoR00BJmxbU3p6vj2S93oT1IPe7xHEWyit5FnKEYo/5E
	CMH+6dJYBJdSuKvaKaBJc5ojCo5uo9iIKKG9owtN+rhZtTUl0LKECkoCqoXbFQ==
Date: Mon, 18 Dec 2023 09:48:49 +0100
From: Luca Ceresoli <luca.ceresoli@bootlin.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Fabio Estevam <festevam@gmail.com>, Adam Ford <aford173@gmail.com>, Neil
 Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Jonas Karlman
 <jonas@kwiboo.se>, Liu Ying <victor.liu@nxp.com>, Sandor Yu
 <sandor.yu@nxp.com>, dri-devel@lists.freedesktop.org, NXP Linux Team
 <linux-imx@nxp.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 patchwork-lst@pengutronix.de, devicetree@vger.kernel.org, Rob Herring
 <robh+dt@kernel.org>, Frieder Schrempf <frieder.schrempf@kontron.de>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Pengutronix Kernel Team
 <kernel@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 2/2] drm/bridge: imx: add driver for HDMI TX Parallel
 Video Interface
Message-ID: <20231218094849.4aa15a97@booty>
In-Reply-To: <20231218023655.GG5290@pendragon.ideasonboard.com>
References: <20230920171009.3193296-1-l.stach@pengutronix.de>
	<20230920171009.3193296-2-l.stach@pengutronix.de>
	<20230920205736.GB7723@pendragon.ideasonboard.com>
	<CAHCN7xJz=rEH_8wHaBCVOUzP0kO6cM_c=zLf6ocjW8bt1FaCBw@mail.gmail.com>
	<CAOMZO5C7_Rj-Ja0BO0D0Po+gy+XbvyMdQf-wH5YNyhAdMof2vg@mail.gmail.com>
	<20231215142308.GL21146@pendragon.ideasonboard.com>
	<CAHCN7xJPg_Nk=o9fKwkZfVTNSB-YL0m7vY6p1O7+i=PHShp7hg@mail.gmail.com>
	<CAOMZO5AGAkPpds=5H-iQj53djcQtW5GsRQrzdC_JOOrcENhvvw@mail.gmail.com>
	<CAHCN7xLHMGcS2-QTneqqpHYU66JwuEG4TyR0j0riFGqO6RC8ug@mail.gmail.com>
	<CAOMZO5B2bWVciDEwSh+YQWu6b_Hp5ijk6Jq-bMePPTDRJ-vHFA@mail.gmail.com>
	<20231218023655.GG5290@pendragon.ideasonboard.com>
Organization: Bootlin
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: luca.ceresoli@bootlin.com

Hi,

On Mon, 18 Dec 2023 04:36:55 +0200
Laurent Pinchart <laurent.pinchart@ideasonboard.com> wrote:

> On Fri, Dec 15, 2023 at 05:09:41PM -0300, Fabio Estevam wrote:
> > On Fri, Dec 15, 2023 at 4:01=E2=80=AFPM Adam Ford <aford173@gmail.com> =
wrote:
> >  =20
> > > Thanks for the list.  I was able to successfully build the stable 6.6
> > > branch with those patches applied and I have the HDMI working.
> > > Unfortunately, I get build errors on the linux-next, so it's going to
> > > take me a little time to sort through all of this. =20
> >=20
> > If you need help to figure this problem out, please let me know.
> >=20
> > I haven't tried it against linux-next.
> >  =20
> > > I am thinking that it would be better to consolidate all these
> > > together into one series instead of piecemealing it.  However, there
> > > are some items that can be submitted right away without significantly
> > > reworking them against linux-next.  Do people have a preference? =20
> >=20
> > I think it makes sense to re-submit the "easy ones" right away. =20
>=20
> Agreed. The more we can merge quickly, the easier it will become to
> rebase and upstream the rest.

I agree as well, "release early, release often". These patches are
around since a long time and lots of people are using them already, and
tracking all of them from different threads is time-consuming. I will
happily test them early as soon as they are sent.

Luca

--=20
Luca Ceresoli, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

