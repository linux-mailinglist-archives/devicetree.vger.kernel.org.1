Return-Path: <devicetree+bounces-35058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E006B83C35B
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 14:11:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1EE991C240CA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 13:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31F550242;
	Thu, 25 Jan 2024 13:10:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E85FD4F8B7
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 13:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706188223; cv=none; b=Miuf6+J5tFOtg0RgF7hiV5xYWUa5TrozJSbtdtGZt2CB12L5EG8N/95JVqODbd0yRfQYtpncWi7jM1E1wEI8uD936JLvreYpuvOb+5aBULUKUc8m9HfP3fhxMFI2LUGqMI4CoqhilHyxZPU4phN9ZF+XDfNthmdTHODsWq0c0qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706188223; c=relaxed/simple;
	bh=N/VeryT+hkJrerNlRm/J1Efw7HVhXaX62e2O/b9YIhc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=Icg8Q28F0BPXH+Xcgfcyr5QiTNA4/dvpXHmCQt8NtcyUltucH/n3aKKhcEA7MUC5QcuJN2mPBKJWwwL1YWlBi5GuRNvLxpazMY2q3p8ZTxKOkesFsrmiIeKdjQhUE9x+6TzL+Y518UuUTaq0LZnb0UdV+kWywZmMCBCDazRh29A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSzUn-0003Ro-Vu; Thu, 25 Jan 2024 14:10:18 +0100
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSzUl-002I4s-H7; Thu, 25 Jan 2024 14:10:15 +0100
Received: from pza by lupine with local (Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1rSzUl-0009Xo-1S;
	Thu, 25 Jan 2024 14:10:15 +0100
Message-ID: <8eb843fc0a3a40f1090283b3081e4c12846e82c3.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/4] reset: sophgo: add SG2042 reset generator driver
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Chen Wang <unicorn_wang@outlook.com>, Chen Wang <unicornxw@gmail.com>, 
 aou@eecs.berkeley.edu, chao.wei@sophgo.com, conor@kernel.org, 
 krzysztof.kozlowski+dt@linaro.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com,  robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-riscv@lists.infradead.org,
 haijiao.liu@sophgo.com,  xiaoguang.xing@sophgo.com, guoren@kernel.org,
 jszhang@kernel.org,  inochiama@outlook.com
Date: Thu, 25 Jan 2024 14:10:15 +0100
In-Reply-To: <MA0P287MB28226D07A5DC0200132358C4FE7A2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
References: <cover.1706161530.git.unicorn_wang@outlook.com>
	 <34650036ea5f1c500da54c67c3a67b91c4419399.1706161530.git.unicorn_wang@outlook.com>
	 <bf30a97b4c39e5c606583783058ea12520c1146b.camel@pengutronix.de>
	 <MA0P287MB28226D07A5DC0200132358C4FE7A2@MA0P287MB2822.INDP287.PROD.OUTLOOK.COM>
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

On Do, 2024-01-25 at 20:07 +0800, Chen Wang wrote:
> On 2024/1/25 18:43, Philipp Zabel wrote:
> > On Do, 2024-01-25 at 14:11 +0800, Chen Wang wrote:
> > > From: Chen Wang <unicorn_wang@outlook.com>
> > >=20
> > > Reuse reset-simple driver for the Sophgo SG2042 reset generator.
> > Subject prefix should be "reset: simple: "
> Ok.
> >=20
> > > Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> > > ---
> > >   drivers/reset/Kconfig        |  1 +
> > >   drivers/reset/reset-simple.c |  2 ++
> > >   drivers/reset/sophgo/Kconfig | 10 ++++++++++
> > >   3 files changed, 13 insertions(+)
> > >   create mode 100644 drivers/reset/sophgo/Kconfig
> > >=20
> > [...]
> > > diff --git a/drivers/reset/sophgo/Kconfig b/drivers/reset/sophgo/Kcon=
fig
> > > new file mode 100644
> > > index 000000000000..9ad96e49e1dd
> > > --- /dev/null
> > > +++ b/drivers/reset/sophgo/Kconfig
> > > @@ -0,0 +1,10 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only
> > > +
> > > +config RESET_SOPHGO_SG2042
> > > +	bool "Sophgo SG2042 Reset Driver"
> > > +	depends on ARCH_SOPHGO || COMPILE_TEST
> > > +	select RESET_SIMPLE
> > > +	default ARCH_SOPHGO
> > > +	help
> > > +	  This enables the reset controller driver for the Sophgo SG2042 So=
C.
> > > +
> > Drop the Kconfig, just add a default y if ARCH_SOPHGO to RESET_SIMPLE.
>=20
> hi=EF=BC=8CPhilipp,
>=20
> The purpose of my adding Kconfig is to consider that other socs under=20
> sophgo may not use RESET_SIMPLE. I'm worried that the coverage is too=20
> large when default y if ARCH_SOPHGO? What do you think?

If ARCH_SOPHGO coverage is considered too wide, it's not correct to
make RESET_SOPHGO_SG2024 "default ARCH_SOPHGO" either, so there's no
significant difference.

The question is whether you need it at all. Can SG2042 boot, possibly
with reduced functionality, into a useful system without the reset
controller? If so, maybe it is enough to rely on a defconfig to enable
RESET_SIMPLE? Otherwise, reset-simple could be considered small enough
to accept carrying it around for non-SG2042 SoCs by default, it can be
disabled manually, after all.

regards
Philipp


