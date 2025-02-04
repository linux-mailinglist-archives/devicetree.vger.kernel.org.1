Return-Path: <devicetree+bounces-142975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F3AA276EA
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 17:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C44FB3A3C96
	for <lists+devicetree@lfdr.de>; Tue,  4 Feb 2025 16:15:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BAE04207A;
	Tue,  4 Feb 2025 16:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhCQur0F"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7619B3232
	for <devicetree@vger.kernel.org>; Tue,  4 Feb 2025 16:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738685738; cv=none; b=qefLml93L3H/JXG5taoZ7QeL83Y5yQ3M+nEYgtMxMWbCaVOckjkKfiMyEDiYcTdu/Ly06v5oCAzRDcEeoHhYv87bY7kyZlb85/k7cGrDdRk4/jTJbeUgZFQnT6tBa/1GfXsG24bbang60ix7s/19M2E46+day5OJwMhXhI/o+y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738685738; c=relaxed/simple;
	bh=QgWlamS94vS3vGAG/pHtXY7wtWDDLe5dqXG87XVePgA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rY8sWMAkktjJbMnVPafEoJZ5PqVpb9SgjZVnbNnirMztL/N6RIQsNpaaZjvZelqJff/EutNBvUiLuYAPvnfEgYZEbX0VtoyEJG8RzMciY4z4X1KwjHc5fjg1Fl77XPg9WebJ2KAFVPQiIjp+4Wt4fVRozMpJSl+WgTEN3Wl814U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhCQur0F; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB94C4CEDF;
	Tue,  4 Feb 2025 16:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738685737;
	bh=QgWlamS94vS3vGAG/pHtXY7wtWDDLe5dqXG87XVePgA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nhCQur0FfjxOhKL9RDst4vNpY75oEzasHNvW1DxWJb9hxojf+QTH08/wIYKNq8N5X
	 XrIU9Sep2NhtFQy68eXDok0cbGTwbQW6nvPwrY/v9cJYT6Ej+wkM0s0R4UtNraO7v+
	 +0WS+e/M73lWqGLPaJ/6/WGqt3X9taDK8svlXwmcDOcA1M2/E+oIjA0ry77UzDDcHl
	 qXcLAdS/1QN8mjLkgNbZQrIVFNJhr6GEO/fvwgJzco7CSHE2AwBAP2QKRT1Vo1d9ha
	 iBWJQcu2JYeXnhZc81WVqER23Abjam9VoJCIXjMMb18tmuPqRMyPzpX1SYAIMG6nhd
	 EmCCnKliXUC0w==
Date: Tue, 4 Feb 2025 17:15:35 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: Introduce more nodes to EN7581 SoC
 evaluation board
Message-ID: <Z6I9JzAVv3VjKOiE@lore-desk>
References: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
 <4656ae57-c6a1-48ac-a60f-72d7b988c307@kernel.org>
 <231c1f01-dea1-4c39-bbe1-cb629f7c109d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EpiTytTZELGaMO09"
Content-Disposition: inline
In-Reply-To: <231c1f01-dea1-4c39-bbe1-cb629f7c109d@kernel.org>


--EpiTytTZELGaMO09
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 03/02/2025 17:04, Krzysztof Kozlowski wrote:
> >> +
> >> +		rng@1faa1000 {
> >> +			compatible =3D "airoha,en7581-trng";
> >> +			reg =3D <0x0 0x1faa1000 0x0 0xc04>;
> >> +			interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> >> +		};
> >> +
> >> +		system-controller@1fbf0200 {
> >> +			compatible =3D "syscon", "simple-mfd";
> >=20
> > These are never allowed alone. I am pretty sure I added proper checks
> > which should point it out, so I think you did not really test your DTS.
> >=20
> > It does not look like you tested the DTS against bindings. Please run
> > `make dtbs_check W=3D1` (see
> > Documentation/devicetree/bindings/writing-schema.rst or
> > https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-s=
ources-with-the-devicetree-schema/
> > for instructions).
> > Maybe you need to update your dtschema and yamllint. Don't rely on
> > distro packages for dtschema and be sure you are using the latest
> > released dtschema.
> >=20
>=20
> Now I see Rob's report:
> arch/arm64/boot/dts/airoha/en7581-evb.dtb: system-controller@1fbf0200:
> compatible: ['syscon', 'simple-mfd'] is too short
> which confirms untested code. Schema is there for a reason. :(

actually I have tested them with the following command (but without W=3D1).

make CHECK_DTBS=3Dy DT_SCHEMA_FILES=3Dairoha airoha/en7581-evb.dtb

- dtschema 2024.11
- yamllint 1.35.1

With W=3D1 I can see more issues, I will fix issues in v2.

Regards,
Lorenzo

>=20
> Best regards,
> Krzysztof

--EpiTytTZELGaMO09
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZ6I9JgAKCRA6cBh0uS2t
rIMyAP4uP2ubCPuXLcNH5JUy4qPhLnxjvsCqrv6WyRfdB6RAygEA2OwuGuOQUP10
1Az6VVla3vIb+KN0Ff+m+hHoFjADGgY=
=uAFD
-----END PGP SIGNATURE-----

--EpiTytTZELGaMO09--

