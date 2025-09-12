Return-Path: <devicetree+bounces-216234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A5BB54204
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 07:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E99D1C858AC
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 05:25:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C3D9272802;
	Fri, 12 Sep 2025 05:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="oj6uZAMe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-04.galae.net (smtpout-04.galae.net [185.171.202.116])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B3226A1CC
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.171.202.116
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757654678; cv=none; b=X0mkr/Vn81QrLeV9J+i5dQG86kUdJMqLJzZatzn2MLUNaM3QvZDrcM7g2MLQenPOhBSUJ+QpXKy9SidwNKdnsnC1YfQx3QmyLeEqp+/Oo8F/dyw3Q5xrfSjMfzp5Ox4nZ8R3Em9yk6VDYkBvXgeeEOqdMf+fOmobecesRaSrxAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757654678; c=relaxed/simple;
	bh=yf8IKIU0ATSVMRFacKuWq/EKMuRkLon8R1m9r0jtgW0=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QfrloQC4HK95xNKMQ9UNWBhhlsyyg9xRD4SpOKXSpMKVQl71CoX35CoUcIFeXKssilXuSsQKMkZLzP4eQy9MhKYAPCZYnUL1cfvI4gx7UTUxAnbw+siG+PKEFaApQwRJjDRec8QiRIAeiZM79qsIxJmGagVHOi2i3f5qCA0jAXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=oj6uZAMe; arc=none smtp.client-ip=185.171.202.116
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 8FB7EC8EC44;
	Fri, 12 Sep 2025 05:24:19 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 759F160638;
	Fri, 12 Sep 2025 05:24:35 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 497E3102F2833;
	Fri, 12 Sep 2025 07:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1757654674; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bOuJIl5jH5w0bJhhr/fG3QSJrybAdR7bz58Ih+9yIBw=;
	b=oj6uZAMeRU86ySa3dYaj3uhMj9lSFjdaVDg8pxBN8qjlH3go9bYu/MsJwNpzp5CTYnZtFH
	2IRxGoq9ua5LU9fhsu4yWtm/Oe46UCwav5KzGcuA3ml4iZbky28O/mBiQGIQtxv1PKtqll
	VWQ5MaeA/Xc9X/JKVc5qooxiG7FDluuSU2jGEGs9476RsuKbeIoweAp5xfsMO3ikFBzuJB
	gzmX0wI0N1alUvQrXtnxyI2YiOkTzVQrqadVp0rkisCyWk06RC+rZ0jqHgiZgSfOJ/xpxd
	aKcm11BHH7/lh54OVM9W54+oCxxIJcx/NGGNlr3yTX1LYuHB0SWvGX/ytQLieA==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Jihed Chaibi <jihed.chaibi.dev@gmail.com>, andrew@lunn.ch,
 sebastian.hesselbarth@gmail.com, robh@kernel.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, shuah@kernel.org, jihed.chaibi.dev@gmail.com
Subject: Re: [PATCH] ARM: dts: kirkwood: Fix sound DAI cells for OpenRD clients
In-Reply-To: <20250830203750.239890-1-jihed.chaibi.dev@gmail.com>
References: <20250830203750.239890-1-jihed.chaibi.dev@gmail.com>
Date: Fri, 12 Sep 2025 07:24:27 +0200
Message-ID: <87348sp7jo.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

Jihed Chaibi <jihed.chaibi.dev@gmail.com> writes:

> A previous commit changed the '#sound-dai-cells' property for the
> kirkwood audio controller from 1 to 0 in the kirkwood.dtsi file,
> but did not update the corresponding 'sound-dai' property in the
> kirkwood-openrd-client.dts file.
>
> This created a mismatch, causing a dtbs_check validation error where
> the dts provides one cell (<&audio0 0>) while the .dtsi expects zero.
>
> Remove the extraneous cell from the 'sound-dai' property to fix the
> schema validation warning and align with the updated binding.
>
> Fixes: e662e70fa419 ("arm: dts: kirkwood: fix error in #sound-dai-cells s=
ize")
> Signed-off-by: Jihed Chaibi <jihed.chaibi.dev@gmail.com>

Applied on mvebu/fixes

Thanks,

Gregory
> ---
>  arch/arm/boot/dts/marvell/kirkwood-openrd-client.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/marvell/kirkwood-openrd-client.dts b/arch/=
arm/boot/dts/marvell/kirkwood-openrd-client.dts
> index d4e0b8150a8..cf26e2ceaaa 100644
> --- a/arch/arm/boot/dts/marvell/kirkwood-openrd-client.dts
> +++ b/arch/arm/boot/dts/marvell/kirkwood-openrd-client.dts
> @@ -38,7 +38,7 @@ sound {
>  		simple-audio-card,mclk-fs =3D <256>;
>=20=20
>  		simple-audio-card,cpu {
> -			sound-dai =3D <&audio0 0>;
> +			sound-dai =3D <&audio0>;
>  		};
>=20=20
>  		simple-audio-card,codec {
> --=20
> 2.39.5
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

