Return-Path: <devicetree+bounces-276077-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE/bNBHVt2kYWAEAu9opvQ
	(envelope-from <devicetree+bounces-276077-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:01:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6648229797B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:01:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 882CF3024B08
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 09:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1BB9386547;
	Mon, 16 Mar 2026 09:58:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F5A38D012
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 09:58:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773655083; cv=none; b=IX2V4K78lQ3WnJjHfGCUys5lDF/E1wKfWyqnbSyeTce6qXEpBin/UQV8jn52Fqft6FHjGQqXt4IZYpblyxhEW/J4KwqHm3HLw1JsaeEEU1BFOWtcgzovtNd0jKt7aoZvJyZsRucB5W2QXj0aL8eCkjwgm8YWk/pPnsUGYhyMbJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773655083; c=relaxed/simple;
	bh=DWxhPeN5nIZzdwi/bGfetxR9AIlQ+ogSxYUmfG2Tte8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PB+3CzOrJfgGfbJhSZL871QEbVdJ15WoaHfJJvF4vUZOoA2pii2yY5DiktPBFYcMHJi1ZJxp5TpCkvMuUg6r0i7BPMpqmudI5MBSclN6iBN7WP9XT+TOoh3ioeir0dDbctxpsBW5oWIOY8huAl68dSr1ti+6I517NpppQZdgw2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w24hm-0001bl-SR; Mon, 16 Mar 2026 10:57:46 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w24hm-000Y29-0W;
	Mon, 16 Mar 2026 10:57:46 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w24hh-00000000iLn-0IUd;
	Mon, 16 Mar 2026 10:57:41 +0100
Message-ID: <0658c04655fc96829723cad1f17b3d899a1b2bbf.camel@pengutronix.de>
Subject: Re: [PATCH 2/7] soc: aspeed: Introduce core eSPI controller support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: aspeedyh <yh_chung@aspeedtech.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski
	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joel Stanley
	 <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, Ryan Chen
	 <ryan_chen@aspeedtech.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	openbmc@lists.ozlabs.org, maciej.lawniczak@intel.com
Date: Mon, 16 Mar 2026 10:57:40 +0100
In-Reply-To: <20260313-upstream_espi-v1-2-9504428e1f43@aspeedtech.com>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
	 <20260313-upstream_espi-v1-2-9504428e1f43@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
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
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276077-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.892];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,aspeedtech.com:email,pengutronix.de:mid]
X-Rspamd-Queue-Id: 6648229797B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fr, 2026-03-13 at 18:07 +0800, aspeedyh wrote:
> Add core eSPI controller support and common code for ASPEED SoCs. The
> eSPI engine is a slave device in BMC to communicate with the Host over
> the eSPI interface.
>=20
> The initial support includes basic eSPI driver probe/remove operations,
> and provides operators for ASPEED SoCs to implement their own eSPI slave
> device drivers that are different among SoC models.
>=20
> Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
> ---
>  drivers/soc/aspeed/Kconfig            |   7 ++
>  drivers/soc/aspeed/Makefile           |   1 +
>  drivers/soc/aspeed/espi/Makefile      |   1 +
>  drivers/soc/aspeed/espi/aspeed-espi.c | 143 ++++++++++++++++++++++++++++=
++++++
>  drivers/soc/aspeed/espi/aspeed-espi.h |  27 +++++++
>  5 files changed, 179 insertions(+)
>=20
[...]
> diff --git a/drivers/soc/aspeed/espi/aspeed-espi.c b/drivers/soc/aspeed/e=
spi/aspeed-espi.c
> new file mode 100644
> index 000000000000..15d58b38bbe4
> --- /dev/null
> +++ b/drivers/soc/aspeed/espi/aspeed-espi.c
> @@ -0,0 +1,143 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Unified Aspeed eSPI driver framework for different generation SoCs
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/dma-mapping.h>
> +#include <linux/interrupt.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/of.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset.h>
> +
> +#include "aspeed-espi.h"
> +
> +struct aspeed_espi_ops {
> +	void (*espi_pre_init)(struct aspeed_espi *espi);
> +	void (*espi_post_init)(struct aspeed_espi *espi);
> +	void (*espi_deinit)(struct aspeed_espi *espi);
> +	irqreturn_t (*espi_isr)(int irq, void *espi);
> +};
> +
> +static const struct of_device_id aspeed_espi_of_matches[] =3D {
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, aspeed_espi_of_matches);
> +
> +static int aspeed_espi_probe(struct platform_device *pdev)
> +{
> +	const struct of_device_id *match;
> +	struct aspeed_espi *espi;
> +	struct resource *res;
> +	struct device *dev;
> +	int rc;
> +
> +	dev =3D &pdev->dev;
> +	espi =3D devm_kzalloc(dev, sizeof(*espi), GFP_KERNEL);
> +	if (!espi)
> +		return -ENOMEM;
> +
[...]
> +
> +	espi->irq =3D platform_get_irq(pdev, 0);
> +	if (espi->irq < 0) {
> +		dev_err(dev, "cannot get IRQ number\n");
> +		return espi->irq;
> +	}
> +
> +	espi->rst =3D devm_reset_control_get_optional(dev, NULL);

Please use devm_reset_control_get_optional_exclusive() directly.

> +	if (IS_ERR(espi->rst)) {
> +		dev_err(dev, "cannot get reset control\n");
> +		return PTR_ERR(espi->rst);

Consider using dev_err_probe, same for the other errors.
That way the driver won't print incorrect error messages on
-EPROBE_DEFER.

[...]
> diff --git a/drivers/soc/aspeed/espi/aspeed-espi.h b/drivers/soc/aspeed/e=
spi/aspeed-espi.h
> new file mode 100644
> index 000000000000..f4ad7f61fef6
> --- /dev/null
> +++ b/drivers/soc/aspeed/espi/aspeed-espi.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Unified eSPI driver header file and data structures
> + * Copyright 2026 Aspeed Technology Inc.
> + */
> +#ifndef ASPEED_ESPI_H
> +#define ASPEED_ESPI_H
> +
> +#include <linux/irqreturn.h>
> +#include <linux/miscdevice.h>
> +#include <linux/platform_device.h>
> +#include <linux/types.h>
> +
> +#define DEVICE_NAME		"aspeed-espi"
> +
> +struct aspeed_espi {
> +	struct platform_device *pdev;
> +	struct device *dev;

Storing both pdev and &pdev->dev seems unnecessary.
Is pdev used at all?

> +	void __iomem *regs;
> +	struct reset_control *rst;

This is missing a forward declaration for struct reset_control.


regards
Philipp

