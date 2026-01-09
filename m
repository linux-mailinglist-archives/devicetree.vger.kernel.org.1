Return-Path: <devicetree+bounces-253420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 32FF9D0C55F
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 22:37:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2038A30210E3
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 21:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD47E33C519;
	Fri,  9 Jan 2026 21:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WAaKdZZF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8FF331ED68;
	Fri,  9 Jan 2026 21:37:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767994647; cv=none; b=jGylnk4qUsUx91pi4FelVebt/YdN374dh5I15yet5ZcmEqK2wE4KSYq0Ame/kzTVuSdpTtyvEyZqWzdMYkv9KdY7/vlXLQHL3k6Xbmb0FF2o4unyGIEAX0b0+76IXKcbJVR6clCdoI98TPyz2NDRJJZ/dpRTHfrA4y81KWCgXYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767994647; c=relaxed/simple;
	bh=jDXexHmDoezfjqragjJjO9OSzM0KCZAvHcQ7WoQC0ug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sznA12VqmH6lCKrVHTgd49CYXbRU+oZCpMjYZSHfxofWQDYmHlf29fJVgtPSQRuugKBh5klftxc8T4KP/5kHneqn7TWyhq8MEBi3LwB+TLQHuYdcFEGoMfPPivFBju7xJXkXbntYpr3KZLrw1xRxgL8Jz0aWsMvoAHd0EwYi4eU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WAaKdZZF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 08013C4CEF1;
	Fri,  9 Jan 2026 21:37:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767994647;
	bh=jDXexHmDoezfjqragjJjO9OSzM0KCZAvHcQ7WoQC0ug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WAaKdZZF5MM9ulrDAGDvxLLkucPB9EB/r8fRIkb64mBWW+pf3+eLwDaNvRHFy41S+
	 GKYq8eUSvRSIJP2h5Q7EjRtOKzYRsSmVj9rmc8pjIxdMY7njHBx8zI9hB26drAsTsK
	 4sq8Oy25Y7lpRGDiksgHRfa8J11xf+FozDblZo3xql7/KFVECZ5yOq+7+SB6bwq2Xr
	 kQ8DCY3zv3YojfNuAm3LTBaDgMYvrnpRLFlzuTivOhXkAyIwexApjDerpXq3zcF/cb
	 RYHSecgq5uhtUuInrk4jO284I+3Lah4vPG0LckU7o/Xyd7fREi632S/hxmC+GWSvt6
	 FVXl+MZNJW7YQ==
Date: Fri, 9 Jan 2026 21:37:22 +0000
From: Conor Dooley <conor@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: riscv: extensions: Drop unnecessary select
 schema
Message-ID: <20260109-anthill-krypton-ad69ad7e6376@spud>
References: <20260105212910.3454517-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b4RaDUMMDJz9doTI"
Content-Disposition: inline
In-Reply-To: <20260105212910.3454517-1-robh@kernel.org>


--b4RaDUMMDJz9doTI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 05, 2026 at 03:29:09PM -0600, Rob Herring (Arm) wrote:
> The "select" schema is not necessary because this schema is referenced by
> riscv/cpus.yaml schema.
>=20
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

I'll grab this I guess.

> ---
>  Documentation/devicetree/bindings/riscv/extensions.yaml | 6 ------
>  1 file changed, 6 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index 565cb2cbb49b..29e8b50851ed 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -24,12 +24,6 @@ description: |
>    ratified states, with the exception of the I, Zicntr & Zihpm extension=
s.
>    See the "i" property for more information.
> =20
> -select:
> -  properties:
> -    compatible:
> -      contains:
> -        const: riscv
> -
>  properties:
>    riscv,isa:
>      description:
> --=20
> 2.51.0
>=20

--b4RaDUMMDJz9doTI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaWF1EgAKCRB4tDGHoIJi
0s4RAP9fdj8nDmDjS+3ykvYNLT//huW5xpcMyxk2FVwB9oRBzAD8D/Rf+To4vqD9
2jRIJk7fF9kXiyAy0VZJ4HW0DkMr/A8=
=wext
-----END PGP SIGNATURE-----

--b4RaDUMMDJz9doTI--

