Return-Path: <devicetree+bounces-121091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E389C5524
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 12:00:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2451DB32065
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 10:23:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 303982123FD;
	Tue, 12 Nov 2024 10:22:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AA020EA2D
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 10:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731406974; cv=none; b=l3kdY+MKUkFxuKlLCsxg80CjSp1b2LD+js+OC6wxI9xpN8fjdKo+A+scSG6UjYUgS8t8w2OyGdMpvhJSSbARq1fuqoAgoiGZ/6hCH+I+adNN8c0UjZsJ4Q9lijLdwIQLvXGY96z5xuX9mSUzXcMHem0tLqtf94HhS/+OdBgR+j0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731406974; c=relaxed/simple;
	bh=eeCQdImE81457xiS/86eBN4epdk2rlg4tziu2DF+uHQ=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=NTanFxbz1KSD3pmqzKDtVx0wcE17xi4A/giWkAU4hI01bTOu/h/t9FPC+NkpKLSZME3E8DxVAWCNiB/KuXUFlSboJJit220oQzL87/Q8hfbBZbYUutxnNQ2f2MMu5ujdymiV2OaKfuNt28+XoFgkZm19AyvlSG+uFpWdLJXZ0y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tAo2G-0004IB-69; Tue, 12 Nov 2024 11:22:12 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tAo2C-000OVP-1A;
	Tue, 12 Nov 2024 11:22:08 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tAo2C-0004HE-0w;
	Tue, 12 Nov 2024 11:22:08 +0100
Message-ID: <6aea003a286162c465d0ee7681988b3697feb103.camel@pengutronix.de>
Subject: Re: [PATCH v15 2/3] i2c: aspeed: support AST2600 i2c new register
 mode driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ryan Chen <ryan_chen@aspeedtech.com>, brendan.higgins@linux.dev, 
 benh@kernel.crashing.org, joel@jms.id.au, andi.shyti@kernel.org,
 robh@kernel.org,  krzk+dt@kernel.org, conor+dt@kernel.org,
 andrew@codeconstruct.com.au,  andriy.shevchenko@linux.intel.com,
 linux-i2c@vger.kernel.org,  openbmc@lists.ozlabs.org,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org,  linux-kernel@vger.kernel.org
Date: Tue, 12 Nov 2024 11:22:08 +0100
In-Reply-To: <20241007035235.2254138-3-ryan_chen@aspeedtech.com>
References: <20241007035235.2254138-1-ryan_chen@aspeedtech.com>
	 <20241007035235.2254138-3-ryan_chen@aspeedtech.com>
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

On Mo, 2024-10-07 at 11:52 +0800, Ryan Chen wrote:
> Add i2c new register mode driver to support AST2600 i2c
> new register mode. AST2600 i2c controller have legacy and
> new register mode. The new register mode have global register
> support 4 base clock for scl clock selection, and new clock
> divider mode. The new register mode have separate register
> set to control i2c controller and target. This patch is for i2c
> controller mode driver.
>=20
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/i2c/busses/Kconfig       |   11 +
>  drivers/i2c/busses/Makefile      |    1 +
>  drivers/i2c/busses/i2c-ast2600.c | 1032 ++++++++++++++++++++++++++++++
>  3 files changed, 1044 insertions(+)
>  create mode 100644 drivers/i2c/busses/i2c-ast2600.c
>=20
[...]
> diff --git a/drivers/i2c/busses/i2c-ast2600.c b/drivers/i2c/busses/i2c-as=
t2600.c
> new file mode 100644
> index 000000000000..17ba0ee77c27
> --- /dev/null
> +++ b/drivers/i2c/busses/i2c-ast2600.c
> @@ -0,0 +1,1032 @@
[...]
> +static int ast2600_i2c_probe(struct platform_device *pdev)
> +{
[...]
> +	i2c_bus->rst =3D devm_reset_control_get_shared(dev, NULL);
> +	if (IS_ERR(i2c_bus->rst))
> +		return dev_err_probe(dev, PTR_ERR(i2c_bus->rst), "Missing reset ctrl\n=
");
> +
> +	reset_control_deassert(i2c_bus->rst);

The shared reset should be asserted again in ast2600_i2c_remove().

regards
Philipp

