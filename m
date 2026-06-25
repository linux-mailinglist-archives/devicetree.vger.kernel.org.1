Return-Path: <devicetree+bounces-315766-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8W2lHrZYPWqY1ggAu9opvQ
	(envelope-from <devicetree+bounces-315766-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:35:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C55646C77FE
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:35:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="A/IlxFk4";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315766-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315766-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A65230207F1
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:35:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD113E832B;
	Thu, 25 Jun 2026 16:34:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 567703A7F41;
	Thu, 25 Jun 2026 16:34:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782405299; cv=none; b=HaVQzqi7S/hOI11LA5OL54uFrGPQTIZdW8l1zrykw9r6RjvNUzvScjwO07gplQ5+vqjpM/z4Gwxj0MU2jAhX3j9oRxajqcFPd94I4mo/ph6cZ71aexTSN6jaQ7norz8HFtBrLCYf2Bu33Olk4pCkVJrgxgSFERg9n17quB3xrRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782405299; c=relaxed/simple;
	bh=Pr3pDYbeloS9ZBEUPJo6GMR5fF0kPmCcEgRGN23WLJI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EsYxLQ6f2ZZD6yMpUvCy8ge71L1zlE0kS6xIolekDDVnc5QOMzgM83H0tdGa45DNSIfFMSZaVs1iQFzciY+QVYMY0KACL0tWMmFld/7WJmUBa7FSKG7eKZnjcg938eUat8DboX2xudgMWE7rUiqO0fPb5AKlScFBgadQ77K3dR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/IlxFk4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4994D1F000E9;
	Thu, 25 Jun 2026 16:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782405298;
	bh=Pr3pDYbeloS9ZBEUPJo6GMR5fF0kPmCcEgRGN23WLJI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A/IlxFk4NmEMjtJt4FMt46/qYZbCtXBoRhVBzQykp2wfaN5hSRGZM8N2f88bs8Cby
	 exK1ViB1prA6qpwPotUn+6q6t74AXxmmc86Glj3LzTbzukSZjUNQhDxAL8DIJyGTGP
	 +ALAP/GNOIDcjSgDsKuuzedwfoWI1OonChmqXaWfUPgAjaosKAazcEOp2ZisFFA1LH
	 XyDVmAPqzbU1BnozhWqpRflqGp3UtnHyvv0JfZ9Wv5p3QaQC/pyI6rnT9UnrN+dryn
	 3WBNQUiKjkOgAPa4ttOXWTD9fCWG9ag2TU8DLp+FdJ+lKhhabQtYNYyZjBU2jJndiu
	 K4Oh+E5lOGSfQ==
Date: Thu, 25 Jun 2026 17:34:54 +0100
From: Conor Dooley <conor@kernel.org>
To: Udaya Kiran Challa <challauday369@gmail.com>
Cc: tsbogend@alpha.franken.de, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, skhan@linuxfoundation.org,
	me@brighamcampbell.com, linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] spi: dt-bindings: microchip,pic32mzda-sqi: Convert to
 DT schema
Message-ID: <20260625-omen-stark-6bb827ebcc43@spud>
References: <20260625060903.14661-1-challauday369@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UbhGQTDbkok7ej+s"
Content-Disposition: inline
In-Reply-To: <20260625060903.14661-1-challauday369@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-315766-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS(0.00)[m:challauday369@gmail.com,m:tsbogend@alpha.franken.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:skhan@linuxfoundation.org,m:me@brighamcampbell.com,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_SEVEN(0.00)[10];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,microchip.com:email,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C55646C77FE


--UbhGQTDbkok7ej+s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--UbhGQTDbkok7ej+s
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaj1YrgAKCRB4tDGHoIJi
0mr7AQCuu1XoRIyvP+GyycPJ+B0Lv30+TxbFb/gGoWssyNlGWgD/SgDDxVZ6gY7b
Uen8sdjB5kRYyOUidhYy8j51WYJddQU=
=QuXN
-----END PGP SIGNATURE-----

--UbhGQTDbkok7ej+s--

