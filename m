Return-Path: <devicetree+bounces-14605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F407E5ABC
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 16:59:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 33F0FB20DB0
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 15:59:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA1C30667;
	Wed,  8 Nov 2023 15:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="KKWV5oa4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2E5F30654
	for <devicetree@vger.kernel.org>; Wed,  8 Nov 2023 15:59:09 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (relay3-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::223])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A28D31BC3;
	Wed,  8 Nov 2023 07:59:08 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id 705276000A;
	Wed,  8 Nov 2023 15:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1699459147;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=+kB2MAhqd2CZLOXA9zNCWTpxhkyv6CSvJsAidaTRfM8=;
	b=KKWV5oa4oO9WQ67xnEEwSXBsBlzSskaYTpOkboLkWa5FAVNWFeSdcUgK/5QaocyH62Qu1k
	TcmmbOUN8DpF27Jw8fuIno/znuahXsLUsmLAFLlMLYEzn9foFKHbiC3yZ7snvoHnzjDnsQ
	3Wop1gCuH2cYUViRgtcxTAO/dWjCdALBNakXOjYcWAzxyAKpwj/irGRtn5HO3UO69a0epX
	a6jfLehliImS1qxCAWFp8gvFanv7Admk4FH+Vqly/M5x7Y2hv5gHnV+aDv9A/7cPsqkS0r
	pk29HXu8SZexmLp88HPpYegT1eFpPPdJWNMTVNFNfDXl5AnYSdZZkEWkUoN4HA==
Date: Wed, 8 Nov 2023 16:59:05 +0100
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
Subject: Re: [PATCH 6/6] mtd: rawnand: gpio: Rename file
Message-ID: <20231108165905.4675430e@xps-13>
In-Reply-To: <20231108-fix-mips-nand-v1-6-5fc5586d04de@linaro.org>
References: <20231108-fix-mips-nand-v1-0-5fc5586d04de@linaro.org>
	<20231108-fix-mips-nand-v1-6-5fc5586d04de@linaro.org>
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

linus.walleij@linaro.org wrote on Wed, 08 Nov 2023 15:33:54 +0100:

> The implementation of the GPIO NAND controller is just "gpio"
> with the usecase for NAND implied from the folder nand/raw.
>=20
> This is not so great when the module gets the name "gpio.ko".
> Rename the implementation to nand-gpio.c so the module is
> named nand-gpio.ko which is more reasonable.
>=20
> We put "nand" first instead of "gpio" because the order is
> usually <subsystem>-<driver>.c, cf ls drivers/gpio/

Do you mind if we take the "english" version which would rather be
"gpio-nand-controller.c/o"? I _really_ want people to understand we
don't emulate the storage but the host part here.

Thanks,
Miqu=C3=A8l

