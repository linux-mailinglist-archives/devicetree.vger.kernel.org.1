Return-Path: <devicetree+bounces-317051-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Hq+wJnlwQmr/7AkAu9opvQ
	(envelope-from <devicetree+bounces-317051-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:17:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F31CE6DAFF6
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:17:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZXIKI0Jn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317051-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317051-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CC94630F4CBB
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:05:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2FD3B960B;
	Mon, 29 Jun 2026 13:03:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 696C2407CF1;
	Mon, 29 Jun 2026 13:03:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782738224; cv=none; b=ROKybhReMNNqpJVyhM5XBAiC75ChDJZ8fqNzKQrlHSqr1UfxgGYQ3M3QLN+eeIL7IoeMHEp4Jl2r4MOoNKgpyPIPCptfeEfCXQMhgBRW9DIvKnlTFjGs7f8mPf+iol/bqrdXTD80ds+GAPfUtxlGFqaL7tfXebxIf6boh8usbnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782738224; c=relaxed/simple;
	bh=UfUQVznN57MZwYdZIYJnNW5D3adS0b+BQ5UYf+PnrtY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=evkNINp+kZ0R13BhPvnJlDeZR0ipNJwZ4yR2db2FZGUa3/t3Dzt6LOBqOZxF90mDJjoCdwwHBe4n5i9RI8Iky2sJJKGvqsQRn97qiCLy8yuxOaCtnXqMlAMX4DRa8zGP6l/ij6DhTmdaCBencUhxjyVljHhfjB7kFFdVbOc7ZSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXIKI0Jn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 73C851F000E9;
	Mon, 29 Jun 2026 13:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782738223;
	bh=kMShm4U6bpIHfB0blihITKvRHWK+oEBQknLVDHcwpKU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZXIKI0Jnw4dAI+pORhw+j5lG22M9hyaCZwnYQhuFfwdRm+NIwbEswwNb4KwW25ezV
	 p1e+oib67WWz5HNETrFogaL1dmy8jewAkkSKmO9anqg/OpLLwp1WKrOzfKWdkWagyM
	 DA2o7TrEIAscM5pGKXCQ+LB0G4NGRyYzCcdLaV8k6AyLQHuvJWm/amrWI6OFyfUIvW
	 0vKC1BhSaKeaRgRIt9duFuCGVOZlV7KFh1r7augJ6ALRWm3RBLU40I345+usnlvAuJ
	 XFDhau6wk2oB7hTGnc6xm0/dpLX+TPfji3fyK1s2PuCCKGaYOMsS5IZ1nLYFeGRVQV
	 WsWYwAlIUy2Mg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/6] clk: sunxi-ng: div: add read-only operation
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jerome Brunet" <jbrunet@baylibre.com>
Cc: linux-sunxi@lists.linux.dev, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629-a733-rtc-v2-4-7b72112784f8@baylibre.com>
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
 <20260629-a733-rtc-v2-4-7b72112784f8@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 13:03:41 +0000
Message-Id: <20260629130342.73C851F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317051-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,baylibre.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:linux-sunxi@lists.linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F31CE6DAFF6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] `ccu_rodiv_ops` omits the `.determine_rate` callback, which brea=
ks rate rounding, reparenting, and proper rate propagation for clocks using=
 `CLK_SET_RATE_PARENT`.
--

commit 97a1d0e7adc68eb81524d76b0c667da1b5f1be50
Author: Jerome Brunet <jbrunet@baylibre.com>

clk: sunxi-ng: div: add read-only operation support

Add support for sunxi-ng read-only dividers to be used by the a733
oscillator detection logic.

> diff --git a/drivers/clk/sunxi-ng/ccu_div.c b/drivers/clk/sunxi-ng/ccu_di=
v.c
> index 62d680ccb524b..0e3d9e6e30fb0 100644
> --- a/drivers/clk/sunxi-ng/ccu_div.c
> +++ b/drivers/clk/sunxi-ng/ccu_div.c
> @@ -143,3 +143,14 @@ const struct clk_ops ccu_div_ops =3D {
>  	.set_rate	=3D ccu_div_set_rate,
>  };
>  EXPORT_SYMBOL_NS_GPL(ccu_div_ops, "SUNXI_CCU");
> +
> +const struct clk_ops ccu_rodiv_ops =3D {
> +	.disable	=3D ccu_div_disable,
> +	.enable		=3D ccu_div_enable,
> +	.is_enabled	=3D ccu_div_is_enabled,
> +
> +	.get_parent	=3D ccu_div_get_parent,
> +
> +	.recalc_rate	=3D ccu_div_recalc_rate,

[Severity: Medium]
Does this struct need a .determine_rate callback to prevent breaking rate
rounding and parent rate propagation?

If a driver registers a clock using these exported operations and sets the
CLK_SET_RATE_PARENT flag, the Common Clock Framework's
clk_core_round_rate_nolock() falls back to a pass-through behavior when
.determine_rate is missing. This causes it to forward the child's requested
rate unmodified to the parent, ignoring the divider scaling, and also causes
mux reparenting to fail.

> +};
> +EXPORT_SYMBOL_NS_GPL(ccu_rodiv_ops, "SUNXI_CCU");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-a733-rtc-v=
2-0-7b72112784f8@baylibre.com?part=3D4

