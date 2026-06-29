Return-Path: <devicetree+bounces-317056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l/EyB4Z0Qmpj7gkAu9opvQ
	(envelope-from <devicetree+bounces-317056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:35:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id A906C6DB483
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:35:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=N+Ta0L9L;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317056-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-317056-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 36B65302B1F2
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:20:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F333A7F5D;
	Mon, 29 Jun 2026 13:15:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D8EC404BF6;
	Mon, 29 Jun 2026 13:15:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782738948; cv=none; b=lvpKZOiEhHhdHXWSSH9Eojzp8R0vmN5rXXBdQ6TuFdAYG4Ro+NMUReUWq69m4n52OYGC/yu3So0dolfo2wogNzTMcfKSxqL13yskpaHSaPYzwd6Q/tsKmu7eLmTvxl6ci5NYqgj6zW7R/9A4oPPZX4vCkTjlSNAq+1bnnUUiCv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782738948; c=relaxed/simple;
	bh=VNmoJRe3sWKU0HZmw0KinqoKxuOrqe4v8ADSewPfbhY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tsCFtlORFJUbv6tw8h4rkFF0/v5+gQf9NmlOqoSwewueIYPV2vcFivFxo931UIX7ffZP2ZZbjR7mw5h/XNYmwSEs2vLokI81DOEEWHcGZ6OS9gc+6RqhGRS/RXW9CrajZVoUX01INqvUy6FpVEXoR7I0vxW/qIc99sTGtOpKo8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+Ta0L9L; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8D0261F000E9;
	Mon, 29 Jun 2026 13:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782738947;
	bh=yjLk0ARRNQTgoDzyMNpOklojHJL2nvRex4UWXYoCdPQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=N+Ta0L9LKKPnDZfhDmmkGyqBE6YGVgIzAZ0evw3jaJWmCiNR0/OHda1dgcd/uIwgJ
	 piHA5KsfQ/s0cBIu9xAOizSS49/FnTcD+eZy6ZN4uUKVzx5RytBgLe1rxo/ku62BGl
	 aHV4G2VXrsmRLPjxrFClrPremD5MzTonYc44shod/yCxPAMLn7Kz5bdJw/4lzT885R
	 1MUqAWgi4w/uK55aV12EalJTY42xRtukxNCiM49dlc6wlv0LLKj327cLLfy0+PCIT8
	 039fONbPeIqnOUXZylxmWrJJYVn5XkvZuRCjveoXkot/KR1q3kQ+BC0sCWOAagjX66
	 oJIR8cR2bHLzg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 6/6] clk: sunxi-ng: sun6i-rtc: add a733 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jerome Brunet" <jbrunet@baylibre.com>
Cc: robh@kernel.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629-a733-rtc-v2-6-7b72112784f8@baylibre.com>
References: <20260629-a733-rtc-v2-0-7b72112784f8@baylibre.com>
 <20260629-a733-rtc-v2-6-7b72112784f8@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 13:15:46 +0000
Message-Id: <20260629131546.8D0261F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-317056-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid,baylibre.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A906C6DB483

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] The master DCXO enable bit is incorrectly mapped as the exclus=
ive enable bit for the 32kHz divider. This will cause the clock framework t=
o inadvertently turn off the master oscillator, freezing the system.
--

commit 83ebb861eeea7934e5df335b0d1620cad0b733bf
Author: Jerome Brunet <jbrunet@baylibre.com>

clk: sunxi-ng: sun6i-rtc: add a733 support

This commit adds support for the sun60i a733 CCU RTC. It introduces a
new auto-detecting oscillator divider and several phy reference clocks
with dedicated clock gates.

> diff --git a/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c b/drivers/clk/sunxi-ng/=
ccu-sun6i-rtc.c
> index 25dd87e78eb7a..2ec09e3464724 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun6i-rtc.c

[ ... ]

> @@ -227,8 +237,28 @@ static struct clk_fixed_factor osc24M_32k_div_clk =
=3D {
>  					    0),
>  };
> =20
> -static SUNXI_CCU_GATE_HW(osc24M_32k_clk, "osc24M-32k", &osc24M_32k_div_c=
lk.hw,
> -			 LOSC_OUT_GATING_REG, BIT(16), 0);
> +static struct clk_div_table osc24M_32k_div_a733_table[] =3D {
> +	{ .val =3D 0, .div =3D 732 },
> +	{ .val =3D 1, .div =3D 586 },
> +	{ .val =3D 2, .div =3D 793 },
> +	{ .val =3D 3, .div =3D 732 },
> +	{ /* Sentinel */ },
> +};
> +
> +static struct ccu_div osc24M_32k_div_a733_clk =3D {
> +	.enable =3D BIT(1),

[Severity: Critical]
This maps the master DCXO enable bit, BIT(1) defined earlier as
DCXO_CTRL_DCXO_EN, directly to the 32kHz divider's lifecycle.

If a board uses an external 32kHz crystal, the rtc-32k clock mux is
reparented to osc32k_clk, leaving this internal osc24M-32k-div clock with
zero active consumers.

During late boot, the clock framework's clk_disable_unused() routine walks
the clock tree and will disable this clock, clearing BIT(1) in DCXO_CTRL_RE=
G.

Could this cause a hard system freeze? Since this bit physically turns off
the shared master 24MHz crystal (DCXO), does it immediately stop the CPU,
PLLs, and all peripherals?

> +	.div	=3D _SUNXI_CCU_DIV_TABLE(14, 2, osc24M_32k_div_a733_table),
> +	.common	=3D {
> +		.reg		=3D DCXO_CTRL_REG,
> +		.hw.init	=3D CLK_HW_INIT_PARENTS_DATA("osc24M-32k-div",
> +							   osc24M,
> +							   &ccu_rodiv_ops,
> +							   0),
> +	},
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-a733-rtc-v=
2-0-7b72112784f8@baylibre.com?part=3D6

