Return-Path: <devicetree+bounces-309969-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6Y7FHQ6WKWqhaAMAu9opvQ
	(envelope-from <devicetree+bounces-309969-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:51:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD6A66BB06
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 18:51:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gbTRvuKR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309969-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309969-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C4403211724
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 16:46:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B42F32AAA0;
	Wed, 10 Jun 2026 16:45:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D6731D759;
	Wed, 10 Jun 2026 16:45:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781109957; cv=none; b=oaI7hjZURrvd40ASeZcAVjK7751YuWtUmPAhpQFABIYpTLW4scYOfvKK43tKopU85iB6IFEswqdD3zl0McD1pm2kZgSqtfJlQWBTktSd0aGqJHCY+UW4tXGxSLH+IU5EV/G6KSt38aJmEUq+6gGWvuR2+RjU5CHGd/++4AowTo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781109957; c=relaxed/simple;
	bh=Dwfla7ljRHGOdc2dosvIj1PLGsSY3rDKLsmBWusCknk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ueXNMk+NZzR2LUyetZVje6RRn1be6Nkf6LJvL2PeMv0b19UFA60xckwxTM2+Z88IyaukbCUx9owN1dqD5eJAvxvSWzHYUmeviaEJJ/dJU+GbzQ4FcwM+VDga9jo8uUtMA1+RS6UTJNsaQae4qNjRlVMkfxB/0KOKo9pEz4KusO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gbTRvuKR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2988E1F00893;
	Wed, 10 Jun 2026 16:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781109956;
	bh=Dwfla7ljRHGOdc2dosvIj1PLGsSY3rDKLsmBWusCknk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=gbTRvuKRczjMxJjvqmk8hMgddfxW9WKMZDNNqXRHrpsxDOXSgN5G84D/73imxJ+8m
	 wuEeugbzUyXTiuHILEFMhDGBGfX0hduXfo5mSIFRfzo0rnYl0nfIAovoyh2VvZaw0I
	 VQUwclLt1HAfVp/Ijmj7ly0wW9LtPcfD09Ot3B6QErTQFd2LXXQGDztuZ+ybONdOn/
	 6zf9OS4q48sI1YMu6AyEAjJdfirIxH8nqRVqRruv+BsEkjHGeXgOvEOxUAp4WkT6/D
	 U2MQp//6fNa42X8+CGj9jQu89KJKQQpICT4m3ICaO+Pl9UZl8hF0MAhIb88cBXdVaO
	 u33EKSmSLfUtA==
Date: Wed, 10 Jun 2026 17:45:52 +0100
From: Conor Dooley <conor@kernel.org>
To: Louis Adamian <adamianlouis@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Nuno =?iso-8859-1?Q?S=E1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: pressure: Add MS5637
Message-ID: <20260610-broadness-unraveled-b5187dcb2fb8@spud>
References: <20260610020458.104818-1-adamianlouis@gmail.com>
 <20260610020458.104818-2-adamianlouis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7Pn2wnQn8Xikch5i"
Content-Disposition: inline
In-Reply-To: <20260610020458.104818-2-adamianlouis@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309969-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:adamianlouis@gmail.com,m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BDD6A66BB06


--7Pn2wnQn8Xikch5i
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jun 09, 2026 at 10:04:57PM -0400, Louis Adamian wrote:
> Create meas,ms5637 devicetree binding and move existing devices from
> trivial-devices.yaml. Explicit compatible strings are added for the
> different sub-variants because each requires different constants for the
> second-order temperature compensation formulas. Previously, the driver
> exposed the generic compatibles for the ms5637, MS5803, MS5805
> and MS5837 families and applied the MS5637-02BA compensation to all of
> them.To preserve the DT ABI the existing compatibles are retained and
> mapped to the -02BA variant of each family (ms5637-02ba, ms5803-02ba,
> ms5837-02ba).

I think this should be made clear by use of fallbacks, or being marked
deprecated with a comment.

pw-bot: changes-requested

Otherwise, it looks okay to me.

--7Pn2wnQn8Xikch5i
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaimUwAAKCRB4tDGHoIJi
0s4OAPwMqpiW7IcnS9CigZGU1d+dwYAdHTJZ9IW/guciPAcNTwEA/Nq/kb4KqcE0
U0z/eKjj0CFXyQx/XJL9zJ/CUFvKBAs=
=1GsX
-----END PGP SIGNATURE-----

--7Pn2wnQn8Xikch5i--

