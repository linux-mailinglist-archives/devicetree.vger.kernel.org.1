Return-Path: <devicetree+bounces-254807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F88D1CA2E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 07:08:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C4A283025A91
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 06:08:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A9A830AAD8;
	Wed, 14 Jan 2026 06:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b="Lg7DywJZ"
X-Original-To: devicetree@vger.kernel.org
Received: from layka.disroot.org (layka.disroot.org [178.21.23.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEE18311C37;
	Wed, 14 Jan 2026 06:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.21.23.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768370902; cv=none; b=VJS9ICFb62iLMu6dp1K0BKshztCLfEhpai9ccTG2VmtMX4wNnfEIY39g3MmmTMTjgaQBqelwyQX7tzFgtXq0RsFj4sN4NHmvfweIst3adXlpU2c4cZdwI/koTz8ruOh8kc+GWXbY1XIMPRtjzFLDKYPMqnx5vzD+AqzkB4M3x10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768370902; c=relaxed/simple;
	bh=McwtWZarGy/mqfWsR4TlM8acbCbH3jUkpH7EWjhWvVM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XcesFp7mwB+hMuvfawF/HtWMDAhofk3wsxG1+U8pN4p5HsX9S1TI8BTTmZfchf3Zhvh7ASxkAX3G54CEakfp1Q0Y1QPLoSnX0FAkvT6tcxBdkFINoU+rP2Xc1seYWWPYj2axLe4C7FMteg6nn+6HOaR18pw+I9neuXWCref/aNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org; spf=pass smtp.mailfrom=disroot.org; dkim=pass (2048-bit key) header.d=disroot.org header.i=@disroot.org header.b=Lg7DywJZ; arc=none smtp.client-ip=178.21.23.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=disroot.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=disroot.org
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9FCD525F65;
	Wed, 14 Jan 2026 07:00:03 +0100 (CET)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PMC-TBv38890; Wed, 14 Jan 2026 07:00:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1768370402; bh=McwtWZarGy/mqfWsR4TlM8acbCbH3jUkpH7EWjhWvVM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=Lg7DywJZhDrdYLigBJpXvVi+gvXfb1x0GbLK8LVmtJSXSuAGZIdWUs9MR6HMf4ubX
	 5hkran3Z6nplnFonZjtC+A87JXkLh0Fg3eiyY9qBOuA7NBwHovXBmvVcpR8q6CcAU7
	 WjQBWxPlVNT8sy3WM+1iMbQaE3xHLMynnYHrLjC5MqmevEwCpl+NQFWvjh7XczrnOz
	 BFTHteGavPoJiVPTbZ2nVRevuSq+BA/U3IydVFb91n66OvE+t5rKLqyG7JPdYfufYI
	 dEmUjuZa1NQ+H4zisfuPuG3sYZ+FUuWJuI68NnE4Uor4yX+ZyzDZl4KirHhVDjrEjQ
	 n1T64K/DHjQfg==
From: Danct12 <danct12@disroot.org>
To: guptarud@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Lee Jones <lee@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Martijn Braam <martijn@brixit.nl>,
 Kamil =?UTF-8?B?VHJ6Y2nFhHNraQ==?= <ayufan@ayufan.eu>,
 Ondrej Jirman <megi@xff.cz>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add modem to the Pinephone Pro
Date: Wed, 14 Jan 2026 05:57:03 +0000
Message-ID: <6468173.31r3eYUQgx@melttower>
In-Reply-To: <bcee4f0b-6159-46c9-81ba-ec2970994613@kernel.org>
References:
 <20260112-ppp_connectivity-v1-0-284d6e83b212@gmail.com>
 <20260112-ppp_connectivity-v1-1-284d6e83b212@gmail.com>
 <bcee4f0b-6159-46c9-81ba-ec2970994613@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="nextPart6104322.LvFx2qVVIh";
 micalg="pgp-sha512"; protocol="application/pgp-signature"

--nextPart6104322.LvFx2qVVIh
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"; protected-headers="v1"
From: Danct12 <danct12@disroot.org>
Date: Wed, 14 Jan 2026 05:57:03 +0000
Message-ID: <6468173.31r3eYUQgx@melttower>
In-Reply-To: <bcee4f0b-6159-46c9-81ba-ec2970994613@kernel.org>
MIME-Version: 1.0

Hi Krzysztof and Rudraksha,

On Tuesday, January 13, 2026 7:22:33=E2=80=AFAM Coordinated Universal Time =
Krzysztof=20
Kozlowski wrote:
> On 13/01/2026 07:42, Rudraksha Gupta via B4 Relay wrote:
> > From: Rudraksha Gupta <guptarud@gmail.com>
> >=20
> > This adds the Quectel EG25-G modem to the Pinephone Pro.
> >=20
> > Co-developed-by: Martijn Braam <martijn@brixit.nl>
> > Signed-off-by: Martijn Braam <martijn@brixit.nl>
> > Co-developed-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
> > Signed-off-by: Kamil Trzci=C5=84ski <ayufan@ayufan.eu>
> > Co-developed-by: Ondrej Jirman <megi@xff.cz>
> > Signed-off-by: Ondrej Jirman <megi@xff.cz>
> > Co-developed-by: Danct12 <danct12@disroot.org>
> > Signed-off-by: Danct12 <danct12@disroot.org>
=46or clarification, I did not add my Signed-off-by.

I'm pretty sure the original patch came from [1] which was a distribution-
specific patch applied on top of [2] Linux fork, which does not have a Sign=
ed-
off tag.

Please remove my (nick)name, Signed-off-by and Co-developed-by from this pa=
tch.

>=20
> You need full names.
>=20
> Are you sure so many people actually were co-developing this?
>=20
> Best regards,
> Krzysztof

[1]: https://github.com/dreemurrs-embedded/danctnix-packages/blob/main/pine=
64/
linux-megi/dts-pinephone-pro-remove-modem-node.patch
[2]: https://codeberg.org/megi/linux

Best regards,
Dang
--nextPart6104322.LvFx2qVVIh
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part.
Content-Transfer-Encoding: 7Bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE8JqTPA/gMx5VjKThZsq36qRd14EFAmlnMC8ACgkQZsq36qRd
14GLtRAAraxXEz2JwF+2pZPPGY143ElMBaBuVO0UmPiP2C1cgLHQpW9OvoXnT082
XGSl3jpjKBZH60MiWAHq3mp26nKLuByjCRklsIdG/eHxThcGYVbwi0xJS0BIus0I
kpmR8X7lkdLYL4lndob6xE6xAdFmgqypI3DjpedjGQO/en+eoGqN7+lGODGa+iUU
VJDs3OZDj7UMThD6+GepJgw+FS9SGwnsgeJRZou1HNaupaoQ/Bsrc1OA9S3SKlpD
fDIrKchmHglpXhoC88bHf2VPO8Z0leT//+A0sDCTqeboDodlplrNLya+iIxGVBDF
C2qJVGnee0oD6NJXtU7nhT9g0i16A86Ea+H6vT8VzNBFvA2RBZRRrXmCgH2SzqRr
4/ycWKfhjLgALVty/q9wOE1lk5pejnX616zWikS1UKWi+nxyE0iq8SKnGi7CBHvz
Jn3n+BWyEiVPp/EFbdRbmLcDcmOYdfD3FLaiaaUz+F9uBV6D5ug8JAL/sn7bor/0
0LAQJ35PRi4MRYIyRq1XH2r56MYJEKcda0HQVVnsFoknnR5RCX2hr9t4j4K2ufnz
DxA6bpgIhCN58BkA2NOsEL9JvxKCs6DFDVQj5MSW8feG3pdkO+ICaqvvrFtIfiP9
Niu4Mr5U495aCGIDCEIrI4V+mBuKGZsduMyD19lzUA4/RhhHshI=
=AxqS
-----END PGP SIGNATURE-----

--nextPart6104322.LvFx2qVVIh--




