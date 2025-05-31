Return-Path: <devicetree+bounces-181990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 22167AC9AD8
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 14:12:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1E03189ECC1
	for <lists+devicetree@lfdr.de>; Sat, 31 May 2025 12:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A776923BF9C;
	Sat, 31 May 2025 12:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="W996xeIM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CA3237163
	for <devicetree@vger.kernel.org>; Sat, 31 May 2025 12:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748693528; cv=none; b=ae6vEh4570o6Cpm5qta+/3tQg/bwZvEkbZY7/9uRPnJsLX1MUCAWu6RDCGIUE1TgEARK6y7m3res24I4fkRKigZa/9YUFRTUjXzOR90XPjn4LOLWMbmEWdrkQ+HLjcfRxdJdkM3SOeTE9ZkwAENGEg8f+M4/flq4nuyIwYGVstk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748693528; c=relaxed/simple;
	bh=OooTgLOVDQGkTRpdrKb/JRSw1Klfe+kWwo2Ioe9HmYY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fua327DwFrB4XVzLlIK5A7nfVuYJ2NGEoVMUgf82W4N23BW4Twyof1nykqP8coNFD4STNGEgVlxhqdHE7gsS++LjCPCxfAbp/XMxCM64CgooyjBjkxSsLpxAtGt7nyOLDvLbqfqECpuUvIElJlL/23U7XkSH6cIVW3GybDcrMuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=W996xeIM; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=date:from:to:cc:subject:message-id
	:references:mime-version:content-type:in-reply-to; s=k1; bh=OooT
	gLOVDQGkTRpdrKb/JRSw1Klfe+kWwo2Ioe9HmYY=; b=W996xeIMRsgxLU6ataq+
	WEmLoWaH81yeK+oWg3KBzslt6q/TwqaurH9CCVFk3tAXNCv1c74ZiOMkjFIGFt42
	CIzTyEE9oU9ouREwLWS/GaXuSUn5zn9AH4EEsdEvw1gPZLdrykgyaEvMZ1vG8gxh
	wL4xH1fQ0lkWFyf5sALsD7fNfTAexznzuVK47rVPdJgFDKG3aVBx+dYqr0jYiUXf
	hT4gkvl36vhU3+xHhv8z4FB8d+U9Oh9PuDAbIv8LcM25bYv2TDotTs4PBEKDknhf
	Umh5gLF4Wb0BkxF5JAmzMrTBSG6ZIGe9ei/haSYS7l9LKT2wtAmbzEE3PJKBz3W3
	bQ==
Received: (qmail 2658426 invoked from network); 31 May 2025 14:12:02 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 31 May 2025 14:12:02 +0200
X-UD-Smtp-Session: l3s3148p1@1okqcG02iTFtKPEF
Date: Sat, 31 May 2025 14:12:01 +0200
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 4/6] i2c: riic: Pass IRQ desc array as part of OF data
Message-ID: <aDryEVl4VtZZqUdK@shikoro>
Mail-Followup-To: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Chris Brandt <chris.brandt@renesas.com>,
	Andi Shyti <andi.shyti@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20250530143135.366417-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250530143135.366417-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a+76YYJ21yRC+UGR"
Content-Disposition: inline
In-Reply-To: <20250530143135.366417-5-prabhakar.mahadev-lad.rj@bp.renesas.com>


--a+76YYJ21yRC+UGR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 30, 2025 at 03:31:33PM +0100, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> In preparation for adding support for Renesas RZ/T2H and RZ/N2H SoCs,
> which feature a combined error interrupt instead of individual error
> interrupts per condition, update the driver to support configurable IRQ
> layouts via OF data.
>=20
> Introduce a new `irqs` field and `num_irqs` count in `riic_of_data` to
> allow future SoCs to provide a custom IRQ layout. This patch is a
> non-functional change for existing SoCs and maintains compatibility with
> the current `riic_irqs` array.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Did you test this on RZ/A1? I could do so next week?


--a+76YYJ21yRC+UGR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAmg68hEACgkQFA3kzBSg
KbaQlg//QdyeM2ClWC9AmzDt40mA5yIlIkcwx6FQQEZ0spn/rqxgzwGIhLsxR6lw
XKBC6wSBLEbr7B2DCDhe1ctOTOPsCRzJQQLmG3ItfPJ9Kb7ba5NH9amsmy8wO1eW
XON1ubpJ5tu0/o8ej6LvFxTKSLs6MhH2laizAtLTaWe6dHz/rppYxc1A3FWwC4m3
0+PtntEoFFbFYRI9LRmCDJRpI0mSJwy7XP99Qwk4+n50u0yFs56E9nN9RNN/kOpO
SnKH4rsaEyiszJ9Rk2Y2fwoVolP25XXueyd6MX7wMgY/6iaxJYEcbelWbA6PSk5w
0U9+kcdhjmrSZPgiRiMq+v0UkvqJHT+lrfML/rD2FUfxZ6kJDAHPJkPDFY3JvCpG
Wsql15pVY7qigs8/1nKcrKSygJk01/HgC0vE30xU87ZGXg7shpkJv+9994X3h9dK
tIwSalxD2Zqy+vzEbSzbz1YE6TW4CSaSyD33/FcAH0rZq8SmhPvoqAusYcK9ORIv
U6mBfakTvPKp2JaQAuqZLLm9L4Ey7RPhspay5h0DzlMK/BJEA0C4N6HOF9fdSKCu
yHheO64PFKUS4AlRQB8d25y66oH+zWWrsONle+wAT2cN032XVwFTK34lqC6GtVPI
uZDah3UNktajyoIVEFqMOyBmt6zdOsyCL73/badvPUVSLRXB27U=
=NUkM
-----END PGP SIGNATURE-----

--a+76YYJ21yRC+UGR--

