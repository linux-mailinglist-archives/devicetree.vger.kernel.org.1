Return-Path: <devicetree+bounces-313961-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id G1LYA9muNWr13AYAu9opvQ
	(envelope-from <devicetree+bounces-313961-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 23:04:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 595906A7C2F
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 23:04:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=samsung.com header.s=mail20170921 header.b=p0UJKPfX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313961-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313961-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=samsung.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 7D6873009091
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 21:04:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5609D3B27C9;
	Fri, 19 Jun 2026 21:04:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F7703368AC
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 21:04:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781903062; cv=none; b=ek7grY38a9/D5EXsWQhwYiOkc/TrzNsky79gcRRRaa9yj2eonvkSnkg7d0EZ6bzNOwcVwKrYOJfZZue5QBTA+B59ELZdoKa6L+Td1rNoJ2Z1ZPLEAW90PfziqxBhEvckx3+J+Q++ApL+5hVD4ipLCH/MjJgS1CCB1NhEM7G5GhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781903062; c=relaxed/simple;
	bh=8hu1Oddsqo5uRYh6Wf4qnPgs8UkT4lwR6ZpmHuzqDNU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=a+qN1E4kyd5BP4t36nKM9sFxP+ZYdUYVbMvxszbR9ii1CGquBw9mQfSK3N4R4o2g7TpA0XkRE6q+CxqsJ6YkS+t5iWCbLPAaF4HsZU1emxn4kw6mZXlkKLvi8ax0+r0yL/BVOMS34dCx8Hm+olYBOZo4Km+w3wrIse8RybJCoeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=p0UJKPfX; arc=none smtp.client-ip=210.118.77.12
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20260619210417euoutp02ef53928ec27696048b941a4d39999270~6l2Pe40dI0233702337euoutp02p
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 21:04:17 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20260619210417euoutp02ef53928ec27696048b941a4d39999270~6l2Pe40dI0233702337euoutp02p
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1781903057;
	bh=r2f6hjSGMoH572lM/Ykcj4QH+SisNj10wZbZJgrsaP8=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=p0UJKPfXVK6bJAFirGdROBBCyRh8cFOmDclU1jj1NJMQhLXJlVREv7tNMnCzRmIR5
	 Y4IM1AzG2ho53qxtueDBs7dHbM/8TLMARshQRPnwJxfbEyk8IHqyR8BZBz8/kqculg
	 zvwHiHpDga1gayxLmMKU0OxHSvbMmFTgqxzqVM6k=
Received: from eusmtip1.samsung.com (unknown [203.254.199.221]) by
	eucas1p1.samsung.com (KnoxPortal) with ESMTPA id
	20260619210417eucas1p10453b07959c6efc6ef5ab9e0520a600a~6l2OwsEDK1265012650eucas1p1V;
	Fri, 19 Jun 2026 21:04:16 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip1.samsung.com (KnoxPortal) with ESMTPA id
	20260619210416eusmtip1c42ab3e53832f224de29ef4a70a27b6b~6l2OMSZ6b2659126591eusmtip1D;
	Fri, 19 Jun 2026 21:04:16 +0000 (GMT)
Message-ID: <f9fe4a59-c6f6-4388-a823-fc7bc6b9fd6d@samsung.com>
Date: Fri, 19 Jun 2026 23:04:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH] arm64: dts: broadcom: bcm2712: Remove non-functional
 EL2 virtual timer
To: Daniel Drake <dan@reactivated.net>, maz@kernel.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com
Cc: devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, andrea.porta@suse.com
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20260619204832.586079-1-dan@reactivated.net>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20260619210417eucas1p10453b07959c6efc6ef5ab9e0520a600a
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20260619204921eucas1p1c4a9fe8e8a41f552d4637dee2b26f4e4
X-EPHeader: CA
X-CMS-RootMailID: 20260619204921eucas1p1c4a9fe8e8a41f552d4637dee2b26f4e4
References: <CGME20260619204921eucas1p1c4a9fe8e8a41f552d4637dee2b26f4e4@eucas1p1.samsung.com>
	<20260619204832.586079-1-dan@reactivated.net>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.65 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[samsung.com:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[samsung.com,none];
	R_DKIM_ALLOW(-0.20)[samsung.com:s=mail20170921];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	XM_UA_NO_VERSION(0.01)[];
	TAGGED_FROM(0.00)[bounces-313961-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:maz@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:florian.fainelli@broadcom.com,m:bcm-kernel-feedback-list@broadcom.com,m:devicetree@vger.kernel.org,m:linux-rpi-kernel@lists.infradead.org,m:linux-arm-kernel@lists.infradead.org,m:andrea.porta@suse.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[samsung.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.szyprowski@samsung.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 595906A7C2F

On 19.06.2026 22:48, Daniel Drake wrote:
> Commit d87773de9efe1 ("clocksource/drivers/arm_arch_timer: Default to
> EL2 virtual timer when running VHE") causes boot to hang on
> Raspberry Pi 5. The newly-selected EL2 virtual timer does not generate
> any interrupts, even though the GIC_DIST_ENABLE_SET flag has been
> confirmed set via readback.
>
> The reasons for this failure are unknown, however it is likely that
> this timer was never tested. Raspberry Pi's original devicetree did
> not include this timer interrupt; it was only introduced via a
> suggestion[1] made in code review as part of the upstreaming process.
> (Current RPi firmware versions do include this timer, but only because
> they rebased on top of the upstreamed devicetree starting with
> Linux 6.12)
>
> Until more is known about this non-firing timer interrupt, remove
> the devicetree entry to enable RPi5 devices to boot.
>
> [1] https://lore.kernel.org/all/12363be5b11c752b7155cc0c416fdfd2@kernel.org/
>
> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Closes: https://lore.kernel.org/all/ea15cce1-b393-43f6-8d58-3d6f90f0c0cd@samsung.com/
> Signed-off-by: Daniel Drake <dan@reactivated.net>

Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>


> ---
>  arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> index 761c59d90ffc..09ff5e9959d3 100644
> --- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> +++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
> @@ -678,8 +678,6 @@ IRQ_TYPE_LEVEL_LOW)>,
>  			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(4) |
>  					  IRQ_TYPE_LEVEL_LOW)>,
>  			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(4) |
> -					  IRQ_TYPE_LEVEL_LOW)>,
> -			     <GIC_PPI 12 (GIC_CPU_MASK_SIMPLE(4) |
>  					  IRQ_TYPE_LEVEL_LOW)>;
>  	};
>  

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


