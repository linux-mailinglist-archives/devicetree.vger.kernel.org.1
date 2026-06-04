Return-Path: <devicetree+bounces-306997-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id HSDzKeWtIWqNLAEAu9opvQ
	(envelope-from <devicetree+bounces-306997-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:55:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF2E642197
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 18:55:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fg5Lk2zV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306997-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306997-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0BC09306D0C8
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 16:44:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C17247CC83;
	Thu,  4 Jun 2026 16:44:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FBE429AAFA
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 16:44:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780591458; cv=none; b=duqjlH1RjUy7IxjgXLMtLfiUNX8JmVWi+YgI2rs9r/j9Sr7Sjz2H1+/B2M6R7GydWm5ZIQOfTyq5h9h2qsR7MhKceWlT4CIApVxqnKptofsDdzFd/eaJvZG5iTjw4qC5aNcqtMBugftmQwvNmBkrvjYt22k1Tm39hiHVygstQAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780591458; c=relaxed/simple;
	bh=xpfCQb0f0RQ9VM7+cHYIDy/L/aEeP4pps5RxAlULLvY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ttD4K04mZwYppv7pGTGXZR4KVyR8pxhA9uaznr5KLwU1lVsc2rXgZo+IEQ1apKcj6LD5xl4u1sjsdVBf7ZSx7ABgKzexz72F9RyCZbgPor7MTQcLmQQVNBMkiKBPDnOV81B5R5C2PrDk+kQql2WAcAc1ETXLZVsK63VSkzPZk0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fg5Lk2zV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3CF6C1F00893;
	Thu,  4 Jun 2026 16:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780591456;
	bh=xpfCQb0f0RQ9VM7+cHYIDy/L/aEeP4pps5RxAlULLvY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=fg5Lk2zVDgIbt0983DWzuNz5E9iTFH8YDgTIrfgvw3jszyYMQk3NdJl7MgcbrQgvH
	 eCoS/rOwdVYzZkXlO1bMyAEgoy0YjSPtamFqFX9RBPYfGsISVYCnR37ykDSQbbr6qH
	 bnDHers69O8hb+J1/MzVqqKD1c8y/beN0p3ChXr5iCX9YZhPcZSc/PD0YGJNfIq4dn
	 uP+RBFkij5CGf1PZQnqRF+fOdE6kmBUHI6C6T+1BXZTD0N6/6QkLEgg+vBg45gKf/6
	 GtN/lNDOckNwE5/nDaW/DjLfFDLfZ8T2vm+rzuibXH+/pf6zQE+bjZdlM4x63mx5KZ
	 Mv0n7lohQX4SA==
Date: Thu, 4 Jun 2026 17:44:12 +0100
From: Conor Dooley <conor@kernel.org>
To: Joel Stanley <joel@jms.id.au>
Cc: Paul Walmsley <pjw@kernel.org>, Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>,
	Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Nicholas Piggin <npiggin@gmail.com>,
	Michael Ellerman <mpe@kernel.org>,
	Drew Fustini <fustini@kernel.org>, linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/7] dt-bindings: riscv: cpus: Add Tenstorrent Ascalon
Message-ID: <20260604-ravioli-expansion-cf5215234bab@spud>
References: <20260604143957.668047-1-joel@jms.id.au>
 <20260604143957.668047-4-joel@jms.id.au>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="1yPvnAK5LiPXdjaq"
Content-Disposition: inline
In-Reply-To: <20260604143957.668047-4-joel@jms.id.au>
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
	TAGGED_FROM(0.00)[bounces-306997-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:pjw@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:palmer@dabbelt.com,m:asrinivasan@oss.tenstorrent.com,m:anup@brainfault.org,m:aou@eecs.berkeley.edu,m:alex@ghiti.fr,m:npiggin@gmail.com,m:mpe@kernel.org,m:fustini@kernel.org,m:linux-riscv@lists.infradead.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,oss.tenstorrent.com,brainfault.org,eecs.berkeley.edu,ghiti.fr,gmail.com,lists.infradead.org,vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,microchip.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FF2E642197


--1yPvnAK5LiPXdjaq
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--1yPvnAK5LiPXdjaq
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiGrXAAKCRB4tDGHoIJi
0gy7APwIkV8QZB6pyK9SrYi8NFGK3QBzxZergUQIMWqX2XRNpQEA0Lhw/PgdYacX
dxegYUg1eO65xisg5PDFbEbMlo3v4gk=
=LWbO
-----END PGP SIGNATURE-----

--1yPvnAK5LiPXdjaq--

