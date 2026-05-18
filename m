Return-Path: <devicetree+bounces-299334-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2N3oKTP8CmqA+wQAu9opvQ
	(envelope-from <devicetree+bounces-299334-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:46:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B626856BE5D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 13:46:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CD6F0300A66D
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D3AB35DA52;
	Mon, 18 May 2026 11:35:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 893282EC09F;
	Mon, 18 May 2026 11:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.233.101.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779104128; cv=none; b=ngbEju070zE/trV5R/9MDPOLaozhv3tmL9Ovhwg8/IdgcYGVImhzEfQT1QZ9rWs4GW6jktexWqUaIsMd/f1i9iIop1/LJ7/ThyrKJHVenA4zjTVvtoVGXFZvbx/sg+KC5THInymSFzDJC/n+ppgk6tu1kACAO6asNoCsNnN4oxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779104128; c=relaxed/simple;
	bh=4rRfsXP7glWEuhZ9UGgjhJNfT+8WTnI/VR3vWexhKOQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ey4vUnQbWBXKqOc3NQXE6ZKzK1Zzv4kicEpK9sukeSVjJav9glNoPiUs3KMb+VcQ+DZ1D37uv4GK32csWkHAA+4dllsGvqqbP1hygFhmOOwZYO4p/4jknS9SMU+YjHlr7Rmj6Gk03/7gd6wyZW7cyhvNPoeNGthpL1aZYFTY710=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sys-base.io
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id F41A71F8005C;
	Mon, 18 May 2026 11:35:19 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id 59B4CB407F5; Mon, 18 May 2026 11:35:18 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id 9E03FB407ED;
	Mon, 18 May 2026 11:35:16 +0000 (UTC)
Date: Mon, 18 May 2026 13:35:14 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Andre Przywara <andre.przywara@arm.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: arm: sunxi: Add Baijie HelperBoard
 A133 compatible
Message-ID: <agr5cmgZ_fdv52Ni@collins>
References: <20260510201644.4143710-1-alexander.sverdlin@gmail.com>
 <20260510201644.4143710-3-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SGiZE73NjioLjzVe"
Content-Disposition: inline
In-Reply-To: <20260510201644.4143710-3-alexander.sverdlin@gmail.com>
X-Rspamd-Queue-Id: B626856BE5D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299334-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[sys-base.io];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[lists.linux.dev,kernel.org,gmail.com,sholland.org,arm.com,vger.kernel.org,lists.infradead.org];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,paulk.fr:url,sys-base.io:url]
X-Rspamd-Action: no action


--SGiZE73NjioLjzVe
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Le Sun 10 May 26, 22:16, Alexander Sverdlin a =C3=A9crit :
> Baijie HelperBoard A133 is a development board around their A133 Core
> board. Introduce a compatible for both the Core and the development
> boards.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
>=20
> Changelog:
> v2:
> - introduced baijie,helper-a133-core compatible for the Core (SoM) board
>=20
>  Documentation/devicetree/bindings/arm/sunxi.yaml | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index e6443c266fa1..d7b9dec81165 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -96,6 +96,17 @@ properties:
>            - const: allwinner,ba10-tvbox
>            - const: allwinner,sun4i-a10
> =20
> +      - description: Baijie Helper A133

Please use the correct naming from the vendor, which is: "Baijie
A133 HelperBoard"

> +        items:
> +          - const: baijie,helper-a133

Please make this: "baijie,helperboard-a133"

> +          - const: baijie,helper-a133-core

Please make this: "baijie,helperboard-a133-core"

Thanks!

> +          - const: allwinner,sun50i-a100
> +
> +      - description: HelperBoardA133 Core
> +        items:
> +          - const: baijie,helper-a133-core
> +          - const: allwinner,sun50i-a100
> +
>        - description: BananaPi
>          items:
>            - const: lemaker,bananapi
> --=20
> 2.54.0
>=20
>=20

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--SGiZE73NjioLjzVe
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmoK+XIACgkQhP3B6o/u
lQw2BA/+IHc8I9Er6XihIareQXTGKDeAAatpQfTX63S6GliuDvrCF4et5lAtdz9E
EXw3F7ATLVdz+uJsHGMbk0TYQ43gUMmGp8A+pycB0owdwpDGoP3WqLU36AMsciPG
AxFgqFg3uKB09ejkze0Jm8f8rdbb4tTxOcGO4NvqtAUneGWSRha+B+0YslU0Eyvi
j+/XcUVKzYPwHsE+PkpHdxP5Aj1G1eQ1ccr7a2weSTBmokEEZM8udMc++lw+7H2P
Go7dbJ3pMWHxlL8GSZOgPyofTsfc1pT7JR/j/ZOc1tkK3B1y81ZxxkrL57u8oxQK
gekBvmVxHQCPK1jljy4oQKlbmieUrDdopY+qDCVlxkX/CnuagrE3Ntscg6i9ok9Q
wSS/BsZt1sYls1EDl19DWIfwkELpbReZ3b0pr+dyopcR4Pgz9UBjcDXdAPxCcqhz
a9CZUdoiw6ik1KY4c1mHYpFxMUe77/AsVNApUF3F/fy3sozZ0waW3TvDtIhdwpM7
Mt+kc0mDywba/aSn269mf4/xzcqA2UeLr7Qy9ZFozqnJDyFhTl/SHHnAv9/boMB1
Hv0S9UkVASAvE8d6ykrdb8kLEWDsqK2p/C6lkFfRECrc6lq0JN4cnywf2topi/JK
fu+wzkv/K17deUo6JsbPCS54zn6t9arEzedTiJ19Qe1Y3f2ew1c=
=KXWX
-----END PGP SIGNATURE-----

--SGiZE73NjioLjzVe--

