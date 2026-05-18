Return-Path: <devicetree+bounces-299353-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CRYGdABC2qJ/QQAu9opvQ
	(envelope-from <devicetree+bounces-299353-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:10:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BAC56C4FB
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 14:10:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C337C304C6A7
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 11:55:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DA53F5BCA;
	Mon, 18 May 2026 11:55:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from leonov.paulk.fr (leonov.paulk.fr [185.233.101.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B79613F8899;
	Mon, 18 May 2026 11:55:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.233.101.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779105308; cv=none; b=dPc+UphNqqKT4AUVS4CH4G40VsJDwacJAOmgWaVTrGs9Li/7Jil5j+wOz4YDvzJJ6ZJl+77Yv1Lxd8YwH6LUbemLhVArQNaNluyuzQGhC1U0mbL2ihNwHA9YAoQm5Jfv2WCwTwPAxWmxVEBGch72W3AqjmUBicreH0waJk5vEyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779105308; c=relaxed/simple;
	bh=kAGzXERG5oNLhxVSrG85EZvGLqcUwrFCSavy/o5fVaQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSZRW2d8JyRicarRCqb7vU42HBZF9b83Y83HpvDTCjzg02XBcqYHljTVj0IBQOZanYMkSHJztAsVZgFeucPfRbwuZ94PdpjIbSsVH51mjprMOfbesQef5U6GdYD/k1mcktldhofnzJF2ooM9WHH3s8FGbYpKGo7YYBIIV0u8ZdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io; spf=pass smtp.mailfrom=sys-base.io; arc=none smtp.client-ip=185.233.101.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sys-base.io
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sys-base.io
Received: from laika.paulk.fr (12.234.24.109.rev.sfr.net [109.24.234.12])
	by leonov.paulk.fr (Postfix) with ESMTPS id C2BEC1F80041;
	Mon, 18 May 2026 11:55:02 +0000 (UTC)
Received: by laika.paulk.fr (Postfix, from userid 65534)
	id A5850B407F5; Mon, 18 May 2026 11:55:01 +0000 (UTC)
X-Spam-Level: 
Received: from collins (unknown [192.168.1.1])
	by laika.paulk.fr (Postfix) with ESMTPSA id 10335B407F1;
	Mon, 18 May 2026 11:54:57 +0000 (UTC)
Date: Mon, 18 May 2026 13:54:55 +0200
From: Paul Kocialkowski <paulk@sys-base.io>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>
Cc: Andre Przywara <andre.przywara@arm.com>, linux-sunxi@lists.linux.dev,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@kernel.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: allwinner: A133: add support for
 Baijie Helper A133 board
Message-ID: <agr-D2UD0Dr1dLLn@collins>
References: <20260510201644.4143710-1-alexander.sverdlin@gmail.com>
 <20260510201644.4143710-4-alexander.sverdlin@gmail.com>
 <2306dd3c-6362-40ee-8d9f-77f89be3a502@arm.com>
 <14a7e289ff5ffed8fcd6dcb9b2e8455a1b2c9420.camel@gmail.com>
 <256b1cd8-b143-4f71-91cc-8513be04ce4c@arm.com>
 <6d8659f393e0bb4f0805107a17e306422982247c.camel@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yKavoZ/1HsL3ubxV"
Content-Disposition: inline
In-Reply-To: <6d8659f393e0bb4f0805107a17e306422982247c.camel@gmail.com>
X-Rspamd-Queue-Id: 67BAC56C4FB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.56 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299353-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[arm.com,lists.linux.dev,kernel.org,gmail.com,sholland.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sys-base.io];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[paulk@sys-base.io,devicetree@vger.kernel.org];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action


--yKavoZ/1HsL3ubxV
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Alexander,

Le Mon 18 May 26, 13:29, Alexander Sverdlin a =C3=A9crit :
> Hi Andre,
>=20
> On Mon, 2026-05-18 at 13:16 +0200, Andre Przywara wrote:
> > > > And anyway, I see a *dual* USB-A socket on the pictures online, in
> > > > addition to the USB-OTG port. So where does the third USB come from=
? The
> > > > A133 only supports one host USB port plus the one OTG port. So is t=
here
> > > > an USB hub chip on the board?
> > >=20
> > > There are two hubs, one on each usbphy. OTG side hub is even bus-powe=
red,
> >=20
> > What do you mean with OTG side hub, exactly? Is there a hub on USB0? Ho=
w=20
> > does this work, then?
>=20
> the upstream port of this hub is wired to the USB-C connector, one port h=
as
> CH340E USB-UART on it for the console, the other port goes to the SoC usb=
phy 0.
> So it would be "peripheral" only, I suppose.

Yes like I explained in my other email there used to be a USB0 ID pin in
earlier revisions of the board but it was reassigned and USB0 is now
sitting behind the hub so it should be peripheral only.

All the best,

Paul

--=20
Paul Kocialkowski,

Independent contractor - sys-base - https://www.sys-base.io/
Free software developer - https://www.paulk.fr/

Expert in multimedia, graphics and embedded hardware support with Linux.

--yKavoZ/1HsL3ubxV
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEEAbcMXZQMtj1fphLChP3B6o/ulQwFAmoK/g4ACgkQhP3B6o/u
lQwT1w//dOWaOoXIX7oAskSSD4md2jxdMx8mlt4NJhi+iEBVB1ygE6+YmG+Q94LB
awQBs/znsdHynNvV/5p7s5+yn3KPbERnXWh/FPh3XW8BoZCAFcwsRC/mgJM+v/89
GsSlcHBXo0X8+ieoMeKizDXQpOCrOCQVtZAqW9w1/yJ5Fs5YdcOM4K11ox69nZug
cNYtCIPqW6QBvRpRYDjYlqQA7L3r4aBilDeuwQ5PAaV9kkGhzjYhNyUqTdbaV1nb
NoWdBq2L4UMn1SMX9sYUakANYpE1RmX07mZk/NQVRsU9Jh05lPTUUvPZlekx42cL
mpV/LIAa1ektsktLQWkjRKK4+uTv80zWxumYb0ZSNUTJ6tP2B0juUeZ7dN0TNBmp
aPv9rbxhD62c3KLDIKMgh9rysJrPiXejpxia+EbaNxEccwvDjKSUwYekexxKWNCp
zWG/PDi4rjcvOMjleICe8P/nvB6RfOtoNDXP4Q8J8cnEHtJUBb24npppd17scOjP
MQBhoREcq615+/ktmsjsf+xRbTwNTKqKjsY1qf1RUfsniWhuTjkP+5cl7EsVHHIf
ChkTtyYKx2BMm5BWuoJ/lsAreGo/ti9QjcgsFWv986RhGGxRL9/g/Q3+FSj22LTA
7SN83I5GsknORm5KcJQ+bI94J3KaKy3hSJJwTQYOswZXJcmRoTg=
=Wukm
-----END PGP SIGNATURE-----

--yKavoZ/1HsL3ubxV--

