Return-Path: <devicetree+bounces-279359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEKQBDSdwWmFUAQAu9opvQ
	(envelope-from <devicetree+bounces-279359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:06:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F0E2FCDD7
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 21:06:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0DD69319A8F1
	for <lists+devicetree@lfdr.de>; Mon, 23 Mar 2026 19:44:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087613D5662;
	Mon, 23 Mar 2026 19:44:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HxWkxmVa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9B4133F5BA;
	Mon, 23 Mar 2026 19:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774295077; cv=none; b=mxMTa6b53BjsACyc0qKk156j+UO3CXPpq8o8DDx386xP1t/TOjda1O0x0wPBrfJr8CT2ajjg2rsw2QWAm8cmE3JSi+EUDv8owciQ68E8VbXMakXazQzvLbSxExcyv4cZI8POd6QfpuM9M7vnSqha94eh1D2K1mRs0EZMxqqLtdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774295077; c=relaxed/simple;
	bh=uNZSjghXoqvd9JvZZxfMvVjjTntLHr6+DNkRdTS5/dg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RUWTX7/EEj/fj87aN4Jh1Bb5F8QbAOJ+cS7n97Goh1pdRc+kP9QKMWUlC2+Ve+JjMWnA7TZR6lJTkgREX1OF/ozM6uLTvdrtm/JUiksoFgHY0K5jjCYPhRiqi3i97oQnb17Jcyzk9OAXH2mye5hnTKv3oUdYnmcIUmlQbFn0L/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxWkxmVa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 04219C2BC87;
	Mon, 23 Mar 2026 19:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774295077;
	bh=uNZSjghXoqvd9JvZZxfMvVjjTntLHr6+DNkRdTS5/dg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HxWkxmVa1WnMsww6wwMWRwysdCK/xjcPfOZqsOhieXEUHeJrvpGJAqClmH+ry8ROu
	 +Xc0HWp8dlgMv0c/Mkc8mI6EveUG5sM4dqM8uQe0io4GBLUm9f7aq6iSjg76MU5e9v
	 ZKuRiEcR5JGkxDwPaez2fV1cWDVIMo4T+RrnsKagRLFLbKEhjajrq/WgbOofTdOmGG
	 PxzWmQxoHkGwGKLkT9TLc/H7izVkPqxmPz3UFLL0t+tcTIiqvajjx02lWkg7jHBnZ/
	 /kSeb37QeYntLBFYGBOwFWEeVog5DIO0MhRFqZTkDOiUZ6XqdfGO1pgt2X9GtLZRen
	 hTj4lrFjMEAQg==
Date: Mon, 23 Mar 2026 19:44:32 +0000
From: Conor Dooley <conor@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Olivier Moysan <olivier.moysan@foss.st.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 3/4] dt-bindings: iio: adc: ad4080: add AD4880 support
Message-ID: <20260323-sloped-stump-dedef8a700a6@spud>
References: <20260321100154.1258-1-antoniu.miclaus@analog.com>
 <20260321100154.1258-4-antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/NDWeKR6yb94Xa8A"
Content-Disposition: inline
In-Reply-To: <20260321100154.1258-4-antoniu.miclaus@analog.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-279359-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email,microchip.com:email]
X-Rspamd-Queue-Id: 67F0E2FCDD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--/NDWeKR6yb94Xa8A
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 21, 2026 at 12:01:53PM +0200, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC
> with integrated fully differential amplifiers (FDA).
>=20
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface. This requires:
> - Two entries in reg property for primary and secondary channel
>   chip selects
> - Two io-backends entries for the two data channels
>=20
> Reviewed-by: David Lechner <dlechner@baylibre.com>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--/NDWeKR6yb94Xa8A
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCacGYIAAKCRB4tDGHoIJi
0tEuAQCQ41ExtUxpuytPGORUmgJk4Kcl9IsI2gz2hG8ly55PMgD/bxJfxrHK9CXL
GCu7VyRR8F0T4Xi9smYgm4DFl25OBAI=
=Nnqy
-----END PGP SIGNATURE-----

--/NDWeKR6yb94Xa8A--

