Return-Path: <devicetree+bounces-265493-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2meXE0Tbj2lsUAEAu9opvQ
	(envelope-from <devicetree+bounces-265493-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A00F13AC0A
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 03:17:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0CCA303980D
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 02:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4443287507;
	Sat, 14 Feb 2026 02:17:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b="WYsQdaaK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.ozlabs.org (gandalf.ozlabs.org [150.107.74.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D82AB137930;
	Sat, 14 Feb 2026 02:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=150.107.74.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771035447; cv=none; b=ly/V/DMSguaZr6qh6YPv4oqXnaN9ob5rN+8UpIazV9narPJSRj3Z0CiTVZESbWxVwcL2NqGZjK5FeaNFb7wyYPrSZIiT8x31trVNLRsXcNNFnO8RSwa4w4xbvEDmnrqhDAYUCRbqVitaGyxlpe2emTMDbt0YQOmMteMFK/8dPvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771035447; c=relaxed/simple;
	bh=9L3gNVX0RGO0xyY65UMryiqWTRYi+ExAY2eT7RZTaSc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R5thDGbeqFMLg2yNty69z79xIj819HAsjck10Yvea4VV3RNtccY2jljANqkLMXPQ6KX/cHkyT37pdO0bPvb2Is6Mo0nhze+IxEMjRkhuG2JyCxNYASNQCmRh2fyITP00VWUfHhccj+Qq74XzrdORQAGeS1RYhcP1qTKGRoj8lyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au; spf=pass smtp.mailfrom=gandalf.ozlabs.org; dkim=pass (2048-bit key) header.d=gibson.dropbear.id.au header.i=@gibson.dropbear.id.au header.b=WYsQdaaK; arc=none smtp.client-ip=150.107.74.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=gibson.dropbear.id.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gandalf.ozlabs.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gibson.dropbear.id.au; s=202602; t=1771035442;
	bh=p9i4aCL37XRwY1fcz9JU9wCoYdnikVp7OQra2l7fw8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WYsQdaaKfxbeh1CZ96m/NDM397Ba0vxR2DkfeiNW8uPFIb6qY14b8UgiAQQS/HJUw
	 md2+96PFEbQrz7NsAv9oA+mqebULd3OBvVmH5nXzRQ9RPUIcVhvjMggY8OgZ+CmGDU
	 LIvBKNefrPxiuyaQfx5snaTuXcqHi/IqvC7Lhatq1/PBcYPypWc982qaNXm/OYfEj9
	 cpTgnppsrKz30rpoxgU31V5/fc/U6c/cKo5EMbjKH9u3mB+ld7dLBIGDprcsytTVC/
	 K4dEGl4fWXvjkLIgbs6f5bcV4hdfRWWYl40D1aX6o7B+2xAt04Wn1ZhgZaFTTwLoDG
	 zyHbpwxIVD/5w==
Received: by gandalf.ozlabs.org (Postfix, from userid 1007)
	id 4fCXjt4hw0z4wqV; Sat, 14 Feb 2026 13:17:22 +1100 (AEDT)
Date: Sat, 14 Feb 2026 13:12:08 +1100
From: David Gibson <david@gibson.dropbear.id.au>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ayush Singh <ayush@beagleboard.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	devicetree-compiler@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree-spec@vger.kernel.org,
	Hui Pu <hui.pu@gehealthcare.com>,
	Ian Ray <ian.ray@gehealthcare.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [RFC PATCH 02/15] fdtdump: Remove dtb version check
Message-ID: <aY_Z-EDbUwCoxWT8@zatzit>
References: <20260210173349.636766-1-herve.codina@bootlin.com>
 <20260210173349.636766-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="BeDI6Qa22isVpmj7"
Content-Disposition: inline
In-Reply-To: <20260210173349.636766-3-herve.codina@bootlin.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gibson.dropbear.id.au:s=202602];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	SURBL_MULTI_FAIL(0.00)[gibson.dropbear.id.au:query timed out];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[dropbear.id.au];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-265493-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[david@gibson.dropbear.id.au,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gibson.dropbear.id.au:+];
	PRECEDENCE_BULK(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ozlabs.org:url,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8A00F13AC0A
X-Rspamd-Action: no action


--BeDI6Qa22isVpmj7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 10, 2026 at 06:33:30PM +0100, Herve Codina wrote:
> fdtdump checks the dtb version and simply failed if the dtb version is
> newer than the last version supported by fdtdump.
>=20
> This check is not needed and too restrictive. Indeed, fdtdump does
> read-only operations on the dtb provided and should rely only the
> last_comp_version header field to know whether or not it can read the
> dtb.
>=20
> The current check also avoid the use of fdtdump in tests checking for
> the libfdt behavior when an new (future) dtb version is used.
>=20
> Relax fdtdump checks removing the check of the dtb version header field.
>=20
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>

Applied, thanks.

--=20
David Gibson (he or they)	| I'll have my music baroque, and my code
david AT gibson.dropbear.id.au	| minimalist, thank you, not the other way
				| around.
http://www.ozlabs.org/~dgibson

--BeDI6Qa22isVpmj7
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEO+dNsU4E3yXUXRK2zQJF27ox2GcFAmmP2e0ACgkQzQJF27ox
2GeNSA/9GHl2lAtcp7tCHpGk+wKK/SbowX46X7KN+rhw6Lq4ZtbSo5AvDljMit9i
tyr3/7ZWGnZJG+zx2ieUURsDj/FHNSXeQ4nbkQyzXzLYKLoXn5378p/p/6H9Ibza
UyIRab27ZtjX/TAy5Pr+7BoGVCbEoiC5X9Vpq6Y5NdHP20G9WTr8v7YLiPEWEMvC
7zndyXO5lXuKkL07Jb7ova5oFU26y9HdLHIqGjhsHoqpYNPmK7oI/RE62iK+ZXXk
dIGVotL6zhF/S+hDXWrMHhd6H5d0Z69utjwrsCfNh9D7U8PaQxEeFH2ABzsMFS9N
yoIwSZoefqfoZg/pxlFFSFG1KH37tUIMWz/8hzfSNJLnkpDIxfGv2zLSHgriaiOO
BZIPW4YxeButgUDf1zLfwzV/SPu3vFbPXqs//Xlu665YJK+RDpBCr9ITnzkWf/CA
6uwOO3k0UMkRGHg1MeNxpUKGgO3Y0krbzQE5QmzNc+WnKb0vQYZJfuBA2W1Td9UD
kxzkMHnOPyPnkPx62PvI9IJ4WvpVcyLlFJoPbDuBDGhx4AznLOMAh21y6ERv5Jdz
UPVmqe865sHn1JTanf0rV2qeaQec6oTcDMAWJ4Xbc3TKZNwsUPlEMBkE4k2yufnw
YWoIcIl8J0OQWnwEeYyK0ZQo0ymu162Vw8FTGkCI+jtW2aZHS6w=
=Jnv2
-----END PGP SIGNATURE-----

--BeDI6Qa22isVpmj7--

