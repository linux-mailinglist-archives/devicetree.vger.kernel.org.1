Return-Path: <devicetree+bounces-147279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6843EA37DCA
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 10:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 575587A0837
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 09:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C0331953A1;
	Mon, 17 Feb 2025 09:05:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C6819ABAC
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 09:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739783144; cv=none; b=d/TiWkPimVD4NRoUhGN7kbNB5tl7fCGlwC2uOj3ehQ0stii1g5GqkheEb+oX7rN7pnDPkrbJvarHAq0vTQcOqvGIAKQqarjPfMW6FCMoFUhU79NLy7taUhoh8bZOUstbsLrPkr9rs0Q8Z1CpG2oUsE7yKv9GdKMpXnGNmrddX6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739783144; c=relaxed/simple;
	bh=q4F+6YvDAJP+BZmWnPl5utEZle0sY5L3t/phe5BPwVA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=fwdaeVc/zb2fP6I39c5lQNFEUboPRrLWt39q9LZm72cBgN8EKc5lww7MdGtFHAigTDM55jsFxMJ7NND/tcIK6G0ywWWQnnXZJrOWhln/887R+c6FaLBN5YjSE7bsizx5Xe2dyzAa6/cPJgOVjFF88j7agA5JYYfSeVuovVLzdx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx40-0006c0-MJ; Mon, 17 Feb 2025 10:05:16 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx3z-001NXE-01;
	Mon, 17 Feb 2025 10:05:15 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tjx3y-0003Vh-30;
	Mon, 17 Feb 2025 10:05:14 +0100
Message-ID: <fd2a9b15865a3e8f34608eb1b09948e5567083e2.camel@pengutronix.de>
Subject: Re: [PATCH v1 3/4] phy: samsung: add Exynos2200 SNPS eUSB2 driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, Vinod Koul
 <vkoul@kernel.org>,  Kishon Vijay Abraham I <kishon@kernel.org>, Rob
 Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
  linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
Date: Mon, 17 Feb 2025 10:05:14 +0100
In-Reply-To: <20250215122409.162810-4-ivo.ivanov.ivanov1@gmail.com>
References: <20250215122409.162810-1-ivo.ivanov.ivanov1@gmail.com>
	 <20250215122409.162810-4-ivo.ivanov.ivanov1@gmail.com>
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

On Sa, 2025-02-15 at 14:24 +0200, Ivaylo Ivanov wrote:
> The Exynos2200 SoC uses Synopsis eUSB2 PHY for USB 2.0. Add a new
> driver for it.
>=20
> eUSB2 on Exynos SoCs is usually paired alongside a USB PHY controller.
> Currently the driver is modelled to take and enable/disable the usb phy
> controller when needed.
>=20
> The driver is based on information from downstream drivers.
>=20
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/samsung/Kconfig                   |  13 +
>  drivers/phy/samsung/Makefile                  |   1 +
>  .../phy/samsung/phy-exynos2200-snps-eusb2.c   | 351 ++++++++++++++++++
>  3 files changed, 365 insertions(+)
>  create mode 100644 drivers/phy/samsung/phy-exynos2200-snps-eusb2.c
>=20
[...]
> diff --git a/drivers/phy/samsung/phy-exynos2200-snps-eusb2.c b/drivers/ph=
y/samsung/phy-exynos2200-snps-eusb2.c
> new file mode 100644
> index 000000000..ee6d96411
> --- /dev/null
> +++ b/drivers/phy/samsung/phy-exynos2200-snps-eusb2.c
> @@ -0,0 +1,351 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> + */
> +
> +#include <linux/bitfield.h>
> +#include <linux/clk.h>
> +#include <linux/delay.h>
> +#include <linux/iopoll.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/phy/phy.h>
> +#include <linux/platform_device.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/reset.h>

Drop this ...

[...]
> +struct exynos2200_snps_eusb2_phy {
> +	struct phy *phy;
> +	void __iomem *base;
> +
> +	struct clk *ref_clk;
> +	struct clk_bulk_data *clks;
> +	const struct exynos2200_snps_eusb2_phy_drvdata *drv_data;
> +	struct reset_control *phy_reset;

... and this. It's never used.


regards
Philipp

