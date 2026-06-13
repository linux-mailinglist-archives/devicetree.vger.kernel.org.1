Return-Path: <devicetree+bounces-311323-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 8O/ZGgtQLWpSewQAu9opvQ
	(envelope-from <devicetree+bounces-311323-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 14:41:47 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C781167E94A
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 14:41:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ky515B6C;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311323-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311323-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D03E6301B145
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 12:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6BF13E1221;
	Sat, 13 Jun 2026 12:41:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A17FC3DE429
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 12:41:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781354503; cv=none; b=MZi4i1f4cWeIPky5qZn7O/ktFc9MU+QxE8gQs9j5+CQ+tQwvZ07m+p14MChfwUH2Tc7WogOANCxcDBRDt4JOgd6CBH+GoJyGp7Hisrk6e9/OC50PvWrkMTU/wFQxFIE1Y9E4rmH02AFRm1IqDuBsK8kaRj2i48qeZKhsNdgXd9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781354503; c=relaxed/simple;
	bh=mxXJ4Y2d397RTKz2lw4ZKQYuEMR+BXt9rxf81JVnGCc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=WTfg1LohFhHWNLQBWN6ZUINhP8QOEb0s5nAd84hNF50WWNzu5f9JD02hHBPEI2ixF4UNwD18qPWLH6UZ+0tqHcXIJyjBSsVqgpBCsRBtVEelRVYagt1JKbzTHH9LiETjimRtYBhNqFlDlpOOvEuD3EsGPqbhSROBgYbVJYN+/0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ky515B6C; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 073221F000E9;
	Sat, 13 Jun 2026 12:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781354502;
	bh=S931pEF2sMfFZNF9qmUDJeV6IDhmgbrFq1VE7v0/29k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ky515B6CDSfZxCNNiff51ihL/IQhUG4sCkkkp9JaxL6+ttZoJvrRm6z2SWUKlVCf5
	 +yAnl6KnVy658glaOcDmoh4IYaUl/NILNC++/ughvAKXWwl5269snE3QyEeMYzXTam
	 teWMymuRlKFFhwb8kNMF+kbhjviEY8QVZKfNpOA9gbmyZGnrDs18Rby8SyttwmIyQw
	 i5aMiRlSVuIz1sjin48OTTNBmWOpMsFA/jV5UMQAD1TF5zW33nQ1oToJ4jUk8rsFo3
	 m4ErWF0B2TDKzfuNJ34+/CbyxlEQ0V7z4VYXrMT8quzRxmL3shlTYvccWIf0JCIB8D
	 XkVVx8QWRhN/g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/3] clk: samsung: exynos990: Fix PERIS gate clock
 parents
Reply-To: sashiko-reviews@lists.linux.dev
To: "Denzeel Oliva" <wachiturroxd150@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260613-exynos990-peris-fix-v3-v3-3-2b230db78ae4@gmail.com>
References: <20260613-exynos990-peris-fix-v3-v3-3-2b230db78ae4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 12:41:41 +0000
Message-Id: <20260613124142.073221F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311323-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:wachiturroxd150@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C781167E94A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Reordering a clock parent array (PNAME) to change the default cloc=
k parent falsifies the hardware register mapping.
--

commit 053886a8fb5adfd1285c3768f792e89fdc6baa21
Author: Denzeel Oliva <wachiturroxd150@gmail.com>

clk: samsung: exynos990: Fix PERIS gate clock parents

This commit corrects eight PERIS gate clock parents to match the hardware
clock tree. It also reorders the GIC mux parents to make mout_peris_bus_user
the default source.

> diff --git a/drivers/clk/samsung/clk-exynos990.c b/drivers/clk/samsung/cl=
k-exynos990.c
> index ee3566b8e57c9..df5928833b232 100644
> --- a/drivers/clk/samsung/clk-exynos990.c
> +++ b/drivers/clk/samsung/clk-exynos990.c
> @@ -2551,7 +2551,7 @@ static const unsigned long peris_clk_regs[] __initc=
onst =3D {
> =20
>  /* Parent clock list for CMU_PERIS muxes */
>  PNAME(mout_peris_bus_user_p)		=3D { "oscclk", "mout_cmu_peris_bus" };
> -PNAME(mout_peris_clk_peris_gic_p)	=3D { "oscclk", "mout_peris_bus_user" =
};
> +PNAME(mout_peris_clk_peris_gic_p)	=3D { "mout_peris_bus_user", "oscclk" =
};

[Severity: High]
Does reordering the mout_peris_clk_peris_gic_p array break the hardware
register mapping?

In the Exynos clock framework, the indices of the PNAME array correspond
directly to the hardware multiplexer register bit values (where index 0 maps
to register value 0). Reordering the array to change the default parent cou=
ld
cause the framework to write the wrong index to the mux register when
clk_set_parent() is called.

Should the default clock parent be configured using the assigned-clocks and
assigned-clock-parents properties in the Device Tree instead of modifying t=
he
driver's hardware description?

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613-exynos990-=
peris-fix-v3-v3-0-2b230db78ae4@gmail.com?part=3D3

