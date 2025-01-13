Return-Path: <devicetree+bounces-138181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB8CA0C0AD
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:50:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C92BE164F36
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87071CD205;
	Mon, 13 Jan 2025 18:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vOHQYYn9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF1991CC8B0;
	Mon, 13 Jan 2025 18:44:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793861; cv=none; b=Yw2bIaNkNgiHTS6nNXEr8iJuz/aStEMZn4Bw3MT8B7oIoGwsFLZQcDy544zQC6Ro+9nlmWeFL/GgOMXp9AOZBA1z2e8OwbOB79D4gkpYVArdqiPZHJGHyE3DCO/hQhTEE9SSUKI30TMxlRyhH4G/47xRP8gPkeADKayGTN7ZHAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793861; c=relaxed/simple;
	bh=REzVxlFlZt3jmyJLhz4812x6+rsJC8868RgubbOogdQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CBQbzxUsrEKKXwiM4dyo9ov0me8nqN5Ho8jpYUqLnWNnjVqe6y3HuSDK7jDOyUAbqIHb8IavIcpWY73aGGbePuIFS6qCiR145EsQFDy+G7Ypw9iQtGCJPlWqV2z7oJsa+GOXvT+8oCDtE2QRqij4ZB34bEk4JXpeMu/82rrHV0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vOHQYYn9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74740C4CED6;
	Mon, 13 Jan 2025 18:44:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793861;
	bh=REzVxlFlZt3jmyJLhz4812x6+rsJC8868RgubbOogdQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vOHQYYn9UlplFd26nMocQ5aNJqYCOGIRMK+Zz/MW7zp9lEnDJPPLxAGuQckjVDQy0
	 aFtU9mp1TLaIt3yGFhvOmf58brOJq3kXi4w2EoHZ4BZK/eyxutMvX8FlIc7oedkoru
	 HdAlmAKPQzrp9zkHPM2a+tzqtfYCESVAGC7C8rf7B/m7nMrgAtVA6+mcT3ZJLv4rYO
	 mYzOL56Mvu0mtlgFNlBBl/XOLsm3k4zHJEcpGM39C8RXLba+soTDWso0BhSUaXOMxp
	 kZWZ5txewsHsWXjkeMMOL9cPPvXtj2okhsO0ybnocA5oBsFeuoIrtEYbTPTeSWIlCT
	 fjLrtu36kcDnw==
Date: Mon, 13 Jan 2025 18:44:17 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Minda Chen <minda.chen@starfivetech.com>
Subject: Re: [PATCH v1 1/2] riscv: dts: starfive: jh7110: pciephy0 USB 3.0
 configuration registers
Message-ID: <20250113-mushiness-snugness-0f55574e3956@spud>
References: <20250102183746.411526-1-e@freeshell.de>
 <20250102183746.411526-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FOHyHV9iOj/jYnyr"
Content-Disposition: inline
In-Reply-To: <20250102183746.411526-2-e@freeshell.de>


--FOHyHV9iOj/jYnyr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 02, 2025 at 10:37:36AM -0800, E Shattow wrote:
> StarFive JH7110 contains a Cadence USB2.0+USB3.0 controller IP block that
> may exclusively use pciephy0 for USB3.0 connectivity. Add the register
> offsets for the driver to enable/disable USB3.0 on pciephy0.
>=20
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
> index 0d8339357bad..75ff07303e8b 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -611,6 +611,8 @@ usbphy0: phy@10200000 {
>  		pciephy0: phy@10210000 {
>  			compatible =3D "starfive,jh7110-pcie-phy";
>  			reg =3D <0x0 0x10210000 0x0 0x10000>;
> +			starfive,sys-syscon =3D <&sys_syscon 0x18>;
> +			starfive,stg-syscon =3D <&stg_syscon 0x148 0x1f4>;

Why weren't these added in the first place? Minda, do you know?

>  			#phy-cells =3D <0>;
>  		};
> =20
> --=20
> 2.45.2
>=20

--FOHyHV9iOj/jYnyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4VfAQAKCRB4tDGHoIJi
0svDAP9bn1shXngVSxwtTd7ldTcxUpfFziGGwYPkzQJxx0mfAgEA82jk5WOM83MQ
gtS8YQT14ttMooCsyg4YEnYq4j6tYQQ=
=u+LI
-----END PGP SIGNATURE-----

--FOHyHV9iOj/jYnyr--

