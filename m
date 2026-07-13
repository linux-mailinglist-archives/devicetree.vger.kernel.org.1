Return-Path: <devicetree+bounces-325705-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id M9GsF9ISVWq+jgAAu9opvQ
	(envelope-from <devicetree+bounces-325705-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:31:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F6D674DA04
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:31:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QypSqzo3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325705-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325705-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99DC1301FF8C
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:25:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF4533ADA9;
	Mon, 13 Jul 2026 16:25:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D421640DFD5
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:25:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783959954; cv=none; b=EM2JVpZpL4svm87NEzY9aN4J5gNRb1a2uOfTYmMfBEUES6CvXG2Md8wYvQCX0GsqbuRI4MF4s9l3Uct+vX+OSK+MfVNXav67D4j8X6aR10/i9tzbmDlxTtBxduYVeNYYPVmrrjH2GDBegzNcycp2+JdZkRklGzy1OTyiyI2TBjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783959954; c=relaxed/simple;
	bh=GOoX3I4hotF/mhbriVQXW6tIxy+aIb7uKf7/REWVr8o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cfn501AVJAf978uUw4oWMffUCVk1WOwrRG1zrMP126hNFmVQF2BOarCeag2fwuykP2dhrO321cjHFURNFWEkkbo6+d0yXXD554EUN9tCwcmPaLHUI/NVeZbSHBaithvfdbEey22Ndhyutb+GGU8HGV2iPMxt7BANeCRJ4rgMagM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QypSqzo3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A6C31F000E9;
	Mon, 13 Jul 2026 16:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783959952;
	bh=44oiwCbH52v9WBPZhOBKZAhe4bcTgCcc/JPoSO+/+GY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QypSqzo3/8XYF8GZSTue65ScNfmYyrQipW5vXZxrXV4T1foBMjpRgSd9pPuxYPFCi
	 usMtksCpn5FR6Yw6BlGkKu/jMl9cUhq+byukoveDG7kaqX6qdW2pJEbenS21UUxflX
	 N5VbK6WVq/OgQHPPkLaIWFS06t6UgPOxjlc0iYHTZhQiosQjydTQN3SQfI30Bg4Nbn
	 WlJOBRxRkzkAd1gpdyeaWlSMgAtTJuAjJF+XIua6USpA5pMIjp5cp4WdLrSXSq08Nh
	 lYcflk68Xrd1PoyUPGynfmqHOM9L3X6Ojj+AWKeBufuiwbz2Kc7idXWlJbxD90fY2m
	 iJx6moLgPuoKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 10/11] clk: realtek: Add RTD1625-ISO clock
 controller driver
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713155630.3054636-11-eleanor.lin@realtek.com>
References: <20260713155630.3054636-1-eleanor.lin@realtek.com>
 <20260713155630.3054636-11-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 16:25:51 +0000
Message-Id: <20260713162552.2A6C31F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325705-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:eleanor.lin@realtek.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[realtek.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9F6D674DA04

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unused macros RTD1625_ISO_RSTN_MAX and RTD1625_ISO_S_RSTN_MAX are d=
efined in the clock driver.
--

--- Patch [10]: [PATCH v10 10/11] clk: realtek: Add RTD1625-ISO clock contr=
oller driver ---
commit c492e99cbe50d13329cfaeaed02f38be0c5245e8
Author: Cheng-Yu Lee <cylee12@realtek.com>

clk: realtek: Add RTD1625-ISO clock controller driver

This commit adds support for the ISO domain clock controller on the Realtek
RTD1625 SoC. It manages clocks in the always-on power domain and acts as a
parent device to register the shared reset controller as an auxiliary devic=
e.

> diff --git a/drivers/clk/realtek/clk-rtd1625-iso.c b/drivers/clk/realtek/=
clk-rtd1625-iso.c
> new file mode 100644
> index 0000000000000..07ff8b95db3e9
> --- /dev/null
> +++ b/drivers/clk/realtek/clk-rtd1625-iso.c
> @@ -0,0 +1,147 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2024-2026 Realtek Semiconductor Corporation
> + * Author: Cheng-Yu Lee <cylee12@realtek.com>
> + */
> +
> +#include <dt-bindings/clock/realtek,rtd1625-clk.h>
> +#include <linux/array_size.h>
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include "clk-regmap-gate.h"
> +
> +#define RTD1625_ISO_CLK_MAX	19
> +#define RTD1625_ISO_RSTN_MAX	29
> +#define RTD1625_ISO_S_CLK_MAX	5
> +#define RTD1625_ISO_S_RSTN_MAX	5

[Severity: Low]
This isn't a bug, but are the RTD1625_ISO_RSTN_MAX and RTD1625_ISO_S_RSTN_M=
AX
macros intended to be used in this file? They appear to be defined locally
here but are never referenced anywhere within the driver.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713155630.3054=
636-1-eleanor.lin@realtek.com?part=3D10

