Return-Path: <devicetree+bounces-326358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U498J9RoVmoe5AAAu9opvQ
	(envelope-from <devicetree+bounces-326358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:50:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E52C757150
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 18:50:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fJAq7gOS;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326358-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326358-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2E77311186D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 16:49:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA772E228D;
	Tue, 14 Jul 2026 16:49:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF00447DD49;
	Tue, 14 Jul 2026 16:49:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784047752; cv=none; b=ZJdw9YWRgAvko+LAM0uYWzoxOFBKaJ3lxL7ec+fOUd9v3kTn0/cN/uDEJ8XtYxwPVg0GojRT7cbi0EjflXV7eD80DLsH7tQsP230z9UopAQYipm5tFBDLcCj80Ub7cpYaibg/vYDswgWVBZ2f3h1MPuKbQR2c2L1KnESier42sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784047752; c=relaxed/simple;
	bh=+LKbcbSEuIWXwsvBUzqjvqiQNouSRRLre4U1q/maT2U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a6RCaCPen0m2EQk1EJduDjy3nBMLaVo12kS2wGFvdtjxf0VyWlDPOiG3Mxq7H9SJ+xvbLA0T15Fngs5UrUk7O43ByvTWN+P+fo8brYKiIvgoUOb/gyTtwInH3dN76rpAxhIiDRqQEN5N0YkP/ODeCRT8pMxW0pYOE+eL7cLToHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJAq7gOS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6AA721F000E9;
	Tue, 14 Jul 2026 16:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784047751;
	bh=72v/IFJJ9WilRJ+faKTcY0phhK/k/tq113OmFbUCo7M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fJAq7gOSlHZU328jqwSVouJiLTPHiF0SltxyVgNhhZWdkorHsT15XHUabHEfj4O5V
	 tORU8MZCEmTOSc1WNzR0advbpl5n2NsPxqBlbroJ4bQu4aS8PnN8O0Yn8Vu8ii0wvv
	 QFbyFuTXz6pA+UBvfjun7488x9Fo85X37hbIUIwW9YabPMkjwjfTscry1faBLNw+j7
	 KW2Sy0edNvgQooKa710AZ/HIwKlGq/T4dsXinBuurlesgaVWskdONgIA7bUOHNe5GS
	 /WI6R2+NJfI2LTOg0WMNMiMrfxGLQ6Qy2wEJO2pUghjhvy6Nn6OLYazxLQWwoJi1Ey
	 2pE7BZ4xSkNIg==
Date: Tue, 14 Jul 2026 17:49:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Lukas <lukas.metz@gmx.net>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: dac: Add DAC8163
Message-ID: <20260714-unweave-pointed-ef9c6c02a053@spud>
References: <20260708-dac8163-work-v2-0-3acd1bf20182@gmx.net>
 <20260708-dac8163-work-v2-1-3acd1bf20182@gmx.net>
 <20260708-spotty-spectacle-f270b4c66d18@spud>
 <alZPZuAQfiROz8kf@berta-MS-7693>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0feAM5YEw7Se1lwn"
Content-Disposition: inline
In-Reply-To: <alZPZuAQfiROz8kf@berta-MS-7693>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-326358-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmx.net];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:lukas.metz@gmx.net,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0E52C757150

--0feAM5YEw7Se1lwn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 14, 2026 at 05:01:58PM +0200, Lukas wrote:
> On Wed, Jul 08, 2026 at 05:37:44PM +0100, Conor Dooley wrote:
> > > +  clr-gpios:
> > > +    description:
> > > +      The device registers are reset when this pin is asserted. The =
output is
> > > +      set to zero (xxx2 devices) or mid-scale (xxx3 devices).
> > > +    maxItems: 1
> > > +
> >=20
> > Sounds like this should be reset-gpios?
> >=20
>=20
> Thanks for pointing this out. The description is actually wrong. The
> datasheet says: "On activation of CLR, zero scale (DACxx62) or=20
> mid-scale (DACxx63) is loaded to all input and DAC registers".
> That means other registers are unaffected. I will update the description
> but the clr-gpios is correct in this case i guess?

Sounds about right.

--0feAM5YEw7Se1lwn
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCalZogAAKCRB4tDGHoIJi
0v07AQCwPLzKcG9LMeBGOoFfz7wkfBkhQnzbXhPbZh5vui2MgQD/UpfA5DI+axsK
CMynLtGrzgtXKZd+Kri3UMir5tJOegs=
=5c2G
-----END PGP SIGNATURE-----

--0feAM5YEw7Se1lwn--

