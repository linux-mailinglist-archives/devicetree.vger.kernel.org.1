Return-Path: <devicetree+bounces-313560-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SpQsJo0eNGoaPAYAu9opvQ
	(envelope-from <devicetree+bounces-313560-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:36:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05CDD6A1A17
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 18:36:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KYMKz2wD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313560-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313560-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E0E6A3038D32
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 16:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B81C72EF66B;
	Thu, 18 Jun 2026 16:36:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEDFB5A79B;
	Thu, 18 Jun 2026 16:36:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781800586; cv=none; b=AVqaOVgL2m88v4LMxAa+usknXKlFMMZX0JclJ4v6DST3N51PvKBwJkrqY8IEaHNUfWAWxmqkxJIMAxi1zhSeu1k8DBm6zrDK8Ew7ZASZtCbZ9hnBsrdd7vFGFIafYFcp2rsTqKahAgpGxLTDsD7QC/JEJNF+CYtFpDYIVrzRwkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781800586; c=relaxed/simple;
	bh=pNo4inQ1HPMdHcCit/SJJC2T4x0ZyR3LSIF0xWW0QGw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qpTKCf0n+ZGne9Incb3Ip8N4IYkbj7kWisUg2EWQh+Yi6vRwh4W9Mt0xrkaMBmSUrmX1wJUHjjqIxrv9uqWYgGP61+gOBXhzjJ2ka/dHHXD/TXFsA4zIt7EuyWeeYOWzkPlICXpVRnRJaNqJHgYSGWVt/9xmhRIpyXQ/XWj1UHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KYMKz2wD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1031E1F000E9;
	Thu, 18 Jun 2026 16:36:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781800585;
	bh=pNo4inQ1HPMdHcCit/SJJC2T4x0ZyR3LSIF0xWW0QGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=KYMKz2wDPf552LK5H8v9S2MzILXeSAYoIlf5k6L6DyANrMx7fgaGr/zmjThn0S8MI
	 bpcTX1EvuLY1dLDM2kd119113yoyN1y4hcaNm7vRJUR+f12gTCQJPMoMWkLPUe9blW
	 k0UAoal/iDAG4OHlkL9fJDXwTErGbsehnMyXjVSHpIEAUsuZqj+yb+V8F8VH8emfbT
	 77tx1867YYMlwYH9D+AlyA+xEsKyd02HM7wu7oIFDEXHnwTPjYtI/yxH+tfEOVV1L2
	 I+JqJThHUUQ5D5ZOQCAp1WG0uwwib6rDEABRVppB4UHXXms/eTGaBrTLcZxSCoJ0ZO
	 SN4AX3zuQtftA==
Date: Thu, 18 Jun 2026 17:36:19 +0100
From: Conor Dooley <conor@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: broonie@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, miquel.raynal@bootlin.com, richard@nod.at,
	vigneshr@ti.com, pratyush@kernel.org, mwalle@kernel.org,
	takahiro.kuwano@infineon.com, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mtd@lists.infradead.org, praneeth@ti.com, u-kumar1@ti.com,
	a-dutta@ti.com
Subject: Re: [PATCH v4 01/16] spi: dt-bindings: add
 spi-max-post-config-frequency property
Message-ID: <20260618-riveter-hazard-5b0dfeda7e04@spud>
References: <20260618073725.84733-1-s-k6@ti.com>
 <20260618073725.84733-2-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GBf06EHIMH3rRyMj"
Content-Disposition: inline
In-Reply-To: <20260618073725.84733-2-s-k6@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:miquel.raynal@bootlin.com,m:richard@nod.at,m:vigneshr@ti.com,m:pratyush@kernel.org,m:mwalle@kernel.org,m:takahiro.kuwano@infineon.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:praneeth@ti.com,m:u-kumar1@ti.com,m:a-dutta@ti.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-313560-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 05CDD6A1A17


--GBf06EHIMH3rRyMj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jun 18, 2026 at 01:07:10PM +0530, Santhosh Kumar K wrote:
> Add spi-max-post-config-frequency, a generic uint32 property for SPI
> peripherals that support two distinct clock rates: a conservative rate
> always reachable without controller configuration, and a higher rate
> reachable only after controller-side configuration such as PHY tuning.
>=20
> When both properties are present, spi-max-frequency gives the
> conservative pre-configuration rate and spi-max-post-config-frequency
> gives the higher post-configuration target.
>=20
> Signed-off-by: Santhosh Kumar K <s-k6@ti.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--GBf06EHIMH3rRyMj
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajQegAAKCRB4tDGHoIJi
0rHJAQDTSDQAP+yn2wdIJbpW0y4J4gyuHtgDq+SJTys3pJjtbQD/VQBXyA9ykY4u
smszRjjr7E8Jlx4qYtMrAp7eAZmCrAc=
=ryPZ
-----END PGP SIGNATURE-----

--GBf06EHIMH3rRyMj--

