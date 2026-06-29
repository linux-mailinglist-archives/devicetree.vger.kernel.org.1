Return-Path: <devicetree+bounces-317133-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1WxeK6WQQmpT9wkAu9opvQ
	(envelope-from <devicetree+bounces-317133-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:35:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F2A6DCBDE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:35:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jQ0aBiqG;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317133-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317133-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4B15330492A4
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D0CDB41B343;
	Mon, 29 Jun 2026 15:17:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D202B35DA77
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 15:17:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746242; cv=none; b=aYsACyi4rv7N3l7xFJhOtQQfqn5PKovmratV5TXnSifDo5KDJoSC4FXv8JuElk0wApTL/cE0joTGXiytS3vuw9lk2glctSgee0PNvaUidWZgi+cC1TIf3XwSJQjiPWTAjsocCQXJYmc0c4qyPIw6IbCIwiWRnVgoWQft8pNSHBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746242; c=relaxed/simple;
	bh=QBd2swqnv63QuswfE0YfVh14by3uz3C66W7vLs0PN/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hZjpozeo58TPaUmLkSKtCaowZxudsQ7s+ga1N54khf9FDdftNASblMRkOanXy8lvkTRO7LEQliTC3qh9M+61y6721FhpFizhmk7cP3GO4LIIpkwDabJNsLO1uj+bxmD8gzBiuDCMD6XXnql8SHl0SbGOwzgf+lqVWCpkxSe/Aq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ0aBiqG; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 435611F000E9;
	Mon, 29 Jun 2026 15:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746241;
	bh=QBd2swqnv63QuswfE0YfVh14by3uz3C66W7vLs0PN/o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=jQ0aBiqGsK1DJRJ6tRvxwdYKvctt9ev/2EM5vPw+JSuBVnxo4oibfZ/jrOLXngaNp
	 mbmIuGTeSzCr8NJ5maD82SzHPGmsB6HDs0ckZNQS622mc8t6oYJbhNXwtCZ8Maxiqs
	 ca5eNabjO8DphfTMBGJu8nYxrr5rxkeYsRtXKRwHb3dr6rXAICs5lPOpKwLZENUUSe
	 RFHvTq5MJIvrcZRlNzMj7GFKcXM3/cBMs0YO0vrUXlcJe8TkjoQuQpE2N519PzOV6R
	 Qgr9YdXqV81WLL/zY0xUbagSaIK7V1V3xGTeIakA5TBOhfMK/nZFLkwoN1UyNLk11G
	 O0AkD/v4jDL+Q==
Date: Mon, 29 Jun 2026 16:17:18 +0100
From: Conor Dooley <conor@kernel.org>
To: Dinh Nguyen <dinguyen@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	muhammad.nazim.amirul.nazle.asmade@altera.com
Subject: Re: [PATCHv2 1/2] dt-bindings: net: altr,socfpga-stmmac: add more
 interrupts for Agilex5
Message-ID: <20260629-applicant-expulsion-f4094fac3142@spud>
References: <20260629114818.1746410-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="FHPI8YO7q+R+qDkf"
Content-Disposition: inline
In-Reply-To: <20260629114818.1746410-1-dinguyen@kernel.org>
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
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dinguyen@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317133-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,microchip.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 31F2A6DCBDE

--FHPI8YO7q+R+qDkf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--FHPI8YO7q+R+qDkf
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKMfgAKCRB4tDGHoIJi
0hcAAP9kEYpe6JdKGvAd7J+nMUswpxenFh7GiWNkm6J6ITyv8gEA7gOMoMAXDVxE
UTMOTGKU6X4PNDmaYs5JTxwhk3+J7QQ=
=4N9f
-----END PGP SIGNATURE-----

--FHPI8YO7q+R+qDkf--

