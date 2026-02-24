Return-Path: <devicetree+bounces-268005-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qEfBJkTlnWlDSgQAu9opvQ
	(envelope-from <devicetree+bounces-268005-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:52:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F45718AC29
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 18:52:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 723593024B37
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 17:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18F873A1E95;
	Tue, 24 Feb 2026 17:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vB2+OPsz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA0A2267B89;
	Tue, 24 Feb 2026 17:51:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771955520; cv=none; b=LNv2UvbOa40mpi9ttQGUmH9KQB50MCg7nTQ337xoxDGrlRDWRtVgqcRl58sCOGea2UWPaFJ87V6vKilS+HGBRwlu9m/JnCoiE1mkTmLPqCNB2kMLa5pZFdCtIKdsQCZhO0+KSjfOLV60qQ73384e9W60G5XGKUXNKYZp2PDUHcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771955520; c=relaxed/simple;
	bh=sX48mmAMpEFsVVWkSO1fWvcBpL1R4FUZWu64MSoexbg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WQiBzj2LqUg/YtvWbuiOEJA1Tt18zgWoVKRI9IyaPFgjm0L26JUfMHHhEBfbbkEOHvbp0x18IhgZUStkIJo1zaIl4BMWAl8DlIv0wfq38ptKMUS54PtfH37BK2rvEnQ89GQw+q14u31HtH74qTabQMUHHaA2i7aZPrAo0QI1go4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vB2+OPsz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7AA09C116D0;
	Tue, 24 Feb 2026 17:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771955519;
	bh=sX48mmAMpEFsVVWkSO1fWvcBpL1R4FUZWu64MSoexbg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vB2+OPsz+noR2LQLwsG+KXjrVZbTla4kbQ9BwGC8qid0eI/s9AHfPN5kXt27B3Gv/
	 wmzn9TxYvZDOmu03wkUdr1QwH7fA8EbwxUWjOwtz6XzcnI4oA9oZ03TWF7zlu1W3ps
	 5sdd+2ue9aH3g11wkChzkhMWU4nzrCwARvXFmzKNMn1zBKmz+YfEtV+Y7kcsSKPPDK
	 dAkbw2X7Z8il1aso5tMbCFrAoASpyEC0a+SBOZdO7RpbmMfnj579kyBFw7asAJQTg7
	 FNt7fXR5fVIc2O90i6I6U8DCh6FLSbOr7yR65MxXfs8WStJ+4SQTlRIHNJUbTM5aRd
	 duch+L1g1847w==
Date: Tue, 24 Feb 2026 17:51:55 +0000
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
Message-ID: <20260224-resisting-mongrel-531537974fa3@spud>
References: <20260224-arm-microchip-v2-0-8bedacd2cdcb@gmail.com>
 <20260224-recolor-hatching-e7d1b1894953@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="35unM45Y7q9JQE/+"
Content-Disposition: inline
In-Reply-To: <20260224-recolor-hatching-e7d1b1894953@spud>
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
	TAGGED_FROM(0.00)[bounces-268005-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3F45718AC29
X-Rspamd-Action: no action


--35unM45Y7q9JQE/+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 24, 2026 at 05:43:15PM +0000, Conor Dooley wrote:
> On Tue, Feb 24, 2026 at 02:46:45PM +0000, Akhila YS wrote:
> > Convert various legacy .txt bindings for Microchip (formerly Atmel) AT9=
1/SAMA
> > family system peripherals to proper YAML schemas. This includes:
> >=20
> > - CHIPID (SoC ID register block)
> > - PIT (Period Interval Timer, old style)
> > - PIT64B (64-bit Period Interval Timer, newer parts)
> > - ST (System Timer, including watchdog subnode)
> > - RAMC/SDRAMC/DDRAMC/UDDRC (SDRAM/DDR memory controller
> >=20
> > Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
> > ---
> > Changes in v2:
> > - Change email for maintainers.
> > - microchip,sam9x60-pit64b: modify compatible and clock-names in proper=
ties. =20
> > - Link to v1: https://lore.kernel.org/r/20260217-arm-microchip-v1-0-ae5=
d907e10e3@gmail.com
>=20
> Please give me a chance to respond to your messages before sending new
> versions. My comment about partial removal of the text file still
> applies. You've got to send another version anyway.

Also, you probably should have checked the what I thought was Claudiu's
email was actually correct. It's actually claudiu.beznea@tuxon.dev!

--35unM45Y7q9JQE/+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaZ3lOwAKCRB4tDGHoIJi
0uZWAQDdm5n+4n040FYRQ81PKTsN0bUxKXjq66BPzYZMhPRA2wEA/rqFijieqVtj
SlgNTzapna1TR11HDJQN/hsvlAvltw4=
=TVO/
-----END PGP SIGNATURE-----

--35unM45Y7q9JQE/+--

