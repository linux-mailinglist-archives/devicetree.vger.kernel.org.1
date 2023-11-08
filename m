Return-Path: <devicetree+bounces-14598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A707E5A8A
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:54:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A2B82813EA
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:54:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BA7E30642;
	Wed,  8 Nov 2023 15:54:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="JMmrAxt6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FCED30640
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 15:54:06 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC2821BC3;
	Wed,  8 Nov 2023 07:54:04 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C80EA60008;
	Wed,  8 Nov 2023 15:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699458843;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bYS94S7++WYKx+tHBKHHGfIvXY84QiR+o61nAhem3TE=;
	b=JMmrAxt6CfsPfRIT849ExEJi2VTTQkFSMaqLfqgUH4rvB5ZfddAYUbwUnjgGxDIq8YaOxl
	B5Zs58doliOu1V5XAgr5Tw38Z1+5CRVNvd7AZsFJ5YKyTc5v/EX8df+BFjxU/kDeqmhRWV
	8mifPlDY5iQb3p6b6jxvAmqf0Y87HAK6Iz/dWJ2ogWB2MW6jdZshdyV/tjYtH+CDrseL6c
	tW0wdNCF061azZnNKVx9kSNfGNTvWf/PXpbdSKGyKItVc1PwwFQztE7OqJlQDOQ8QYNGuv
	K+J87XKp360j9MWnbE3DsJ5UTmGYXLso7wSAid5sirjABqj0oBrNjYf/fsuuPg==
Date: Wed, 8 Nov 2023 16:53:59 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, Janusz Krzysztofik
 <jmkrzyszt@gmail.com>, Tony Lindgren <tony@atomide.com>, Richard Weinberger
 <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Ben Dooks
 <ben.dooks@codethink.co.uk>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-mips@vger.kernel.org
Subject: Re: [PATCH 4/6] mtd: rawnand: gpio: Use device properties
Message-ID: <20231108165359.33dccef0@xps-13>
In-Reply-To: <20231108-fix-mips-nand-v1-4-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
	<20231108-fix-mips-nand-v1-4-5fc5586d04de@linaro.org>
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
X-GND-Sasl: miquel.raynal@bootlin.com

Hi Linus,

linus.walleij@linaro.org wrote on Wed, 08 Nov 2023 15:33:52 +0100:

> The platform data (struct gpio_nand_platdata) isn't really used
> in any boardfile in the kernel: the only probe path is from
> device tree.
>=20
> Convert the driver to not use the platform data header at all
> and read out the device tree properties using device
> properties so we don't need to have the driver be exclusively
> device tree either: ACPI or software nodes work fine if
> need be. Drop the ifdeffery around CONFIG_OF as a consequence.
>=20
> The code reads "bank-width" to plat->options flags and passes
> it directly to the NAND chip struct, so just assign this
> directly to the chip instead.
>=20
> The code reads one property "chip-delay" that it stores
> in pdata->delay and never use, so drop this altogether.
> If timings should be supported this can probably be done in
> a more detailed way using the new elaborate timings structs
> that exist for NAND.
>=20
> The platform data contains a callback to augment partitions,
> but since there are no board files using this platform
> data to define a gpio NAND device, this is never used so
> the code handling it can be deleted.

Nice cleanup. I'm a bit more reluctant on the bindings side, I'll come
back to it later, but the driver side looks neat.

Thanks,
Miqu=C3=A8l

