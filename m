Return-Path: <devicetree+bounces-323967-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +VIJIJjgT2p7pgIAu9opvQ
	(envelope-from <devicetree+bounces-323967-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:55:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC617340AF
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 19:55:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WqZAyW8y;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323967-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323967-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 83E6B30074A5
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 17:55:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBDA4DA541;
	Thu,  9 Jul 2026 17:55:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD424195D2;
	Thu,  9 Jul 2026 17:55:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783619734; cv=none; b=clu94l9Pxx6XnVjE9yFwnIY7rSELS2cQ133mYkADPYpWgAWc05sHttHyiVyzZIzFtaTMFto9L9abItwS5Fh7Soag+ZoVWL5hulrhkqQJC3JeCPTeUUnq6mlROyCEM1A9t1bL2VrmnmuebC7ZYf9ZNJ4A4TzeiU6r8PVkU2E7LHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783619734; c=relaxed/simple;
	bh=5c0ePBG4qS0xsg294qaV/O58VNPvquRw3o2eBFNumMM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=um31qWxrv7HFWfM8GXAAVF82MYnFoAtSJ2OPdaJxirKvNbjBU7XGnaBQfTrzgGOyumO44uGgwXzCmvYTlF8AivLvN/Qvf7uChtDZBf0eiq6VLTqA+zk6fSWg0tlgDE9UwcVrgk6OukoImowKxZA3HmD9zNLhilbiekWQd6ONPf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WqZAyW8y; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB3891F000E9;
	Thu,  9 Jul 2026 17:55:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783619732;
	bh=5c0ePBG4qS0xsg294qaV/O58VNPvquRw3o2eBFNumMM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=WqZAyW8y5rRMIOtbQ9Cqf0p+p6dFviN8Ix1fCiJKj11E3n7wpKWS/kCOrwnBch27b
	 msbGbaR2d3hTlYR0Em5s0x8BdJLtvQXMUV2ScwRxkNn26RZs7Y37aPXPaxhYO2VclC
	 t/FicwmfDlfJT5zII7GyDDbjtwyy0lzRGKvcgFsnNd9ifqXcTgPAXkYvgx02YIEnuN
	 hNXAjn36WQjKb8G8IXQi/hXuubZsWw2x1m6AFaIO2ZzA4+9jTE3xfNjF0SoswVkSig
	 THN604z2ybIquMbEWb1mFdkOui79BpfjTqGiN6UmigoB68ExKTs2OjgL5ZqegnmWyK
	 GIvDPYATclp+g==
Date: Thu, 9 Jul 2026 18:55:28 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	Sudip Mukherjee <sudip.mukherjee@sifive.com>,
	Serge Semin <fancer.lancer@gmail.com>, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 10/11] spi: dt-bindings: snps,dw-apb-ssi: Add
 starfive,jhb100-sfc
Message-ID: <20260709-unknotted-semicolon-e6ca03045dfb@spud>
References: <20260709055204.138168-1-changhuang.liang@starfivetech.com>
 <20260709055204.138168-11-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="75GMnnpgGICtpI4b"
Content-Disposition: inline
In-Reply-To: <20260709055204.138168-11-changhuang.liang@starfivetech.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323967-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:changhuang.liang@starfivetech.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:sudip.mukherjee@sifive.com,m:fancer.lancer@gmail.com,m:linux-spi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:fancerlancer@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,sifive.com,gmail.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[microchip.com:email,spud:mid,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0FC617340AF

--75GMnnpgGICtpI4b
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--75GMnnpgGICtpI4b
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak/gkAAKCRB4tDGHoIJi
0i4dAQDaNsniwMrRz58aPNNJgIDQ2gGyhBF5ce672KyXoQ70DgD/S7Gdx+OPCZ/n
rCxj+ota37SgrawTEEfZDw06Typm4Qw=
=sMq5
-----END PGP SIGNATURE-----

--75GMnnpgGICtpI4b--

