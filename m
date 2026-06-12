Return-Path: <devicetree+bounces-311082-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id escIBFk3LGpnNwQAu9opvQ
	(envelope-from <devicetree+bounces-311082-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:44:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EACE67B08A
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:44:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YiGkM6CC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311082-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-311082-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 690E83022A91
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34DE93812DD;
	Fri, 12 Jun 2026 16:43:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1E931F998;
	Fri, 12 Jun 2026 16:43:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282590; cv=none; b=q/46FDLbZRmACTPSb5QyOFZHMpF1YvcpF9YzxiVtWRg5YDDE3QI2Eu6KkrtdwI/MsXwes6scwGl93tqZ7cnVyBYUvUMwr/tFs6C8qpq04PYs1ObxkVdGUZPzA8r4tBbPyi1UB1uLn+QB1ADuFwvc/7WzNfxsc06p0txFLec9MW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282590; c=relaxed/simple;
	bh=2hFyVOX9Qmybv7o9zWJHJ1lJ4C6SjaRoYYblpegTOC4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R2kmS+Z+7gYj0BbvofRrk6ACKm2NzsJpxGDZlG2EScCskEZuZ0pCfJeaYMQnNzyZuQ57zixVJ45JqIm1f96H3VhwUOi3DFZKdlplRJ0XF/66yt3me0zPcsF6teno2hD4AsFbz8BF4Zr/eID1eGcxTtsss35HoYPFI8YRw/MtaCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiGkM6CC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0D5B1F000E9;
	Fri, 12 Jun 2026 16:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282589;
	bh=2hFyVOX9Qmybv7o9zWJHJ1lJ4C6SjaRoYYblpegTOC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YiGkM6CC07SFtI9wZ0wjQa/gXrGWyQ+xZpvGN+3va/PktFSC1lkT4ca964e7445x3
	 6EmLTGld75Hj/5ci4q4mo3Zl0Bx34ghY265Kew/PZ/jbc+HqHxFFnbemRyN5MfaMCz
	 7NJGzqq5fj3wxOZHlCA/MTrh0peW1JEb/zbiX+tad+/qGkleQ0VSEkDJT9I+TDmPJH
	 VR3IOL4mkxGtm1t+fizrTHD1AYpjeVqyupkdSGg1Sw8Ixy0l7XU1U0sYcq/r2RpoxT
	 oA7AB0qx2H59oO4kBQuqJTjKx4GTTgpTF+QGRZ7+x3zss/D/t2np+Uk+8KVYON0BoL
	 qd3Udmhnqh3WQ==
Date: Fri, 12 Jun 2026 17:43:04 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexey Charkov <alchark@flipper.net>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: vendor-prefixes: Add Ugreen Group
 Limited
Message-ID: <20260612-chirping-catacomb-acb53680c4c4@spud>
References: <20260612-dh2300-mcu-v1-0-ab8db1617bc0@flipper.net>
 <20260612-dh2300-mcu-v1-1-ab8db1617bc0@flipper.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="LCPj24h9H5nR0ZzC"
Content-Disposition: inline
In-Reply-To: <20260612-dh2300-mcu-v1-1-ab8db1617bc0@flipper.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_RECIPIENTS(0.00)[m:alchark@flipper.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:lee@kernel.org,m:heiko@sntech.de,m:lgirdwood@gmail.com,m:broonie@kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311082-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,sntech.de,gmail.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,microchip.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EACE67B08A


--LCPj24h9H5nR0ZzC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--LCPj24h9H5nR0ZzC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiw3GAAKCRB4tDGHoIJi
0g1HAQCHsYPbaaUh4VsV+wWpDkVCfINVcMH7yGed6ikRWQWSCAD/fAcDGvCEesZH
Fede79+bUvv0bfmFqBdw3x7lVOY3FQg=
=XgWn
-----END PGP SIGNATURE-----

--LCPj24h9H5nR0ZzC--

