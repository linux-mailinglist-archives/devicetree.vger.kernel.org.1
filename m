Return-Path: <devicetree+bounces-323067-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id MV/wErmCTmq/OAIAu9opvQ
	(envelope-from <devicetree+bounces-323067-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:02:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF040728FD6
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:02:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=g6fa3pWd;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323067-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323067-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D6453006B6A
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:02:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85EB637E2E2;
	Wed,  8 Jul 2026 17:02:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811B72E7378;
	Wed,  8 Jul 2026 17:02:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783530166; cv=none; b=AgyhBZ6UtfSEFFSUIkeewvyItkQbmHaMv0WsPwwU5vBOT/U1uEZDaFzMxXuHxcaeKyxZYaWwlQ7cs8jKbLf4ilBUrdKOyDnAD9llOmpLYYE7IkxETP8HpxKQbjtWg3CJW4qU0DdDJGMicvyaacgwTxXOawYOQRiv6qQo4234I5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783530166; c=relaxed/simple;
	bh=sEwrp/LaBE/zxNaamUzW0zBzsAUq/lOTN7jOlM5GIKU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eiihRtiF6k8UoAwQgS4JBs0rb4GN1+Ix8LY+e0MMlEAheU2FYIUH/w7uCx4/QOZIIUXezKCMBIr89/HSyINEgoA5bO1FfCCsuYC3z5lrrop2NkMTEO9Y5asKZ5IU7OgxildYRT36YG0UZDl2DPXvOM1q+9/IjnygalU3/HWh2G0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g6fa3pWd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ED481F00A3A;
	Wed,  8 Jul 2026 17:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783530162;
	bh=taTRrd8ynJiQtg1nEq8mKKLb4b0tfXhztWPfnuT6Mqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=g6fa3pWdQrqbNrNqbAyb3VdZQcDkuWY37YF/LQh5mmuh4JWCiANh37z3FMgJKlRyO
	 erwdXh05Ygq6yOW11UGw868GE3duuGvBJn5vwM8k5bC1M+o5MW5YgXTJvmv7wao0GN
	 nSaUDNrv8z3qCKiowiP9WQZQRWwILJeIMvFVFhtN5U9UHF1zV/nKDwWkOZ8ffaaC4+
	 QU+/Y4Eym+aAb0/mrbzVazGlV7qoShEORP8U+WxRtWLidjofDIOD7acqsSZYr0jy7x
	 r4QzmFaJjorL8gsG4JScAcSVraiUbgG1kfHAnQZqz+K0ZOBSv6XUDYi+sI/RipigN/
	 7RTnWhlCvRMpA==
Date: Wed, 8 Jul 2026 18:02:38 +0100
From: Conor Dooley <conor@kernel.org>
To: Robert Marko <robert.marko@sartura.hr>
Cc: nicolas.ferre@microchip.com, claudiu.beznea@tuxon.dev, robh@kernel.org,
	krzk+dt@kernel.org, broonie@kernel.org,
	alexandre.belloni@bootlin.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com, luka.perkov@sartura.hr
Subject: Re: [PATCH 3/4] spi: atmel-quadspi: add LAN969x QSPI support
Message-ID: <20260708-guide-outing-b471d0dc92c9@spud>
References: <20260708165201.624271-1-robert.marko@sartura.hr>
 <20260708165201.624271-3-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HaSM35XyRalX3Hcv"
Content-Disposition: inline
In-Reply-To: <20260708165201.624271-3-robert.marko@sartura.hr>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:robert.marko@sartura.hr,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323067-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sartura.hr:email,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CF040728FD6

--HaSM35XyRalX3Hcv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 08, 2026 at 06:51:10PM +0200, Robert Marko wrote:
> Microchip LAN969x has two QSPI controllers based on SAMA7G5 QSPI.
>=20
> It requires pad calibration, supports DMA, and supports 100 MHz operation.
>=20
> Signed-off-by: Robert Marko <robert.marko@sartura.hr>

> @@ -1708,7 +1769,10 @@ static const struct of_device_id atmel_qspi_dt_ids=
[] =3D {
>  		.compatible =3D "microchip,sama7d65-qspi",
>  		.data =3D &atmel_sama7d65_qspi_caps,
>  	},
> -
> +	{
> +		.compatible =3D "microchip,lan9691-qspi",

Where is this compatible string documented?

> +		.data =3D &atmel_lan969x_qspi_caps,
> +	},
> =20
>  	{ /* sentinel */ }
>  };
> --=20
> 2.55.0
>=20

--HaSM35XyRalX3Hcv
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak6CrgAKCRB4tDGHoIJi
0ko3AP9HSVFq5dJ+A0+8dCRDWOsvo1ptqe3CSfu1QcwdvjOn2wEA3telxRqOywsj
EwpDQ1eAtlU2IMR0ePTgoux3C0RuiQ8=
=UUHj
-----END PGP SIGNATURE-----

--HaSM35XyRalX3Hcv--

