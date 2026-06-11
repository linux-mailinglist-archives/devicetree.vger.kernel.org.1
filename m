Return-Path: <devicetree+bounces-310536-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ASQqOcjxKmpPzwMAu9opvQ
	(envelope-from <devicetree+bounces-310536-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:35:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44BA9674081
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 19:35:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cyYHEpdR;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310536-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310536-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C337435EEBF1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 626824CA266;
	Thu, 11 Jun 2026 17:19:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA5F44C0400;
	Thu, 11 Jun 2026 17:18:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781198340; cv=none; b=GE9803LFwHcc4Ma5goCxQlBWhUL3ja5NPiuNlx+CeSrEFnYgnOPkJ/iuVpQFiyAaIz4zPA92VTsVvkqXJ5SzUjzkRbMdC/N7JC1CpiiORqYB4eIUwjIg57hGK261qsHeMT9x9ZYu/3ZRgLkDqcbTlZ6zXloHeyY9zk8N/bpKBYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781198340; c=relaxed/simple;
	bh=F9Psw+rSAwYj1B/d62ffjleXhKYCjaBGyJ13qx6Lj9Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=G+ccfPlYifonBfLfDSQpvy7R3q4xXrfrUpXrEmfhjC///12Q30oqjxyJkvRsY6YmHU0bW7OTATKJhpJDHyI1B7JlPrcKWM8lecIofTWhsmc9+iMEM7oDSwZ++o1uXpjuAKZ+ayAP0ofAOYZ9R2LQDicdoa8h7ZMy5g0S40MuBK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyYHEpdR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 324B31F00898;
	Thu, 11 Jun 2026 17:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781198332;
	bh=F9Psw+rSAwYj1B/d62ffjleXhKYCjaBGyJ13qx6Lj9Y=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cyYHEpdRtk8wB7+DDphXk4wVwy1QPm/3Ab+V+M4qADTJzAfzurtmCZe54Q6Or2nUS
	 6PhnkFR+tqiw/N3u5/Njrph4pKDDomAh9fxPBlWhSJ0iqXuj+mj8qyG8WD6Ul4FkAj
	 ubPbmJufsvgc0yy2rAD+IbJC3ou/bmIVlvc8JUKZr9i1KT+Hp+PnA66pPcB8xPly+D
	 wJasQOlHEuMEXDKqMy2DNx1Y/DVgDhguG8pHR4SGvBBZ8l+D5WulPe/fUuUVjcxGgV
	 houCp1cIWZ6vVao/Kg99UiZwKRX0xK8xDjfmnEjS+BU3Hl/T6CwgYmY5Ya6nLXzGrB
	 Z0L2yRC11gQSg==
Date: Thu, 11 Jun 2026 18:18:48 +0100
From: Conor Dooley <conor@kernel.org>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-i2c@vger.kernel.org, Thierry Reding <treding@nvidia.com>,
	Peter Rosin <peda@lysator.liu.se>,
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: i2c: i2c-mux-pinctrl: change maintainer
Message-ID: <20260611-unsnap-recreate-3dce0a7e4fdc@spud>
References: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="gr4d1xmw+6kQmNOs"
Content-Disposition: inline
In-Reply-To: <20260611122704.7559-2-wsa+renesas@sang-engineering.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310536-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:wsa+renesas@sang-engineering.com,m:linux-i2c@vger.kernel.org,m:treding@nvidia.com,m:peda@lysator.liu.se,m:andi.shyti@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:wsa@sang-engineering.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,spud:mid,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 44BA9674081


--gr4d1xmw+6kQmNOs
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--gr4d1xmw+6kQmNOs
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCairt+AAKCRB4tDGHoIJi
0i3+AQC5P5wuJZG+9luhIPZKb7U40kPlzdm0bU8rDF6Vo3Y0jQEA/YlqBoo9JVSy
UXlFuPYWxuEN37l/OEL0oiqgO9mPsw8=
=SJma
-----END PGP SIGNATURE-----

--gr4d1xmw+6kQmNOs--

