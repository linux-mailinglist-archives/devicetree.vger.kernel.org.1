Return-Path: <devicetree+bounces-322229-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8nJLOIInTWqnvwEAu9opvQ
	(envelope-from <devicetree+bounces-322229-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:21:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FC071DC9F
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 18:21:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b17ecv03;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322229-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322229-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B094D300EF6D
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 16:17:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D360430CDE;
	Tue,  7 Jul 2026 16:17:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FABD1DF980;
	Tue,  7 Jul 2026 16:17:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783441046; cv=none; b=E3dDLXpKEiH3CdthsLv83Wq9mtG6JEaJtPUYpiMPj39urBSGQH4bJA8HX7WcdLPlqGjYMxplzsjH53gsfGac4w25JQbTBnjiTohFUWO/f6Vr3Ev2smUxWoWQ2kWhsg0TGbKHZ2N3GeiZRp0HZCDzA43W8lQu7EB/lnrAHdEiBpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783441046; c=relaxed/simple;
	bh=xgLExI0ZuL5DFxT5uluj7rr7PhbjkL77u6MZZR5PtbI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i92jEi0SO5QvoQDwOji2mEFnaJ38xdXMiJv0qoEUUhUvy5/h2bWS3ffPyuh/pBZP9gkNFfOvXKXo58Vy7SmV6iDTQTV/NhvwZsmBdgqqXOplb0YoT7KRD5U/5ujzILjSXyGUynmkdXkOwyXOkx/G9qxi31OpTcHP7Y+tUFDFv+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b17ecv03; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D33B31F000E9;
	Tue,  7 Jul 2026 16:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783441044;
	bh=xgLExI0ZuL5DFxT5uluj7rr7PhbjkL77u6MZZR5PtbI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b17ecv03MbfTVaSpEzLG6tQCe0ajEsjzdNtBF5yFEw/xPJ9mPRLmTOQXzIj7xi5rl
	 5L+BXGRiEEFdKGSBkxo8EEtDk3rXdY8rSN8ZE0u5JMqCc+rWqYA/LtDNYOo6To3uXs
	 feJg2WMJard4Bb1WAOF5R9F0YffjOaq9AGBgNSbwXYK8kzTwaq8P1Gchj5EaqxZAu/
	 eUA2qKVCfT2e9eljFA8jolj9IN409SZLQnbi/E0MjVb3ygyX2wr2/yisVbDhqVGuWF
	 dTNhqfICrvYN/KYsCjks5axFkmWfvYOtvPQreo7yB6o7lUPiyG0fhzAsMnMgr5YvEQ
	 lvIkg6FCHDCLQ==
Date: Tue, 7 Jul 2026 17:17:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
	Markus Niebel <Markus.Niebel@ew.tq-group.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: add MBa93xxCA as mainboard for
 TQMa91xxCA and TQMa91xxLA SOM
Message-ID: <20260707-shriek-pogo-92d37cd50a0f@spud>
References: <20260707091424.1702245-1-alexander.stein@ew.tq-group.com>
 <20260707091424.1702245-2-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bzecNQfsPEZxdUFH"
Content-Disposition: inline
In-Reply-To: <20260707091424.1702245-2-alexander.stein@ew.tq-group.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:alexander.stein@ew.tq-group.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:shawnguo@kernel.org,m:Markus.Niebel@ew.tq-group.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322229-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,ew.tq-group.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email,spud:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 33FC071DC9F

--bzecNQfsPEZxdUFH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--bzecNQfsPEZxdUFH
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak0mjwAKCRB4tDGHoIJi
0ngXAP4weMhA+W5ND8F/QU6x2I5O9/BMKIggo/2x2S9gYoOMJQEA/2wqCmFM7+6V
Mrx0WZSCsLtoqqQ56pFvzD7qbnF9pwE=
=KS78
-----END PGP SIGNATURE-----

--bzecNQfsPEZxdUFH--

