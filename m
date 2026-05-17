Return-Path: <devicetree+bounces-299046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YH+bOWYpCmoNxQQAu9opvQ
	(envelope-from <devicetree+bounces-299046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 22:47:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 624C7563D2D
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 22:47:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47E11300A13C
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 20:47:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7B32C3271;
	Sun, 17 May 2026 20:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s16+Pkgx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299ACE54B;
	Sun, 17 May 2026 20:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779050852; cv=none; b=TpbTOnICAnisddOOBKWWtIt3DCut73GzjQasXPIG1r4E7f0tyRxlgua6NwsxxqwhstnX6K1c7oDKrQy2r7pfbfDNvaj3eIP+W7AORObTD+S1kf/JFRMAUGJQ1RNeGeGqClcFZZn3WkP2gBMKeXFxW2R2QymDwYFiuxKSK2SSoEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779050852; c=relaxed/simple;
	bh=8l2JZyd0qp+/2cMhcZGlUMdUhecY4ayHyTnCgWxo6lM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jXjopv4eJ/qjocKxaUVpN2lozmI9Q7QnrrhaipiFnOL6PwDphNtC92U8+/8Nxp3tFzZGQJ+aUHRAyqJyae1aVI2dMfoU9Jkrc3fNkQ+0bpj4JWwhFCo8XT9RMIxgFDCytk46MbD4bfZ9cd/ji0u80bfzdVy6xinDmHUQ4hBaYMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s16+Pkgx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEDCDC2BCB8;
	Sun, 17 May 2026 20:47:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779050851;
	bh=8l2JZyd0qp+/2cMhcZGlUMdUhecY4ayHyTnCgWxo6lM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s16+PkgxNgbz04nvSqZ1NDkGXVnt8BLgLnMZgZqS0bMkNjjYwi50NQmw82jxSor1x
	 XIPe8iReQbPmWHNdscx3XyfeukMxW3afk5bk2L+PGNfl3N/SSJMw2kJr2ZPig+8A2z
	 KZRPdsVGs1LhX/qVe0a35RnwClFRlKalewmTObatNIJsE4IQAQ/2bvJqWdylXiFYB7
	 Tl+qCILAay+eLbI4zZxkWpYIeyB8wPa1YgS9I6UHKL+qNkIq8wXXFRezcEbOaPAyeF
	 gHsCTQqXOX6z+3L8ddlCe8QzRrTaqshgTsyU/EIfxKYkAgCO/d78xzTyHmKkPAiT5q
	 dTq2t1BhvCWrg==
Date: Sun, 17 May 2026 21:47:26 +0100
From: Conor Dooley <conor@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Cc: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: add binding header for
 sf21-topcrm
Message-ID: <20260517-cartoon-slather-ec5ad7605449@spud>
References: <20260517-sf21-topcrm-v1-0-438f2e0513ff@gmail.com>
 <20260517-sf21-topcrm-v1-2-438f2e0513ff@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="NDNiJudJTjPz3l07"
Content-Disposition: inline
In-Reply-To: <20260517-sf21-topcrm-v1-2-438f2e0513ff@gmail.com>
X-Rspamd-Queue-Id: 624C7563D2D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-299046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--NDNiJudJTjPz3l07
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, May 17, 2026 at 10:12:56PM +0800, Chuanhong Guo wrote:
> +#define SF21_CLK_PCIE_REFP		30
> +#define SF21_CLK_MAX			31

> +#define SF21_RESET_IROM			17
> +#define SF21_RESET_MAX			18


Having _MAX is not permitted, but is also really confusing that "max"
appears to be max+1, so actually represents the count not the max?

--NDNiJudJTjPz3l07
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagopXgAKCRB4tDGHoIJi
0ryUAQDutzNna+dS1Srtfi1let6kex89J0o1R0P7Q0ufH5QsowD/QrELQWfp+sz7
6qMbRiR/I1cEmEy9KpZW6LY936HAJws=
=S1b8
-----END PGP SIGNATURE-----

--NDNiJudJTjPz3l07--

