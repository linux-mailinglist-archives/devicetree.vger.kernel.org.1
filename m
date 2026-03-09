Return-Path: <devicetree+bounces-273094-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJigCgUlr2mzOgIAu9opvQ
	(envelope-from <devicetree+bounces-273094-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:52:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 25AAB240608
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF519300B8FB
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:51:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29881410D21;
	Mon,  9 Mar 2026 19:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tfHeGXWS"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0672019CD1D;
	Mon,  9 Mar 2026 19:51:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085910; cv=none; b=TPzzAr5fGy8QxrAsvC5MakVUxDU5uHh8mDLmx2kM/l7Q/Ne+DcvXFijTAbOG28rQHBOCxjsFK4OVZhprZG1l8mCJmYjS+pgvXaCafcq9mdHHs61PGuRROBmBlDH9rmaf7csMh9vd1aTBv1PvveG2LhHjXJnVj9O9oaNCRWC9eNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085910; c=relaxed/simple;
	bh=xM8/Ny/r4IriTwSNVFwt/X7/4waxHBRM2vNObYmgcWg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sTVAqxCyPdSnUslH2YRpgvmaS9UZsrxdPN85FRETgYHV3o0drVLmC8Nx+fPcP1b7Mk7P13nJWQVWwQMsBYglY0bpLjXxCgiwT/IATLOZMMN06szvfphZGwzXZYFtja0QruK7RqXPs4hrYPNSiYP1mRGZUjr5hQg/1TYamZrxszc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tfHeGXWS; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EEDFC4CEF7;
	Mon,  9 Mar 2026 19:51:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773085909;
	bh=xM8/Ny/r4IriTwSNVFwt/X7/4waxHBRM2vNObYmgcWg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tfHeGXWSG0uwvPDJY2nCRkdMzaC2IRdryzlgp+p0E83FrULcn4LOuUh577PcK8AuB
	 8OilqStmnNO0KgbOnteiyH7zzgRR9CCybSVaXJPyXewRcEp8mg+bEel4UUETzGLnZW
	 We7VAa7aTPnuZsoF5Im9J7rkJNYknL/7077/FtxQuMG/pVp0XUXfPQ1wtiQqAfuh9k
	 rsKBCIbiNlGtYL2E20GgxQbid0Bzg0B/Rb4mSmw3F1oShKM5Jz+g/w5n9y7imBqKUP
	 ForZFKRrKHNFZ2JRoO6mE4CE1nUcMI/NeKKo9Nymw3G4uQEGaK25agXjKG4YLtmfJ9
	 AQLrLZvbWA6Kg==
Date: Mon, 9 Mar 2026 12:51:47 -0700
From: Drew Fustini <fustini@kernel.org>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, mpe@kernel.org, mpe@oss.tenstorrent.com,
	npiggin@oss.tenstorrent.com, agross@kernel.org,
	agross@oss.tenstorrent.com, bmasney@redhat.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 3/3] clk: tenstorrent: Add Atlantis clock controller
 driver
Message-ID: <aa8k0+y0GSxa7lEy@x1>
References: <20260306-atlantis-clocks-v8-0-6c9b14a4aa8e@oss.tenstorrent.com>
 <20260306-atlantis-clocks-v8-3-6c9b14a4aa8e@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-atlantis-clocks-v8-3-6c9b14a4aa8e@oss.tenstorrent.com>
X-Rspamd-Queue-Id: 25AAB240608
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273094-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tenstorrent.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 11:12:19AM -0600, Anirudh Srinivasan wrote:
> Add driver for clock controller in Tenstorrent Atlantis SoC. This version
> of the driver covers clocks from RCPU subsystem.
> 
> 5 types of clocks generated by this controller: PLLs (PLLs
> with bypass functionality and an additional Gate clk at output), Shared
> Gates (Multiple Gate clks that share an enable bit), standard Muxes,
> Dividers and Gates. All clocks are implemented using custom clk ops and
> use the regmap interface associated with the syscon. All clocks are derived
> from a 24 Mhz oscillator.
> 
> The reset controller is also setup as an auxiliary device of the clock
> controller.
> 
> Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> ---
>  MAINTAINERS                             |   1 +
>  drivers/clk/Kconfig                     |   1 +
>  drivers/clk/Makefile                    |   1 +
>  drivers/clk/tenstorrent/Kconfig         |  14 +
>  drivers/clk/tenstorrent/Makefile        |   3 +
>  drivers/clk/tenstorrent/atlantis-prcm.c | 870 ++++++++++++++++++++++++++++++++
>  6 files changed, 890 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>

