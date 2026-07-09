Return-Path: <devicetree+bounces-323672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wCtqA5aHT2qGiwIAu9opvQ
	(envelope-from <devicetree+bounces-323672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:35:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 445617306C3
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:35:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UUNJ8ISr;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323672-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323672-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 613C530F332B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:28:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 228B7413D63;
	Thu,  9 Jul 2026 11:28:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C18C81632E7
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:28:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596524; cv=none; b=XRrz6Rh8n0GzIbZzBEsTA7uPbto5jmrotBYktXgVfQCIzQn84gO77yh/KGwl+OjGe+E0zYIHVO/AkB6hgqv4tT/yxEHEvryeaThDNhm0mhv6cuyup3lq3ULXLHvzKNJ1zybYgDuQY4nAG1MFGzDQ8gAp8tfwU7QmNcdcC1b0294=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596524; c=relaxed/simple;
	bh=G2qX3bOkijoV+kojhK4G226gmCfZWJSBFGI38WBTbK8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CZWF8/j+m9eedx5KqxokmtmEMijQebaBDGpkzl9PSKZicWY3tEhwAwVe9XJbQBVwl1hezdQYmFHoAAVJekoiTOodqjrwEPFOI2bQ1V0zxSAJL4qQpDuZx6pWFRozVphApr7kKvHJimROgoBcL51CkX2aXAHZdD9gnXzIwDZzJxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUNJ8ISr; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 227F61F000E9;
	Thu,  9 Jul 2026 11:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783596522;
	bh=GN/CZMkXGV4XTWgX2nOOEtyOMALEN3U7GjZ0fnlHBtg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UUNJ8ISrABmv9F0aUPuXJh765/p3/q+ogqXpXfHnNm14B54I9VNRvXYxmHznmCkTG
	 6BLCuwJeYUQFotkR2rxUv6kENlxuu93OdoF5Ln8MKqRaOrxANVe//R0odCfv9HA5fG
	 UapyNWydzDbiMSNnjP8B6+IairezqELl4rfblDmXx0m3Al53Iv73aDYOcPZ+LZGTPE
	 opfzFwJ0dWq07wNkPIZYMiA6TYR5RLbDdQWPJ/wjyar4g6d5yORxs1FjMcxFSdg1l4
	 zevO4oYHuo+Gc1OP5IuvLEqkDPoz+D+JddwZ6sfsqIL/Z5+rf7OMZnDmmJ9cPCu0n+
	 +SPqCUCLZ3+uA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 7/8] clk: clocking-wizard: Fix division by zero and
 unbounded register write
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shubhrajyoti Datta" <shubhrajyoti.datta@amd.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709111403.1579159-8-shubhrajyoti.datta@amd.com>
References: <20260709111403.1579159-1-shubhrajyoti.datta@amd.com>
 <20260709111403.1579159-8-shubhrajyoti.datta@amd.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 11:28:41 +0000
Message-Id: <20260709112842.227F61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323672-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shubhrajyoti.datta@amd.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,amd.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 445617306C3

Thank you for your contribution! Sashiko AI review found 5 potential issue(=
s) to consider:

New issues:
- [High] Integer truncation and logic error causing silent massive overcloc=
king.

Pre-existing issues:
- [High] Unhandled division by zero in rate calculation and configuration c=
allbacks.
- [High] Out-of-bounds register write leading to bitfield corruption.
- [High] Missing lock leading to data races during dynamic hardware reconfi=
guration.
- [High] Integer overflow in fractional divider calculation on 32-bit syste=
ms.
--

--- Patch [7]: [PATCH v2 7/8] clk: clocking-wizard: Fix division by zero an=
d unbounded register write ---
commit 4ea4bda6fb88975f9f2f07bd41a24f7bd7621124
Author: Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>

clk: clocking-wizard: Fix division by zero and unbounded register write

This commit attempts to fix division by zero and unbounded register writes =
by
clamping the divisor to a minimum of 1 and ensuring min_t results are
correctly assigned. It also adds early returns when the rate is 0 in the
divisor calculation functions.

