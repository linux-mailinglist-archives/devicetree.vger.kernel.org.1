Return-Path: <devicetree+bounces-325003-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rbk7MbtMU2qoZgMAu9opvQ
	(envelope-from <devicetree+bounces-325003-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 10:13:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D76744218
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 10:13:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=e8+zjsSC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325003-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325003-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4D908300E5DC
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 08:13:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14D0F328B71;
	Sun, 12 Jul 2026 08:13:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE835374E74;
	Sun, 12 Jul 2026 08:13:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783844026; cv=none; b=mq/Vvr3lbq2GL3+GBUq8/u7eUYLs9GQD/KPbo7g42LXhE7vpAYYSPLreYi/Ga0zTsOsd7D2LbcsiRxP2H0ag+9F969GhEo/+MBwiqu2vYrMKFHjObK953qY4fp7lBmA1yucaJrsImCqOuFJY+urkuNmTH2p34KB4DH5mP5g5QnQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783844026; c=relaxed/simple;
	bh=5DU46VdZLpGnjfeYvbn0hDNYHhkgzgsf/Dehu/HAXW0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=r8QLxXXFpYjrJkizHQNIg90Dl4FHROVAhvKU/Gmk7OcmO/+Kc1XwNuqHo0xn/Jtc6jEngdt6js/Qxtf6Qj4/62tyrsUKs8b29SRloZKHyA0vlTJ+A5EKdNHqA1if9t1A+Flk6sp1NcWz9siwvXNOUOGVHr0yisNrbwTE4ZLWku4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e8+zjsSC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7533A1F00A3A;
	Sun, 12 Jul 2026 08:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783844024;
	bh=TnJaVAAMP7e6GtzzDzJCm35DMXPxdXgOG3RpeUfryv4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=e8+zjsSC2XHSELDPwjv4lNHpOEp/oYOLIKIP8obAvxzE04D7+jC2HNHjUMrjyhEY/
	 uCA3haWCe9MJX/JDh60kyP8TspTxdK8l5/THSZZ0zYLF2Ivd90QfWEkuJcWThOL8x+
	 2QJOQtr2ty4QPNZfD5nSdwyVjqt/98BIsvOe0Z5/YeFS5hKU6cuaoEzROpkffxVTXu
	 HQtBuO2JMAraYqeODkvesNSfDoEvuV84QoxwTBY9U0RfwcAQtIL7ql8Gw2FMUnKkAH
	 h+MLwyI+0uA7LshAgIDN543RL0OfkdqoA1bssLizaZyVu0gATT1/sGug/d0N91ry0+
	 qi4P0jPVKiD2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/8] clk: sunxi-ng: a733: Add reset lines
Reply-To: sashiko-reviews@lists.linux.dev
To: "Junhui Liu" <junhui.liu@pigmoral.tech>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260711-a733-clk-v2-8-974d188cbe0c@pigmoral.tech>
References: <20260711-a733-clk-v2-0-974d188cbe0c@pigmoral.tech>
 <20260711-a733-clk-v2-8-974d188cbe0c@pigmoral.tech>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 08:13:44 +0000
Message-Id: <20260712081344.7533A1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325003-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,pigmoral.tech:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:junhui.liu@pigmoral.tech,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 56D76744218

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `sun60i_a733_ccu_resets` array is missing the `const` qualifier.
--

--- Patch [8]: [PATCH v2 8/8] clk: sunxi-ng: a733: Add reset lines ---
commit 4ea86ec36599a9ad729bf576a38c2f6cad725b56
Author: Junhui Liu <junhui.liu@pigmoral.tech>

clk: sunxi-ng: a733: Add reset lines

This patch adds the reset lines for the Allwinner A733 SoC. The reset contr=
ol
bits are integrated into the main CCU driver using the sunxi-ng ccu_reset
framework, enabling the CCU to function as a reset controller.

> diff --git a/drivers/clk/sunxi-ng/ccu-sun60i-a733.c b/drivers/clk/sunxi-n=
g/ccu-sun60i-a733.c
> index 48d7c0395ae83..ff64c35206d2d 100644
> --- a/drivers/clk/sunxi-ng/ccu-sun60i-a733.c
> +++ b/drivers/clk/sunxi-ng/ccu-sun60i-a733.c

[ ... ]

> @@ -2156,11 +2157,136 @@ static struct clk_hw_onecell_data sun60i_a733_hw=
_clks =3D {
>  	.num	=3D CLK_FANOUT3 + 1,
>  };
> =20
> +static struct ccu_reset_map sun60i_a733_ccu_resets[] =3D {

[Severity: Low]
Is it possible to add the const qualifier to the sun60i_a733_ccu_resets arr=
ay?

Without the const qualifier, this reset map array is placed in the mutable
.data section instead of the read-only .rodata section. Because it is later
assigned to the .resets member of sunxi_ccu_desc which expects a const poin=
ter,
adding const here would save mutable memory and slightly improve security
hardening.

> +	[RST_BUS_ITS_PCIE0]		=3D { 0x574, BIT(16) },
> +	[RST_BUS_IOMMU0_SYS]		=3D { 0x58c, BIT(16) },

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260711-a733-clk-v=
2-0-974d188cbe0c@pigmoral.tech?part=3D8

