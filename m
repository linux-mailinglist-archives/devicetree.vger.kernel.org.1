Return-Path: <devicetree+bounces-208723-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E78D5B33145
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 17:40:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A82F73AD708
	for <lists+devicetree@lfdr.de>; Sun, 24 Aug 2025 15:40:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672752D4B57;
	Sun, 24 Aug 2025 15:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="WeEmgYIq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-02.galae.net (smtpout-02.galae.net [185.246.84.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4025019AD5C
	for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 15:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.84.56
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756050036; cv=none; b=sBGeP24Hf1Qq8z1HmDiZeTfizAlwUjbvSvzzikOlJkRs5R1NHX8tbEMJTF52lZP1CBchpO/t8KDRoEuEDjwdub7bdy3/PBt6HTF/zNrw6Fa2dAtAdnQI91Qi3G3pPMklxT/IxwAKfE/g8CQlAPmtwTYI2RgbhCbrjccj5git2vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756050036; c=relaxed/simple;
	bh=qT3IN5JZqK0a9mJ1NdYp7+MaE8c9peEsfZLm0EqhpRU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IfGGG1AdtnNGQeE0sgqWA0Q5tx5y6py8AmJx/Azi8L23zGHnLPlPz858weYOzqYHz8Px8tM+Ia+J0PUAXCYDPFpAP0EYA1DR78dS/1Yw+5IW1NWTz/tjuhWGkmlVDdnX82bawbz7zh18qL/IDJbjqxbMkGrLrvybeKuD7ZdX+68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=WeEmgYIq; arc=none smtp.client-ip=185.246.84.56
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 57A601A0964;
	Sun, 24 Aug 2025 15:40:32 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 1D32E605F1;
	Sun, 24 Aug 2025 15:40:32 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ADFCB1C2282BF;
	Sun, 24 Aug 2025 17:40:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1756050031; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=MotUNYtWFgc8OORlfbN4GS88Cb0UZDtllVzLDmU3zCs=;
	b=WeEmgYIqPuzO2yFtzWo79qo6u1aKpCZcQqdmC+eR1l5vXDo0+xGHRsipk77Gd9/41kY2ij
	eqh8sKV8o+fwY3eqeGstLQHjqhxyggIRr4oZdhsK8BpX6LS8tj8eYKx9zpp+iUGWdV2sCl
	+kROdgZ3j6NjY/y4KrBi7cDAVdVHOQd4xeN4qvuhIyoD8DwvgzCf3QtK/Pd/JYNHNbYvtn
	k4PolOE1pSxmJ0tiKmm8/g+Uw00O05eriwioFivwCe3cFVoCCFCD94YQD2HI597g1ZJ2Ck
	pEQZT/LC99A3PXsqtIbt+byL8acVH6FPo2MIrWHNezxau0S6OgvwM6ooBuAV7A==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,  Huacai Chen
 <chenhuacai@loongson.cn>,  Rob Herring <robh+dt@kernel.org>,  Krzysztof
 Kozlowski <krzk+dt@kernel.org>,  Conor Dooley <conor+dt@kernel.org>,
  Keguang Zhang <keguang.zhang@gmail.com>,  Richard Weinberger
 <richard@nod.at>,  Vignesh Raghavendra <vigneshr@ti.com>,  Huacai Chen
 <chenhuacai@kernel.org>,  Xuerui Wang <kernel@xen0n.name>,
  loongarch@lists.linux.dev,  devicetree@vger.kernel.org,
  linux-mtd@lists.infradead.org
Subject: Re: [PATCH v3 7/7] mtd: rawnand: loongson: Add Loongson-2K1000 NAND
 controller support
In-Reply-To: <f01986dcb9f16450bd7f38c8fd663df686e6d145.1755757841.git.zhoubinbin@loongson.cn>
	(Binbin Zhou's message of "Thu, 21 Aug 2025 14:39:21 +0800")
References: <cover.1755757841.git.zhoubinbin@loongson.cn>
	<f01986dcb9f16450bd7f38c8fd663df686e6d145.1755757841.git.zhoubinbin@loongson.cn>
User-Agent: mu4e 1.12.7; emacs 30.1
Date: Sun, 24 Aug 2025 17:40:02 +0200
Message-ID: <875xeclodp.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

On 21/08/2025 at 14:39:21 +08, Binbin Zhou <zhoubinbin@loongson.cn> wrote:

> The Loongson-2K1000 NAND controller is also similar to the Loongson-1C.
>
> It supports a maximum capacity of 16GB FLASH per chip with a maximum
> page size of 8KB, and it supports up to 4 chip selects and 4 RDY
> signals.
>
> The key difference from the Loongson-2K0500 is that it requires explicit
> configuration of the DMA control route. Typically, it is configured as
> APBDMA0.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> ---
>  .../mtd/nand/raw/loongson-nand-controller.c   | 48 +++++++++++++++++++
>  1 file changed, 48 insertions(+)
>
> diff --git a/drivers/mtd/nand/raw/loongson-nand-controller.c b/drivers/mt=
d/nand/raw/loongson-nand-controller.c
> index 7b331d0ca2f0..6610c239f721 100644
> --- a/drivers/mtd/nand/raw/loongson-nand-controller.c
> +++ b/drivers/mtd/nand/raw/loongson-nand-controller.c
> @@ -73,9 +73,18 @@
>  #define LOONGSON_NAND_READ_ID_TIMEOUT_US	5000
>=20=20
>  #define LOONGSON_NAND_64BIT_DMA		BIT(0)
> +#define LOONGSON_NAND_DMA_CONFIG	BIT(1)

You're reusing this flags member, so it's fine, please ignore the
previous comment (except the style issue).

...

> +	regs =3D devm_platform_ioremap_resource(pdev, 2);

Would it be clearer to get the resource by name? (not a strong request)

Thanks
Miqu=C3=A8l

