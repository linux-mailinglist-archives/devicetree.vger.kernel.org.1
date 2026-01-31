Return-Path: <devicetree+bounces-261482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id JSgfHi1mfmkzYQIAu9opvQ
	(envelope-from <devicetree+bounces-261482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:29:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BD843C3E2B
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:29:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 712DF301905C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 20:29:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE8EE3783BE;
	Sat, 31 Jan 2026 20:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCr2PLQu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB90E2D8DBB
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 20:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769891370; cv=none; b=ePL3nZCC0+xYWI/5gEoNLY/MUNgAJpKNcKb47Z3fy3YBabeuif9hFxLl7rUp/udwSMnQvjEJLbQ18jqfePIyqNirvfJ64szAJWocxozamB3ncxldBATarCvmwAd8gNxnBvnzfhpOqfY+J20CybUlRK2soojEesQGVdZL6Xn0hJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769891370; c=relaxed/simple;
	bh=f0sVImFUlGUkuDHHeMXMU0xTHVTKaPTYa/g/4OG2kC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RQgIA0bvZB3UOOKimr7eUabRb3FIV39fCZkhGjje6ASKH/3ra/yW/0pCsjr0Xa+m+ZVB8yQtYddDL9N9pJT6SWt3skDTIqRw2CW1C/49RKy+Nk3BgaRUhUtfYlYfk9L64ltGSWg5PLw+QppgOSBTyOJRM/v9ZsueeWz6+wgRAMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCr2PLQu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D57BC4CEF1;
	Sat, 31 Jan 2026 20:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769891370;
	bh=f0sVImFUlGUkuDHHeMXMU0xTHVTKaPTYa/g/4OG2kC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hCr2PLQuZGhohXSyckec2GNgJYpCxAMZiX5ZXuttI4h2ISOBME3Lc1ktaD27gKua/
	 5+FLzHuFW7MKFcTp70y58xoL3pLB7mryAgS+x2fG4zCfZeS3kt5StmJE7pEhtVISeD
	 pTEEtQiS+iRscKtjZSxxyBtCI6IP51EdLe9G6ITZ03sQhb7tzhtGLVcs2VxLTp0jJL
	 R9K2xs7xENKEjOtw4t0gLJe2gpLmOjjwXWpPk/AKVSLZ4gFK2kjADtNRT/T0eBGJmf
	 mPcerwginCUTFbFMsvhw99lizzkwRYRZV6+hls8T+nT0YeWF0+nCe3VhzXVd7J9Un6
	 cHKI/5Lv8BRCA==
Date: Sat, 31 Jan 2026 20:29:25 +0000
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
	alchark@gmail.com, dsimic@manjaro.org
Subject: Re: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube
 series
Message-ID: <20260131-acclaim-exciting-dff4e7af23a5@spud>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
 <20260131153106.31723-3-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ET2lCNzRh7KZ/8Gf"
Content-Disposition: inline
In-Reply-To: <20260131153106.31723-3-jerrysteve1101@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261482-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,kernel.org,sntech.de,gmail.com,manjaro.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: BD843C3E2B
X-Rspamd-Action: no action


--ET2lCNzRh7KZ/8Gf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Jan 31, 2026 at 11:31:02PM +0800, Jun Yan wrote:
> Add devicetree binding for the OneThing OEC and OEC-turbo
>=20
> The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> port, and one USB 3.0 port.
> Among the lineup, the standard OEC model comes with 2GB of RAM, while
> the OEC-turbo features 4GB of RAM; The rest of the specifications are
> identical.
>=20
> The OneThing Edge Cube series (shipping with the vendor firmware) is
> originally designed as a PCDN (P2P Content Delivery Network) device.
>=20
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index ae77ded9fe47..eeafe40e0f23 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -813,6 +813,12 @@ properties:
>            - const: openailab,eaidk-610
>            - const: rockchip,rk3399
> =20
> +      - description: OneThing Edge Cube series
> +        items:
> +          - const: onething,oec
> +          - const: onething,oec-turbo

This doesn't match your dts, so clearly you have not tested this
sufficiently. oec and oec-turbo should be in an enum.
pw-bot: changes-requested

> +          - const: rockchip,rk3566
> +
>        - description: Xunlong Orange Pi RK3399 board
>          items:
>            - const: xunlong,rk3399-orangepi
> --=20
> 2.52.0
>=20

--ET2lCNzRh7KZ/8Gf
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaX5mJQAKCRB4tDGHoIJi
0tO6AQDhX97T4RNwOwgjbzRA7ge2VItVSqWgQ83aVjNB+0ir2AD/dIsJhTWuZqv9
vLvGoiVQqQLkyzt8Hnt2GgFV/WGwJgc=
=0DbR
-----END PGP SIGNATURE-----

--ET2lCNzRh7KZ/8Gf--

