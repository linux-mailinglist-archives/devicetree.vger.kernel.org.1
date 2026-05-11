Return-Path: <devicetree+bounces-295212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id B2m2BRIoAWrXRQEAu9opvQ
	(envelope-from <devicetree+bounces-295212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 02:51:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BF7506EFA
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 02:51:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0432300AB16
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 00:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 039CC1A6815;
	Mon, 11 May 2026 00:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlzLj52V"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D512B1624D5;
	Mon, 11 May 2026 00:51:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778460685; cv=none; b=O5fui56SeQrBKEcLxtYmiedQeT1H3HF36i1gJahgOUR/pyPD81gS6Og1hZYcTqNR+0xQb+kSSiPzFrtsbq0U9xk0KTN10P3BQ2duelE5jxU+JU7dDKlqVSZzOOBtyg9dekT2WjBlpEKQbRkgmTQYQvAqv3stBz9tNaZab5f8w8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778460685; c=relaxed/simple;
	bh=bW7iEDAxV2cuu1P3oTsB3AolrV0RqGPRVJAJ8g1Fewo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=na2KP+cvtV2hCQV2kuDklsuTMshhPjelJYFhQ7hBa3sUZrAjbobV2S2fIzpmInyafe8S/av0IAFK308AKOCdBRJcZ6XjUE84VOKojcm5ptSExIEh5x1xZAIxyWr5fOCmUUi7+/zvAV950ixievahGum/qbETA0RA+gJAcn92wLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlzLj52V; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 525A4C2BCB8;
	Mon, 11 May 2026 00:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778460685;
	bh=bW7iEDAxV2cuu1P3oTsB3AolrV0RqGPRVJAJ8g1Fewo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HlzLj52VpPQ8s6bREmJsAGkGaPifpDpMhLtdxpPFIwajYWUpAMaAz4TNBvfoPHxMA
	 +3DuDncB762vrzTI9y5b1uaqd7JGd/foVPouWcPXOYeb39Oy8XzjR/jYV5d2XhUl/B
	 x1ejXy6vxyeO3tAF5kNYSpQ8Ox2NEnQ6oR8LLytAEjJj/bZkge0Wz9TTTwkoP1wqGA
	 mJcJwOu/LjhEkCssi2UoAV+4jkSZvV7nLWa0/1LV7QqcgUMwARYd0CwJJq94HYp3qS
	 9PHD99H5AD4mNzeJJRBcWXRyyuEAGMuRLPHa/u5jg0Qo28Iix66v9bDXbHq40MMMq6
	 uQbKoV/qd/EXQ==
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
	id 2D7B61AC589A; Mon, 11 May 2026 01:51:23 +0100 (BST)
Date: Mon, 11 May 2026 09:51:23 +0900
From: Mark Brown <broonie@kernel.org>
To: azkali.limited@gmail.com, Neil Armstrong <neil.armstrong@linaro.org>
Cc: Philippe Simons <simons.philippe@gmail.com>,
	Liam Girdwood <lgirdwood@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 0/2] regulator: add support for SGMicro SGM3804
Message-ID: <agEoC0kdKoOVrjne@sirena.co.uk>
References: <20260510-sgm3804-v1-0-e5e8799e0aa0@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0B/qjLgUOVPVJIqz"
Content-Disposition: inline
In-Reply-To: <20260510-sgm3804-v1-0-e5e8799e0aa0@gmail.com>
X-Cookie: Truckers welcome.
X-Rspamd-Queue-Id: 62BF7506EFA
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295212-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,linaro.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--0B/qjLgUOVPVJIqz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, May 10, 2026 at 11:45:25PM +0700, Alexandre Hamamdjian via B4 Relay=
 wrote:
> This series adds support for the SGMicro SGM3804, an I2C-controlled
> positive/negative output charge-pump regulator. The chip is used to
> generate the AVDD/AVEE rails for display panels and is present on the
> Ayaneo Pocket DS handheld, where it powers the panel and is required
> before any panel driver can light up the display.

There is a separate series from Neil Armstrong (Cced) already in review
for the same part.  Please sort out what to do about this between
yourselves.

>=20
> The Ayaneo Pocket DS device tree, posted as a separate series, depends
> on the binding introduced here to describe its panel power supply, so
> this series is a prerequisite for that work and for any subsequent
> panel-related patches targeting the same board.
>=20
> Signed-off-by: Alexandre Hamamdjian <azkali.limited@gmail.com>
> ---
> Alexandre Hamamdjian (2):
>       dt-bindings: regulator: add SGMicro SGM3804
>       regulator: sgm3804: add SGMicro SGM3804 charge-pump regulator driver
>=20
>  .../bindings/regulator/sgmicro,sgm3804.yaml        |  60 ++++++++
>  MAINTAINERS                                        |   7 +
>  drivers/regulator/Kconfig                          |  11 ++
>  drivers/regulator/Makefile                         |   1 +
>  drivers/regulator/sgm3804-regulator.c              | 164 +++++++++++++++=
++++++
>  5 files changed, 243 insertions(+)
> ---
> base-commit: e98d21c170b01ddef366f023bbfcf6b31509fa83
> change-id: 20260510-sgm3804-c37a0ae6d7f3
>=20
> Best regards,
> -- =20
> Alexandre Hamamdjian <azkali.limited@gmail.com>
>=20
>=20

--0B/qjLgUOVPVJIqz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoBKAoACgkQJNaLcl1U
h9AKNgf/WAt9xfM3/FF3Ms0wVg3z1uo+B4pJdOQZdXcdoBzjgfGMIJfk/S6TEfwS
OVHfCwhlNrxVZs+XAtt+lLJGGpMON2T6No7bQiY/evn6Cn+YHHzx4/xHdUP0tox3
zRokmUu2TAfvgjNmuzPxCicfwW8EMGDRVkK306aD80N5EIAKTpRx7Ek4ihxR62PN
08MqDbHKLtV1cAn8LZIfsFb/+e7bMfz9TTRCVhlecfIThEy3OW7pp9HPMW5OLEop
Nn7tmx4tRqiyEmlWPWuGDLygjPdmJXTFvFPPt+J68xgd93sagnaPfsWF3id4ZZ6H
pEc3ksK5k9wYp4Ud/MbB7vtdgciD7g==
=HMKG
-----END PGP SIGNATURE-----

--0B/qjLgUOVPVJIqz--

