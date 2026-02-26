Return-Path: <devicetree+bounces-268973-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mM8fD8GPoGkokwQAu9opvQ
	(envelope-from <devicetree+bounces-268973-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:24:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E93661AD88B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 19:24:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A746E30383C1
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 18:12:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E1F36492D;
	Thu, 26 Feb 2026 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrDAUXnv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93454332637;
	Thu, 26 Feb 2026 18:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772129573; cv=none; b=s1A45dB0hT5StyFGbB2Eml8iSZW4ebJ0lAu6p4eIAG3ZQgETkmsOMDxhpw+U18JQcqfDo9nq81Cvlvzna516bpg1QaggtTHaMJsZvDMUmXH4U+IYKjhS9wlvJOYDtqeJRs6nrDKJ+RhjKm+3OIfruY3jydmywPT+i90jmbOvuhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772129573; c=relaxed/simple;
	bh=WUYyF2WtAffAbwhiOnEY2tBDs0aGrX2kCfm11ewGIGI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6vtvDzEIh1afV+QBUCwxepXWFUiIKwnRoOD5/iYSwozeMUJnaBpB5mwmL+MyMiGq7IAm+cgXza1UsZmFzYxCewkKGHrCXBeCYCyOjJqCciW1FLjsh4khgsw8+cwYSvTkh08+cC0RRxhEdyYK9y9BtatV2N4lJzWuUqohQRRYjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrDAUXnv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48938C116C6;
	Thu, 26 Feb 2026 18:12:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772129573;
	bh=WUYyF2WtAffAbwhiOnEY2tBDs0aGrX2kCfm11ewGIGI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mrDAUXnv+bnDBv/x/6bpLGm97GuZvxPD9PrHzgq1cfZzFE1V1EGTQpYi5FcTlPy71
	 4ToiIM4o6DkiEQpkW3d+bVYeB+NXjXK3T05SpYyUCqtadLXieW8JlY+7HausUeHBhx
	 SY/CcwDInTSNIESHXe6mjTq+JW7XFS5a6dCwSJdxMMHHtxruGOJrH1jKGsMWwiKODy
	 JDsaIAUYQnZUKa3RHduxKskqEvXdVFwsoLmsB77k4S8tljrd2qZLGtN43o+5ix1Koq
	 SmSlZQGJ7Vnd8sBlsHQ58sqWQbclNKTKRePV3F6GjYY0qDnYnER6NcZX2yKjxJ5Xx0
	 3DTvCwdWFB1tw==
Date: Thu, 26 Feb 2026 18:12:49 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Message-ID: <20260226-bony-mom-820bee185dc0@spud>
References: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ed8MFy4aWBBGpUIz"
Content-Disposition: inline
In-Reply-To: <20260226-arm-microchip-v3-0-0bda15abd922@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268973-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Queue-Id: E93661AD88B
X-Rspamd-Action: no action


--Ed8MFy4aWBBGpUIz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 26, 2026 at 04:13:32PM +0000, Akhila YS wrote:
> Convert various legacy .txt bindings for Microchip (formerly Atmel) AT91/=
SAMA
> family system peripherals to proper YAML schemas. This includes:
>=20
> - CHIPID (SoC ID register block)
> - PIT (Period Interval Timer, old style)
> - PIT64B (64-bit Period Interval Timer, newer parts)
> - ST (System Timer, including watchdog subnode)
> - RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller
>=20
> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> ---
> Changes in v3:
> - Change email for maintainers.
> - atmel,at91rm9200-st: redefine watchdog node as a pattern property.
> - Remove corresponding binding node from txt document for every yaml patc=
h.=20
> - Link to v2: https://lore.kernel.org/r/20260224-arm-microchip-v2-0-8beda=
cd2cdcb@gmail.com
>=20
> Changes in v2:
> - Change email for maintainers.
> - microchip,sam9x60-pit64b: modify compatible and clock-names in properti=
es. =20
> - Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5d9=
07e10e3@gmail.com
>=20
> ---
> Akhila YS (5):
>       dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
>       dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
>       dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
>       dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema

These first four patches are
Acked-by: Conor Dooley <conor.dooley@microchip.com>

--Ed8MFy4aWBBGpUIz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaaCNIAAKCRB4tDGHoIJi
0viAAP41vu2f70QGXvgA/IVTXHfAYNYPX+iAi0Fi+75bqRX2wQEA3RGCGNDE6Mzz
10ZmJhYUrsyVlpd7VCsW12Xz0tdm5wY=
=KM/w
-----END PGP SIGNATURE-----

--Ed8MFy4aWBBGpUIz--

