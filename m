Return-Path: <devicetree+bounces-273617-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GOnIIUVGsGnFhgIAu9opvQ
	(envelope-from <devicetree+bounces-273617-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:26:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 016B9254B47
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 17:26:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAB5430C8E57
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:55:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8795B3A3821;
	Tue, 10 Mar 2026 15:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n6E2Lrr9"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E0BD39DBC6;
	Tue, 10 Mar 2026 15:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773158156; cv=none; b=uOaryOm6xx/Th8dLeSi/4cOfINUSkiUWo3UKYhz+WWROxIcLuVrw1sQujMsLlVawzO5sTZcfLFKa2+g4fc0eiVFXdfkGkdoPPeHMuWO8RmlXEkx3HnuHDlvelqLlfGjgIqbmcnYT+AyXNoeGEnATgJbSMgJXE1mXVE2kSHUxFy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773158156; c=relaxed/simple;
	bh=hi4g9/aPLBstCnOp8v6dsNDWlzGbKt5GkBSUSKH9KWI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GUlvUhkn7scjGb8VUH1UI1nBETp76nnFU98gThRzNrvBURYDf6zN28TyQ4Sv+gZva5Ou8GfKWDqR2BP9mz1uXJF6fVZyaHMfo4d+l0zc6xmAP8IIRQT/49P8DHIuBMlczIgJ4k+1UBJisMSkfoxEYakQszwBfMvhkwzBPexjMs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6E2Lrr9; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7747FC2BC86;
	Tue, 10 Mar 2026 15:55:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773158156;
	bh=hi4g9/aPLBstCnOp8v6dsNDWlzGbKt5GkBSUSKH9KWI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=n6E2Lrr9omTaZM9KLi9y373hw2pKOruHTT9DxIBG5+AUpfjQh7EnahZytO3es8Uxj
	 VyND86tXX1XfR6KZylJ/HdVhOqTKvZFIcR73tUWjxFPpQXHspmau/iAMrrcug891Y0
	 PB2RVxHivyHsjbKmV9YtlCkK8/3wCat8yO4kJPTpTW3MS90K53qQ0hqPXfia7Vat4o
	 MtgUii+HMriIMaRCwGd4PhLcomM6Kdhx+fplHiwW9B/tphUObjYQU791qAc9PktSoG
	 HsEJVazNk9MtLfZ5qNLsznaB8HJkWWxlUfv2QFYJyECMZ2YbaLh8Jx8inEwlUvy1d2
	 l9O6ALMWJ5pGA==
Date: Tue, 10 Mar 2026 15:55:51 +0000
From: Mark Brown <broonie@kernel.org>
To: Francesco Dolcini <francesco@dolcini.it>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, Max Krummenacher <max.oss.09@gmail.com>
Subject: Re: SPI loopback tests
Message-ID: <09f06ce4-0405-442b-bf3d-5722a6977a4d@sirena.org.uk>
References: <20260310133254.GA51497@francesco-nb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Z2pNUbWxG5oH6HHO"
Content-Disposition: inline
In-Reply-To: <20260310133254.GA51497@francesco-nb>
X-Cookie: A fool and his honey are soon parted.
X-Rspamd-Queue-Id: 016B9254B47
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-273617-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[broonie@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sirena.org.uk:mid]
X-Rspamd-Action: no action


--Z2pNUbWxG5oH6HHO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Mar 10, 2026 at 02:32:54PM +0100, Francesco Dolcini wrote:

> So far to test this we had some out-of-tree DT overlay abusing the spidev
> compatible, however we'd like to move away from this approach and have a
> solution that is 100% in mainline.

> Manually unbinding/binding the driver in userspace does not seems as an
> option, because there is no device node.

> One option that I could think of would be to add a new compatible that
> to describe this single wire loopback connection (something like
> `linux,spi-miso-mosi-loopback`) that would bind to the spidev driver.

> I am aware that you all DT maintainers shared in a pretty clear way your
> view on the abuse of the spidev multiple times.

> What would you be your advice to handle the need of an SPI loopback
> test? Am I missing something and there is a solution already available?

I'm not aware of any idiomatic way to deal with this with DT
unfortunately.  Perhaps the DT people have some ideas here?

--Z2pNUbWxG5oH6HHO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmmwPwcACgkQJNaLcl1U
h9Cbpwf+PfXH2MhQzFdCjkvDAW05VJFy1ywWhKEKUdXxYDI8NAHtp8Yzo4tNdix8
G2dmffdrN74rFEwcOdYmHiJiR2IRuiIb9eOjkSbyukzDWkyjBj08YdbX4z/tRErK
TQhB49T+fqlrlb9QAGaXG+KPYLl6aGG3J9NzZ0xue19u1ujOjHErjsFX1KYVcCWf
/RXMEEjEycylSdVw/hCr4bnievjZiOn/9Y1WI4z4FNI7CaYOteUtPgGpWtusvnTL
gdv3DuRgYhpAsnGoxFtz9hYMmICxpp5nGrkYElokWal2UpBO5+y/n+j7C7cRupUO
JFq1/mm9/+udB097qyhX1xLmSNS4EA==
=as0O
-----END PGP SIGNATURE-----

--Z2pNUbWxG5oH6HHO--

