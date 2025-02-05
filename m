Return-Path: <devicetree+bounces-143163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id AF499A28576
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 09:22:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1848016146C
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 08:22:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 721F7228CBC;
	Wed,  5 Feb 2025 08:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDvjgAmS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C7E9215077
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 08:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738743736; cv=none; b=EUe3CY+nihP8MMqODjbvhHjcqT7cxlhgS4VyFkdx/PwOQ0UBulwBN5d/LvL/t2TFvUlJy6hDoNf2A0gEezDRk+fs/O+mxUT9b/JxJQ/FtPlzEWWNw0SmIBfN3d9aduWQVW0rbj3ufh5PQyW8OFCzvcEuUslzUf+qZ59KS+vU6bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738743736; c=relaxed/simple;
	bh=plWBqjVepzAuiutGiFeK2rxapKZ0OgBeLuxkv7ZfeeU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RgIpXECzNNQ8a8+I3H2m53dkD0dHpBxsAZKZrmdXkXZHuJCZXFqocLQKJ+SnQ6uIEHXP6mTDwab2L35WTAFd76hwBIEdY3gIM7gtdPSBcQi+5nLUyJhX9MSAxixtT3SfBMt+Ls9u/O4XgvQsmif93CtYvinwhfGzEPTfCV1FVjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDvjgAmS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 45D4BC4CED1;
	Wed,  5 Feb 2025 08:22:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738743735;
	bh=plWBqjVepzAuiutGiFeK2rxapKZ0OgBeLuxkv7ZfeeU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SDvjgAmScUamgc00gwGEzO4oY3ekKdYGSYKdIR2SrFxIXDB632igGoIiMaTVQu/sj
	 emUbDY8yf1ri+4b/LnOKkxWyYzfl4SF6PB5YLhI7N+q4uTjTJgsbFj+JxmsacUJe0J
	 V5bJ27wRFwqS/P+L8rym6mmVIkaQEm/WKpNYhvuMUE2Li/xviItzCo4UMWfhjG+gRb
	 Mo7u0xA6SMty7kUwZtn6wQn04R5j5tuqg8SFQ10hcAX7UZJLN1kJTF2ge53U1KvQ9M
	 pO5Q0GPmz3VG05yiApvEY5/zYn9dbbBIW60JAHFE7MMs7QEdP9N/MLyND5no15GUSw
	 5cOKBYZS8LxIw==
Date: Wed, 5 Feb 2025 09:22:12 +0100
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
Message-ID: <Z6MftNE6JrbISVZH@lore-desk>
References: <20250201-en7581-dts-spi-pinctrl-v1-1-aaa4a9dfc4a6@kernel.org>
 <4656ae57-c6a1-48ac-a60f-72d7b988c307@kernel.org>
 <231c1f01-dea1-4c39-bbe1-cb629f7c109d@kernel.org>
 <Z6I9JzAVv3VjKOiE@lore-desk>
 <8b79700d-f628-4e65-b9a5-63bbc3958cc1@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LiQRrPQ3+vR+Xwkq"
Content-Disposition: inline
In-Reply-To: <8b79700d-f628-4e65-b9a5-63bbc3958cc1@kernel.org>


--LiQRrPQ3+vR+Xwkq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 04/02/2025 17:15, Lorenzo Bianconi wrote:
> >> On 03/02/2025 17:04, Krzysztof Kozlowski wrote:
> >>>> +
> >>>> +		rng@1faa1000 {
> >>>> +			compatible =3D "airoha,en7581-trng";
> >>>> +			reg =3D <0x0 0x1faa1000 0x0 0xc04>;
> >>>> +			interrupts =3D <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
> >>>> +		};
> >>>> +
> >>>> +		system-controller@1fbf0200 {
> >>>> +			compatible =3D "syscon", "simple-mfd";
> >>>
> >>> These are never allowed alone. I am pretty sure I added proper checks
> >>> which should point it out, so I think you did not really test your DT=
S.
> >>>
> >>> It does not look like you tested the DTS against bindings. Please run
> >>> `make dtbs_check W=3D1` (see
> >>> Documentation/devicetree/bindings/writing-schema.rst or
> >>> https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree=
-sources-with-the-devicetree-schema/
> >>> for instructions).
> >>> Maybe you need to update your dtschema and yamllint. Don't rely on
> >>> distro packages for dtschema and be sure you are using the latest
> >>> released dtschema.
> >>>
> >>
> >> Now I see Rob's report:
> >> arch/arm64/boot/dts/airoha/en7581-evb.dtb: system-controller@1fbf0200:
> >> compatible: ['syscon', 'simple-mfd'] is too short
> >> which confirms untested code. Schema is there for a reason. :(
> >=20
> > actually I have tested them with the following command (but without W=
=3D1).
> >=20
> > make CHECK_DTBS=3Dy DT_SCHEMA_FILES=3Dairoha airoha/en7581-evb.dtb
> >=20
> > - dtschema 2024.11
> > - yamllint 1.35.1
> >=20
> > With W=3D1 I can see more issues, I will fix issues in v2.
>=20
> Rob's warning does not come from W=3D1. Your test cmd was incorrect: drop
> DT_SCHEMA_FILES. You must test your code against ENTIRE bindings, not
> some subset.

ack, thx for pointing this out.

Regards,
Lorenzo

>=20
> Best regards,
> Krzysztof

--LiQRrPQ3+vR+Xwkq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZ6MftAAKCRA6cBh0uS2t
rIdRAP0T8iB3DoaOfZdbT+HBVFT7fwKaImgcPD/jY4Yf/Ldr8wEAoH7z/VszoODJ
1lATWykY0c7IScLhRndOZArIN8AeuAw=
=4f92
-----END PGP SIGNATURE-----

--LiQRrPQ3+vR+Xwkq--

