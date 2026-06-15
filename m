Return-Path: <devicetree+bounces-312091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0FuRJYwsMGrdPQUAu9opvQ
	(envelope-from <devicetree+bounces-312091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:47:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFD168883B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:47:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Aj5viKEJ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312091-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312091-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C2F2F302B090
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AC0940BCB8;
	Mon, 15 Jun 2026 16:42:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147E1407576;
	Mon, 15 Jun 2026 16:42:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781541742; cv=none; b=qIdMN2S3bPIkQK4uhTlQYkrxeeMyc9WW/4rxMvBZzgYM0XAr3VGKj3fxzSiuiItm+w6YDZGnAcytmGrvjZBUxKgYjhNTSRxHmpqOazWb3TyKJ5HfF7KRDhOpmfdUl5nOjfQOcVC9YXgG6n1KOQPTiLDWh3JrxBOlX7WvapFEGII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781541742; c=relaxed/simple;
	bh=VJsguvxNi5fQr9YCT2BoG4xKCVnOtut1mmKgRM8TWRc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=raXrsz2JyjZisAihyZCy7ZCQEwJDLLqm0mHlbPFWQxHI/AAAlf741oNbGXZ7li+c6z6hBjaqlYq8rJgeX5p7kmpFy+dvBYkeIt76NML4e7Sj9dc1mp/2msYSEF0ihLClTxUD7SPw+IXAhltI09Ie/brXXtNOMW01FvV2Cw/HKsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj5viKEJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 87D8B1F000E9;
	Mon, 15 Jun 2026 16:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781541741;
	bh=VJsguvxNi5fQr9YCT2BoG4xKCVnOtut1mmKgRM8TWRc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Aj5viKEJWFiPMoF/bF+oFQVm5EAqw6YLo3AZo3FCULsVcp4sMvAatlXFYBvciIuT8
	 4/k0f12BsEUGiCJnmswWCKGFa3v3aYAce60l6P+cejRkjE+EW7nhdrIQROpJnKZ+e0
	 rrPQ1X0xDFaszZWfYlExTwOmuRBWS8G7AwwdANbrFLz1YDPNlJ85uVUyVaBy68n8Te
	 THONvNaS6x7RMnpwRAktXbhENphosFJNcm+Un9H810s/KkhYp6zKMT1C0T99DWLmt+
	 ugByPYW/V8DyqxzOtNjHGrODQ3DUcYiyuoBNy9UHuWQma3iY4sf9IcYhzU6AnjBHyi
	 dqSFsl/sTnAkg==
Date: Mon, 15 Jun 2026 17:42:17 +0100
From: Conor Dooley <conor@kernel.org>
To: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>
Cc: linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, git@amd.com,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/8] dt-bindings: clock: clocking-wizard: Make s_axi_aclk
 optional for static-config
Message-ID: <20260615-squid-showy-435c9cf780a0@spud>
References: <20260615034845.3320286-1-shubhrajyoti.datta@amd.com>
 <20260615034845.3320286-4-shubhrajyoti.datta@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="eTLpNP9HuW1rO1hW"
Content-Disposition: inline
In-Reply-To: <20260615034845.3320286-4-shubhrajyoti.datta@amd.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:shubhrajyoti.datta@amd.com,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:git@amd.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:michal.simek@amd.com,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-312091-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0AFD168883B


--eTLpNP9HuW1rO1hW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline



Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--eTLpNP9HuW1rO1hW
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajAraQAKCRB4tDGHoIJi
0nEOAP9wX1ySQ59Bw3YpTYQp7fbRjsjjztw9F71sBS4cWb/xsQD9HnOFFh9aDO9u
mIngdQmFlwsmGnd6D/IaxOrzKdaquwU=
=gIdg
-----END PGP SIGNATURE-----

--eTLpNP9HuW1rO1hW--

