Return-Path: <devicetree+bounces-293212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLRiImQd+mkJJgMAu9opvQ
	(envelope-from <devicetree+bounces-293212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:40:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BD94D17A3
	for <lists+devicetree@lfdr.de>; Tue, 05 May 2026 18:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A27ED3040C80
	for <lists+devicetree@lfdr.de>; Tue,  5 May 2026 16:39:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8B9449251C;
	Tue,  5 May 2026 16:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AUhl2V9V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A193B4921AF;
	Tue,  5 May 2026 16:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777999154; cv=none; b=cxHoSYtIb0NsfApD2owQPs6BJLTrvxpFe1pTOV2xQtLANSmJznq3NVjuNrUuZXwf9c7aSS+xEQX8qV38WdSxPr8gKCqyvM18kJqG7U4acm8XieiksQFmnQLaS81G4xa29mo1GH7HlgyJU5pycM+/u3SwcndvT0d1rBRVI77tK08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777999154; c=relaxed/simple;
	bh=GlW6twzrgk2C2vJM7HkgJQXNI/ske8p+d+IqMH5m4+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dyMxXB66wddyJ/b+Xv+yhV6YjXjnHWne+Ah6Luh+Y9M1Nrh1JviEMNSF6tiDsA51LHphC4sQZIq8yjfgC3PNX74CHcqbsSBWZExqbegyomovS7iRFt3vvmdqwhoYyF+gGyL2i124gF7APwrhwOn72Bu4gImyf+ssqPc1Rj2t8K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AUhl2V9V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81343C2BCF4;
	Tue,  5 May 2026 16:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777999153;
	bh=GlW6twzrgk2C2vJM7HkgJQXNI/ske8p+d+IqMH5m4+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AUhl2V9VU9H6JVFwEpNejbhMTvHiTMzqc05KAzD3/5/OW0SLCv0YqIPiVzImfYtZG
	 IYvDThYqZ8Q3JuLX11jLmBAbev3nOZErW7qfy3w+n+UlP0GeWmdlLYsxq3q6CE3CUO
	 SkHLaqqjIuQ9/T5G9aH3quDsGTZ8Op0s1YtEVktArfgDgcnhm1I6a5exq734m/cZJx
	 fUo7omhGtPEjE0to8aRHsf1eYw7z9F0ui1ALT8mqwm+Eh9oLQS1kEuAKP5Iufi0Kzx
	 4NCyjz/0BALewTknVUsPQNeZZKVt8St+JyfAVX42htYL3d++hFkJtZBEM6SPfdDfph
	 0sgUAq6db9jiw==
Date: Tue, 5 May 2026 17:39:09 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: sunxi: Add Baijie HelperBoard A133
 compatible
Message-ID: <20260505-collision-evict-acc27ae41c3a@spud>
References: <20260503191842.2736130-1-alexander.sverdlin@gmail.com>
 <20260503191842.2736130-3-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9YtZjw3JAawFKZTY"
Content-Disposition: inline
In-Reply-To: <20260503191842.2736130-3-alexander.sverdlin@gmail.com>
X-Rspamd-Queue-Id: 42BD94D17A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293212-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,vger.kernel.org,lists.infradead.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]


--9YtZjw3JAawFKZTY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 03, 2026 at 09:18:37PM +0200, Alexander Sverdlin wrote:
> Baijie HelperBoard A133 is a development board around their A133 Core
> board.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index e6443c266fa1..52b42779a283 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -96,6 +96,11 @@ properties:
>            - const: allwinner,ba10-tvbox
>            - const: allwinner,sun4i-a10
> =20
> +      - description: Baijie Helper A133
> +        items:
> +          - const: baijie,helper-a133
> +          - const: allwinner,sun50i-a100

Should there additionally be a compatible for the som here?
Looks like there is a product called the "helperboarda133 core board"
that is soldered on here but has a separate product page.

The dts/dtsi probably should reflect this too?

> +
>        - description: BananaPi
>          items:
>            - const: lemaker,bananapi
> --=20
> 2.53.0
>=20

--9YtZjw3JAawFKZTY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCafodLQAKCRB4tDGHoIJi
0nm8AP9T9njgp+XuPNdE5OffE+KIOUpXPHqK/hvdf8dS/nUIAAD/foDnvjHSEvyy
gFzU16lw3BpBGwaxO3LSF1LKVHSqkQg=
=exp5
-----END PGP SIGNATURE-----

--9YtZjw3JAawFKZTY--

