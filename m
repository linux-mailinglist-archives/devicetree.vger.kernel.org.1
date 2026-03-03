Return-Path: <devicetree+bounces-270666-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEiWBeAXp2m+dgAAu9opvQ
	(envelope-from <devicetree+bounces-270666-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:18:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 59A141F480A
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 18:18:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9D3043024A49
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 17:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F37237B025;
	Tue,  3 Mar 2026 17:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G+KddYcP"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0F9C18DB01;
	Tue,  3 Mar 2026 17:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772558300; cv=none; b=XcLK5pQlbV6SIIDQPcyqd4ulUQp4YHu/CB6Pkj1lqgXr+YtW0QrbGGVwj9y079iejb8T7p5HtzZzPBUX8De62CUORAMe+vfw3G90DWweTMBcnioums1toth/5q1Tdi+J9Gg95Zcz+VhglVL7fMqXTvjiKz0H9XkOKe4hzz/wOCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772558300; c=relaxed/simple;
	bh=2EwOl9X8rGmzKbFeYz5dMIhg7IdHyxKIF8yZ/8i419c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hr4gKxyXlfwTzGpRTl9b+wSCS2+DpX5gH/lKT8aYhfFxZ/3NpIC1g29HKuzTS5TjJZ+MvyFsffzTL89L+rhjmncGxkUQg2jZQY94MGecyzD00LrSSPph0eYQNGkNSsvgGDcDo0ZaCJcPPl/OyZt7RYZLIqH7Bg3cg2p81xPHvT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G+KddYcP; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAA8AC116C6;
	Tue,  3 Mar 2026 17:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772558299;
	bh=2EwOl9X8rGmzKbFeYz5dMIhg7IdHyxKIF8yZ/8i419c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=G+KddYcPdyxLWyI2kho0GPcLfUYmGnBvTMI8hDQYyfKn9e2YGVSsTdP9tfEKb0JPa
	 XfUGwPxYEiUhS/JgYwNkyAT/XEvK67tchcXl4zTRpcslcDqXR5BmDQhqyxagUDjF6e
	 Mcg/Lygz/NfUqggpBNzMe4jgvZ96a0lpk6HrmnoaoTdH+uwf9lEasYwJdzMOJ/88NB
	 NDFJIUglgFf3FLeIClWDutWFGqEvALrg8Pfl8N9Eisaln20crzWZunjFjivO8mcMCg
	 EceP00FiIkl+F7UwVQtBJtqUuwEJ2+sdUSk8z+uvTvqMwXrARB3oD6vqD55OdP/wwb
	 C++45dBf7S1qQ==
Date: Tue, 3 Mar 2026 17:18:15 +0000
From: Conor Dooley <conor@kernel.org>
To: linux-kernel@vger.kernel.org
Cc: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>,
	Conor Dooley <conor.dooley@microchip.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH v1] dt-bindings: timer: sifive,clint: add pic64gx
 compatibility
Message-ID: <20260303-obsessive-explode-70ba51a1d68b@spud>
References: <20251117-sadly-scrap-4671550cd78d@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="b23RY4XFIHCh6JOP"
Content-Disposition: inline
In-Reply-To: <20251117-sadly-scrap-4671550cd78d@spud>
X-Rspamd-Queue-Id: 59A141F480A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270666-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action


--b23RY4XFIHCh6JOP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 17, 2025 at 03:29:54PM +0000, Conor Dooley wrote:
> From: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
>=20
> As mention in sifive,clint.yaml, a specific compatible should be used
> for pic64gx, so here it is.
>=20
> Signed-off-by: Pierre-Henry Moussay <pierre-henry.moussay@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

I've taken this with the dts that depends on it.

--b23RY4XFIHCh6JOP
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaacX1wAKCRB4tDGHoIJi
0hOeAQC6fWkh1G93xOzZIYEVwVbzb1p9N08tPL17ETCf1hO9egD9EsDAEcXuwjRZ
BisqK3u9JcQmNymBYonduqC8/0oDjwo=
=ljGp
-----END PGP SIGNATURE-----

--b23RY4XFIHCh6JOP--

