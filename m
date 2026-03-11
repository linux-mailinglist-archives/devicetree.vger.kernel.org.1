Return-Path: <devicetree+bounces-274139-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Cb7B6N2sWnovQIAu9opvQ
	(envelope-from <devicetree+bounces-274139-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:05:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DE52650C2
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:05:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 931AE3066C69
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:58:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3538F2C326F;
	Wed, 11 Mar 2026 13:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G41vzyuU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 115D1283FC5;
	Wed, 11 Mar 2026 13:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773237515; cv=none; b=Pln6PkRDkEF5hg6eyLNMs7jRl+E9Z647eR625/ZnI63R920yYB19BtvTy6MU0fF3AJOx3Ler8KjUkfCuaOoMczTA+v6+jN27G68mqS0EFW7ZkccS7KqTLEalKqv0Q1q62LMUHzocpofkER0Bu0UjYIEoP5amy8jf/QOOyEVSuec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773237515; c=relaxed/simple;
	bh=n+XsEJ3qtcLHmGVADy/S1nk9K5MR5SF9zKoLLmndhj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6/eXQhWY40aG+nZoY/h5gwThjxCJdJlTZiSoYGNCJwQN3EGCQIb6iqo/yEgUkIacBa+wOBMw8oaZ5eTB629E9u7bgjFvdGibWscE9XhN8QNpb1xZfiTabSyZEzzk1T78w/rYpWsb3SjIE5iLSy1d32WYqsXeR6qIol5HlGBDog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G41vzyuU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47C1BC4CEF7;
	Wed, 11 Mar 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773237514;
	bh=n+XsEJ3qtcLHmGVADy/S1nk9K5MR5SF9zKoLLmndhj4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G41vzyuU7T1lUjOZkde6kuX3PThY/FOchHHMgxujCvF3w35v3oSoFvidbS1P1DXZG
	 leIqffDVh1XVUpQrMO4yRT2XV072qPSkOPSFoc+RweXQ5eWPXDZUoQw89V0uxs3Okf
	 yxoqyk/zfgmBO7cpK6uv2ej69woFKiDy1mE1GH1INHeekUxtQBDeJUIum4+nMhvGLE
	 ipxPfy+tArTxkE7DAj55khcSnwSfSBs0vtphHxtnycwWvntzq7nUk2j+j0lhPqOIpa
	 AtQghlM5+uu9SNM35I/0HG+teRhqkHBh0cyzk31RSCV1lzsFRnbZznmBbhfT5V5Wwx
	 QipfsZX0tRXDw==
Date: Wed, 11 Mar 2026 13:58:30 +0000
From: Conor Dooley <conor@kernel.org>
To: Mark Brown <broonie@kernel.org>
Cc: Francesco Dolcini <francesco@dolcini.it>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, Max Krummenacher <max.oss.09@gmail.com>
Subject: Re: SPI loopback tests
Message-ID: <20260311-stylus-matron-c118c0ff139c@spud>
References: <20260310133254.GA51497@francesco-nb>
 <09f06ce4-0405-442b-bf3d-5722a6977a4d@sirena.org.uk>
 <20260310-marlin-untoasted-ecca1e3e80e8@spud>
 <f35c50cc-741c-407d-97e5-81c62fcc15e7@sirena.org.uk>
 <20260311-passably-pampered-314ea21b9f1f@spud>
 <8ba0f016-85ed-4c65-8020-04e39c222ea8@sirena.org.uk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VorsIATlZRmJKVn+"
Content-Disposition: inline
In-Reply-To: <8ba0f016-85ed-4c65-8020-04e39c222ea8@sirena.org.uk>
X-Rspamd-Queue-Id: 13DE52650C2
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
	TAGGED_FROM(0.00)[bounces-274139-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action


--VorsIATlZRmJKVn+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 11, 2026 at 11:16:07AM +0000, Mark Brown wrote:
> On Wed, Mar 11, 2026 at 10:10:56AM +0000, Conor Dooley wrote:
> > On Tue, Mar 10, 2026 at 06:26:45PM +0000, Mark Brown wrote:
> > > On Tue, Mar 10, 2026 at 06:12:38PM +0000, Conor Dooley wrote:
>=20
> > > > Not sure that there should be a "linux," vendor prefix though, ther=
e's
> > > > nothing linux-specific about doing loopback. Probably should be
> > > > vendor-less?
>=20
> > > I think at this point it's old enough that it's just ABI and adding t=
he
> > > option of having it vendorless would just cause people to ask why.
>=20
> > I'm not sure what you mean by "it's old enough", as this proposed loopb=
ack
> > compatible is new, right? Don't think this is any different to i2c-mux
> > or regulator-fixed etc etc. Unless you thought that I was saying that
> > "spidev" should be a compatible? Definitely was not suggesting that!
>=20
> It sounded like you were suggesting using spidev, yes.

Ah ye no, not at all. Francesco suggested using "linux,spi-miso-mosi-loopba=
ck"
and it was that I think the "linux," should be culled from.

--VorsIATlZRmJKVn+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabF1AwAKCRB4tDGHoIJi
0sXfAP9MVh1tnLEjlllaOXB0513mABPdmgVfJbAvUUPg9EUCGwD+J90gykQn/ZJt
1PuNPfJguUtsjPz9CddGULbXDN4bjgA=
=aFZ1
-----END PGP SIGNATURE-----

--VorsIATlZRmJKVn+--

