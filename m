Return-Path: <devicetree+bounces-306694-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PKIDNQ46IWqtBQEAu9opvQ
	(envelope-from <devicetree+bounces-306694-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:40:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7458963E0F7
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 10:40:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JFP86ilL;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306694-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-306694-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CBE13307DFE0
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 08:37:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 662043D812A;
	Thu,  4 Jun 2026 08:36:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499793D7D98;
	Thu,  4 Jun 2026 08:36:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780562216; cv=none; b=ZiUOMUbbfk9aRhb474uWBm7OPOT0DeZAHl+jgFmonlETeTSnatn8VVG9bYIJSoi/q+U1ARicpabb/ZqnP2vVTuzVb2p40SKodzlPhqZk4rDoWNcO2G3OtE1mIqBN1Qkdkpm73+62W/R5vpcd9NGiLXaXEd19tMUyf86HZbWEydk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780562216; c=relaxed/simple;
	bh=+KBwoOcDHJ/gKB5QNN8WBfHE175dP+I++e/xL05rNAk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OY9//KnAQYiZP1URgvyJGsGgJ9cx+Cgcc2HQkRy1b2b29bD5zPAcH11/BYsfpfs/QVN0fjEqtPncVQaAk+u7ybGuL9FMsWl/xeUVDvvfaFxef3OAyJTPmFDuhuWyjpYvh9s58JmJYQL1xSm/pkokJ+di8Z2mkPXFH8Kb4tnuMOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFP86ilL; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF7AB1F00893;
	Thu,  4 Jun 2026 08:36:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780562215;
	bh=+KBwoOcDHJ/gKB5QNN8WBfHE175dP+I++e/xL05rNAk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=JFP86ilLCCHzhJlqAKq/rUnRl1SFMEP5JZc+9kfbd0g5Yyrj19XwaIgaXEo4lNSon
	 KEC0GHXJ66zJqXcab7/+19KIRifpwdxz/H/PLecO5y8ITPQBOJNf9F0lpc/TJ0xBrE
	 2cQ9czqdmbN22/cC0Gtgt4ESBNsKcwak6Bp+huArDvhLcA76DrGPY82vjZy6ppj0qk
	 MsKrXRNoMt7NYYudcD+4oV7ZtgZJF6JhPcUXduUHfIY6YtyDkIrp/Ezwgl86Uh0cgo
	 R8ok/WBhqGzgaN6TcCvGv1Q+gc3IcyZCxPTmM5EUGKi8133ww+tf0JOvR3J39CUzY6
	 5ylbvc9KAvvYw==
Date: Thu, 4 Jun 2026 09:36:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Miquel Raynal <miquel.raynal@bootlin.com>
Cc: Santhosh Kumar K <s-k6@ti.com>, broonie@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, richard@nod.at,
	vigneshr@ti.com, pratyush@kernel.org, mwalle@kernel.org,
	takahiro.kuwano@infineon.com, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org, praneeth@ti.com, u-kumar1@ti.com,
	a-dutta@ti.com
Subject: Re: [PATCH v3 01/13] spi: dt-bindings: allow spi-max-frequency to
 specify a frequency pair
Message-ID: <20260604-shrunk-acclaim-25368d7ad63e@spud>
References: <20260527175527.2247679-2-s-k6@ti.com>
 <20260528-clergyman-kindling-20971775ba78@spud>
 <eaa75113-2b89-468d-aca8-932bc7e33a7d@ti.com>
 <87cxy92llq.fsf@bootlin.com>
 <20260602-aptly-bunkbed-1bd3a8d63d54@spud>
 <875x3zzkji.fsf@bootlin.com>
 <20260603-neatly-twine-e89b923f5cb6@spud>
 <87o6hry4d4.fsf@bootlin.com>
 <20260603-balance-encounter-94f69e1577f3@spud>
 <87ik7yydyv.fsf@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="I/LOsxQxq90rgY8F"
Content-Disposition: inline
In-Reply-To: <87ik7yydyv.fsf@bootlin.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306694-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7458963E0F7


--I/LOsxQxq90rgY8F
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 04, 2026 at 09:14:16AM +0200, Miquel Raynal wrote:
> Hi Conor,
>=20
> >> >> > Right, and this I guess is what scuppers letting the controller d=
river
> >> >> > sort the configuration out itself and leaving the property as-is.
> >> >> > It could be that the speed in spi-max-frequency is lower than the=
 "base
> >> >> > speed" of the controller but because of board routing or device
> >> >> > capability that the tuned mode is still required, right?
> >> >>=20
> >> >> I do not actually expect any tuned mode/frequency to be mandatory.
> >> >
> >> > I think you misunderstood my use of "required", I meant that the new
> >> > property/information was needed in the scenario I described, not tha=
t it
> >> > should be a required property in a binding.
> >>=20
> >> Yes I misunderstood the term indeed. However I still fail to catch what
> >> you meant here, I'm sorry. Would you mind rephrasing?
> >
> > I was talking about a scenario where you want to use the tuned mode to
> > achieve the maximum rate because of the device and/or board configurati=
on,
> > but the rate is below the point where the controller would need tuning.
> > Say the controller needs tuning above 8 Hz but the conditions require
> > tuning to achieve more than 5 Hz. In this example, if the device can do
> > 6 Hz, spi-max-frequency (in the current form) would be set to 6 Hz, and
> > the controller would not enable the tuned mode, leading to problems
> > because the inflection point determined from the controller compatible
> > of 8 Hz would not have been reached.
>=20
> I don't think this is a real situation. If the "conditions", as you say
> (ie. PCB routing, mostly) require tuning above 5, then spi-max-frequency
> should be 5.

Then tuning mode would never be used. Remember, this is a theoretical world
where spi-max-frequency would contain the tuned frequency and the
controller was using compatible-specific speed thresholds to determine
if tuning was required.

> It is the frequency that is reachable without any
> tuning. Tuning is just a plus. If tuning fails, we fallback to the
> regular "base" speed, which just works.
>=20
> Thanks,
> Miqu=E8l

--I/LOsxQxq90rgY8F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiE5IQAKCRB4tDGHoIJi
0vh1AP4hwOVyHbur7c1ahOyaxI1idZEZt+yStGb1CnSi+78HSAEA5OgLzntrwzuS
46xL3MdoZvkkFkrRs+kEEXgrTZygVQU=
=RuuS
-----END PGP SIGNATURE-----

--I/LOsxQxq90rgY8F--

