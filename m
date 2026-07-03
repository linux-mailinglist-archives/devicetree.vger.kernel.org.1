Return-Path: <devicetree+bounces-320256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OEu3OvbhR2orhAAAu9opvQ
	(envelope-from <devicetree+bounces-320256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:23:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB96704373
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 18:23:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="d/j4ZWUr";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320256-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320256-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F32FC3021735
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 16:19:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81D54305695;
	Fri,  3 Jul 2026 16:19:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F5B6304976;
	Fri,  3 Jul 2026 16:19:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783095554; cv=none; b=Yi2h1hAV+m0/+S8ZCCaHGRDRBoDDrPoLzbyvwl4jt8wmQUdspDfyXOD+QCu7pSCoo+V2KnhH4uOPBZ3JMze+yudvZ4Qt5WmZQkgAk1PdZgK4LhgN/Zwr1z0nteBLY1Dxn4WeYYEaO7aVVRXEWVUzGKlWCietnAFRdnyZMwPxiJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783095554; c=relaxed/simple;
	bh=MDqV3FE/QURKj47Ug9qhhO3Rw6xeNdaWbeaJ1FuMeXg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qlvc9EHGRmHzPlHq6our5QsaZNu5Af1YQf9rCYln36WggZX7dfppw17D5mUBgIsnGSIVOhu6erulRtrfjgM4x0KRYl8v9oHuwgabMhptlBgREeeF7Na60u+afTf/KpXZChZSAhkt6f7z3Z/l0f00dZoA1NRvrV+2Xj8GL0XUy2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d/j4ZWUr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD6131F000E9;
	Fri,  3 Jul 2026 16:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783095553;
	bh=MDqV3FE/QURKj47Ug9qhhO3Rw6xeNdaWbeaJ1FuMeXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d/j4ZWUrtxifnX8y919J8kuQuU5DEj1oB14B6kihoAoypJZRemNaeQiPADNdNsyYm
	 BKOCus/eZWIPGtPhqVi4YPlgvopBcbw1dilQiwOzO/FYzr0DfSHgaj6yNVGY3XW+U0
	 u2IKQRCJPgCVFB7HMRVp8Bms73PRBDjuC+Jna+HUsDOJXbhlxA74ZekbcfutiNkFO1
	 QMGAOrkyEpsVLwoDKqWVEIEFA7qYSS+i8Ns2MdC5hJfWNfyRAZwHLzOYxKigfjn3NN
	 M1Gp70mq4T9ehJKkvaOroeS6O8RhG5l456YtAHQcErARJxNPRQZCjY5+Ne1fQyXTuk
	 C4ZZaF2jOLRag==
Date: Fri, 3 Jul 2026 17:19:08 +0100
From: Conor Dooley <conor@kernel.org>
To: Sasha Finkelstein <k@chaosmail.tech>
Cc: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>,
	Neal Gompa <neal@gompa.dev>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: soc: apple: Add Apple PMGR misc
 controls
Message-ID: <20260703-acre-buffalo-815de034999e@spud>
References: <20260703-pmgr-misc-v2-0-4b26ba10c5a4@chaosmail.tech>
 <20260703-pmgr-misc-v2-1-4b26ba10c5a4@chaosmail.tech>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ew3fU/QzK+CdPJ5y"
Content-Disposition: inline
In-Reply-To: <20260703-pmgr-misc-v2-1-4b26ba10c5a4@chaosmail.tech>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320256-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:k@chaosmail.tech,m:sven@kernel.org,m:j@jannau.net,m:neal@gompa.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:asahi@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,spud:mid,vger.kernel.org:from_smtp,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3AB96704373

--Ew3fU/QzK+CdPJ5y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--Ew3fU/QzK+CdPJ5y
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakfg/AAKCRB4tDGHoIJi
0jYaAP0aSmWIipYQoz1Y9zbqOWoAnynQ5pXZqcKDuusK7Hf54gD/SC1++acH8F08
FMU2DVs0tWppBFT9gNOmErqDtSCT+QA=
=K5Z3
-----END PGP SIGNATURE-----

--Ew3fU/QzK+CdPJ5y--

