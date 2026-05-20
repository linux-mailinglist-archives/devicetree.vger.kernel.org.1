Return-Path: <devicetree+bounces-300616-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wJx7CUeqDWox1QUAu9opvQ
	(envelope-from <devicetree+bounces-300616-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:34:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 90BA458DC32
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F22F2306118A
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD2624E4A1;
	Wed, 20 May 2026 12:30:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fiVmyEM5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B3303DBD5C;
	Wed, 20 May 2026 12:30:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779280221; cv=none; b=oy53FcFBBtEtIvwopXVUmQ1RmgufmBralHya/ELK0iapJxnVQc4Z/chxSYFiWOQxiwHj4/cK6d1ouAEcP3Km3NUAbH228/TwzKPTRtD+jON1pC4035xchSYVxwWO1miENuMbLqmH9lnsl727X1LC0MkoIcmBw6A5QMy4q8tzgoU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779280221; c=relaxed/simple;
	bh=FTaRA2YjGl2K1/xslVnikdDeu3hE9dGxjLe/neN56D4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iUeTlpxDoYEuzt6zsc6gxOwYxvgcA8I+521/u0O8FpD4eCi1frIKHFMfunmd8b0wUmwfjknnVEYL16dnyiGJ2jC0K2jIWkNwTjZgZJNmRrW/pYYuTDwHQtSfNUEjR4s49Hsa7n9JIRMMjKxIwdu7i/DYWTLeu8fcUi1yvvD2pNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fiVmyEM5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 152661F000E9;
	Wed, 20 May 2026 12:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779280219;
	bh=t1MVIZyDYSn4EA+qs4g0ehxcOyCqZliMlPiFzAgsY7I=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fiVmyEM5x1LJLJ5DXOurWWtA9O6gkFLDswvqHbkK7YAso6Qvi1TXmm9ksbX+dsnFQ
	 bbUhFBQGXzrdzqv63e+wCGUiRwVFFVmik4FUA3FVLoe2FlLu8gPAM5G33HmlbOZcWY
	 p1S10t6Nu+tUOn8ydRoZH3d6PTm1GvbzupVcjAI7n3Ayx9FbwjXWLhiWNIR/BJGx7L
	 tE2vcKidVP5hz9nw70ZSzRnO1gtRsQTuzSsTxGKEVzAPXqXBxowQwiUOR+MjMYjWaV
	 Myai5jbN55S6u/bIBaagTQeppzcEOqQDobpBsavf0otlsOyQhU7XkJ+f4gikSHBwPC
	 m3yc+D04aoLdw==
Date: Wed, 20 May 2026 13:30:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jisheng Zhang <jszhang@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] spi: dt-bindings: cdns,xspi: add sdma-io-width
Message-ID: <de325dba-0b82-4808-910b-68f0f6426c5f@sirena.org.uk>
References: <20260511031732.3199-1-jszhang@kernel.org>
 <20260511031732.3199-2-jszhang@kernel.org>
 <20260515-expert-devious-cricket-faff56@quoll>
 <agz0kDsQBaeQPPQ4@xhacker>
 <21d30826-bfe6-44cd-8c89-c1986f539e48@kernel.org>
 <ag2fjCX0DuSVxubv@xhacker>
 <14719378-7bf5-4688-81e9-bccedf618d18@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="nSgqLWzClL9/i+0W"
Content-Disposition: inline
In-Reply-To: <14719378-7bf5-4688-81e9-bccedf618d18@kernel.org>
X-Cookie: Natural laws have no pity.
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300616-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Queue-Id: 90BA458DC32
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--nSgqLWzClL9/i+0W
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 20, 2026 at 02:16:21PM +0200, Krzysztof Kozlowski wrote:
> On 20/05/2026 13:48, Jisheng Zhang wrote:

> > If you mean "Why this cannot be deduced from the compatible?", I think
> > the slave dma port is part of the cdns xspi, so its io width belongs
> > to xSPI device property.
> > From another side, we have seen such property in other drivers such as
> > the reg-io-width for the dw spi DW_SPI_DR port io width.

> So you mean it depends on SPI device? Then why spi-peripheral-props is
> not applicable here?

That will be controller side, not device side.

> If this is not bus width, but DMA-something, is not really then SPI
> device dependent, but rather DMA controller limitation, so either
> deducible from compatible or something else is missing here.

My understanding is that this is a connection between the SPI and DMA
controllers so it's not as obvious as it could be which side of that
link should have the property, eg:

  https://www.cadence.com/content/dam/cadence-www/global/en_US/documents/tools/silicon-solutions/design-ip/controller-ip-qspi.pdf

shows a separate direct connection between the DMA controller and the
xSPI controller, the DMA controller isn't interacting with registers on
the CPU visible buses.  The width is probably a design time configurable
option on both sides of the link.

--nSgqLWzClL9/i+0W
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmoNqVYACgkQJNaLcl1U
h9Ao/Af+PSsl/Li7lNbMEuFf+phKcwklDPCIDBA8LerfGeFmFPiFG9+J2qEqNrRZ
CQ4tZTQ64Ap0s+PcYWRhelQZ3Id5ZqRj1HE/9Pq9IxGoMm9aDX0jrPJiaTFm+6xi
QQehe8LTcCD2VNbTywyqFmLOvlyvT/ujNTCkjHl9JQefSYqun1wYqPYO59qfbXKo
1lS8G5lkDcgOUaHGL1L1n59TAi9DJ1TjRICHCnHLNt+ch0hmscRAehF4H9OjPvo3
PU07o1lAqV4U2IOduCtajjiQdmlCD8knuWasSwuarE7xPRiMPD/8BonDRRGFqmPK
8n0s0D8nwmWbbnmoI9j7DRxx8T141g==
=Fgg2
-----END PGP SIGNATURE-----

--nSgqLWzClL9/i+0W--

