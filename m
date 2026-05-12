Return-Path: <devicetree+bounces-296373-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yDpvEE1iA2oq5gEAu9opvQ
	(envelope-from <devicetree+bounces-296373-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:24:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ADC525C4D
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BA3E63006B29
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 17:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 347A83D5C01;
	Tue, 12 May 2026 17:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="af5siimK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7B623EA89;
	Tue, 12 May 2026 17:16:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778606216; cv=none; b=I+tohQ6jghNigBO7Tv/LI57sDmcUZ7EB1Zg6xDcZpcVDMvOUZEaOWTKd6AwjooOJHaBN/rlz1/aXGbRFRZgtcPKEcQLhv+nCiPiwgXHuWZ3p4LLRRXikFChly2o1TlmYqt4jLlddY0LVwVAhRqUd9lzGYnzS0LoVBGzrdzE0YhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778606216; c=relaxed/simple;
	bh=h3+saH40V9raQPbgS02i6cj9jJJtT0EIO7Z4vePam+M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mDAaYq91ibZouKgJS7FmWXMICipUT6b2ZcMsPvYEp6vVKeD+f0jHCyulA3ou+jM9itl3eu03qFGGxHhD2ykJ+Gn+ddFfZQGhhSgnC8gix8rESKx40McAP/KZ69eVuBCxyKgJaa4r53fSYQ5iIojkXP2QJ3BOMsb4ufIFfH/LIoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=af5siimK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D6224C2BCB0;
	Tue, 12 May 2026 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778606215;
	bh=h3+saH40V9raQPbgS02i6cj9jJJtT0EIO7Z4vePam+M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=af5siimKkJ7xOf34VllZYZVmxcieNj4EdZZhOB3WmOMD2CrnCpkSBXmwvNzb3Khxf
	 VG/I+t9VxWsoJlcMZEhY76sdDA1noxUulE8vHwtQ2hvZOgCW2SWXvXBNZ8qvbpB7c+
	 zBihCg10d2vb4FLlok1Q4t4FJdlV/9lptOAWRtYiZFuQIbm3GFvz/eTEjD9MTapbi+
	 VUlFqA8t9neM8sXDXgT1mPv1RCxQOZ504QJUJ1CuNM/wSILfqEMdpQbychm67bR9Qc
	 581vrOS1keL1geuPTpEqUHQxSb8vnn7TGDVb2ANjads3S30DE6K5IF9n1a4ELHxk7P
	 W3vk+q+Bq3fkQ==
Date: Tue, 12 May 2026 18:16:50 +0100
From: Conor Dooley <conor@kernel.org>
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Magnus Damm <magnus.damm@gmail.com>,
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: Re: [PATCH 3/4] dt-bindings: clock: renesas,r9a09g077/87: Add
 LCDC_CLKD clock ID
Message-ID: <20260512-unstopped-countdown-313d50b5d3b7@spud>
References: <20260511191910.1945705-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20260511191910.1945705-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="oZWL2xFTBxMYOVW0"
Content-Disposition: inline
In-Reply-To: <20260511191910.1945705-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Rspamd-Queue-Id: A7ADC525C4D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-296373-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[glider.be,baylibre.com,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--oZWL2xFTBxMYOVW0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

--oZWL2xFTBxMYOVW0
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNgggAKCRB4tDGHoIJi
0tOFAP9AzUh9sfcOd/Lnrb8OvCvUbHimfl3KM4W1Yia8iCCYywEAmBz2TZ9KqqsE
y3q0+446hukaJ5bzdWrQMr6WnfgKyAM=
=rwFc
-----END PGP SIGNATURE-----

--oZWL2xFTBxMYOVW0--

