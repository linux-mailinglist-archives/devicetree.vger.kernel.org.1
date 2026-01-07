Return-Path: <devicetree+bounces-252460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 25791CFF052
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 18:09:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 153A1300CCFE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 17:09:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2A6C36CDE5;
	Wed,  7 Jan 2026 16:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="y5DC+12M"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout-03.galae.net (smtpout-03.galae.net [185.246.85.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516E4368272;
	Wed,  7 Jan 2026 16:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.246.85.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804623; cv=none; b=pACeXIVCXwOVupCtqCzVrgbP9dJIC0o+tKdT5HkaUmKrS332y6fiMPPxfwGsYcVZRCMePeazmOGUwP/FDPPrgXlywCC0Nf75H53qIvDCsylqga4bXlDjgttMfE5iIEByaq+bqRs1nN+rTIJY/IOn+9D07rmQ4q1E9DcA/KvH0OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804623; c=relaxed/simple;
	bh=sOvD8KWECRWloMpCI9eoCyA9uUn20tVPb75RIYZf+Ik=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=QoLBtEtDThJGmFpUt/jrKncj8fxacjrjqaXiYvHnxDV+zx3/2AP5i5Uw+MuizYrFb8O7E1QqwXa7enJOsd+qytWb+9zE3LZxEd5pbGrrtrArEcs/VMquZmuwJq5UsWKfkG9fs2SLqNcLVmB7Vv4SIqrqKuC5VT+GMFovuWKAHaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=y5DC+12M; arc=none smtp.client-ip=185.246.85.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B258F4E41FC3;
	Wed,  7 Jan 2026 16:50:08 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 7B43F606F8;
	Wed,  7 Jan 2026 16:50:08 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BB437103C821A;
	Wed,  7 Jan 2026 17:50:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1767804607; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=8yycvn6JYAMCNzs20ck2BmTzc1LyVi3Ht7iyhVT/cs0=;
	b=y5DC+12MhyOjLGIviyVCZlq/DUOt72pPHqK1VUrFHUhzqr4u/s5YNjwFv4U47BqccQ1t+4
	U5adVwNi5x7tVPL2ouDlI+WG5VMDeHvov53wQW607L94fc2AYStmKNJl5nBUi0gVXA1I3H
	PrXYCDLTLf9qn7kNlq2Dlp6nvqvCkUxdJbduiuElxitDOOWb4UnaVTcA7AcjFaRGTbbvr3
	ZZDfA3G95V/a0QkQn4gDjBv9vTiaBtT4fXU23CtoXJTVqqrel9KegV/fZ7WAfgVYY9UOeU
	m9wEtjk0/k803IbRLVod9dynsKNUCfP8l4TJwT7/P4GFFn7+xBNf7b+rKQiz5g==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: "Rob Herring (Arm)" <robh@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: marvell: cn9131-cf-solidwan: Add missing
 GPIO properties on "nxp,pca9536"
In-Reply-To: <20260105194647.3189303-1-robh@kernel.org>
References: <20260105194647.3189303-1-robh@kernel.org>
Date: Wed, 07 Jan 2026 17:50:06 +0100
Message-ID: <87bjj5qse9.fsf@BLaptop.bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Last-TLS-Session-Version: TLSv1.3

"Rob Herring (Arm)" <robh@kernel.org> writes:

> The PCA9536 is always a GPIO provider, so add the missing properties.
>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Applied on mvebu/dt64

Thanks,

Gregory
> ---
>  arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts b/arch/ar=
m64/boot/dts/marvell/cn9131-cf-solidwan.dts
> index 338853d3b179..b6aeba7d0a61 100644
> --- a/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
> +++ b/arch/arm64/boot/dts/marvell/cn9131-cf-solidwan.dts
> @@ -202,6 +202,8 @@ fan-controller@18 {
>  	expander0: gpio@41 {
>  		compatible =3D "nxp,pca9536";
>  		reg =3D <0x41>;
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
>=20=20
>  		usb-a-vbus0-ilimit-hog {
>  			gpio-hog;
> --=20
> 2.51.0
>

--=20
Gr=C3=A9gory CLEMENT, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

