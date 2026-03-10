Return-Path: <devicetree+bounces-273689-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0KTPKR9fsGloigIAu9opvQ
	(envelope-from <devicetree+bounces-273689-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:12:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B28E625635A
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 19:12:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A26C03009F13
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 18:12:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B7643B6373;
	Tue, 10 Mar 2026 18:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPvYXLR5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486BF39DBE3;
	Tue, 10 Mar 2026 18:12:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773166362; cv=none; b=saQd//wRg8TeubCvIeOy/dM+9aftcsooAD2SmmqNmaLAQCs/mIyxfGaR1sLJ3faf+j76XuOtGcAV+twNiDzT/cmJL0yRHe9azevgIzHUtxg4wnzPtxWMsCCiCke8eTedqtDiTrJh8ROiJ4I+BJl7Lkf29eLqyZlxOjc77kSGO34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773166362; c=relaxed/simple;
	bh=XOYqlcCsaIl0G8bSNNRD5pDqv63/HMFFPi8Ddmj+o2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WCxOPqmfVcQY2SgRFbJrp9G2yaFLRSS3bWotYsMCTav+gENt1lvEGAP5zNMzpLTY/ArXFds5OZ2AV+ZrCV6FNAWc8c68JSEF689t0rRpPrGcNNga/nrd6wYJQNL44LZQjRmi1CdvttvEVpQYY0EibAKluRd6A+UxK2Dg0UFup88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPvYXLR5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E4D5C19423;
	Tue, 10 Mar 2026 18:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773166362;
	bh=XOYqlcCsaIl0G8bSNNRD5pDqv63/HMFFPi8Ddmj+o2A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aPvYXLR5c0Cuz/whDDp5CTM+X+j2VQ/DDIoi4v7sq7KKp4RHKWI+UZJyN64sZlQmN
	 KvALWUrv72MU19GjYxKxAJ9sOgZvOCzFWwJai5tW7P+aI9vya9o33ctNzZAxNLbDLS
	 Z8YNsZ3IadmghGoSXMnI8EF7fpRgxOtuiR3q+39j7Fri+tzYseM/jjIH3qwW7NKm7c
	 8YGfY/8+EagBpD2CM+eMe3LGlLf2AwoDWt6+eZnleW5DBUEDSfI+nYAGRkN6HO3Kb1
	 6BS2h2quwoL8KFXEkFjhFCCkLpH+j+2v+D5yHou06gg+LnwAwNPsFOxdNESG9guYnu
	 adXQra1jJIASg==
Date: Tue, 10 Mar 2026 18:12:38 +0000
From: Conor Dooley <conor@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, Max Krummenacher <max.oss.09@gmail.com>
Subject: Re: SPI loopback tests
Message-ID: <20260310-marlin-untoasted-ecca1e3e80e8@spud>
References: <20260310133254.GA51497@francesco-nb>
 <09f06ce4-0405-442b-bf3d-5722a6977a4d@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8tzOIo09d+FWgqBq"
Content-Disposition: inline
In-Reply-To: <09f06ce4-0405-442b-bf3d-5722a6977a4d@sirena.org.uk>
X-Rspamd-Queue-Id: B28E625635A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[dolcini.it,kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-273689-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


--8tzOIo09d+FWgqBq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2026 at 03:55:51PM +0000, Mark Brown wrote:
> On Tue, Mar 10, 2026 at 02:32:54PM +0100, Francesco Dolcini wrote:
>=20
> > So far to test this we had some out-of-tree DT overlay abusing the spid=
ev
> > compatible, however we'd like to move away from this approach and have a
> > solution that is 100% in mainline.
>=20
> > Manually unbinding/binding the driver in userspace does not seems as an
> > option, because there is no device node.
>=20
> > One option that I could think of would be to add a new compatible that
> > to describe this single wire loopback connection (something like
> > `linux,spi-miso-mosi-loopback`) that would bind to the spidev driver.
>=20
> > I am aware that you all DT maintainers shared in a pretty clear way your
> > view on the abuse of the spidev multiple times.
>=20
> > What would you be your advice to handle the need of an SPI loopback
> > test? Am I missing something and there is a solution already available?
>=20
> I'm not aware of any idiomatic way to deal with this with DT
> unfortunately.  Perhaps the DT people have some ideas here?

I dunno, the suggestion seems fairly reasonable to me. I don't think
it's really abuse of anything, because the compatible would represent a
real hardware configuration. The only think that feels "abusive" is the
fake reg property you'd need.

Not sure that there should be a "linux," vendor prefix though, there's
nothing linux-specific about doing loopback. Probably should be
vendor-less?



--8tzOIo09d+FWgqBq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabBfFgAKCRB4tDGHoIJi
0us4AQDberWiHL/wYl4n07XAHYvXzM/NpzH84fuZ9slgBaUMngD/QcRRnRYvRrHB
LCITRjOyynyFDnicPDkz9e69LTpx6wk=
=3HAS
-----END PGP SIGNATURE-----

--8tzOIo09d+FWgqBq--

