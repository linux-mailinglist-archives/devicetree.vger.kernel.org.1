Return-Path: <devicetree+bounces-295999-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAbqAD+xAmonvwEAu9opvQ
	(envelope-from <devicetree+bounces-295999-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:49:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AAB7519A71
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B720E302296F
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EF452874F8;
	Tue, 12 May 2026 04:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PBPROqlA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3241DF980
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 04:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778561340; cv=none; b=dVUg0557FBOikhyH1SKGvroZlAZltZbadZLGoPsMJApP02r6qkvL0BVmds75XyMxR7kAc+NHR+dQ3/BMQrWWK0/K7GFI7SYQiAE/gHrw2/0NnsYEfP+XkjDbfFVoyd3Vt7Uyf70w0hwLI7P9oSkST2WEv/FAcsmcxW1RUoiZ9Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778561340; c=relaxed/simple;
	bh=/erAcRUdA4AiTDYx8Q/ik20DgY5K7HnQmOon5zAMoHY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rmd4YTBUfxGFuUG1XgLZviaJmpJdF/tszW4fDmFgIiqva0w+gPl+zxEsNB28GAQO3uSbgqTbi35eW893k8D5+3t3iTqpfmhynshDBeRkfMCQUX5dcUfJdgw5yMEFBSaxoqG5aNgFLKMGL6+RPLl0YaqGrP9hhwdqIoVbRLNbE+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PBPROqlA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4D415C2BCB0;
	Tue, 12 May 2026 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778561339;
	bh=/erAcRUdA4AiTDYx8Q/ik20DgY5K7HnQmOon5zAMoHY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=PBPROqlACPg1E1SeIZTNDXnCMy164mSlhb43VrnXbyfYiXS0E1axgzlkG5KAEi49T
	 kVL0Dcvs2idmOKpaL/GM0fuk+QAbVFOSXFbGyLhS17CopTAqdlzyyOaDTWE0vUBcuz
	 LHgkgfOMSNM6+6ZNPM/bnq33ZhpXyEEWO1e1Eyji3eGjH7zVdenVHN0Wko6RQaLEs3
	 1+gv1L1zK5dIkym9I4rDKv7S4jRyZuHHsOun02bMdcrlPa3cjQc1SEa2dyYGrlja/x
	 9PvI0xsKIUISeCPkvAFrNzB/Ht5Iof9bjuyj5qBbqw+esxJcUKMpxUMC95LLk3Zq5v
	 6CF1BX6cbiwgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 06/10] clk: amlogic: PLL reset signal supports
 active-low configuration
Reply-To: sashiko@lists.linux.dev
To: "Jian Hu via B4 Relay" <devnull+jian.hu.amlogic.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511-b4-a9_clk-v1-6-41cb4071b7c9@amlogic.com>
References: <20260511-b4-a9_clk-v1-6-41cb4071b7c9@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 04:48:58 +0000
Message-Id: <20260512044859.4D415C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4AAB7519A71
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,amlogic.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295999-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,jian.hu.amlogic.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The `meson_clk_pll_disable` function was not updated to handle the=
 new `CLK_MESON_PLL_RST_ACTIVE_LOW` flag, causing it to incorrectly de-asse=
rt the reset signal instead of asserting it.
- [Medium] The flag name documented in the commit message does not match th=
e actual code implementation.
--

commit c5af3b10e7a77c9b06f4a72f2dacfc47fec10acf
Author: Jian Hu <jian.hu@amlogic.com>

clk: amlogic: PLL reset signal supports active-low configuration

In the A9 design, the PLL reset signal is configured as active-low.

Add the flag 'CLK_MESON_PLL_RST_N' to indicate that the PLL reset signal
is active-low.

> Add the flag 'CLK_MESON_PLL_RST_N' to indicate that the PLL reset signal
> is active-low.

This isn't a bug, but the commit message says 'CLK_MESON_PLL_RST_N' while
the code defines CLK_MESON_PLL_RST_ACTIVE_LOW. Could the commit message
be updated to match the code?

> diff --git a/drivers/clk/meson/clk-pll.c b/drivers/clk/meson/clk-pll.c
> index 5a0bd75f85a92..8568ad6ba7b6e 100644
> --- a/drivers/clk/meson/clk-pll.c
> +++ b/drivers/clk/meson/clk-pll.c

[ ... ]

> @@ -363,15 +375,23 @@ static int meson_clk_pll_enable(struct clk_hw *hw)
>  		return 0;
> =20
>  	/* Make sure the pll is in reset */
> -	if (MESON_PARM_APPLICABLE(&pll->rst))
> -		meson_parm_write(clk->map, &pll->rst, 1);
> +	if (MESON_PARM_APPLICABLE(&pll->rst)) {
> +		if (pll->flags & CLK_MESON_PLL_RST_ACTIVE_LOW)
> +			meson_parm_write(clk->map, &pll->rst, 0);
> +		else
> +			meson_parm_write(clk->map, &pll->rst, 1);
> +	}

Since active-low PLLs use 0 to assert the reset here, does
meson_clk_pll_disable() also need to be updated to respect the
CLK_MESON_PLL_RST_ACTIVE_LOW flag?

Currently it unconditionally writes 1 to assert reset:

drivers/clk/meson/clk-pll.c:meson_clk_pll_disable() {
	...
	/* Put the pll is in reset */
	if (MESON_PARM_APPLICABLE(&pll->rst))
		meson_parm_write(clk->map, &pll->rst, 1);
	...
}

If this is an active-low PLL, wouldn't writing 1 de-assert the reset when
the clock is disabled, potentially causing hardware state inconsistencies?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-b4-a9_clk-=
v1-0-41cb4071b7c9@amlogic.com?part=3D6

