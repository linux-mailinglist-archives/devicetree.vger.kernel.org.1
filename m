Return-Path: <devicetree+bounces-288817-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4IPFAyZV5mkDuwEAu9opvQ
	(envelope-from <devicetree+bounces-288817-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:32:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FCA42F980
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:32:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EE3B5302859C
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 16:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B53AA34CFD7;
	Mon, 20 Apr 2026 16:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sENPp4Tx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913B934C989;
	Mon, 20 Apr 2026 16:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776702389; cv=none; b=GI6qWYA69z4HVrIDhVX1pCksP+EXHHsFOa20nKLKxY/ib9MVo4kJ9QbmBGVolz/z0o46smW8d4WDM4SQsCGjtlG5Ut0TM8Fv+SIUWUNDMgd+XW8/qSgeLABWt4buN94ZcmXztuWANSAVTlVNEfMaPHMMel8iDsW93jGOLcQrLqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776702389; c=relaxed/simple;
	bh=AcH5doJWo9c2yg11/2RY1ie0nU73+ZHvMfqsAFJrFYw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b5bJZUdorLpUAIuEtDZ29cYxEXk1p0lbVJrp0HOI+7sJZFjZoGpl2KaalQZqjsLpEwzs/zl5mXgMAdCgm+Nyu9gWVwshyZj/hgQzfpmWkIROg2/Nf5VrfPPCqZTYq3JwRORevmZIR4JLptlUxY2/YS4KdqVyLv48lhADSvGjcJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sENPp4Tx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CAF3C2BCB7;
	Mon, 20 Apr 2026 16:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776702389;
	bh=AcH5doJWo9c2yg11/2RY1ie0nU73+ZHvMfqsAFJrFYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sENPp4TxUxxSpB9i/rrLsdf8MhVX1/+ab/I6esO0GG/bnbUhuH/njH558PdTBZihB
	 0Kwc+OBsnb5mRacirQu8kWtSgUr5mdIf6pC04B5e8QweSDdWawSkvndsSPpR7HT0aD
	 C217vOsOtsxEBmCNpayenrG371afERM8bqdMN6i30Elz1WqpiLrxk9swjELqlmRRYa
	 xTayV2VI9tYEOyuc9ScXZ8b7X3Q+S6lET1E96aunW4iyxqX30KEXGJZRKE4ak0724t
	 Mr2OhQuWphFAvGm/URYm3mw9pmBOSoMIt2x9bCjHDkKBzdMjbsjoJIgvRbnscRcSo0
	 rSrfh9cjoPLrQ==
Date: Mon, 20 Apr 2026 17:26:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: trivial-devices: add
 toradex,lava-hat-spi
Message-ID: <20260420-conjoined-goggles-256f9a4e7b4b@spud>
References: <20260420114537.78160-1-francesco@dolcini.it>
 <20260420114537.78160-2-francesco@dolcini.it>
 <20260420-task-navy-370ea247fe1d@spud>
 <005d96ea-b250-4af8-9c5b-d145bae892e5@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RrwXRoh/jrukY6ST"
Content-Disposition: inline
In-Reply-To: <005d96ea-b250-4af8-9c5b-d145bae892e5@kernel.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288817-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A0FCA42F980
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--RrwXRoh/jrukY6ST
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2026 at 06:10:08PM +0200, Krzysztof Kozlowski wrote:
> On 20/04/2026 18:02, Conor Dooley wrote:
> > On Mon, Apr 20, 2026 at 01:45:35PM +0200, Francesco Dolcini wrote:
> >> From: Francesco Dolcini <francesco.dolcini@toradex.com>
> >>
> >> Add a compatible string for the SPI loopback device present on the
> >> Toradex LAVA HAT test fixture.
> >>
> >> The Toradex LAVA HAT is a board used for automated hardware-in-the-loop
> >> (HIL) testing, it provides several test-related functionalities, and
> >> exists in multiple variants depending on the board it is mated with. T=
he
> >> SPI function is implemented with a loopback on the MISO/MOSI signals.
> >>
> >> As the device can be fully described using only "compatible" and "reg",
> >> it is appropriate to list it under trivial-devices.yaml rather than
> >> introducing a dedicated binding.
> >>
> >> The SPI implementation is identical across all Toradex LAVA HAT
> >> variants, so a single compatible string is sufficient.
> >>
> >> Link: https://lore.kernel.org/all/20260310133254.GA51497@francesco-nb/
> >> Link: https://lore.kernel.org/all/20260316073547.11437-3-francesco@dol=
cini.it/
> >> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> >=20
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > pw-bot: not-applicable
>=20
>=20
> Heh, let's wait. That's a test device, so it won't be ever used in any
> final product, right? So not in final DTS?
>=20
> Then why it's here? I think I directed previously to document it with
> the rest of test devices - in incomplete-devices schema?

Oh it's that, I forgot about this discussion, sorry!

--RrwXRoh/jrukY6ST
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaeZTsQAKCRB4tDGHoIJi
0txGAQDkGfOu6pK5RxHeWKJOyKzxaaM6vc9v9Orhy50JRInwaAD/TcYSBviZpdd9
XuI0t0rBEIRN30N4ngGJvg/XkF+HlwI=
=kyQc
-----END PGP SIGNATURE-----

--RrwXRoh/jrukY6ST--

