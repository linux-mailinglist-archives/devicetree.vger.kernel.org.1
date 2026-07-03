Return-Path: <devicetree+bounces-320258-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FmwxKo/hR2oehAAAu9opvQ
	(envelope-from <devicetree+bounces-320258-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:21:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 93CCE704358
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:21:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BEvBEkhh;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320258-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320258-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 55F593006830
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 16:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 665123033FD;
	Fri,  3 Jul 2026 16:21:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A40B2F1FDE;
	Fri,  3 Jul 2026 16:21:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783095685; cv=none; b=KqE7L+Yvvla5CuQ/e0SueOjsLfBrcvJGzAx1hE10P6hsbrEwpRV3wWQSeW/hHdOzgD3iAmNXhKGqnJKR9Ewonw3s+kbMMe1nLO3xYBO9+Xn+WguAFTlHKzoJ1sTEuPsoela9AX69yqtdbXd95D7phcZ5UneHOCm8CACAYvfWzq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783095685; c=relaxed/simple;
	bh=xgoktPGMKhutwq/ZPKzyQO5jJpyJs1b8JDRtf0WOw7E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t4OawbO/ZX9JtBa2ur0nhyXgLODoU2nhgs379zIpsPmUZyu8uqxq1FThkwLTwUQl18mzL/ghCnR89x6hgg/Irsh4kHZUQRHLlh6GE7z4wPvtx5v2unRMSlQaAd2Br9p5NJ/25KvjNfT01AtKxAKpTO6a44EWPjObobB4oUBsrAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BEvBEkhh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A93F91F000E9;
	Fri,  3 Jul 2026 16:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783095684;
	bh=xgoktPGMKhutwq/ZPKzyQO5jJpyJs1b8JDRtf0WOw7E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BEvBEkhhxf/0M6kthQVA6f0c4+VgMV6dmEJgLtpcTZs90N8wNX5fT8oyeQU7mgBXX
	 m4h6KjGASRvj2eOWr2v/LuZPAnhA7VKpvJphAfFFfx1dI9FMlhfvKZZ9YuCQqHpZ6j
	 ABxjr/3limS6ju+NM4Z6tqcs+qRZ50FaKGrg/9mkUAb5mNgj3fqg0YmQ7hwcmNbf7d
	 WCvJuqSGIU+TKuZUxNxbnkmDGQZq0IEYa+HBTXTvjWVizlnHVfsgzDU0UZTF37ne3k
	 WxB5G9i52veaRqFGZvfSLmTZl+dhYDZB8Vw6WhCYoXkhySRc2irtDzvkrugyegCUBy
	 k6FeSe/Rf2Rgg==
Date: Fri, 3 Jul 2026 17:21:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Stefan Popa <stefan.popa@analog.com>
Cc: Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: iio: adc: add maxim,max40080
Message-ID: <20260703-snowfield-unsolved-bc1c1f0afaeb@spud>
References: <20260703102941.1141341-1-stefan.popa@analog.com>
 <20260703102941.1141341-2-stefan.popa@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="HRoI9HJ9l0JIbAJP"
Content-Disposition: inline
In-Reply-To: <20260703102941.1141341-2-stefan.popa@analog.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-320258-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,spud:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 93CCE704358

--HRoI9HJ9l0JIbAJP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--HRoI9HJ9l0JIbAJP
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakfhfwAKCRB4tDGHoIJi
0ivEAQDVxgG1bKE0NR0OIDCAvbazPP7Zu8Y1Fk0w22elAlL+PAEA3hp+ZkYeAkW8
nMMHv+Zaddp2YhRlUCethfH+ZpvcZgM=
=YmPC
-----END PGP SIGNATURE-----

--HRoI9HJ9l0JIbAJP--

