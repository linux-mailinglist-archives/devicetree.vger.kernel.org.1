Return-Path: <devicetree+bounces-306113-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F7v4IIPxH2oStAAAu9opvQ
	(envelope-from <devicetree+bounces-306113-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:18:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1784863616F
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 11:18:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XfY1Ggja;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306113-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306113-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CD48C300D75E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 09:16:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 544FC29AAFA;
	Wed,  3 Jun 2026 09:16:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099FD383990
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 09:16:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780478209; cv=none; b=ZSyAg+sHL1TvhqezuDKjE+XbmOmWgnyNWVpx21t2JCOmEzLDVxAi8ZJeC1JkIuWNA131q6oPXNDWviZtjT1YUR3YGOYNSZGi5L11G0bY2HE8p2ITjuLZdwxitOupRcYyJ8A8dld9VGuTSzlhExMSKjdnS2x7/a8oY4NQUvEuinU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780478209; c=relaxed/simple;
	bh=S0Dp3roNTafspkw5dXHraXdzk0Q2pledRTqXBt74W9A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGnJG9EScfSq9/P15R7ZcpV9RfRDJoCyxpmBqeKLK+G+DppvZNkqUrnqKA+RxNBo3Te5AelfBGMParddDP9t/Wr/gKdk6WcolmP+Zt0+l+FkrSHmZVIoouU+IcpodWwE7i/XON5wAme5ST+qgYJwzqggAu0TRem5dcuiFLFedNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfY1Ggja; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 113121F00893;
	Wed,  3 Jun 2026 09:16:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780478206;
	bh=S0Dp3roNTafspkw5dXHraXdzk0Q2pledRTqXBt74W9A=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=XfY1Ggja5PfDw5V3R1IhEm11y6Fmp/WnqGZdWUa1emZlRg47O5AdZguDyh7S7ggZp
	 /LjEQZQfpwtlc/QwrYc+stfBK6CQNK6mk2x5UFeii24djZg4jebTkmvFZP6YLEV+p+
	 t0dw881j28wB9q2qs9F8SGZtjxMIOwtp3dUUUB5lod8uFfqPwnztaK02qhHX5u6X16
	 kRkthDlFAk8lUo4xJ/dwdn1MYngL4CaTUVyHyJ6AUyAUGYorjBQdqjli8X5WeFnOrP
	 a6L4FFvZ/uGo0gE//ZnqQQViOgeefKUHAztZv1ap/BFCT2WZj2KnsqWg83zJpQiwY+
	 McS90bsay30BQ==
Date: Wed, 3 Jun 2026 10:16:42 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH 7/7] riscv: dts: tenstorrent: Add Atlantis platform
Message-ID: <20260603-selective-labored-f9afc652ac7b@spud>
References: <20260603074222.593243-1-joel@jms.id.au>
 <20260603074222.593243-8-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="v38FfJYRf01Nq9M/"
Content-Disposition: inline
In-Reply-To: <20260603074222.593243-8-joel@jms.id.au>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306113-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1784863616F


--v38FfJYRf01Nq9M/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 03, 2026 at 05:12:19PM +0930, Joel Stanley wrote:
> Add initial support for the Tenstorrent Atlantis platform, based on the
> Atlantis SoC featuring 8x RVA23-compliant Tenstorrent Ascalon-XG cores.
>=20
> The evb machine represents an internal bringup vehicle with just the
> interrupt controllers and a UART. This will be replaced in time with a
> full featured machine once details are available.
>=20
> Signed-off-by: Drew Fustini <fustini@kernel.org>
> Signed-off-by: Joel Stanley <joel@jms.id.au>

Signoff chain here, and elsewhere is not right.
What did Drew do? Are they the author or is there a missing
Co-developed-by?

--v38FfJYRf01Nq9M/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCah/w5gAKCRB4tDGHoIJi
0nXSAP9ril9N3Rwg+mCFumbafIDvR95k++C9ZqZMpl6sHtK68wEA8GkzsDBwpHkf
vShF75TGDsjz/1/VJFL0KRKfrFt3Xwc=
=/UR0
-----END PGP SIGNATURE-----

--v38FfJYRf01Nq9M/--

