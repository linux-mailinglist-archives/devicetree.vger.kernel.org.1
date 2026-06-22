Return-Path: <devicetree+bounces-314508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9QNWELlmOWr+rgcAu9opvQ
	(envelope-from <devicetree+bounces-314508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 18:45:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A811D6B13CC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 18:45:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mRH30SM6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314508-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314508-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A94F5301B714
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 16:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6220F33BBD7;
	Mon, 22 Jun 2026 16:45:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B9F533A9CB;
	Mon, 22 Jun 2026 16:45:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782146707; cv=none; b=gQuNdZFHf4txQaGlWh2JlFaeubxZnDHjC/G0VUDGbhmAN5oXXq8g65DCRCQs2CWXLc0HJE3dauwYHm1glMdC5aY9y297RXD1WbJptWKtebKg3GVWBgQZNM65DBjU41tBWxvKFPZa3wGIxSlsLFMsYyNq3R8qlpXFUZ9RKNqPwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782146707; c=relaxed/simple;
	bh=zElci/os7/jfn0A3RRkTkeT4o+9LImhbDkPRqYp8/WE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y2phP6M05pKulUhZTwQrZW6KvU+RFE3+WrvsQinLA/mfac3aN1fg4j6W+Cc2IRkfPL+F6tDwns3WegW/ep5jkbPsnzwHM5ur+UE/dePRKvIWblEGYI2D64Q0CE0ar6inebavtw5XFUpLWqruN8L7YcYenCV83rJbSysZohPoSJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mRH30SM6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 747681F000E9;
	Mon, 22 Jun 2026 16:45:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782146706;
	bh=zElci/os7/jfn0A3RRkTkeT4o+9LImhbDkPRqYp8/WE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=mRH30SM62YpD2Z+K9rgpoEji+0iTSa1+8T+yA1AiKDwhK88HqRGRtCmoCAzNk+UBq
	 yDePdxjlnviQRP5tviQOoQ0hkA++9MRNhPYX0wYVvm08AqmXAvc/hKQcZS6zCqS5C/
	 nFFNcJjrpFtS6Jp029Tpv7OPEvpsuj7LSpu9kYW4+vPyR/igvTOjMqf0//Mx1Ewnr2
	 2gvGpivanhrDrGTbzEbg9Kzqw9J4o0pp8F5nCrHKmsQpwB5AbByNw2np/6syGjeKBi
	 Mem0Ta3NKALsne4MfGWAKGJW0bBUmP2g+lrXJ6O3+P1q+l8wMVbLu9gtZVVBr2gzuf
	 OjF0R2oiHZxLg==
Date: Mon, 22 Jun 2026 17:45:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Guillaume La Roque <glaroque@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ronald Claveau <linux-kernel-dev@aliel.fr>,
	linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: thermal: amlogic: Fix missing header in
 the example
Message-ID: <20260622-pointless-rebirth-ef77e609d5c0@spud>
References: <20260622100231.438435-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="MKrwKpMqithOr1GF"
Content-Disposition: inline
In-Reply-To: <20260622100231.438435-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:krzysztof.kozlowski@oss.qualcomm.com,m:glaroque@baylibre.com,m:rafael@kernel.org,m:daniel.lezcano@kernel.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-kernel-dev@aliel.fr,m:linux-pm@vger.kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314508-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A811D6B13CC


--MKrwKpMqithOr1GF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--MKrwKpMqithOr1GF
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajlmjQAKCRB4tDGHoIJi
0j+0AP9/kaVJ5YKD8KOSM/zeSpTH30n0PabudqDxHmktnTBKDQEAz+EvpXQJ7fcu
yP2y1kIeTx60Yc0SovfQ09YiHJuAuQc=
=+rkZ
-----END PGP SIGNATURE-----

--MKrwKpMqithOr1GF--

