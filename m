Return-Path: <devicetree+bounces-289457-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wAheC6X/6Gl5SgIAu9opvQ
	(envelope-from <devicetree+bounces-289457-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 19:04:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FC74449236
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 19:04:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 68A223076A1C
	for <lists+devicetree@lfdr.de>; Wed, 22 Apr 2026 16:54:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B975537475D;
	Wed, 22 Apr 2026 16:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XHSM2/qe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 952F3175A79;
	Wed, 22 Apr 2026 16:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776876870; cv=none; b=KI+RLA3zx3DKJKPvexLg+Fp0dfSb83wRerl2ROA9gntdIsb6O+46lrNtb0oNVtrkwNG8yO9qaUcbFSbg8RaUO+wCRvoYRK6Sn/y035kWO1fe9o3mSY7XKwTspeM2xgGomBVycgNVOOwo0F7XPqHnQcCnvEjEEe34fXWUqusLMB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776876870; c=relaxed/simple;
	bh=QQPD2Vyj4pRqkAtMmuilFBL0rovt27YTEJ7MtMCBN7o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SUlPVHipN78XI9AnWv0fQeFQq3u6M1Ageu7D29GlVRTJGi4Fdo7fQVhPOtkaUDttUhL9mintmkXrojJDT0+1M2ywSoUP8Xl77NNVP+05vpaIt4bX4PJDCt7FVwEi3Pcg8RtlXVCbJUEnyKCZgAXJrB4/mXFJtq8CvK4JT0W/tpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XHSM2/qe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB084C19425;
	Wed, 22 Apr 2026 16:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776876870;
	bh=QQPD2Vyj4pRqkAtMmuilFBL0rovt27YTEJ7MtMCBN7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XHSM2/qecfS2weBZPhDb45mJgMTe4+gHf8Y3a7Z5ojZZ7ruIEkX1TdfG8WULKaFj/
	 qCDS0yXOL56apxG8DaU20TJsJo+67/a0lyOm+9vEZsSYAGNF3pWiYiEgeh12nwIVMl
	 ECmYbRCDIsDB/RF/YIXrq/z9VMJyJTWKfy0z9D5dHlVgWkTjDp6GRJGPee6+/n6B+w
	 pLqvbJWACLsXmC+QGY22SqJWMYoItXCIC2S7IqvdYOd3T8cXa4BxkXc2OfH2GpilAT
	 a27CZwdzOe+t7JvTTN+qn5GQ8rxCBYiZQKN1NjtEZT64Z2gPt8YsxN9bi9qibuW0Vb
	 /6OL5TUtvME5A==
Date: Wed, 22 Apr 2026 17:54:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Ariana Lazar <ariana.lazar@microchip.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Conor Dooley <conor.dooley@microchip.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: iio: dac: mcp47feb02: Fix I2C address in
 example
Message-ID: <20260422-magnitude-improve-0266ea916c36@spud>
References: <20260422-mcp47feb02-fix6-v2-1-4ca4d5cfab07@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7fymxECsY65Lxcmd"
Content-Disposition: inline
In-Reply-To: <20260422-mcp47feb02-fix6-v2-1-4ca4d5cfab07@microchip.com>
X-Spamd-Result: default: False [3.24 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-289457-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	RCPT_COUNT_TWELVE(0.00)[13];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.987];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c0a:e001:db::/64:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,0.0.0.60:email]
X-Rspamd-Queue-Id: 2FC74449236
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--7fymxECsY65Lxcmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 22, 2026 at 02:56:59PM +0300, Ariana Lazar wrote:
> Change example reg value from 0 to 0x60 in order to use a valid I2C addre=
ss
>=20
> Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> ---
> Changes in v2:
> - drop fixes from commit message
> - keep just the address fix
> - Link to v1: https://lore.kernel.org/r/20260420-mcp47feb02-fix6-v1-1-ae1=
808fea11d@microchip.com

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

This really should be in series with your other patches, so that
Jonathan doesn't have to figure out which order they apply in.

> ---
>  Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml | 4 =
++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb=
02.yaml b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.ya=
ml
> index d2466aa6bda2106a8b695347a0edf38462294d03..350e80e4dbe05dd10e3c6fb00=
f74d58c56c54bc8 100644
> --- a/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/microchip,mcp47feb02.yaml
> @@ -280,9 +280,9 @@ examples:
> =20
>          #address-cells =3D <1>;
>          #size-cells =3D <0>;
> -        dac@0 {
> +        dac@60 {
>            compatible =3D "microchip,mcp47feb02";
> -          reg =3D <0>;
> +          reg =3D <0x60>;
>            vdd-supply =3D <&vdac_vdd>;
>            vref-supply =3D <&vref_reg>;
> =20
>=20
> ---
> base-commit: d2a4ec19d2a2e54c23b5180e939994d3da4a6b91
> change-id: 20260417-mcp47feb02-fix6-bd6694d84750
>=20
> Best regards,
> --=20
> Ariana Lazar <ariana.lazar@microchip.com>
>=20

--7fymxECsY65Lxcmd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaej9QQAKCRB4tDGHoIJi
0uWvAQD4K0oz6XxyJ26Sr+zCtQ4TRUHhMqqt0R4tJTWT3ybdHgD+MNntaWUN3xzw
54kmC4jSCPLw3CRhuZ7+Syh7aKpdUgc=
=z8gI
-----END PGP SIGNATURE-----

--7fymxECsY65Lxcmd--

