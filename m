Return-Path: <devicetree+bounces-27669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 970BF81B35D
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 11:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CA3071C2503D
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 10:16:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8980B4EB4F;
	Thu, 21 Dec 2023 10:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="lPXKAhSC"
X-Original-To: devicetree@vger.kernel.org
Received: from relay4-d.mail.gandi.net (relay4-d.mail.gandi.net [217.70.183.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B3951C26
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 10:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 00459E000D;
	Thu, 21 Dec 2023 10:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1703153772;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=oV7RU7sxJyQudrpIogN+qOiclZR5xvUS2xA9S30Qmmc=;
	b=lPXKAhSCpcE2HfRc4KNqd2KLKbAWSA5oQMcBtsg7JducPmYhCcOZRv2j6l4m3d9NQQArEb
	Bug1/sB4DdItVEkTqvSqapJ2TYgIwNWGx2EBrVgFTI59lzV1cSmOmxFY5WVD3mU09ugqUW
	byKdirWstZF3uBJy3iO4hSuBrRByC+rlAfqJFrJZCCvGBbcN4OqdCodjY1fgKlObMHlQXr
	lbcU6B8x7V5NdBKt0Pt2NVrVa1LUT+kWovPNvkdIzMVTrFKscKR8ZekGmJ8tMTtbzfpncR
	J0hqMMoByTrk2syUW71GhxXgg7hvarY6CdMsjuLiVQ1XBHLp822k5cG1X0niUw==
Date: Thu, 21 Dec 2023 11:16:03 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: =?UTF-8?B?U8OpYmFzdGllbg==?= Szymanski
 <sebastien.szymanski@armadeus.com>
Cc: Stefan Wahren <wahrenst@gmx.net>, Richard Weinberger <richard@nod.at>,
 Vignesh Raghavendra <vigneshr@ti.com>, Han Xu <han.xu@nxp.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-imx@nxp.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH RFT 2/2] ARM: dts: mxs: imx28: Fix NAND hierarchy
 description
Message-ID: <20231221111603.25c28a05@xps-13>
In-Reply-To: <bf76aa11-7005-4bf8-836b-fce616afcdf4@armadeus.com>
References: <20231218130656.9020-1-wahrenst@gmx.net>
	<20231218130656.9020-2-wahrenst@gmx.net>
	<bf76aa11-7005-4bf8-836b-fce616afcdf4@armadeus.com>
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

Hello,

sebastien.szymanski@armadeus.com wrote on Thu, 21 Dec 2023 10:56:09
+0100:

> Hello Stefan,
>=20
> On 12/18/23 14:06, Stefan Wahren wrote:
> > The size-cells for GPMI are wrong in imx28.dtsi, which causes the
> > following warning:
> >=20
> >      nand-controller@8000c000: #size-cells:0:0: 0 was expected
> >=20
> > The reason for this is the definition of the partitions directly
> > below the nand controller node. According to nand-controller.yaml
> > the NAND chip must be defined as a child of the controller. Even
> > the fixed partitions must be kept in a partitions container.

Bindings evolve over time, we sometimes deprecate them when they are
problematic but:
- the old representations are still accepted (but marked legacy)
- if you want to support the new representation you probably need to
  update the controller driver as well (to support both).

In this case I would expect a deprecation notice rather than a pure
error.

Thanks,
Miqu=C3=A8l

