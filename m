Return-Path: <devicetree+bounces-167438-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4C2A8A3B3
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 18:10:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D9FFC443BB7
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 16:10:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEB372820C6;
	Tue, 15 Apr 2025 16:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUivVYM4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99F0227B51D
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 16:10:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744733401; cv=none; b=evXLcKdvNKswSYIC85eFTbFUElkFIH4i6OJuULXT0X57Z91PG8T5SbKJLeJLcOFm0Evkh5V2rM/nmfZumu/TRaACuxYCoiA7XFBg1JxKGfd9Yt9HYLJFyU8pZgdFXprqMn26eVbNcOABdrDRjCzZNv62tPmL4gYehrYyMTjDWvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744733401; c=relaxed/simple;
	bh=beq2Ygwh38BLpBgBTdS0N0mql61y8fm0HHZQtool68A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mjh8CrzoVYNZN1MYS2mCEhC2krxLtbrYDTZe9PrTTm7kJegDFBi2pqKl/Ww/IG7GTjGoeWStBliqyGvPPK8hgtdAk+sc7oP1bupskTAyvo4rB5xDkw2C+CEtl/sCmL6F+6zA97wQE98FhwrUDwNxbO4zpqJDg5QyPGvIDn65DEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUivVYM4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E2B8EC4CEEB;
	Tue, 15 Apr 2025 16:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744733401;
	bh=beq2Ygwh38BLpBgBTdS0N0mql61y8fm0HHZQtool68A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tUivVYM4WiuwVIKi7LaW7bAnj8AjndcYTbNttYoMJOjgRoAp04y1ZN6H0ebVhI1gE
	 2zaOFHjDfraMIQOzVXm965QBxeKMuoOGlfqVEEcPUxNELGpcLhDSHsMecQTWi3L29g
	 c3m7Yvf5eN2VAHfvdXKq9v24OECRleMWA4PIWOJe1tHLEJ360w4ahDCtpNQn98Sn42
	 olWxzk5XMRvGQqL0uYMIkbXv5ikUm2ittEUuhJq/CIbQZOq6RY8iZcnPJNmtPuqPro
	 aPDKR9NJGuRNdeGJ/z/FKxlxj6uo4zcRsuL/b4fFyjY9uPKAa7lXhVigRsyrFyNpmG
	 Wc+e08W1tyImQ==
Date: Tue, 15 Apr 2025 17:09:56 +0100
From: Conor Dooley <conor@kernel.org>
To: Dominik Haller <d.haller@phytec.de>
Cc: robh@kernel.org, kristo@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, vigneshr@ti.com, nm@ti.com, m-chawdhry@ti.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	upstream@lists.phytec.de
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: ti: Add bindings for PHYTEC
 AM68x based hardware
Message-ID: <20250415-lark-deskwork-7850a95aa955@spud>
References: <20250415130458.33714-1-d.haller@phytec.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Sc/8E7LvZN4m53Ig"
Content-Disposition: inline
In-Reply-To: <20250415130458.33714-1-d.haller@phytec.de>


--Sc/8E7LvZN4m53Ig
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 15, 2025 at 03:04:56PM +0200, Dominik Haller wrote:
> Add devicetree bindings for the AM68x based phyCORE-AM68x/TDA4x SoM
> and the phyBOARD-Izar carrier board.
>=20
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---
>=20
> Notes:
>     Changes in v2:
>     - no changes
>=20
>  Documentation/devicetree/bindings/arm/ti/k3.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documenta=
tion/devicetree/bindings/arm/ti/k3.yaml
> index 18f155cd06c8..a03fdb9c0482 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -135,6 +135,8 @@ properties:
>        - description: K3 J721s2 SoC
>          items:
>            - enum:
> +              - phytec,am68-phyboard-izar
> +              - phytec,am68-phycore-som

This looks wrong, if I am not misunderstanding. Your izar dts includes
the som dtsi, so this should be configured with a fallback, so you're
going "phytec,am68-phyboard-izar", "phytec,am68-phycore-som", "ti,j721s2",
no?

>                - ti,am68-sk
>                - ti,j721s2-evm
>            - const: ti,j721s2
> --=20
> 2.43.0
>=20

--Sc/8E7LvZN4m53Ig
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZ/6E1AAKCRB4tDGHoIJi
0iT1AQDyBsyo6j8AEVY9RFO8bjD7VGy2QOQTpOWBias0CqF4SAEAkW+ON/H7IAJ/
/J3fjUlnfBE6Tr8BX7hSROG1WsmbPA8=
=buBB
-----END PGP SIGNATURE-----

--Sc/8E7LvZN4m53Ig--

