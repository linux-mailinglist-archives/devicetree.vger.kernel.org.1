Return-Path: <devicetree+bounces-267945-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mEXtL+68nWklRgQAu9opvQ
	(envelope-from <devicetree+bounces-267945-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:59:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EFB188C43
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:59:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F5E93016511
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 14:56:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54D183A0B1C;
	Tue, 24 Feb 2026 14:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyZZnrZg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199F3806A6;
	Tue, 24 Feb 2026 14:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771944987; cv=none; b=GiBJ0wyEy84Rjs76SQd9wwAT4g31KpqYGC7Aml15B7RbLRXs9dW9G/JKFGqCsgoJ5tFfs/Um1O5iHIiEGiRTGCoabv0h0hMwP/Hotkxh/BDjP+n9JNo37gCRqE/ShJtdtdv8e3+wzAEAxqR2XOutyghQyTbbAmZX6UVskM0E4J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771944987; c=relaxed/simple;
	bh=Lg/d0B8W1nMvCvbuD/Qbkg0FKotjZ8MumRGFEal39iA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NaoRXG7nrDAF/fL6ZV4kE9MJYXCku0i4Vsr+lwmPJk4/a/L9bzerhQmkVxF2Z2riYSj46FBOtZWua1prEakoR/Q03VqwyyxVuoYmt79MzaEqEIAexqHnz3+49LvGrVyI0R76aV5+DKx2QLaVXa9b5r5ZgLA0L+W2ceECBs/CvFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyZZnrZg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF833C116D0;
	Tue, 24 Feb 2026 14:56:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771944986;
	bh=Lg/d0B8W1nMvCvbuD/Qbkg0FKotjZ8MumRGFEal39iA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OyZZnrZgn00Gv0EvwRSZDoX0PA7XVL7zVcqYoxIyZ5fwNmYwFxsfKjI5UXI4ujfNt
	 gi9Ceqe05JnNFBDMNhqnm05yqMtK5EhTrkCw/MykyO3p6LTPRFVdzNNBU7F9DgFZaq
	 789BfAQdLyPMHUGyNATqcipLlsY/kMoNNYmAYEzs2li0UAXS7E8Dq6mMDWaFgOfeJm
	 N0XnV9LqfB4fXYoHHzG1gIFx4Cc6f2Bd7WW0KfaZou/4lkl6JD49HLZ1IpZvO26OdA
	 4ugXEgSMVa17EyrbH41xmDyEf3IYcFvZTV0yFRUI0JBWKSyEOc6/H+0FSjPB1kKPE9
	 /2T3WMn0Nv7Vg==
Date: Tue, 24 Feb 2026 14:56:22 +0000
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
Message-ID: <20260224-detection-sliceable-a565fb5fb78f@spud>
References: <20260217-arm-microchip-v1-0-ae5d907e10e3@gmail.com>
 <20260217-cosigner-polka-de13bb9be569@spud>
 <11ab7eb4-5c74-4ee1-b385-a5ab95d23b7c@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QZFSn0Phm3TiF6Re"
Content-Disposition: inline
In-Reply-To: <11ab7eb4-5c74-4ee1-b385-a5ab95d23b7c@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267945-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 67EFB188C43
X-Rspamd-Action: no action


--QZFSn0Phm3TiF6Re
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 08:12:32PM +0530, Akhila YS wrote:
>=20
> On 17-02-2026 23:21, Conor Dooley wrote:
> > On Tue, Feb 17, 2026 at 05:24:18PM +0000, Akhila YS wrote:
> >> Convert various legacy .txt bindings for Microchip (formerly Atmel) AT=
91/SAMA
> >> family system peripherals to proper YAML schemas. This includes:
> >>
> >> - CHIPID (SoC ID register block)
> >> - PIT (Period Interval Timer, old style)
> >> - PIT64B (64-bit Period Interval Timer, newer parts)
> >> - ST (System Timer, including watchdog subnode)
> >> - RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller
> >>
> >> Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> >> ---
> >> Akhila YS (5):
> >>       dt-bindings: arm: microchip,sama7g5-chipid : convert to DT schema
> >>       dt-bindings: arm: atmel,at91sam9260-pit: convert to DT schema
> >>       dt-bindings: arm: microchip,sam9x60-pit64b : convert to DT schema
> >>       dt-bindings: arm: atmel,at91rm9200-st: convert to DT schema
> >>       dt-bindings: arm: atmel,at91rm9200-sdramc: convert to DT schema
> >>
> >>  .../bindings/arm/atmel,at91rm9200-sdramc.yaml      | 67 +++++++++++++=
+++++++
> >>  .../bindings/arm/atmel,at91rm9200-st.yaml          | 65 +++++++++++++=
+++++++
> >>  .../bindings/arm/atmel,at91sam9260-pit.yaml        | 49 +++++++++++++=
++
> >>  .../devicetree/bindings/arm/atmel-sysregs.txt      | 48 -------------=
--
> >>  .../bindings/arm/microchip,sam9x60-pit64b.yaml     | 71 +++++++++++++=
+++++++++
> >>  .../bindings/arm/microchip,sama7g5-chipid.yaml     | 41 +++++++++++++
> > Is this intentional? They all say "convert", but only one file is
> > removed in one commit?
>=20
>=20
> Yes, all bindings are present in one text file.
>=20

Surely the thing to do would be to remove each section from the text
file as it gets converted, no?

--QZFSn0Phm3TiF6Re
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ28EgAKCRB4tDGHoIJi
0hCgAP0f1B3Z0yBDGUqStX/lsN2MJf38AVMZNme4dkmAKQ6sRQD/VlHJf7bYtAF+
etH0/4VjNPWLEsyo/lGYkLHctcgLeAU=
=n5Mc
-----END PGP SIGNATURE-----

--QZFSn0Phm3TiF6Re--

