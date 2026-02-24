Return-Path: <devicetree+bounces-268003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPwdFjrjnWnpSQQAu9opvQ
	(envelope-from <devicetree+bounces-268003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:43:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7D918AA9E
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8252D3067773
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:43:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4D533A9627;
	Tue, 24 Feb 2026 17:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JQpBqB5y"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A26863806A6;
	Tue, 24 Feb 2026 17:43:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771954999; cv=none; b=u8RE6fuQm1yqhIXoStrEhnBMxGxkyLR2DhhXmEqx1Y1T4G0ZFeip2DCEtIqo7D9JKGeTvK7QqHoN7qfkTlaFh4Inv2hIXdLeVSfylD5k7aHN0PH0UqLyzztmpJHolk/BlOYGWpjO/YG2BuYfaaELi2HarOL2c4XWIjN6XX70H74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771954999; c=relaxed/simple;
	bh=6W0OxqSdiXXEXOTbMnCNWEv8J0q6IEYD250aoiMd52k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LlArLK+8x67LZ9fGS7w1P3E9xmLNAkEdJeMObOSaKu1WG2Lkx3G8h6xKAiWilj3CKUMPtPTMYnQFThxCDFA4RzBO31i8Cu6/DMj2CI/1wkO8oI0lR4gAbDi86f3o0fNisBUU5plbED9VKC5463j5mnthEIxCIW3BjtOJcmrezvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JQpBqB5y; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E186C116D0;
	Tue, 24 Feb 2026 17:43:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771954999;
	bh=6W0OxqSdiXXEXOTbMnCNWEv8J0q6IEYD250aoiMd52k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JQpBqB5yrBSqnxhrOCutJ6tv/6hR2hQlsDp7EKwCYp2QUy0Ocz8HOX5GqK4jsxevq
	 1Um2cW0arDx6hAkL6GVOQJewt0dsLsNHIx00odNOHIwnI7hp5tvE3nOepxp2zPK1yF
	 ljEbkMLVMhCGzi16WcfxZ2jySb0UFXQAgBP45GHWpMT3kLL6uxmnjPwoqrHNTdTrCS
	 Q3xRTXmT5/4EXRzKmXR30tNbLpYje3yeTkvTCaxFXGENW8GrHEoSrBXdwBMB5TBFS+
	 xtjJQ1aAidZlfWcVRE1/rrYwnKUB/DrjaN7CFukmQAMa65kczzlCkEvfWVVm+34hd+
	 PLdBGN7yogrpA==
Date: Tue, 24 Feb 2026 17:43:15 +0000
From: Conor Dooley <conor@kernel.org>
To: Akhila YS <akhilayalmati@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu@tuxon.dev>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 0/5] dt-bindings: Microchip/Atmel AT91/SAMA system
 peripherals: convert to YAML
Message-ID: <20260224-recolor-hatching-e7d1b1894953@spud>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="a9Oce0LrKqM5UBEG"
Content-Disposition: inline
In-Reply-To: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268003-lists,devicetree=lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CA7D918AA9E
X-Rspamd-Action: no action


--a9Oce0LrKqM5UBEG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 02:46:45PM +0000, Akhila YS wrote:
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
> Changes in v2:
> - Change email for maintainers.
> - microchip,sam9x60-pit64b: modify compatible and clock-names in properti=
es. =20
> - Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5d9=
07e10e3@gmail.com

Please give me a chance to respond to your messages before sending new
versions. My comment about partial removal of the text file still
applies. You've got to send another version anyway.

>=20
> ---
> Akhila YS (5):
>       dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
>       dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
>       dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
>       dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
>       dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema
>=20
>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 ++++++++++++++++=
+++++
>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 ++++++++++++++++=
+++++
>  .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 ++++++++++++++++
>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 ---------------
>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 68 ++++++++++++++++=
++++++
>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
>  6 files changed, 290 insertions(+), 48 deletions(-)
> ---
> base-commit: ca3a02fda4da8e2c1cb6baee5d72352e9e2cfaea
> change-id: 20260128-arm-microchip-c0c0515024e6
>=20
> Best regards,
> --=20
> Akhila YS <akhilayalmati@gmail.com>
>=20

--a9Oce0LrKqM5UBEG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3jMwAKCRB4tDGHoIJi
0qptAPsEZufrKjBwoS35zrrBVn3edjNi+mQl4li5B/R8t4V5kAEAjsa5V4cntrIz
C8Jh6yTdaEQcfyH12xxHsE3pNqhw4wQ=
=Z8VM
-----END PGP SIGNATURE-----

--a9Oce0LrKqM5UBEG--

