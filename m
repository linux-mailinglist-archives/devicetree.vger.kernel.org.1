Return-Path: <devicetree+bounces-312632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F4bMEmp3MWo3kAUAu9opvQ
	(envelope-from <devicetree+bounces-312632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:18:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9B2691EC1
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 18:18:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZVIlwhd6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312632-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312632-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F20253145278
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 16:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C6046AF15;
	Tue, 16 Jun 2026 15:59:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99BCC4657CF;
	Tue, 16 Jun 2026 15:59:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781625599; cv=none; b=fUTAo0YpOAVhLh7DckObDfMASRpj1+a1AV07LKD1Ki7b7Fn+Cy4cJ9GF4QGAhZOzInKQOQvvWm0feCLqsEdtbzqxOdQrY/QtL1RLf/Q8+gadOnbWQJqnOAuvWcolki2RpVifADXysl+ikuhiuJV1eNXuoSSSXJVviIICmN2hPhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781625599; c=relaxed/simple;
	bh=RIse3iwtT2+Os5evlGt3yi2fypjT2QT8SgerPML2hCA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e7H35DusHHgJouJ0Qt9vvgLqfisn7KFGulBBrtzQaDVyU3WOmbPgHuYhND7MlM8Q8bzCbJUp8ykd6bUwFdrSDTzaGeJK4lzemz1I6ZcWEomjMQVHEuOGzJ3MG/5FvGSfFIMgG/4UNGUr+2NnShpM+h/bkMYb2HKvEoS4cLC4Uro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVIlwhd6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F00A31F00A3A;
	Tue, 16 Jun 2026 15:59:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781625598;
	bh=RIse3iwtT2+Os5evlGt3yi2fypjT2QT8SgerPML2hCA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ZVIlwhd6oD9IM9hhq5ifVe+dQbWEypsk7MvrPoQ2DIj+CRLFkMXl+uddZ/IeXoUXw
	 Ds3gOZI6riFQezdvBQmcNg+WuPytgkqRr1OULzZqCDqHBYvdtCGQglpJI2rTDNn0ot
	 AQDV030F2Ul9tFkcYm86ptat4zuo/XbkBo1ZuvO3iJwwgyv6V65xaGLv56N7F7fRd/
	 GR9wT6b0BkcRKW6NDH0yz3chjaWNV4h7KAC4xQoJN84gvASWUe+wYx4F2U2pOIZGBN
	 DFGckWFG17boMCTZdPEDRFotpe1siIgTvppyMACFl/J6znVoICieUGDYbCCq1IZI2F
	 iK7zZ7fJOZ86w==
Date: Tue, 16 Jun 2026 16:59:53 +0100
From: Conor Dooley <conor@kernel.org>
To: Billy Tsai <billy_tsai@aspeedtech.com>
Cc: Andrew Jeffery <andrew@codeconstruct.com.au>,
	Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	linux-aspeed@lists.ozlabs.org, openbmc@lists.ozlabs.org,
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pinctrl: aspeed,ast2700-soc1: Add
 JTAGM1TRST group
Message-ID: <20260616-surgery-fritter-8583b091fd6b@spud>
References: <20260616-pinctrl-fix-v1-0-621036e45c7c@aspeedtech.com>
 <20260616-pinctrl-fix-v1-1-621036e45c7c@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sLe+DVJgetvs8zz8"
Content-Disposition: inline
In-Reply-To: <20260616-pinctrl-fix-v1-1-621036e45c7c@aspeedtech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:billy_tsai@aspeedtech.com,m:andrew@codeconstruct.com.au,m:linusw@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:joel@jms.id.au,m:linux-aspeed@lists.ozlabs.org,m:openbmc@lists.ozlabs.org,m:linux-gpio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312632-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA9B2691EC1


--sLe+DVJgetvs8zz8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--sLe+DVJgetvs8zz8
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajFy+QAKCRB4tDGHoIJi
0nyzAQD/cfSEv7EyKRM044BXBjhasA9Yr52g/vKaTKlxcUnd+gD/dLz2G4ZVL2LX
+vn4OonXgVtVBt+atEzn1pOoaRvRjAk=
=uh/e
-----END PGP SIGNATURE-----

--sLe+DVJgetvs8zz8--

