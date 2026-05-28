Return-Path: <devicetree+bounces-303880-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CEagOW1OGGpMiwgAu9opvQ
	(envelope-from <devicetree+bounces-303880-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:17:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9685F38BD
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 16:17:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7619831F394D
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 14:09:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37BB12D97A6;
	Thu, 28 May 2026 14:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsX3XjVH"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E13278156;
	Thu, 28 May 2026 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779977395; cv=none; b=LlszQGxyGZ+T4dGfQWQ93dr+vPbOmOaxfqd106zyu16ys6mJ7UZU3BJbqWqynyPcxfAwukrAkx5t8Ro1WXKNwXxQbeAWemT/YONYrNcPTxZw86AD2P65WgRPHTojhXA2sijGHcqf/w9bJSlj+Z1kbC0oZn1V0sM0azu4AFWBG1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779977395; c=relaxed/simple;
	bh=Pr+jxz7BY35FXsRBBvKHNemKJtlVjF9l/QZ3A0n1eQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WmEvegKv/BT8zuwSn3KvFc6H/St2UdUi8TLAwZIWhfnHwXGLyVd+77LlFq694d9bz4jPRBy60kmD6eUzFQF5X8tW6kna+KiY8gv+wJjrB/o721cZPW9svVAg+4ZblGUyt7XT/MgJggZ03zri1uiUyvxDPdr6ParYyL/qsUiexhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsX3XjVH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44EAE1F000E9;
	Thu, 28 May 2026 14:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779977393;
	bh=u0uUf3f7uBNsnWsY36gNTsll6Uy0Yo12v5M+z1iDSco=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=TsX3XjVHE3tZoc6dR0sgaRdfEbz7ZgrS0yZg+pf6s7YMtCo5YuEutctv7p4JLdKdu
	 2zlp0kDxNJV2q4QVz3idkm7DS68YyyUzIfSAKsm9hSXM9R7WJYnZeKc/zyYIXMpZLv
	 XIJxEJP7Ixc3zisnBMBCVoIUprUdXqRwu2ownwXWs1d2XmRMurwQtDq5JB8JN0sryF
	 kl01OEU12npK50xn27fqachkvBUsZnrw6+4l+hV7YfJNrLppGR5oz1MYRga6EZR9hO
	 wgFJaN/acT4Xzz1fHUuoTVytYIRNbgmRWxVFCXxIoxHLrnPbNXIwyML1FzyJTJNgEq
	 L5U5LYgItd9gg==
Date: Thu, 28 May 2026 15:09:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Jonathan Cameron <jic23@kernel.org>
Cc: sashiko-reviews@lists.linux.dev,
	Piyush Patle <piyushpatle228@gmail.com>, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org
Subject: Re: [PATCH v10 04/11] dt-bindings: iio: adc: hx711: add HX710B
 support
Message-ID: <20260528-ample-ointment-3d90520304f9@spud>
References: <20260525105127.180156-5-piyushpatle228@gmail.com>
 <20260525111144.CA7E71F000E9@smtp.kernel.org>
 <20260525-clanking-possum-4ba58b466854@spud>
 <20260527184128.2f5f02e5@jic23-huawei>
 <20260528-payphone-alto-870198753d50@spud>
 <20260528140838.180844cd@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2TlNsjHs/AwiJhpQ"
Content-Disposition: inline
In-Reply-To: <20260528140838.180844cd@jic23-huawei>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.linux.dev,gmail.com,kernel.org,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-303880-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 4F9685F38BD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--2TlNsjHs/AwiJhpQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2026 at 02:08:38PM +0100, Jonathan Cameron wrote:
> On Thu, 28 May 2026 09:54:39 +0100
> Conor Dooley <conor@kernel.org> wrote:
>=20
> > On Wed, May 27, 2026 at 06:41:28PM +0100, Jonathan Cameron wrote:
> > > On Mon, 25 May 2026 18:01:41 +0100
> > > Conor Dooley <conor@kernel.org> wrote:
> > >  =20
> > > > Jonathan,
> > > >=20
> > > > Here's an example of the sort of stuff it complains about on every
> > > > iteration.
> > > >  =20
> > > Thanks. +cc linux-iio@vger.kernel.org
> > >  =20
> > > > On Mon, May 25, 2026 at 11:11:44AM +0000, sashiko-bot@kernel.org wr=
ote: =20
> > > > > Thank you for your contribution! Sashiko AI review found 2 potent=
ial issue(s) to consider:
> > > > > - [Medium] The `dvdd-supply` property is utilized by the HX710B a=
nd mentioned in the commit message, but it is not enforced as a required pr=
operty for the new compatible or included in the example. =20
> > > Yup. This stuff needs fixing.
> > >  =20
> > > > > - [Low] The `if` condition for the `avia,hx710b` compatible incor=
rectly uses `const` instead of `contains: const`, causing schema validation=
 to always fail for HX710B nodes. =20
> > >=20
> > > This one I'm not sure on. Is it right?  I tested by hacking
> > > the example to have a supply it shouldn't and the schema validation f=
ailed
> > > as expected making me think this is a false positive.
> > > I have zero natural feel for yaml so no idea :) =20
> >=20
> > It's not the common pattern, but it does work.
> > IIRC the difference between it and "contains: const: ..." is that it do=
esn't
> > apply the condition when the compatible is used as a fallback.
> >=20
> Makes sense. Given we may have fallbacks in future, it would be
> good to use contains version.

Or change it in the future when the user of the fallback arrives, since
the binding will need to be modified anyway at that point. That's why
I didn't ask for the change to be made.

--2TlNsjHs/AwiJhpQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCahhMqgAKCRB4tDGHoIJi
0sXvAP92zvcRaUiEZg0HoRTjaMrwDAi1Y8ujeXAeOozyoBzanwD+JaUUoJPDMi8d
7Y2GUDUXWWHmBFGcFVqTtFXqKAfPzwY=
=pFhj
-----END PGP SIGNATURE-----

--2TlNsjHs/AwiJhpQ--

