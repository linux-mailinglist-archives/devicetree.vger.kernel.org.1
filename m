Return-Path: <devicetree+bounces-308454-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2Yy1EIX+JmpmpQIAu9opvQ
	(envelope-from <devicetree+bounces-308454-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:40:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA65659555
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 19:40:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ouerdyd7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308454-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-308454-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB448300FCB4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 17:38:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913A13644D1;
	Mon,  8 Jun 2026 17:38:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F72A343891;
	Mon,  8 Jun 2026 17:38:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780940325; cv=none; b=K1zq77hORuLphCBX5lKRjSo/PU3bNEJqzCwymGKy2Ko+wXhGhHuBA1UkrBeXNMg8bNoS4hdO7i423JzSEZzFypv+MNIchICnhMN0C2xSAXAHBdakhgA56wHS3EZ9J5TSMTseV5h1YRZzgTAMFBEjS1Cd/LdChAXR1lt+ltzOg7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780940325; c=relaxed/simple;
	bh=Ib1oWhbN1j1TmYfRhuUWaG4/QrhUr1Rt1MP6Rxxa3VE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dm/7wO6um83zoZ8i1t2DR+ZpG9bN/ATKjHHOb6ZZT5RgJSbd6d8UMmflIzHCZKd+8lBk1wAfe4nDbckNwyWycH+5a2GONKxkbywQsrANIaMyeRj+CVMJQ074d2WC5paPZi0A4UJrkzUE2n/hdBLgdmqWVTJ326mWdKuZSV6gnXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouerdyd7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAF0F1F00893;
	Mon,  8 Jun 2026 17:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780940324;
	bh=Ib1oWhbN1j1TmYfRhuUWaG4/QrhUr1Rt1MP6Rxxa3VE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ouerdyd7RLSGh7gfbV63w5WJNZI0xp4nfZXnixw+oFRjq60qdBnZn4WCO1fC0Ivk5
	 GZds718ADH8KXiKH0xlWb5cFkIxvDWR8sgNpIfZ9yG9rYlPHwfYbyl6NkERw69rGbJ
	 bMg7LcH09QxujSgib57wkt+0r5bq7VDAWN3F31utMb2c47LquIYjFJWU1N+Oa4iv+z
	 E/pexQbi0rhT1YoD1bn7QIBmoroZI7oW4UyMwFrwnEyyaYG2mTG4SkyKGIK5GGwg/C
	 fexrd/OzMPvOqQyfU2SSClyh09oj7YsUlX/Ohf52bBjRvBD6S93VMA4tIpYMa1Ol6Z
	 RQidnAcybOxuw==
Date: Mon, 8 Jun 2026 18:38:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Jun Yan <jerrysteve1101@gmail.com>
Cc: Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/8] dt-bindings: input: microchip,cap11xx: Add
 reset-gpios property
Message-ID: <20260608-kilobyte-vaporizer-14c2396e7a19@spud>
References: <20260606150458.250606-1-jerrysteve1101@gmail.com>
 <20260606150458.250606-5-jerrysteve1101@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="WVu91u1W1X+FEj5j"
Content-Disposition: inline
In-Reply-To: <20260606150458.250606-5-jerrysteve1101@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-308454-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:dmitry.torokhov@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,microchip.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2AA65659555


--WVu91u1W1X+FEj5j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--WVu91u1W1X+FEj5j
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaib+IAAKCRB4tDGHoIJi
0q3fAP0V32ZOP7LDKQtatxcI+/BbMaMYpY1qJx9vn1r7chO5VwD+Jouo4xfQPAvK
mUJ21nLQaYGYayO+CRJubFfZP9aVVg8=
=CIeS
-----END PGP SIGNATURE-----

--WVu91u1W1X+FEj5j--

