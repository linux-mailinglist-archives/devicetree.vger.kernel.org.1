Return-Path: <devicetree+bounces-317971-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XG+rH2T3Q2ofmQoAu9opvQ
	(envelope-from <devicetree+bounces-317971-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:05:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CDDC36E6BD2
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 19:05:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cgTRKZPU;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317971-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317971-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C268630FCD15
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 16:59:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 752BB3D7D8D;
	Tue, 30 Jun 2026 16:59:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68D7A3D75C2;
	Tue, 30 Jun 2026 16:59:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782838743; cv=none; b=j5UdBiaX2gp9LNbq2+tpGHU9vyhXyOnDsIXbr8PsgSO7w1D5Npb+mkEb6DmjYyciNUJDP5XDAdkvYrJPkOmpB1weDs3Zqc5HGA0zTM7CbKXStitoQnHkehIpSOE+0UUlWj2HXGSufKFg9Ff4iUnPOGatVczJcrEd8C9ZqQt2iHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782838743; c=relaxed/simple;
	bh=iYaN1QyP0urxVGpBNVcNIOw0jlHkLq8MSvJKmBqa/MM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=f1pXFmjARsdfSZ966g9ip7YRAlDHxfuvvCGSCBMbMA1pqoJCs7sqe1SGeL7KpdP7Hl2DVN9ABEDXqxI6vStVIHNSFVeT6EmUp70f28ilqIGNwEt+QervH14aIwvsjprQiEq4LlOTlidXRZCS8lQjHBoZd7s74kq9aYcDfXG00qI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgTRKZPU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6ABB81F00A3A;
	Tue, 30 Jun 2026 16:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782838742;
	bh=iYaN1QyP0urxVGpBNVcNIOw0jlHkLq8MSvJKmBqa/MM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cgTRKZPUZI9NlYOao5EGH8J2OKTwZ2eXz8PIwlfjYCyFuYbT8Elyh7o6YzHn83sXU
	 oOMGUEkrCKyz9UrxZVKhHO+UljTH6XUjJ54KwrZt8dNlRPtfjUEYZpYjFKzvvntN8A
	 uxvA5gNPuUFBBQqj1TVEr9W+B2wNq2pFBMyMSWq+bU4WhiWkpFE4fgm7PnvGSxSsXQ
	 o0+mHJHq412zgRp4CUifUsJiTtDFx2X0fEpIiEpC9kKPv2dqeURq5cQHirqU7J2syC
	 OPNwchUHldTbgBMhtT+JTmY7efplj3A9Inn1t9f6qtCjRc0iwa2yt6VWCuqTh2OlrU
	 gprEiL4/iLvEw==
Date: Tue, 30 Jun 2026 17:58:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Puranjay Mohan <puranjay@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Wil Stark <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: iio: ti,tmp117: add binding for the
 TMP119
Message-ID: <20260630-hypnotic-tragedy-6dd3f3e48f9a@spud>
References: <20260630-tmp119-v3-0-cfdb50e2e99f@bootlin.com>
 <20260630-tmp119-v3-1-cfdb50e2e99f@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aTVQYSB8yTzuUPyM"
Content-Disposition: inline
In-Reply-To: <20260630-tmp119-v3-1-cfdb50e2e99f@bootlin.com>
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
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:puranjay@kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317971-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CDDC36E6BD2

--aTVQYSB8yTzuUPyM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--aTVQYSB8yTzuUPyM
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakP1ywAKCRB4tDGHoIJi
0oIbAQCk8l1NPb6hSRl5FSPEoU6E6qFTMMI2zxQlfNiYVHgMygD/aweNvAutJ9Bn
lCAqIIdnLwtqes/Ln9qICXOWHWvp/QY=
=u8Tq
-----END PGP SIGNATURE-----

--aTVQYSB8yTzuUPyM--

