Return-Path: <devicetree+bounces-138179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B48BDA0C0A1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 19:49:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 553C77A405A
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:48:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82FB41C68B6;
	Mon, 13 Jan 2025 18:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SR850yB3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F0E41C5F3B;
	Mon, 13 Jan 2025 18:41:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736793665; cv=none; b=YI7M8cDxazOpFGV4SGyDgo8ANoKmzxh53nxSEefktj+kq6ICvFS/wEy2PAonE3Kg4or4LQXAcTK9GdPN5LaSYDkvD8+IB3aXq7yHQ+ZoyBrNURc8T20guy0ttRhNGN2ePhzVYqeMeY5t4SEVUep2b/YGfh1zI0lgVlXS5NNXQ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736793665; c=relaxed/simple;
	bh=T/zvm53Rrua2MvvtIf3s8XXzpqGQHMtiudTtoxeh1y8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ptSc6Qvcy3fJn906JKSeA5Kg3+MGvt01uWgnsRe6/M205WNRe6fys7fJg0ug+O2Zm9BZGvvPf7EeFzA8k08yrKfKbL5O9GSv/dpLzfT0Y31nfl5dh/ZLcQSjg/lCgn0Hgnp4v4F0mvVXJjuhoKR0WpEwa1YNgu18Kj5K7Rnna3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SR850yB3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E664BC4CED6;
	Mon, 13 Jan 2025 18:41:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736793664;
	bh=T/zvm53Rrua2MvvtIf3s8XXzpqGQHMtiudTtoxeh1y8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SR850yB3ztQ6i9gjnaEux9W97DHvN/kSRAlvUZFSCjeWw2K5npxpam5dyGCewP8f4
	 ZWZjgT5sKk8zCPwLSN+ljSdMcvxi1nfMzBONg7EBdDsDX+3EahGKqpcDiR6EKiicHe
	 8J3v3ohETXET0Hmf38KnrWSr1y+rURfds4znfv2Y/L8ForrUgTLtLmRzWcIz10qu0T
	 Tn0KbEoq2STjJDy4boQpAXWUAs8BqzWDeI5pYT+YBzhMl7Ko2EyqAgFFyGBLPsa9vS
	 qqEXxfkchs0uGPwBM9K7kYKoW7qzQrRb6viw3UwychDZo8AL2V+o4SwUS4tAGEhMnO
	 9B0tLHd8iv+mw==
Date: Mon, 13 Jan 2025 18:41:00 +0000
From: Conor Dooley <conor@kernel.org>
To: E Shattow <e@freeshell.de>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v1 2/3] riscv: dts: starfive: jh7110: add DRAM memory
 controller node
Message-ID: <20250113-snipping-ebony-0c3f34773570@spud>
References: <20250102204137.423081-1-e@freeshell.de>
 <20250102204137.423081-3-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="3b4XuE3LPVe4Hvk9"
Content-Disposition: inline
In-Reply-To: <20250102204137.423081-3-e@freeshell.de>


--3b4XuE3LPVe4Hvk9
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 02, 2025 at 12:41:22PM -0800, E Shattow wrote:
> add DRAM memory controller node (no driver), required for U-Boot to boot
> successfully.
>=20
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  arch/riscv/boot/dts/starfive/jh7110.dtsi | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/d=
ts/starfive/jh7110.dtsi
> index 0bc922b3ae8a..6948974400c1 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
> @@ -381,6 +381,19 @@ ccache: cache-controller@2010000 {
>  			cache-unified;
>  		};
> =20
> +		dmc: dmc@15700000 {

memory-controller@157.... cos you don't need the label and "dmc" isn't
generic. You're missing a binding for this either way.

> +			compatible =3D "starfive,jh7110-dmc";


> +			reg =3D <0x0 0x15700000 0x0 0x10000>,
> +			      <0x0 0x13000000 0x0 0x10000>;
> +			resets =3D <&syscrg JH7110_SYSRST_DDR_AXI>,
> +				 <&syscrg JH7110_SYSRST_DDR_OSC>,
> +				 <&syscrg JH7110_SYSRST_DDR_APB>;
> +			reset-names =3D "axi", "osc", "apb";
> +			clocks =3D <&syscrg JH7110_PLLCLK_PLL1_OUT>;
> +			clock-names =3D "pll1_out";
> +			clock-frequency =3D <2133>;
> +		};
> +
>  		plic: interrupt-controller@c000000 {
>  			compatible =3D "starfive,jh7110-plic", "sifive,plic-1.0.0";
>  			reg =3D <0x0 0xc000000 0x0 0x4000000>;
> --=20
> 2.45.2
>=20

--3b4XuE3LPVe4Hvk9
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ4VePAAKCRB4tDGHoIJi
0ionAP9g3QNWpTEXXRVRxXQxyhXILbo0elaHS7fbHjlmUM+d3wD/ahxKskN6nmMH
6TL9Ewl+FkykbOS93ADaxPwr7ODVugA=
=v8mb
-----END PGP SIGNATURE-----

--3b4XuE3LPVe4Hvk9--

