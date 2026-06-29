Return-Path: <devicetree+bounces-317294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Xj7VAdDgQmqHGQoAu9opvQ
	(envelope-from <devicetree+bounces-317294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 23:17:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 667156DED58
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 23:17:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=n9JV+goi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317294-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-317294-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DE99A300FB76
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 21:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39093BBFC4;
	Mon, 29 Jun 2026 21:15:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26D23AA1B5;
	Mon, 29 Jun 2026 21:15:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782767734; cv=none; b=mLUvnn8o94ph2euqfa5Z91JV57fIXqePAcfjXgwFdCZzBcP5ykJPACwWUANFmDC0mEhco9XP5BwLTu3QztIoZXYJj0LNCSFLHAqM86FM8S3Aag0njKehJJlBzBrNCWi1llstZLk8Z5Rtr1uscdRANF1ca9UIt3WOmFJx/yBJVDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782767734; c=relaxed/simple;
	bh=X+XMBC/vShaVFhq8aSDG+oh8TCOzSNunKlCNdohz9qg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aXir8FiUlfUUh5IiixoyEvcQ4fU7ESRyaeU7d1kJgj0suPjwTz0ioufZMZXwjYRPdEpm7KzKz3yS50436bMjfbpBrllq88TwwfCv4xud0pOjBa4h9fFkwFbqqaTysgLWrhAJ2TZ6jH7jqipm0OmIUil/7zumQyJUNvWwKQLx2vo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9JV+goi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63BB31F000E9;
	Mon, 29 Jun 2026 21:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782767733;
	bh=+m4p66WTB7gHWQysEDffoy7y+RG5gkETC08wlziH51U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=n9JV+goi8EEGPZfF+NHoq0JxyUazEs2RAGntbdPhfTH0nz2MXsQUlhq/GZfg+Mf+d
	 OLXSvKKAO29jpv20TuRmbUx8sLkJso7hZHYhfg+fMMhMiu2maZhwmcEvrldXoLFRm/
	 wpiARQN7/jXNJP0iYTa/aSxG1zLd9XZACTNT5P/nFRTMyaclbiyqRa83zZDC+lc8yE
	 ZT2YBDCYcDYRLqsQVdVwgMaBi9tuZ0MJ0x57FaUDz1YPHx9K7eXagG16Mg/wdyNgQR
	 KX+iklSnpUKxjDbrAwBCTqh4QBti8QWLn0j2Wcwc0kEpkqq73gyNJjoYGl5zhNkAH7
	 /HrS/QvYIl4uA==
Date: Mon, 29 Jun 2026 22:15:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Cc: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: bluetooth: broadcom: add BCM43752
Message-ID: <20260629-cope-hazing-0523f9387b0b@spud>
References: <20260628095500.29810-1-hugo@whynothugo.nl>
 <20260628095500.29810-2-hugo@whynothugo.nl>
 <20260628-shakable-spooky-e75e410f20f5@spud>
 <91619a5a-602d-4650-99d0-326971f5e5e6@app.fastmail.com>
 <20260629-handwork-retract-224b150e5969@spud>
 <4fbe561f-bde2-44a8-8198-6a0a179f62f3@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yOMtjsx1eLQleTYb"
Content-Disposition: inline
In-Reply-To: <4fbe561f-bde2-44a8-8198-6a0a179f62f3@app.fastmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317294-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hugo@whynothugo.nl,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[holtmann.org,gmail.com,kernel.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,whynothugo.nl:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 667156DED58

--yOMtjsx1eLQleTYb
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 06:57:17PM +0200, Hugo Osvaldo Barrera wrote:
>=20
>=20
> On Mon, 29 Jun 2026, at 14:04, Conor Dooley wrote:
> > On Mon, Jun 29, 2026 at 01:32:18PM +0200, Hugo Osvaldo Barrera wrote:
> >>=20
> >>=20
> >> On Sun, 28 Jun 2026, at 21:17, Conor Dooley wrote:
> >> > On Sun, Jun 28, 2026 at 11:55:00AM +0200, Hugo Osvaldo Barrera wrote:
> >> >> Document the compatible string for BCM43752.
> >> >>=20
> >> >> Signed-off-by: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
> >> >> ---
> >> >>  .../devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml        |=
 1 +
> >> >>  1 file changed, 1 insertion(+)
> >> >>=20
> >> >> diff --git a/Documentation/devicetree/bindings/net/bluetooth/brcm,b=
luetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/brcm,blueto=
oth.yaml
> >> >> index 95501e858e6f..04e8a968548d 100644
> >> >> --- a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetoot=
h.yaml
> >> >> +++ b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetoot=
h.yaml
> >> >> @@ -29,6 +29,7 @@ properties:
> >> >>            - brcm,bcm43438-bt
> >> >>            - brcm,bcm4345c5
> >> >>            - brcm,bcm43540-bt
> >> >> +          - brcm,bcm43752-bt
> >> >
> >> > This new compatible uses no match data. Why is a fallback compatible=
 not
> >> > suitable?
> >> >
> >>=20
> >> I wasn't aware that this was the preferred approach.
> >>=20
> >> I used `compatible =3D "brcm,bcm43752-bt", "brcm,bcm43430a0-bt";`
> >> in my DT and Bluetooth works equally well. Both of these patches
> >> can be ignored, thanks for the review.
> >
> > You still need to add a binding patch to document the new compatible,
> > just it will permit the fallback.
> >
>=20
> Right, CHECK_DTBS=3Dy fails without that change.
> So the second patch (which changes brcm,bluetooth.yaml) should be merged,
> but not the other one is unnecessary and can be ignored.
>=20
> I don't need to re-submit the second path independently, it's fine to
> just merge one patch and ignore the other, right?

You need to submit a v2 of this patch, because the compatible setup you
tested and pasted above is not permitted by the current binding. The
driver patch becomes redundant.

Thanks,
Conor

--yOMtjsx1eLQleTYb
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakLgcQAKCRB4tDGHoIJi
0haLAQDxE6W530xBmCt+XkFIP9k/p8bxZBCoz0AIwCIw9TrcFQEA3xp8Ts7odrk3
8ocgi7u9lxTS2Cm4RQ6xT3guQPSKtw0=
=RiM1
-----END PGP SIGNATURE-----

--yOMtjsx1eLQleTYb--

