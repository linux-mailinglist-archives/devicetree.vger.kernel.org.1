Return-Path: <devicetree+bounces-86300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8E693392F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 10:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 581CAB20F1D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jul 2024 08:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CDC238396;
	Wed, 17 Jul 2024 08:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="MsqqaVw5"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2133A10953;
	Wed, 17 Jul 2024 08:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.199
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721205533; cv=none; b=hoADjICKABThkg/FoUF7ZJtT0UzSqLVJlKV6861ePoJntnKAvxUr0YowgIYb/yknJ/+6pR0f4lWY/wiZBEbbyL8L2IrDIl4ELDG1Ku7Zaw/oT/fNf7AwxIMZdw7g/nYWOe0ORm1RJdvK5mmfkWm6PWszJydbu20ZK6qaKLnC3hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721205533; c=relaxed/simple;
	bh=n7bz61bqEd9Y7oOrUTLbk/i2ghWK5CvSfQaqdkPkn9s=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TywgzusIz1+qaIRPWfXKG+QbZfdQgAhD4N2w+5Sd0t2EGgU7tMtKl/Pzp/u7NQF9rAJsbtqE252wAFpS3SF+Tvm87VrDlJjaLMZx3U1VdjJ7SMw2fdn+ZivbGYtDgWDa4tYG+RO7vRiyOp0Jv1KMzAMz1+xnpOZ0umQYrGO8RRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=MsqqaVw5; arc=none smtp.client-ip=217.70.183.199
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 9194BFF805;
	Wed, 17 Jul 2024 08:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1721205528;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=54iksZJpA1HrffCxEFlTmd/giXr/VmfDqOO/3tGET84=;
	b=MsqqaVw570YbZZU9+pYH05HWfQS7ZsoUuRsKejvXnoQxFPX/6Kbc5KVgBUMvhbn0vFMPRE
	UOgKo95P1yRn/RBOs6PXPZ3nBf55CmyEJDhmhFev6+WazXjK2HZD0xA7wiK4uw82WZ9SQ0
	kosH+5FCQlbGTHhWymZUf/ULSEAk/RPIzlcVPcfp9RUeIkk6WLuzZd4D6SFSiTOHzHofbf
	pFG1sdkGWLCjXUofsiu4QSGMcFF3c3mpZ8Fuq+o41qzIfpkEE0GbAtUo58is0LskhcseSv
	EWL+38XVkrgFc9vKQHYmX7+9tA1KrRzmsdDBRcTLZp5T8rtNmkSQtgWDqWzXjA==
Date: Wed, 17 Jul 2024 10:38:46 +0200
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Frank Li <Frank.Li@nxp.com>, Miquel Raynal <miquel.raynal@bootlin.com>,
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Han Xu <han.xu@nxp.com>, Vinod Koul
 <vkoul@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Marek Vasut <marex@denx.de>
Cc: linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/6] dt-bindings: dma: fsl-mxs-dma: Add compatible
 string "fsl,imx8qxp-dma-apbh"
Message-ID: <20240717103846.306bf9fd@xps-13>
In-Reply-To: <20240712163503.69dad6b1@xps-13>
References: <20240520-gpmi_nand-v2-2-e3017e4c9da5@nxp.com>
	<20240527121836.178457-1-miquel.raynal@bootlin.com>
	<20240712163503.69dad6b1@xps-13>
Organization: Bootlin
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-GND-Sasl: miquel.raynal@bootlin.com

Hi,

miquel.raynal@bootlin.com wrote on Fri, 12 Jul 2024 16:35:03 +0200:

> Hi Vinod,
>=20
> miquel.raynal@bootlin.com wrote on Mon, 27 May 2024 14:18:36 +0200:
>=20
> > On Mon, 2024-05-20 at 16:09:13 UTC, Frank Li wrote: =20
> > > Add compatible string "fsl,imx8qxp-dma-apbh". It requires power-domai=
ns
> > > compared with "fsl,imx28-dma-apbh".
> > >=20
> > > Allow 'power-domains' property because i.MX8DXL i.MX8QM and i.MX8QXP =
need
> > > it.
> > >=20
> > > Keep the same restriction about 'power-domains' for other compatible
> > > strings.
> > >=20
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > Reviewed-by: Rob Herring (Arm) <robh@kernel.org>   =20
> >=20
> > Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.gi=
t nand/next, thanks. =20
>=20
> I just realize now I picked this up whereas it was not intended to be
> merged through mtd. I'm fine keeping this patch for the next merge
> window if I get your explicit agreement otherwise I'll drop it.

I need to send the PR to Linux, I will drop this patch which can anyway
be taken in the next cycle.

Thanks,
Miqu=C3=A8l