> diff --git a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c b/drivers/clk/xil=
inx/clk-xlnx-clock-wizard.c
> index 381e396aef0e7..289c32ab5cd80 100644
> --- a/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
> +++ b/drivers/clk/xilinx/clk-xlnx-clock-wizard.c
> @@ -296,7 +296,7 @@ static int clk_wzrd_dynamic_reconfig(struct clk_hw *h=
w, unsigned long rate,
>  	value =3D DIV_ROUND_CLOSEST(parent_rate, rate);

[Severity: High]
This is a pre-existing issue, but if a consumer driver requests a clock rate
of 0, does the DIV_ROUND_CLOSEST() macro cause a division by zero panic her=
e?

Since this occurs while holding the divider->lock, would a panic also leak
the global hardware lock?

> =20
>  	/* Cap the value to max */
> -	min_t(u32, value, WZRD_DR_MAX_INT_DIV_VALUE);
> +	value =3D min_t(u32, value, WZRD_DR_MAX_INT_DIV_VALUE);
> =20
>  	/* Set divisor and clear phase offset */
>  	writel(value, div_addr);

[ ... ]

> @@ -334,6 +334,8 @@ static int clk_wzrd_determine_rate(struct clk_hw *hw,
>  	 * achievable
>  	 */
>  	div =3D DIV_ROUND_CLOSEST(req->best_parent_rate, req->rate);

[Severity: High]
This is a pre-existing issue, but if req->rate is 0, wouldn't the
DIV_ROUND_CLOSEST() macro itself trigger a division by zero panic before it
even reaches the newly added zero check below?

> +	if (!div)
> +		div =3D 1;

[Severity: High]
Because the div variable in clk_wzrd_determine_rate() is declared as a u8:

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_determine_rate() {
    u8 div;
    ...
    div =3D DIV_ROUND_CLOSEST(req->best_parent_rate, req->rate);
}

Does assigning a valid large divisor (like 256) result in a modulo-256
truncation to 0?

If a consumer requests a valid low frequency that requires a multiple of 25=
6,
this truncation could silently force the divisor to 0. Then, this new logic
would force the divisor to 1, potentially bypassing the hardware limit and
causing unexpected clock frequencies.

> =20
>  	req->rate =3D req->best_parent_rate / div;
> =20

[ ... ]

Additionally, there are a few other pre-existing issues in this file worth
investigating:

[Severity: High]
This is a pre-existing issue, but does the Versal variant lack the same bou=
nds
checking that was just fixed above?

Looking at clk_wzrd_ver_dynamic_reconfig():

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_ver_dynamic_reconfig() {
    ...
    value =3D DIV_ROUND_CLOSEST(parent_rate, rate);
    regh =3D (value / 4);
    ...
    regval =3D regh | regh << WZRD_CLKFBOUT_H_SHIFT;
    writel(regval, div_addr + 4);
    ...
}

If the rate is low and demands a large divisor, an unbounded value propagat=
es
to regh. Because it is OR-ed without a bitmask, could this overwrite adjace=
nt
configuration bits in the register?

Also, like clk_wzrd_dynamic_reconfig(), does this DIV_ROUND_CLOSEST() call
panic if the rate is 0?


[Severity: High]
This is a pre-existing issue, but is the fractional dynamic reconfiguration
path missing spinlock protection?

While other paths synchronize access to shared wizard initialization
registers, clk_wzrd_dynamic_reconfig_f() seems to omit the lock entirely:

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_dynamic_reconfig_f() {
    int err;
    u32 value, pre;
    ...
    writel(WZRD_DR_BEGIN_DYNA_RECONF_5_2,
           divider->base + WZRD_DR_INIT_REG_OFFSET);
    ...
}

Could concurrent rate changes on multiple fractional outputs corrupt the
sequence of shared register writes?


[Severity: High]
This is a pre-existing issue, but does the fractional divider calculation
overflow on 32-bit systems?

Looking at clk_wzrd_dynamic_reconfig_f():

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_dynamic_reconfig_f() {
    ...
    rate_div =3D DIV_ROUND_DOWN_ULL(parent_rate * 1000, rate);
    clockout0_div =3D rate_div / 1000;
    pre =3D DIV_ROUND_CLOSEST((parent_rate * 1000), rate);
    ...
}

On 32-bit architectures, parent_rate * 1000 is computed as a 32-bit integer.
If parent_rate exceeds 4.29 MHz, wouldn't this overflow before the implicit
cast to u64 by DIV_ROUND_DOWN_ULL?

Furthermore, do DIV_ROUND_DOWN_ULL() and DIV_ROUND_CLOSEST() trigger a
division by zero if the rate is 0?


[Severity: High]
This is a pre-existing issue, but do the recalculation paths also suffer fr=
om
division by zero if the hardware is uninitialized?

Looking at clk_wzrd_recalc_rate_all():

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_recalc_rate_all() {
    ...
    return DIV_ROUND_CLOSEST_ULL(parent_rate * mul, d * (o * 1000 + f));
}

And clk_wzrd_recalc_ratef():

drivers/clk/xilinx/clk-xlnx-clock-wizard.c:clk_wzrd_recalc_ratef() {
    ...
    return mult_frac(parent_rate, 1000, (div * 1000) + frac);
}

If the hardware register values (d, o, f, div, frac) are 0 at boot-time,
would dividing by these unchecked values cause a division by zero panic?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709111403.1579=
159-1-shubhrajyoti.datta@amd.com?part=3D7

