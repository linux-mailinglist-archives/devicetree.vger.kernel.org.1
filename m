Return-Path: <devicetree+bounces-16083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE467ED66F
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:58:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAC93280F57
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:58:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D042B41212;
	Wed, 15 Nov 2023 21:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfO/N3Oq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B370E45BEB
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:58:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BECAC433C8;
	Wed, 15 Nov 2023 21:58:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700085485;
	bh=IvBa9pgb6D3ZQqdnKtvi2DQ5k+yybHsYqlcBerz+YPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YfO/N3OqczH0i+5oqUyC9j9eIXuaverTCwnAfUSHN9mV6j4c6DCdrK/OUhS9UZh9n
	 EhqplOz6VsGVvTIrGeBp0bZUYoZlCAlSKaNnBEFO6RF9HE6dpYg1YDk+LBYJKiqxc/
	 urvlHnngrSNcmVqd/lug1wkj6OSh2s/yM+ibKnN/PyAImOWgXgpo6eQ+tjkLOcQfKx
	 gaag8spjtPbrPsacbFFML7YFXQ+Td0L+PpRZFTQ+1gAnzESXlv2DI9nYVKz4dLlKOO
	 ox+IvwheB6J0haPCTutxGZUjoqc6/dbSzrue67yybycg1NQPYW8O/8y75tgTzRVXi1
	 ZAXYtWxTuFjfg==
Date: Wed, 15 Nov 2023 21:58:02 +0000
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH] spi: dt-bindings: renesas,rspi: Document RZ/Five SoC
Message-ID: <20231115-snowdrift-rocking-d1ae345accb3@squawk>
References: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PsdkWD17Co/CTnDy"
Content-Disposition: inline
In-Reply-To: <20231115205333.31076-1-prabhakar.mahadev-lad.rj@bp.renesas.com>


--PsdkWD17Co/CTnDy
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 15, 2023 at 08:53:33PM +0000, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>=20
> The RSPI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
> SoC. "renesas,r9a07g043-rspi" compatible string will be used on the
> RZ/Five SoC so to make this clear and to keep this file consistent, update
> the comment to include RZ/Five SoC.
>=20
> No driver changes are required as generic compatible string
> "renesas,rspi-rz" will be used as a fallback on RZ/Five SoC.
>=20
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--PsdkWD17Co/CTnDy
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZVU+5gAKCRB4tDGHoIJi
0lAwAPkByZRmhg5HpjC0VDdfKiuQ03Hg+gIYsHn90xgHn4SpuAD+JXI3CCYlsMcu
4IQ760DGzo9e1j+KBIvwLLjtPVTDrgA=
=d48B
-----END PGP SIGNATURE-----

--PsdkWD17Co/CTnDy--

