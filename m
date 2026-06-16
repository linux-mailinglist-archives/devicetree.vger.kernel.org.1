Return-Path: <devicetree+bounces-312624-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G/ZeKmxyMWpEjgUAu9opvQ
	(envelope-from <devicetree+bounces-312624-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:57:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E5D6918E6
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 17:57:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IqwoSB1d;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312624-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312624-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DE08830A7806
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:44:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B80844D6B4;
	Tue, 16 Jun 2026 15:42:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1515743D4FB;
	Tue, 16 Jun 2026 15:42:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781624576; cv=none; b=E9tyidrlNba6n5V8M+uXfW9ySN25heiF3IdbtyVM9qyM9Doa9LEV34R5ZO1sP6GtmMWCMAMfYi34tDNlaWONvN7O438rSQcFKrE/qclHc2OY+HN2o/gSR3vXFGFG3SgbeTnEkR+9sr5/U2S5NbKuN3qHpZ02xvU/i92h6iIT2jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781624576; c=relaxed/simple;
	bh=tbZdYRssnMc1tPdeHTB9KBupFi6MeJUHUJTnqK3jnro=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JEiJ0UnXXxaZXA20mEJJhC4+f6RijVMKSgmtHhxt3PijMOsGD+UNe2kbHgmHA495DBn3s/fOX8bwQ241H/Z0huPCZ0WD/Hb8e5GhFnYlNk7y2Rl8Vw4m0nbFj0r0JSl0TYOEpDSukEseKNVg19nDD6Duda8PSfueWY1pHYD0Ubc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IqwoSB1d; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7C471F00A3A;
	Tue, 16 Jun 2026 15:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781624574;
	bh=tbZdYRssnMc1tPdeHTB9KBupFi6MeJUHUJTnqK3jnro=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IqwoSB1d+aKHgby6Y4P4Ha7VF8hUwzGg6nG5zg40oY9J0K30b4CaK6j9KWm1Vn+g7
	 Csi63qULUfrzZAT68L1qhRpv58jJ1IOKApIhC1iIuqsxBLaAJXBrOu5ot0X9vmU10r
	 rXH04jarToFjb4/BuKjBTr9uoIBFu+NmV5WPQU19mSJG5HR2sKne8Bf+PqIdX16S7e
	 ndASXBARK/a2wMOo4EI8ZbEu8lPt52OK4N+k7ZavhSiLBpbsmfrlODO3EhqcB+rubE
	 6iArfdeCqnz5aD/ZbzaJa5+UrwlCPWf52XIB3Sz1TMlyCjZfGrJPUyTdYUiSMNXTK8
	 eUS409YJsAcCw==
Date: Tue, 16 Jun 2026 16:42:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Siratul Islam <siratul.islam@linux.dev>
Cc: jic23@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, dlechner@baylibre.com, nuno.sa@analog.com,
	andy@kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: iio: magnetometer: add QST QMC5883L
 Sensor
Message-ID: <20260616-camping-slug-15ebd1524376@spud>
References: <20260616114942.37241-1-siratul.islam@linux.dev>
 <20260616114942.37241-3-siratul.islam@linux.dev>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="uiONKxPyM9s9/R2T"
Content-Disposition: inline
In-Reply-To: <20260616114942.37241-3-siratul.islam@linux.dev>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312624-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:siratul.islam@linux.dev,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0E5D6918E6


--uiONKxPyM9s9/R2T
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--uiONKxPyM9s9/R2T
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajFu+gAKCRB4tDGHoIJi
0uXZAQC/+uVjuHYjYXHgKGQc5XFKXXFRcRzLwTzZngFLZT07IAEA/RcmnUdMAotS
iJ22/o/3O8oUSPj411v3V71Pcm5NJgo=
=unlx
-----END PGP SIGNATURE-----

--uiONKxPyM9s9/R2T--

