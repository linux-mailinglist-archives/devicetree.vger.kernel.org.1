Return-Path: <devicetree+bounces-312701-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bEpZBX20MWplpQUAu9opvQ
	(envelope-from <devicetree+bounces-312701-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:39:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EE269543C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:39:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gOtCIHA2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312701-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312701-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C6C930F40EB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07786314A98;
	Tue, 16 Jun 2026 20:39:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB33238F244
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 20:39:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781642342; cv=none; b=anThDipaANvOpPRPHiVnvOkg5bGq+PnCeEoE4VSu+2XSgXtPrPMGCgaU31dvThaQDw2WavImHo052p0Y83fjYJYuDOt2bpze+lh5sRSZUxtXhpHbcugg+dDd3ncO5dheFjm2acS64Kuo5Bkh7QlcbdIW1lMpVGevBvnHn1zhSeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781642342; c=relaxed/simple;
	bh=I8OdAUowNhRDX3M2/QjpX4ZCQuCVka6XTEgSKFQHgYM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TIQocRJrvsWuWfbYske7VmEpwsuu24hla7eZPB/F+mIwrCSbhGREDymDuiz11P/sAThQSE+xDAniq5VifzrwSQJIP4Q4gI4kPYWxv5i9vNW0XWOGV3ENKCO7D/7H3x7AUsltnvKHcjvLJLEoigOPnIRmKeZci9yit5K1XOe/Ibw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOtCIHA2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91C151F000E9;
	Tue, 16 Jun 2026 20:39:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781642341;
	bh=2A0yp8+FUcodmsd7L3tQNCN54slQpLxU3CAuASCzPr8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gOtCIHA2Bbpi4LN0uRK7akGxiGYZRPdCH1Ctdz21dL1LRvNqvM85go/UyOzSGIK8E
	 g5fM4Gk1lIRtPaZc5WPmwNZ3Ka3uM4xgvvXZAAfDyl8MwM4XlCpoNWubH1SrUP98Wv
	 qFQfku+pKRu5NvOkQgeDJkfd74ByY6hPxHZck2L1jjlfW6FyqfptzuAhowuw4hIP2Q
	 MpqeBYcIJzhUbFuwfKztWNCArTOfx++fOkNLUwJHoD9QUOzKl21aXIgloJLKk5Mc3q
	 liKviutmNkTc4aUYs5gQLMvxSsmEC6CGiRxevhswTQ/ZdxTT1+ccDdkAZNb502cQby
	 suPzt2TnAH2yg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v4 06/12] clk: zte: Add regmap based clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616-zx29clk-v4-6-ca994bd22e9d@gmail.com>
References: <20260616-zx29clk-v4-6-ca994bd22e9d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 20:39:01 +0000
Message-Id: <20260616203901.91C151F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312701-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68EE269543C

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] In `zte_clk_regmap_gate_is_enabled`, the result of `regmap_read` i=
s ignored and the read value is not properly masked, leading to uninitializ=
ed memory use and incorrect clock state reporting.

Pre-existing issues:
- [High] Allocating `struct auxiliary_device` with `devm_kzalloc` causes a =
Use-After-Free when the parent device is removed while external references =
still exist.
--

commit 4134682feec28075c68eddb683db94b9fb9b761a
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

clk: zte: Add regmap based clocks

This commit adds regmap based clocks for ZTE, simplifying the implementation
based on the meson clock regmap code.

> diff --git a/drivers/clk/zte/clk-regmap.c b/drivers/clk/zte/clk-regmap.c
> index 7908f1562f639..d9459417d17dd 100644
> --- a/drivers/clk/zte/clk-regmap.c
> +++ b/drivers/clk/zte/clk-regmap.c

[ ... ]

> +static int zte_clk_regmap_gate_is_enabled(struct clk_hw *hw)
> +{
> +	struct zte_clk_regmap *clk =3D to_zte_clk_regmap(hw);
> +	u32 val;
> +
> +	regmap_read(clk->map, clk->reg, &val);
> +	return !!val;
> +}

[Severity: High]
Does this code properly mask the specific gate bit? Since clock gates commo=
nly
share registers, returning !!val might erroneously report this specific gate
as enabled whenever any other bit in the register is active, rather than us=
ing
BIT(clk->shift) to evaluate the correct bit.

Also, should the return value of regmap_read() be checked here? If the read
fails, val remains uninitialized, which could lead to evaluating stack
garbage.

[ ... ]

In drivers/clk/zte/clk-zx.c:

[Severity: High]
This is a pre-existing issue, but does allocating the auxiliary_device with
devm_kzalloc() in zx_clk_probe() create a use-after-free risk?

If the parent device is unbound, devres will automatically free the memory
for the auxiliary_device. However, if external references to the embedded
device still exist, the memory will be freed while it is still in use.

When the final reference is eventually dropped, the kernel will attempt to
call the release callback on the freed memory:

zx_adev_release() {
        dev_info(dev, "Aux device released.\n");
}

Should the structure be allocated with kzalloc() instead, and explicitly
freed inside the release callback?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-zx29clk-v4=
-0-ca994bd22e9d@gmail.com?part=3D6

