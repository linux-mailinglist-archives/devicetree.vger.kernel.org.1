Return-Path: <devicetree+bounces-107217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB57B98D2A3
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 14:00:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A285FB22B04
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2024 12:00:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AC7D3200134;
	Wed,  2 Oct 2024 11:59:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8836719750B
	for <devicetree@vger.kernel.org>; Wed,  2 Oct 2024 11:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727870393; cv=none; b=C1fO4iH5ZabXBKwsxWONn4o9ZR8qU+SNvkCCj9ozmS+yLSrXE/EITRIAl6YcqMOO2ESaUJtfwde6s9uFFUTKZV8tcqyt7+jA1Ri1lkaJ/T+PrABv/HXCTZQ6xRR6zsDiGdjY6CIQ4ZOvUmkJazhpzPSKGn+aRxWDKSkzebvZ4sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727870393; c=relaxed/simple;
	bh=tDGiDJeefuiVVlNrYVk6rYgvo7Zvpyl3GdFu/mO5AJE=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qfH6vcvM1hTHtbNBwxQxyrPoMkV/wWLMTGx1GePpYlrwbmGmsOYEeFR2nBtNh7/tT94dXQZe/oxB7sj6smYrDKApupIOCst0srxomX47+oeysgoMvurMMM8uBJTyVrZ8jULtBic856n83YB5Vf8cJTBnnZ+34+IF2p47vqd90ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1svy0q-0001HD-Pn; Wed, 02 Oct 2024 13:59:24 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1svy0p-0036LM-NJ; Wed, 02 Oct 2024 13:59:23 +0200
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1svy0k-0007fY-1z;
	Wed, 02 Oct 2024 13:59:18 +0200
Message-ID: <07764ea71869cc1c1f95200bcb4e0888fd705dec.camel@pengutronix.de>
Subject: Re: [PATCH v1 06/11] reset: mpfs: add non-auxiliary bus probing
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Conor Dooley <conor@kernel.org>, linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>, Daire McNamara
 <daire.mcnamara@microchip.com>, pierre-henry.moussay@microchip.com, 
 valentina.fernandezalanis@microchip.com, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Jassi Brar
 <jassisinghbrar@gmail.com>, Lee Jones <lee@kernel.org>, Paul Walmsley
 <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
 <aou@eecs.berkeley.edu>, Neil Armstrong <neil.armstrong@linaro.org>, Jerome
 Brunet <jbrunet@baylibre.com>, Kevin Hilman <khilman@baylibre.com>, Martin
 Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-riscv@lists.infradead.org,  linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org,  linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Date: Wed, 02 Oct 2024 13:59:18 +0200
In-Reply-To: <20241002-breeze-anywhere-4114da636ec6@spud>
References: <20241002-private-unequal-33cfa6101338@spud>
	 <20241002-breeze-anywhere-4114da636ec6@spud>
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

On Mi, 2024-10-02 at 11:48 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
>=20
> While the auxiliary bus was a nice bandaid, and meant that re-writing
> the representation of the clock regions in devicetree was not required,
> it has run its course. The "mss_top_sysreg" region that contains the
> clock and reset regions, also contains pinctrl and an interrupt
> controller, so the time has come rewrite the devicetree and probe the
> reset controller from an mfd devicetree node, rather than implement
> those drivers using the auxiliary bus. Wanting to avoid propagating this
> naive/incorrect description of the hardware to the new pic64gx SoC is a
> major motivating factor here.
>=20
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  drivers/reset/reset-mpfs.c | 83 ++++++++++++++++++++++++++++++++------
>  1 file changed, 71 insertions(+), 12 deletions(-)
>=20
> diff --git a/drivers/reset/reset-mpfs.c b/drivers/reset/reset-mpfs.c
> index 710f9c1676f93..ac72e0fc405ed 100644
> --- a/drivers/reset/reset-mpfs.c
> +++ b/drivers/reset/reset-mpfs.c
> @@ -9,10 +9,12 @@
>  #include <linux/auxiliary_bus.h>
>  #include <linux/delay.h>
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> +#include <linux/regmap.h>
>  #include <linux/reset-controller.h>
>  #include <dt-bindings/clock/microchip,mpfs-clock.h>
>  #include <soc/microchip/mpfs.h>
> @@ -27,14 +29,37 @@
>  #define MPFS_SLEEP_MIN_US	100
>  #define MPFS_SLEEP_MAX_US	200
> =20
> +#define REG_SUBBLK_RESET_CR	0x88u
> +
>  /* block concurrent access to the soft reset register */
>  static DEFINE_SPINLOCK(mpfs_reset_lock);
> =20
>  struct mpfs_reset {
>  	void __iomem *base;
> +	struct regmap *regmap;
>  	struct reset_controller_dev rcdev;
>  };
> =20
> +static inline u32 mpfs_reset_read(struct mpfs_reset *rst)
> +{
> +	u32 ret;
> +
> +	if (rst->regmap)
> +		regmap_read(rst->regmap, REG_SUBBLK_RESET_CR, &ret);
> +	else
> +		ret =3D readl(rst->base);
> +
> +	return ret;
> +}
> +
> +static inline void mpfs_reset_write(struct mpfs_reset *rst, u32 val)
> +{
> +	if (rst->regmap)
> +		regmap_write(rst->regmap, REG_SUBBLK_RESET_CR, val);
> +	else
> +		writel(val, rst->base);
> +}
> +
>  static inline struct mpfs_reset *to_mpfs_reset(struct reset_controller_d=
ev *rcdev)
>  {
>  	return container_of(rcdev, struct mpfs_reset, rcdev);
> @@ -51,9 +76,9 @@ static int mpfs_assert(struct reset_controller_dev *rcd=
ev, unsigned long id)
> =20
>  	spin_lock_irqsave(&mpfs_reset_lock, flags);
> =20
> -	reg =3D readl(rst->base);
> +	reg =3D mpfs_reset_read(rst);
>  	reg |=3D BIT(id);
> -	writel(reg, rst->base);
> +	mpfs_reset_write(rst, reg);

This should use regmap_update_bits() in the regmap case, same in
mpfs_deassert().

regards
Philipp

