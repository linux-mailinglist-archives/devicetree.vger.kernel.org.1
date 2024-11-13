Return-Path: <devicetree+bounces-121444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E521C9C6C53
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 11:04:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A9A08288DB0
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 10:04:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C7541FB89D;
	Wed, 13 Nov 2024 10:04:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A40A1FB89C
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 10:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731492282; cv=none; b=XdSQ22ewc6hISuBNJa8vI1TlpL6rhoGZh7551xsYwpAlEa5VqT6QeTNzTVv1oDDwts6PVxh1ZLhi+YiQQjA9JMqtqc/VL3DVRF+4RYROU6lT4piWZBZX7M+xfi+7Wz8FK+qBqJsxpuz4iKqcHA+fL/WugvSNohxKTt7smvMiBBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731492282; c=relaxed/simple;
	bh=OMCl4faX7DqYL8ryflTHRUkYk3SaxsPfTGCTjB3mB+g=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Ym7QSMediTXPiFZJuIVOcEPUihu68us3cCNSuKusfLVBkktlTRFVBNTga91/cl5m7Y2MlIa4UzoSyiCbOa/Q8w2X8bAP52VmPt5+mVqjHvWWPTIHX+bFyeNM/9ukDSexVFkS528/iiQcYxB9BiCDG0CA+zSLmyXKnobepO68W+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tBAE9-0007LF-0u; Wed, 13 Nov 2024 11:03:57 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tBAE4-000YV1-2h;
	Wed, 13 Nov 2024 11:03:52 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1tBAE4-000387-2O;
	Wed, 13 Nov 2024 11:03:52 +0100
Message-ID: <6d8a0d8916e185090423d42217262450ee948088.camel@pengutronix.de>
Subject: Re: [PATCH v15 2/3] i2c: aspeed: support AST2600 i2c new register
 mode driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Ryan Chen <ryan_chen@aspeedtech.com>, "brendan.higgins@linux.dev"
	 <brendan.higgins@linux.dev>, "benh@kernel.crashing.org"
	 <benh@kernel.crashing.org>, "joel@jms.id.au" <joel@jms.id.au>, 
	"andi.shyti@kernel.org"
	 <andi.shyti@kernel.org>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org"
	 <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"andrew@codeconstruct.com.au"
	 <andrew@codeconstruct.com.au>, "andriy.shevchenko@linux.intel.com"
	 <andriy.shevchenko@linux.intel.com>, "linux-i2c@vger.kernel.org"
	 <linux-i2c@vger.kernel.org>, "openbmc@lists.ozlabs.org"
	 <openbmc@lists.ozlabs.org>, "devicetree@vger.kernel.org"
	 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
	 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
	 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
	 <linux-kernel@vger.kernel.org>
Date: Wed, 13 Nov 2024 11:03:52 +0100
In-Reply-To: <OS8PR06MB7541739C4D1E69C0981CBCB4F25A2@OS8PR06MB7541.apcprd06.prod.outlook.com>
References: <20241007035235.2254138-1-ryan_chen@aspeedtech.com>
	 <20241007035235.2254138-3-ryan_chen@aspeedtech.com>
	 <6aea003a286162c465d0ee7681988b3697feb103.camel@pengutronix.de>
	 <OS8PR06MB7541739C4D1E69C0981CBCB4F25A2@OS8PR06MB7541.apcprd06.prod.outlook.com>
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

On Mi, 2024-11-13 at 07:43 +0000, Ryan Chen wrote:
> > Subject: Re: [PATCH v15 2/3] i2c: aspeed: support AST2600 i2c new
> > register
> > mode driver
> >=20
> > On Mo, 2024-10-07 at 11:52 +0800, Ryan Chen wrote:
> > > Add i2c new register mode driver to support AST2600 i2c new
> > > register
> > > mode. AST2600 i2c controller have legacy and new register mode.
> > > The
> > > new register mode have global register support 4 base clock for
> > > scl
> > > clock selection, and new clock divider mode. The new register
> > > mode
> > > have separate register set to control i2c controller and target.
> > > This
> > > patch is for i2c controller mode driver.
> > >=20
> > > Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> > > ---
> > > =C2=A0drivers/i2c/busses/Kconfig       |   11 +
> > > =C2=A0drivers/i2c/busses/Makefile      |    1 +
> > > =C2=A0drivers/i2c/busses/i2c-ast2600.c | 1032
> > > ++++++++++++++++++++++++++++++
> > > =C2=A03 files changed, 1044 insertions(+)
> > > =C2=A0create mode 100644 drivers/i2c/busses/i2c-ast2600.c
> > >=20
> > [...]
> > > diff --git a/drivers/i2c/busses/i2c-ast2600.c
> > > b/drivers/i2c/busses/i2c-ast2600.c
> > > new file mode 100644
> > > index 000000000000..17ba0ee77c27
> > > --- /dev/null
> > > +++ b/drivers/i2c/busses/i2c-ast2600.c
> > > @@ -0,0 +1,1032 @@
> > [...]
> > > +static int ast2600_i2c_probe(struct platform_device *pdev) {
> > [...]
> > > +	i2c_bus->rst =3D devm_reset_control_get_shared(dev, NULL);
> > > +	if (IS_ERR(i2c_bus->rst))
> > > +		return dev_err_probe(dev, PTR_ERR(i2c_bus->rst),
> > > "Missing reset
> > > +ctrl\n");
> > > +
> > > +	reset_control_deassert(i2c_bus->rst);
> >=20
> > The shared reset should be asserted again in ast2600_i2c_remove().
> >=20
> Hello,
> It is share reset, if unbond driver and asserted the reset, it will
> affect others driver running (which is share with the same reset.)

Shared reset_control_deassert/assert are refcounted, like
clk_enable/disable, see [1]. The reset line will only be asserted when
the last driver calls reset_control_assert.

[1] https://docs.kernel.org/driver-api/reset.html#shared-and-exclusive-rese=
ts

regards
Philipp

