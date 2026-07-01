Return-Path: <devicetree+bounces-318834-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yR0rGzZJRWpY+AoAu9opvQ
	(envelope-from <devicetree+bounces-318834-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 19:07:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67C6F0287
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 19:07:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YGLO5Spk;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318834-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318834-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id F39D1303A700
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 17:00:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5710E386559;
	Wed,  1 Jul 2026 17:00:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500A6382398;
	Wed,  1 Jul 2026 17:00:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782925241; cv=none; b=jz9j0H1QB2+kaZtkBbcZjAW3EbVQS+UQFoP7DNrEF/oKQfpWIZOemWXVn99Xzyf5CNcY3pFAjRzd8c39Jtm1m7WdSXPjg1nvkhQwU6jEe8Ere2BVWoz9EDY2fEzZ39FKOLbCAgs7yLZdNGAoVvfFV8dFHTjdYabz4AZ7tYyPj70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782925241; c=relaxed/simple;
	bh=JC+/j6ZBXlnny43omE7BkbuuCLynHs52FvQW1HQv6Ss=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fKgFxKsWV7Ej9KaSnhvYpKX+cfVAcMcgkf2czg8nsCW2gnzoIj/5LOA39ZqotdJRvfw6cP9qJ8a0pUXc7g+Mp5EZn1N+JAYN2ZNBEPM3KqtvQ6ecjt0g/SWY3eSeFZsBi3leLR16D+B3FSRy1YAcxh7K9pOZNyOgzwCqPQFSark=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGLO5Spk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9482E1F00A3F;
	Wed,  1 Jul 2026 17:00:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782925240;
	bh=JC+/j6ZBXlnny43omE7BkbuuCLynHs52FvQW1HQv6Ss=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YGLO5SpkqhPRHG4Z61VB0g3UC/eW0ecHies6ziWVHdu+FkZqSIorOwcucHGLyU/9k
	 ukMHe+2MLiwARRI6jC8E9bA/xCNiLx1nVDHnTcYu/A8h0cboQVzvKJ9ntpmjtE55Nu
	 Iz0YTxuRiGtRP0WJDzZ9qg94J9CF8AU2FHetBOlm67nlD1ks91lT1gHueS/V5/i+yT
	 Fz/vg2WDQiaabVK05Tpz4SptL3r45aK+y7LhAJZf0Pnie60zQWjN4dw5bWZTi96fzO
	 mLZ26J5knSO/PoH4RQ86DKxinAEriC5ttpvmCJzmPdwJIy/dDu15AuaOOnidkj18uX
	 JdVN7vMt80oQg==
Date: Wed, 1 Jul 2026 18:00:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Pavel =?iso-8859-1?Q?L=F6bl?= <pavel@loebl.cz>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: si544: add si549 compatible
Message-ID: <20260701-product-tacking-f1ee934a1443@spud>
References: <20260701145101.3932655-1-pavel@loebl.cz>
 <20260701145101.3932655-2-pavel@loebl.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9ykzQNNb1f1Mze1L"
Content-Disposition: inline
In-Reply-To: <20260701145101.3932655-2-pavel@loebl.cz>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-318834-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:pavel@loebl.cz,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-clk@vger.kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CA67C6F0287

--9ykzQNNb1f1Mze1L
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--9ykzQNNb1f1Mze1L
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakVHtAAKCRB4tDGHoIJi
0iiMAQDSJKDxiEpXTxPkH6YomBKKSg07mIo7tRcfr6ftWmUowwEAl3j5EQrKaWKu
kiZaP7YLXhB0+r7rDlLVYolpACjFTgU=
=yGlr
-----END PGP SIGNATURE-----

--9ykzQNNb1f1Mze1L--

