Return-Path: <devicetree+bounces-34780-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 884AE83B01C
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 18:35:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E3231F2255F
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 17:35:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B4AF7F7CA;
	Wed, 24 Jan 2024 17:35:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="fAUNnz0l"
X-Original-To: devicetree@vger.kernel.org
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net [217.70.183.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254007A721;
	Wed, 24 Jan 2024 17:35:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706117742; cv=none; b=rklN9TXBtDR4WjzJC2XQvUJoiYlN4FhMT+nfr6n0VeyaDvl+ZSOze7uxo22GvGG4jTUFYqxx4AM/WZxZ8Ah5XU678PWkhBaefio43kvN5AA/GH4P9UYYHOxI1xJ/w4Sbm7p0wGxqmMKgXmG7za+0jmDAPZLXIkA15N20EC0ZLME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706117742; c=relaxed/simple;
	bh=X+8MaAif0ggC+HAFpSVWLdQgcoM0WqQniXbuzBnSXZo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=sBeFDw/259Ghnbf3ipTO9Ojj2UyB+rCg1SipdwSKqrNZKigeYRmpbQRHe6BypWwF5nCNJE2CzT40q8BPpDvLVVg11Nm+N7rWz9vMwcjysCHkAPEpIjtMU8dpnF19Iawy1GpKFmNDGh+GvqvlwDBziHE+MkN2Exl1cboHP3ApgVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=fAUNnz0l; arc=none smtp.client-ip=217.70.183.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id E1155240005;
	Wed, 24 Jan 2024 17:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706117738;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=sUMjqltwkIGVr7cFCX5WkgROIhujwD7bw8iY8cVcYnM=;
	b=fAUNnz0lT02RNbFe+TtyyeFJHlgzG9bLlwev2ehLoX6Nl7HuRJBwws5I9TWunSP2b8F3nJ
	xK7rsOABn3wt45eQ1AHREyLC+6lukhXhiOtFSKnOjQLM7tcS747iQQdC78kCB9gOGPAjFG
	XYRfV1kcvF/CJ8seJ+MRpoyqmHNJwA8KSYRNzhb6Fn2JYa71urEkQXesDhGaFeC+D7Grxq
	AQY46I5oqCGVL+GeaxH4Y47BYJ4d2KP02GYuszr2brpDpVBIJfKlwBnksc4XTmiy6QVRUd
	sds8jC7NEZ1YB0Qyku34SVwir/+bvZsDTFof7lGqXFDJVe8OOEkpuwTjwCyXGA==
Date: Wed, 24 Jan 2024 18:35:32 +0100
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Regan <dregan@broadcom.com>
Cc: dregan@mail.com, richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 computersforpeace@gmail.com, kdasu.kdev@gmail.com,
 linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, joel.peshkin@broadcom.com,
 tomer.yacoby@broadcom.com, dan.beygelman@broadcom.com,
 william.zhang@broadcom.com, anand.gore@broadcom.com,
 kursad.oney@broadcom.com, florian.fainelli@broadcom.com, rafal@milecki.pl,
 bcm-kernel-feedback-list@broadcom.com, andre.przywara@arm.com,
 baruch@tkos.co.il, linux-arm-kernel@lists.infradead.org,
 dan.carpenter@linaro.org
Subject: Re: [PATCH v3 08/10] mtd: rawnand: brcmnand: exec_op helper
 functions return type fixes
Message-ID: <20240124183532.7f03a0f7@xps-13>
In-Reply-To: <20240124030458.98408-9-dregan@broadcom.com>
References: <20240124030458.98408-1-dregan@broadcom.com>
	<20240124030458.98408-9-dregan@broadcom.com>
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

Hi David,

dregan@broadcom.com wrote on Tue, 23 Jan 2024 19:04:56 -0800:

> fix return type for exec_op reset and status detect helper functions

Style, please.

Fix								--> .

>=20
> Reported-by: Dan Carpenter <dan.carpenter@linaro.org>
> Closes: http://lists.infradead.org/pipermail/linux-mtd/2023-December/1024=
23.html
> Fixes: 3cc4718fa644 ("mtd: rawnand: brcmnand: exec_op implementation")
> Signed-off-by: David Regan <dregan@broadcom.com>
> Reviewed-by: William Zhang <william.zhang@broadcom.com>
> ---
> Changes in v3: None
> ---
> Changes in v2:
> - Added to patch series
> ---
>  drivers/mtd/nand/raw/brcmnand/brcmnand.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/mtd/nand/raw/brcmnand/brcmnand.c b/drivers/mtd/nand/=
raw/brcmnand/brcmnand.c
> index 9a904c7c6dad..6b5d76eff0ec 100644
> --- a/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> +++ b/drivers/mtd/nand/raw/brcmnand/brcmnand.c
> @@ -625,7 +625,7 @@ enum {
>  /* Only for v7.2 */
>  #define	ACC_CONTROL_ECC_EXT_SHIFT		13
> =20
> -static u8 brcmnand_status(struct brcmnand_host *host);
> +static int brcmnand_status(struct brcmnand_host *host);
> =20
>  static inline bool brcmnand_non_mmio_ops(struct brcmnand_controller *ctr=
l)
>  {
> @@ -1749,7 +1749,7 @@ static int brcmnand_waitfunc(struct nand_chip *chip)
>  				 INTFC_FLASH_STATUS;
>  }
> =20
> -static u8 brcmnand_status(struct brcmnand_host *host)
> +static int brcmnand_status(struct brcmnand_host *host)
>  {
>  	struct nand_chip *chip =3D &host->chip;
>  	struct mtd_info *mtd =3D nand_to_mtd(chip);
> @@ -1760,7 +1760,7 @@ static u8 brcmnand_status(struct brcmnand_host *hos=
t)
>  	return brcmnand_waitfunc(chip);
>  }
> =20
> -static u8 brcmnand_reset(struct brcmnand_host *host)
> +static int brcmnand_reset(struct brcmnand_host *host)
>  {
>  	struct nand_chip *chip =3D &host->chip;
> =20
> @@ -2492,11 +2492,14 @@ static int brcmnand_exec_op(struct nand_chip *chi=
p,
> =20
>  	if (brcmnand_op_is_status(op)) {
>  		status =3D op->instrs[1].ctx.data.buf.in;
> -		*status =3D brcmnand_status(host);
> +		ret =3D brcmnand_status(host);
> +		if (ret < 0)
> +			return ret;
> +
> +		*status =3D ret & 0xFF;
> =20
>  		return 0;
> -	}
> -	else if (brcmnand_op_is_reset(op)) {
> +	} else if (brcmnand_op_is_reset(op)) {
>  		ret =3D brcmnand_reset(host);
>  		if (ret < 0)
>  			return ret;


Thanks,
Miqu=C3=A8l

