Return-Path: <devicetree+bounces-136012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 11493A03740
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 06:14:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F2BE61648DA
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 05:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7129886333;
	Tue,  7 Jan 2025 05:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="g0uRxe3o"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18824522A;
	Tue,  7 Jan 2025 05:14:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736226861; cv=none; b=cQXxYI6D9HJjJtHQQtCjnfrYABsqb239VEDDFxYxjgW+STPN+jUfLw0pACp9YIfmNz9T87leVXpIqHmApRSPHIJ/ILgfRW+FM919UV653mvvyWLOolonuUh7If9sZc8k6EF7fUAbdwjt813/IvuwiL/4fAeyCe/vamb60hLZpM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736226861; c=relaxed/simple;
	bh=hzRoupXZ4+IZGUpiLX6vdlDEZbnyuwWKW3dVF+1lsIQ=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=qEPsprwRlAbN4zsRTOGIWJ5C0Stp1xP1Qyzc3kVkY3r2A84tZHqoK12mW0rNUjs3mqkPekMKXofYmE0yknpQfIkcQ0Cf9JjK3Yq0dBRaUebQNltBUPWUlpig9Ac/sME0EyUTLAcYVi8yDK/2nteSzo8DBL+gvf8+4F/SZxSDqV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=g0uRxe3o; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1736226850;
	bh=hzRoupXZ4+IZGUpiLX6vdlDEZbnyuwWKW3dVF+1lsIQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=g0uRxe3oZ9kVG6R97JEPeWJAD6EBQtw4XMiPFxloHNjHix8mmHyCEN+hG/1Oztt/r
	 g24R8bAD2QNK83Xg/SMS4Ziu7xAbihbQSyYemEtBc8y2qBhPIwr5nwXp2lUtNVUsu5
	 2rMrinfdDzJJs9pzk2x0vhKV0eqAuCm+A/PWt4xdCfQWVCWc1exK37goYEB8BikR+h
	 C/DttU+dg3ytvAVWw18oG65pvhvc9dvXTlgx2HVyRwZReiBNpZLeZCdUQeJaqFObf/
	 s38E5/mSVm2DZr+6vCGgWjF58o9pw4tdlsuAp+eeH+0pdNOyzHmeE6fuppva3timWW
	 j0Il4p+5/mneg==
Received: from [10.200.97.88] (203-173-1-122.dyn.iinet.net.au [203.173.1.122])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 1ACBC706BE;
	Tue,  7 Jan 2025 13:14:06 +0800 (AWST)
Message-ID: <e3279e0c41259f165a0cde0195b196f416ac566a.camel@codeconstruct.com.au>
Subject: Re: [PATCH] ARM: dts: aspeed: yosemite4: adjust secondary flash name
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>
Date: Tue, 07 Jan 2025 15:44:04 +1030
In-Reply-To: <20241218212458.3050775-1-patrick@stwcx.xyz>
References: <20241218212458.3050775-1-patrick@stwcx.xyz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Patrick,

On Wed, 2024-12-18 at 16:24 -0500, Patrick Williams wrote:
> Meta (Facebook) has a preference for all of our secondary flash
> chips to be labelled "alt-bmc" for consistency of userspace tools
> deal with updates.=C2=A0 Bletchley, Harma, Minerva, and Catalina all
> follow this convention but for some reason Yosemite4 is different.
>=20
> Adjust the label in the dts to match the other platforms.
>=20
> Signed-off-by: Patrick Williams <patrick@stwcx.xyz>
> ---
> =C2=A0arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts | 2 +-
> =C2=A01 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-
> yosemite4.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-
> yosemite4.dts
> index 98477792aa00..e20816d9e077 100644
> --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite4.dts
> @@ -112,7 +112,7 @@ flash@0 {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0flash@1 {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0status =3D "okay";
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0m25p,fast-read;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0label =3D "bmc2";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0label =3D "alt-bmc";
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0spi-rx-bus-width =3D <4>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0spi-max-frequency =3D <50000000>;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};

I'm hitting conflicts (?) when I apply this on top of[1]. Do you mind
rebasing it?

[1]: https://github.com/amboar/linux/tree/for/bmc/aspeed/dt

Andrew

