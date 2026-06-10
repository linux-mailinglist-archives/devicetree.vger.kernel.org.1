Return-Path: <devicetree+bounces-309524-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3XfgMIkfKWouRAMAu9opvQ
	(envelope-from <devicetree+bounces-309524-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:25:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40406667214
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:25:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QMEsBIM2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309524-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309524-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10DB1314FE9C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 08:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 637E6399CEC;
	Wed, 10 Jun 2026 08:18:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CDFB374A0A
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 08:18:55 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781079537; cv=none; b=Mbg86Lrbs6gy3t+0DTrOlmCNqTa7YJZG6Rr0HQvWpkDFHPSi4Avxw6qPAPBeNQ0Vrhz/uYZ4tMRF+tL7k9jselYxGsAeV1GgZ1zMsQikFOmaQ/qIX2k2R8Sh+DKRd6jz1lPwfmXGWAmmzdoC0q2JXA6cRUBFNNrD+QxJoLGDMbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781079537; c=relaxed/simple;
	bh=bv0VG0RsMUMN6x1JoObke45Mh5RODIOdDChQjtAGuh8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=e2hHeSvAEWm69Pw+2SjOmDB0SrNpQAGmEZjIFpb6EOnIrCzOKe7dBjeHFArlOFpBwi9JOmn0NZGG0fnyyiApt/9NV90H2FE7solru0WXUbsdp34f83OjJC2B+RUiPg8Oq5Av8AbnpvZ50Az/Elqi+GPX1Vki90Xqpb1iF6QaMpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMEsBIM2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 044371F00893;
	Wed, 10 Jun 2026 08:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781079535;
	bh=42eMPnt9FbbFrmx5p6TRHzIyn8OdBrXPabt/OATLxE8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QMEsBIM2H5NI4eWWrdnCctv87gPeOFvbi5vWTtGK91rlqZVkf8lHouC4+RfTBUVSh
	 pp8Rjndo37Vv9WRGAZegCxiRLtF0KA4KOvNPanB4dAyi8ZlpwGx/khMJDZstelj3Q6
	 BPENkiZuhdDW68u/357s4tCWIJ8a88EChLHXm+cB+rrMagDdm4I2XDXurhnML48NoG
	 BrWAqU7uhpePQ61SaMXBHeDk+ZRZMCYXKVEuSffC81O7w3AU/EBZP/zRoks7mQUNXm
	 gTtPELiJL6NwAoFStmq0LmESejgok8vOTuvpNf7iffi3BOLXqj5i7vRlH3eyd9YTbl
	 kjecmOewPjRbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 04/10] clk: realtek: Add support for phase locked
 loops (PLLs)
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610080824.255063-5-eleanor.lin@realtek.com>
References: <20260610080824.255063-5-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 08:18:54 +0000
Message-Id: <20260610081855.044371F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309524-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,realtek.com:email,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 40406667214

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] `clk_pll_determine_rate()` ignores consumer constraints (`req->min=
_rate` and `req->max_rate`), leading to invalid frequency selection and rej=
ected clock rate changes.
- [High] `is_power_on()` incorrectly returns `true` when register reads fai=
l, masking hardware errors and causing silent enablement failures.
- [Low] Unnecessary semicolon at the end of the `ftbl_find_by_val_with_mask=
` function definition.
--

commit 4d3f4fa427421504b7a5b08f5c9946c2979abab1
Author: Cheng-Yu Lee <cylee12@realtek.com>

clk: realtek: Add support for phase locked loops (PLLs)

Provide a full set of PLL operations for programmable PLLs and a read-only
variant for fixed or hardware-managed PLLs.

> diff --git a/drivers/clk/realtek/clk-pll.c b/drivers/clk/realtek/clk-pll.c
> new file mode 100644
> index 0000000000000..6c4343d71dbe4
> --- /dev/null
> +++ b/drivers/clk/realtek/clk-pll.c

[ ... ]

> +static bool is_power_on(struct clk_pll *clkp)
> +{
> +	u32 val;
> +
> +	/* reg =3D=3D 0 means not configured (assume always on).
> +	 * Register offset 0 is never a valid address on Realtek SoCs.
> +	 */
> +	if (!clkp->power_reg)
> +		return true;
> +
> +	if (regmap_read(clkp->clkr.regmap, clkp->power_reg, &val))
> +		return true;

[Severity: High]
Will this incorrectly mask hardware errors and cause silent enablement fail=
ures?

If regmap_read() fails, the function returns true. This false positive
causes clk_pll_enable() to assume the PLL is already powered on.

This skips the seq_power_on sequence and immediately returns success,
so the clock core framework considers the clock successfully enabled while
the physical hardware remains disabled.

> +
> +	return (val & clkp->power_mask) =3D=3D clkp->power_val_on;
> +}

[ ... ]

> +static int clk_pll_determine_rate(struct clk_hw *hw,
> +				  struct clk_rate_request *req)
> +{
> +	struct clk_pll *clkp =3D to_clk_pll(hw);
> +	const struct freq_table *ftblv =3D NULL;
> +
> +	ftblv =3D ftbl_find_by_rate(clkp->freq_tbl, req->rate);

[Severity: High]
Does this ignore the req->min_rate and req->max_rate constraints?

The ftbl_find_by_rate() helper solely searches for the largest available
frequency less than or equal to req->rate.

If req->rate was clamped to min_rate by the core framework, the search may
select an entry strictly less than min_rate. The framework will subsequently
reject this out-of-bounds rate, even though a valid higher frequency
within the bounds might exist in the table.

> +	if (!ftblv)
> +		return -EINVAL;
> +
> +	req->rate =3D ftblv->rate;
> +
> +	return 0;
> +}

[ ... ]

> diff --git a/drivers/clk/realtek/freq_table.c b/drivers/clk/realtek/freq_=
table.c
> new file mode 100644
> index 0000000000000..0ff1e5e79102b
> --- /dev/null
> +++ b/drivers/clk/realtek/freq_table.c

[ ... ]

> +const struct freq_table *
> +ftbl_find_by_val_with_mask(const struct freq_table *ftbl, u32 mask, u32 =
value)
> +{
> +	for (; !IS_FREQ_TABLE_END(ftbl); ftbl++) {
> +		if ((ftbl->val & mask) =3D=3D (value & mask))
> +			return ftbl;
> +	}
> +	return NULL;
> +};

[Severity: Low]
this isn't a bug, but there is an unnecessary semicolon at the end of the
ftbl_find_by_val_with_mask() definition.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610080824.2550=
63-1-eleanor.lin@realtek.com?part=3D4

