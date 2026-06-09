Return-Path: <devicetree+bounces-309294-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NoU0F7hjKGqvDAMAu9opvQ
	(envelope-from <devicetree+bounces-309294-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:04:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9D3663807
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 21:04:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VGowtne7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309294-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309294-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B4D40303BDD8
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 19:03:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED9A4C954B;
	Tue,  9 Jun 2026 19:03:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 044994C0427
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 19:02:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781031780; cv=none; b=IkfIEpP28j+qerNP1ObmCiq50F5h3Ix0QyjC3P1LPGJNMgvC64PvoORt81ynvLMuAP5MdEelIgEuA/t+MTJWOIakhMA0i8IUJ+qDfrlyRtMHObbaDjN5AD6QvOMGGizO+n/PBaf5bMyufdEvuHDEsq3kCXBkQoEWCVhN0v4+nY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781031780; c=relaxed/simple;
	bh=EJk7BFb0mYcKEzbj1uXJieOAG824d3hZuSPEHyyHZY0=;
	h=From:Subject:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TaKMkl0no8Mtz3fZ1eg88t8Gv7rSfta8UqcOTcBPTZiatB/nq0qYY2d29zPtBqTn4tNpz9okBPcUrhd0q+4HDlyFvzJ0xjgzG1kIdCca7FUDN1f9xgw/V4qIKj3ZAhjdRoa6IlXJzxgli/yXlTPcoS6KQGyfUJnV+9ZeTYTyU+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VGowtne7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7564D1F00893;
	Tue,  9 Jun 2026 19:02:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781031778;
	bh=yGwWaWdsjXDBiV6S3Covo50UWnLTACyy74VXb8rm5jE=;
	h=From:Subject:Reply-To:Cc:In-Reply-To:References:Date;
	b=VGowtne7ofCUA1M+DPivl8Z+jx+GkxFtJIAJ/VJtqAJDf/cbjcs4pm1IeYcHkgrkC
	 nJJ6gU8/X4tRBwH1iBcSPsvN5ZADDzI2B/7Xu5e0CY/48Co+E6PsQRG9NvUXsv9p6+
	 kBK/DEbUWwwIKQ0sxDFoFbuLQjT9x7VGhoy3wHOAAilnNUDaiXWcmyg7esNp6Xwnms
	 qYggk0E77WUeES8LR055bEhNPq+205omUpyQbI16EfdAwW/dx5tZZKkLz16IwEcXcI
	 QpBqTFHlf5bUCZRhyS8WSW7dW+ZEfRCg1/2qYBBCHcHnaqxPWgat1EUVyTAKfWo/Gl
	 LVhohzVkSvK5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 06/11] arm64: dts: ti: var-som-am62p: Fix wkup R5F
 memory region size
Reply-To: sashiko-reviews@lists.linux.dev
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260609-topic-am62a-ioddr-dt-v6-19-v6-6-16afba97fbe0@baylibre.com>
References: <20260609-topic-am62a-ioddr-dt-v6-19-v6-6-16afba97fbe0@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 19:02:57 +0000
Message-Id: <20260609190258.7564D1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	MISSING_TO(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309294-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,baylibre.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF9D3663807

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The commit message inaccurately describes the prior state of the=
 code. It claims that `wkup_r5fss0_core0_memory_region` was reserved with "=
only 0x0f00000" (15 MiB) and implies it is being increased to `0x1d08000`. =
However, the diff reveals the previous value was actually `0x01e00000` (30 =
MiB), meaning the patch is shrinking the reservation rather than expanding =
it from `0x0f00000`. The commit message appears to have been copied from an=
other patch.
--

commit f780a29b02dfe26af92ddc65f0520382d3c6c8e7
Author: Markus Schneider-Pargmann (TI) <msp@baylibre.com>

arm64: dts: ti: var-som-am62p: Fix wkup R5F memory region size

This commit updates the wkup_r5fss0_core0_memory_region size in the device
tree for the AM62P platform. The size is adjusted to match the MCU SDK link=
er
expectations for the wkup R5F firmware.

Link: https://github.com/TexasInstruments/mcupsdk-core-k3/blob/k3_main/exam=
ples/drivers/ipc/ipc_rpmsg_echo_linux/am62px-sk/wkup-r5fss0-0_freertos/ti-a=
rm-clang/linker.cmd

> The wkup_r5fss0_core0_memory_region was reserved with only
> 0x0f00000 but the MCU SDK linker for the wkup R5F firmware on
> AM62P defines the DM code/data DDR footprint differently:

[Severity: Medium]
Is this description of the prior state accurate?

The commit message states the region was reserved with only 0x0f00000,
which implies the patch is increasing the size.

However, looking at the device tree changes in this patch:

> diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi b/arch/arm64/b=
oot/dts/ti/k3-am62p5-var-som.dtsi
> --- a/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-am62p5-var-som.dtsi
> @@ -71,7 +71,7 @@ wkup_r5fss0_core0_dma_memory_region: r5f-dma-memory@9c8=
00000 {
> =20
>  		wkup_r5fss0_core0_memory_region: r5f-memory@9c900000 {
>  			compatible =3D "shared-dma-pool";
> -			reg =3D <0x00 0x9c900000 0x00 0x01e00000>;
> +			reg =3D <0x00 0x9c900000 0x00 0x01d08000>;

The previous value was actually 0x01e00000 (30 MiB), meaning the region is
being shrunk to 0x01d08000 rather than expanded from 0x0f00000.

Could the commit message be updated to reflect the actual previous value be=
ing
replaced in the device tree?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609-topic-am62=
a-ioddr-dt-v6-19-v6-0-16afba97fbe0@baylibre.com?part=3D6

