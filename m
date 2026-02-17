Return-Path: <devicetree+bounces-266234-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEqsMpuqlGl7GQIAu9opvQ
	(envelope-from <devicetree+bounces-266234-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:51:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE3114EBF5
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 18:51:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEBD83020000
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EAB036E46B;
	Tue, 17 Feb 2026 17:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dQX2u1Sl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE76635D5E2;
	Tue, 17 Feb 2026 17:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771350667; cv=none; b=s0KqmwFaCYvNCVagmOGJPJwD5Hi5Do/GQ7AF1//zTiOAsIXP/j8kqhQVt0IKunaST3Kt9YOvF0IdUugb9n9xd4QvZY7t0hxkoe06qfznYhS27f0DfY+UmxbboA4a+Uw9ByjWR30MXYzOZxAassZb4xirNDHxXhDr8Wh+UdBjm14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771350667; c=relaxed/simple;
	bh=RohvUrABE3ONA2kD5YM2rA0XvwklkYs+Ttxew6GqdNc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C9rNNteAycC4rl4zvIYOqYptF54lAKyzxOjLcT70unLVabTncL1FbQh9n0CH5V2+igtG4TakjMUfN0g8BMBmCYJ8U/9UuMOed+PhXplT+qVFbkdI1Cndx3OD/L1l84HzeHOenWZol0FiDpSGrIMDJ/2VPe09bkNAvDko0VlhY9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dQX2u1Sl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7DAD0C4CEF7;
	Tue, 17 Feb 2026 17:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771350666;
	bh=RohvUrABE3ONA2kD5YM2rA0XvwklkYs+Ttxew6GqdNc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dQX2u1Sljt6+W1rO3TGqvEeMKWhfzifUi6l+evzSC1hEQW3/km3YRP4f9HgUJS9rD
	 +8zu+KKD/ZP3cCc6egcr4pG3MGPd8ot9PgCY46FtHZNldAIMx6issJ3ZKNrUaAi3oi
	 1uzNzWdhZX1xnut1wMy5DKP8ABef6E/XutX52FVtXSt8p36l9JkYE1I67odN8Ixr6E
	 kiBJLz8V27vxMM2wcFjA4Et2MTZeGeiQl3bo9OA2dzwnvbbiP0xpiysyxDsTrmn5fs
	 z8UMZrhGKPGdjZ1dad0wcPX8ASWuUHKkilaJwOwrebBarOqSBOMkZ6i2xQ2PIgtR94
	 7QhnVIl7Pt56Q==
Date: Tue, 17 Feb 2026 17:51:02 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Message-ID: <20260217-cosigner-polka-de13bb9be569@spud>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="EW0cnvbyt9G3Knl/"
Content-Disposition: inline
In-Reply-To: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266234-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4DE3114EBF5
X-Rspamd-Action: no action


--EW0cnvbyt9G3Knl/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 17, 2026 at 05:24:18PM +0000, Akhila YS wrote:
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
> Akhila YS (5):
>       dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
>       dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
>       dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
>       dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
>       dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema
>=20
>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++=
++++
>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++=
++++
>  .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++++
>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 ++++++++++++++++=
++++++
>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++

Is this intentional? They all say "convert", but only one file is
removed in one commit?

--EW0cnvbyt9G3Knl/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZSqhgAKCRB4tDGHoIJi
0nHEAP9pWj/18OTsKIU4OHlqjX4JDifXepNVguER5eS6+e6fMgEA3nMnIhpB9wQE
1zw796iOZW9pOAf7LNYcUOR1P2FJ3QI=
=aoNg
-----END PGP SIGNATURE-----

--EW0cnvbyt9G3Knl/--

