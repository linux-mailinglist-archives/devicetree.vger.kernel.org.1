Return-Path: <devicetree+bounces-306477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 33ouIa2DIGpJ4gAAu9opvQ
	(envelope-from <devicetree+bounces-306477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:42:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0BEE63AF27
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 21:42:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SZQWscm7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306477-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306477-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2071D302D530
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 19:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6373EF0A8;
	Wed,  3 Jun 2026 19:37:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBB04204E
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 19:37:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780515423; cv=none; b=U5IV+JPWyh7MqyDTyKVyCC8yTA1g9qIDHICdDF02Tf7WrzoUb2gBp1JsKLWeJQt5bps8eKNp3LAkHCaCGLIBNcfDZPR+AUo45FW4jTdW3ZcvanaMzj1kLxuEwl3GTFa3gQbJnBKRDumyNWM9DHf9Jy5IAE1qnZo0IH/FOTQVv/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780515423; c=relaxed/simple;
	bh=s3qnc/SJWDZVqy5joLNzLjwUlB1aBEwjBqBmT0FU8gY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lnFPVYx6jEdiFJLYF6ZLyxuvpK7/gNrCPahdy0BTpl+/lBKauk4MfshSudwN0gW2bDerXhQNE3BFPBz5w6hXKTZQr9doJz6nFIC26b21W94YItBpoy0fEZDu7E5CP3gfIoyo6UZXXZUK3/XSSOaXet0EPDoMIdXddxIfvVy7abQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SZQWscm7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E76581F00893;
	Wed,  3 Jun 2026 19:37:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780515422;
	bh=s3qnc/SJWDZVqy5joLNzLjwUlB1aBEwjBqBmT0FU8gY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SZQWscm7L2vXrJbDhlkoQkeUJkLEDBlD2comFRsfLCkSwI+Z+b93Gc3jB8oSWL+ja
	 KbUxFtO6lhSwuUFQuX2tV9SnHqBa2Tqnbw4JTfVwWubAk+00Ov/AGKLPLA9oxjTiX0
	 t2rzWJB4uXUI9AtBjyJXATFh/zjnuU4rUJib3XMYXiSL+DK0u4slD/t/+koMtZvwnk
	 4xLDBD97wwdk1+NmYJTbJHhfXbVUlfyyouFXnADc5KHBKJD4eLjMiONgmkdTCxEe7g
	 PAzuw/w5SM2VttqKq2rhxjUcgurCWykKo8Mgmwz+C5pR/M0lvbeqdbFWjgJ0MyXhwV
	 yNMh/r+aFanKw==
Date: Wed, 3 Jun 2026 12:37:00 -0700
From: Drew Fustini <fustini@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Joel Stanley <joel@jms.id.au>, Paul Walmsley <pjw@kernel.org>,
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 6/7] dt-bindings: riscv: Add Tenstorrent Atlantis platform
Message-ID: <aiCCXO0XFfFSdLQB@gen8>
References: <20260603074222.593243-1-joel@jms.id.au>
 <20260603074222.593243-7-joel@jms.id.au>
 <20260603-enrich-primal-69483cc92b84@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="PKkjq6arGK0OljzM"
Content-Disposition: inline
In-Reply-To: <20260603-enrich-primal-69483cc92b84@spud>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
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
	TAGGED_FROM(0.00)[bounces-306477-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[jms.id.au,kernel.org,dabbelt.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D0BEE63AF27


--PKkjq6arGK0OljzM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 05:17:41PM +0100, Conor Dooley wrote:
> On Wed, Jun 03, 2026 at 05:12:18PM +0930, Joel Stanley wrote:
> > Add compatible for the Tenstorrent Atlantis platform.
> >=20
> > Signed-off-by: Joel Stanley <joel@jms.id.au>
> > Signed-off-by: Drew Fustini <fustini@kernel.org>
>=20
> This one has weird signoff stuff.
> pw-bot: changes-requested

Sorry about that. At one point, I was going to send the series so my SoB
got added. It should be dropped from all of these patches authored by
Joel.

Thanks,
Drew

--PKkjq6arGK0OljzM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQSy8G7QpEpV9aCf6Lbb7CzD2SixDAUCaiCCVwAKCRDb7CzD2Six
DFzjAQDsnxKEvbM+HmKWbwYeRsAEhTUoAXLpfl47EcMzOmajiAEA5LQwNiBUIk0f
x+ZN3WrLFvotRZClG34vhMQZHQU9FQg=
=T1bm
-----END PGP SIGNATURE-----

--PKkjq6arGK0OljzM--

