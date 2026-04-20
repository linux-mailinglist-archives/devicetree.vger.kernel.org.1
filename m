Return-Path: <devicetree+bounces-288800-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC7ULIBO5mkgugEAu9opvQ
	(envelope-from <devicetree+bounces-288800-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:04:16 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4FF42EEAF
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:04:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 959CC301D0AB
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 16:02:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BBBE33F37F;
	Mon, 20 Apr 2026 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVYBZ7my"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F8833EAF9;
	Mon, 20 Apr 2026 16:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776700943; cv=none; b=dgVJr6/Mez+5kEHB2fiziD8/SZVWmjGN2A7e+XuURjP4OQHmLJYdyxg5dOMpjqKWnH53LaGpSgkvcgRLYIri/jjFxpbXHBTN5+oV6/JCnX4VybfUzL4Fb8rSOYPU+6hPYrM85Xy3sQmKtQe+TXnpWE6SwdkdnTIOclaDsdnqqt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776700943; c=relaxed/simple;
	bh=UpSmWLqRnsoJMgs165ruDnPDd2GndLJSvK84cVk/bDA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jx/xoWa+QBuhHLw6ZxYSN7JSy4e+pscjHe1I9b2ANnat0BwdicL2cqEE1R56wVOjuu706EVY7BYKpX+aPWIhXZIm3JDuh2dfT6m6MMdl736PB8GsJkEjk5r2nIUS/1gc3pPvQqnNv0O1GhgutH3qWce3n1HclpAcHuxhg+lgmZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVYBZ7my; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C136C2BCB4;
	Mon, 20 Apr 2026 16:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776700943;
	bh=UpSmWLqRnsoJMgs165ruDnPDd2GndLJSvK84cVk/bDA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZVYBZ7my7SB9IoozcOOWEjmpH72SauY7ZKa1bvj922TVToVmJ9nbJb8fcgpCmMSZP
	 gL+en4k5s3lE5Xzw6AZWN5ku5CorrSSUC4iiP6SEvbRDjrVRcl0Ew8/lOzjGOPPtLC
	 GbFhtm1sQJnoaZ9O3MM/vV9tMg+7i67dEkHSPeKO25DKaCpa7H1O4yi4PjErRPKTrf
	 GFbdtTIOSxmqyu1JXg9aSAe9QnoHzeK5C6NKPx//p75gpoZKMLhJANoGhHDPs8waTT
	 KqhBGDa5//9hnpePs9ozHdzlYKgiG3kVN2vEHchLxJb+5s5oxFIFArBNF5kkDnuuXS
	 Cv5KO92Wv1ZOA==
Date: Mon, 20 Apr 2026 17:02:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: trivial-devices: add
 toradex,lava-hat-spi
Message-ID: <20260420-task-navy-370ea247fe1d@spud>
References: <20260420114537.78160-1-francesco@dolcini.it>
 <20260420114537.78160-2-francesco@dolcini.it>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vy4O/af26KsjQbIU"
Content-Disposition: inline
In-Reply-To: <20260420114537.78160-2-francesco@dolcini.it>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288800-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5F4FF42EEAF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--Vy4O/af26KsjQbIU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2026 at 01:45:35PM +0200, Francesco Dolcini wrote:
> From: Francesco Dolcini <francesco.dolcini@toradex.com>
>=20
> Add a compatible string for the SPI loopback device present on the
> Toradex LAVA HAT test fixture.
>=20
> The Toradex LAVA HAT is a board used for automated hardware-in-the-loop
> (HIL) testing, it provides several test-related functionalities, and
> exists in multiple variants depending on the board it is mated with. The
> SPI function is implemented with a loopback on the MISO/MOSI signals.
>=20
> As the device can be fully described using only "compatible" and "reg",
> it is appropriate to list it under trivial-devices.yaml rather than
> introducing a dedicated binding.
>=20
> The SPI implementation is identical across all Toradex LAVA HAT
> variants, so a single compatible string is sufficient.
>=20
> Link: https://lore.kernel.org/all/20260310133254.GA51497@francesco-nb/
> Link: https://lore.kernel.org/all/20260316073547.11437-3-francesco@dolcin=
i.it/
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Vy4O/af26KsjQbIU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaeZOCwAKCRB4tDGHoIJi
0rGyAPwPzY+ZERLhF1pxT6HZ+ZFC2rOxT0kUGAradNhbBfN90AD/RBar/xVxXpGj
x2KCAc0EOulXA4PQG7ZG9ojaGdtk4Qc=
=lewO
-----END PGP SIGNATURE-----

--Vy4O/af26KsjQbIU--

