Return-Path: <devicetree+bounces-321547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id WGEdCMYSTGrtfwEAu9opvQ
	(envelope-from <devicetree+bounces-321547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:40:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA71715813
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:40:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=RIh8n4WK;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321547-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321547-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 08FC5302A52A
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 20:15:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D293F38B140;
	Mon,  6 Jul 2026 20:15:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB0E23DB96B
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 20:15:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783368950; cv=none; b=ao6rRB8bFmu9Vzg7ecHs1H/+1QbD0Y9CAWsoFpaGl9BhylFimIKAammNV4Deszk2sFDkfw9ydipUVc2bcY24iKyvinapB/qaguNprm+m9nbdPlWUsApI/85uC5L9lXiGfYrFp6i+jb6gFd0lEOsrr8NWKfexsFyt8+xUDxfLWdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783368950; c=relaxed/simple;
	bh=Q+ScN/ZJWCWycm7ZIg8SW5LA01S2UqsQRW5WATmfr7U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GFRZLnRxXI7zyykI9dyhuah6Pgyxfpslvviim1Exc/1cf+o1fKIhv14aM8FDuhfSKgt14uWAns0pFGaJxwt8sl0F+IPuHb5+ejsU6OFH0wijvJYaWK5NTgjNYBEDyZqhYze1ZnbyAVAVfZSrOFB3LZtRKOksAWCudGU1mapPPTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIh8n4WK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DAFDD1F000E9;
	Mon,  6 Jul 2026 20:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783368949;
	bh=P7UplLkI/3TYM2DtvFj9EisLfZgYDvFyQW66imT5CPY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=RIh8n4WKJWK8HcaLT2VXTuiRgSwYPDjzLbYE9tbveGrRGtIn5Ni6JXz2DwsEaIS+L
	 Hjg+WHurhdAYEI3jJpXR2RSom7TQ7a6SsVcyN47awKxk8xZ+gcUEO+F0l2G0UP+SBE
	 q6Wf+xwiL2vORHuuu919yxYSRTRHuenzFfsTwR2nkZ9MHkXso7sIP53/E6y6FjX86u
	 lkkYlOdBm7Eh3mLR+DOoun8ydBEFdD2Q5HWWyUDso6Nyie2XrLW/1JBS2/HWQ41LAX
	 48zLy/7G9wF3WjG6l6wjXQOn78MSLcSR+iO2tIdMOYMs7Q2z+aZkVjOaUKvshFCcru
	 x07BICOJ3G04w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/12] clk: rockchip: Add clock controller for the
 RV1106
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706195818.3906949-3-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-3-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 20:15:48 +0000
Message-Id: <20260706201548.DAFDD1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-321547-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7BA71715813

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The CPU clock transition logic hardcodes the core divider to 1 (di=
vide-by-2) in `pre_muxs`, which silently overwrites the safe dynamic divide=
r calculated by the generic rockchip `clk-cpu` framework. This can cause th=
e CPU to be severely overclocked relative to its current voltage during fre=
quency transitions.
--

commit 0a7d739f9968c86bc3a23196e252f049408102b7
Author: Simon Glass <sjg@chromium.org>

clk: rockchip: Add clock controller for the RV1106

Add the clock controller driver for the Rockchip RV1106, based on the
driver from the vendor kernel by Elaine Zhang, following the structure
of the RV1103B driver.

Link: https://github.com/LuckfoxTECH/luckfox-pico

> diff --git a/drivers/clk/rockchip/clk-rv1106.c b/drivers/clk/rockchip/clk=
-rv1106.c
> new file mode 100644
> index 0000000000000..88f043f34c233
> --- /dev/null
> +++ b/drivers/clk/rockchip/clk-rv1106.c

[ ... ]

> +#define RV1106_CPUCLK_RATE(_prate, _aclk_core, _pclk_dbg, _is_pvtpll)	\
> +{									\
> +	.prate =3D _prate,						\
> +	.divs =3D {							\
> +		RV1106_CLKSEL0(_aclk_core),				\
> +		RV1106_CLKSEL1(_pclk_dbg),				\
> +	},								\
> +	.pre_muxs =3D {							\
> +		RV1106_CLKSEL3(1),					\

[Severity: High]
Does this hardcoded core divider safely integrate with the generic rockchip
clk-cpu framework?

The generic rockchip_cpuclk_pre_rate_change() framework computes a safe
alt_div during frequency transitions (e.g., from 96 MHz up to 216 MHz) so
the intermediate frequency stays safely below the target rate while voltage
adjusts.

It looks like writing 1 here via RV1106_CLKSEL3(1) will clobber that
dynamically calculated alt_div, since it writes exactly to the div_core
register field. If the CPU is forced to run at GPLL/2 (e.g., ~600 MHz)
while the voltage is only provisioned for 216 MHz, could this cause system
lockups or crashes due to undervoltage during cpufreq scaling?

> +		RV1106_CLKSEL2(2),					\
> +	},								\
> +	.post_muxs =3D {							\
> +		RV1106_CLKSEL2(_is_pvtpll),				\
> +		RV1106_CLKSEL3(0),					\
> +	},								\
> +}

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706195818.3906=
949-1-sjg@chromium.org?part=3D2

