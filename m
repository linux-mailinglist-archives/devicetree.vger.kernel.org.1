Return-Path: <devicetree+bounces-281347-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WL2uHYp3xWnw+QQAu9opvQ
	(envelope-from <devicetree+bounces-281347-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:14:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E190B339DBD
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 19:14:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F418930082B0
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2026 18:13:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBDFD331A6D;
	Thu, 26 Mar 2026 18:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji0A894k"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5DA9224B05;
	Thu, 26 Mar 2026 18:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774548805; cv=none; b=hr1xVM8OFd2yzjhQ1iMNG06KsfnYKcD3Ic8uEy/BsDwlf3dSps66I8V2Kzoruvkfms3t8dBTNEZVxdUFqLYc0o6J5siKukj9s/DZd/69khx+xkT9fQ4zOTt8tGOc4zVBSpI8zF+TyO7E48rOVyeSBsg3KNvNOfYNrgyFWjVl81g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774548805; c=relaxed/simple;
	bh=sgSWf6Ik1PmzJbWPKwNKI+eu5m/jYqqkVN8lBSM6lZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GFFSeWz4riULyxFH3wgNJtJ61jm4CIpunfacuGh4elrwJLFwWNdCykdZiIx5tkR2yazzQf/3ye+GJKYoexddfRK183wgWld7EHRQPOWDTVXcjN8WuCzFTg1z+UFgpDrcfhJOUUkEqxpARyJDtJ3NWKZ5Rd0ku7thOogaZ8ypaoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji0A894k; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BCDFAC116C6;
	Thu, 26 Mar 2026 18:13:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774548805;
	bh=sgSWf6Ik1PmzJbWPKwNKI+eu5m/jYqqkVN8lBSM6lZs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ji0A894k5jnE4nhBshX9xb0yB2AIjM9mWilWquMemANEcu05cJPh/7AG5t+MA9oIs
	 nPBkS4Ifu7lymgk51/fWZaSy3IirjasalaqwrnjpKLrRiCF1cVk3fil3Qoht+HqJ1i
	 lNDI6nVmhJiMLyI9o6Izd7ccVyEfCdpaglu/BKIErAnauJrmIcc7dlkhlanSz6tALl
	 tKQ2DzdDzXHUaUalpVDgwgB7sHNdLo2inkJXbJTrzFmiHSdt94p+Vo4wf2XqJZKL8k
	 FKH8jQ4e/ao1LR3LrhNB9PPTGVUpuOBPMQ9jTtd2yFKkatT+4NyUhu1e9hA+RnQwu8
	 1qXEKOA7xqaZg==
Date: Thu, 26 Mar 2026 18:13:21 +0000
From: Conor Dooley <conor@kernel.org>
To: Rustam Adilov <adilov@disroot.org>
Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 5/8] dt-bindings: i2c: realtek,rtl9301-i2c: extend for
 clocks and RTL9607C support
Message-ID: <20260326-sixtyfold-ooze-912e198a3057@spud>
References: <20260326152656.14030-1-adilov@disroot.org>
 <20260326152656.14030-6-adilov@disroot.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rW1a+UZ60u43IVEq"
Content-Disposition: inline
In-Reply-To: <20260326152656.14030-6-adilov@disroot.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-281347-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,disroot.org:email]
X-Rspamd-Queue-Id: E190B339DBD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--rW1a+UZ60u43IVEq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 26, 2026 at 08:26:53PM +0500, Rustam Adilov wrote:
> Add the "realtek,rtl9607-i2c" compatible for i2c controller on the
> RTL9607C SoC series.
>=20
> Add a clocks property to the properties to describe the i2c reference
> clock and make it available for all the compatibles. This i2c reference
> clock is assumed to be coming from switchcore region via Lexra bus as
> the other SoC peripherals.
>=20
> According to the info available about the existing devices, they also
> have the i2c master controller clocks.
>=20
> RTL9607C requires the "realtek,scl" and "clocks" to be specified
> and so handle it under separate if check for "realtek,rtl9607-i2c".
>=20
> Signed-off-by: Rustam Adilov <adilov@disroot.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--rW1a+UZ60u43IVEq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacV3QQAKCRB4tDGHoIJi
0u6uAQDJ3mkMcsKGEarCQ1ArHfx9YY/yFDLF3q7Jcvnik14zHAD/c5iyFI2gfcnw
R14YZJe/GkYwCEtgHR1oC9/92wiBrg4=
=44hh
-----END PGP SIGNATURE-----

--rW1a+UZ60u43IVEq--

