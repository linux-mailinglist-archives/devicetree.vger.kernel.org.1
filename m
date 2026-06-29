Return-Path: <devicetree+bounces-316970-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id P+AHAg5XQmo05AkAu9opvQ
	(envelope-from <devicetree+bounces-316970-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:29:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 544BA6D967D
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:29:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=gCG3g72G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316970-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-316970-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7ED03305FADE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 11:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1756A36DA1A;
	Mon, 29 Jun 2026 11:23:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01C18340406
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 11:23:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782732198; cv=none; b=PXOzo/IJzxAOqT4U9gr99B5rMy+MmDs2cDz6AJstbEVRL0Qv3yqMXKJw0a2m3J9aygKndKCNPqmUUcovFRvRBHU7ldg6452LduCScsOT8Ze1tLIaVGbTkEILkP1ms3M2gj6vpe3RSQWnRuAk30+8JWs1Mnl2M0BnJrAhnJV/GXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782732198; c=relaxed/simple;
	bh=+DLBORV1vHw841ufXnSTIn5aIn/VjUuzJx47nlN6iqw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Y0uyQpyjeB/G/UXT7nLCyu+Eks/hsCU1Ly4QrNypjLtaaC+jXAFs5ZIwBfqAM0zLSQEzaZt+vkBbM8djXwQ0VIUcM0Vtv+klukDM9Dglo6alCkhf/hZxf/HWRiNKxvxMcE4CYQMhwxWQmhaL/gJE+gIs/aniJPs7H9EGIgxhfC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gCG3g72G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 516D51F000E9;
	Mon, 29 Jun 2026 11:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782732196;
	bh=+DLBORV1vHw841ufXnSTIn5aIn/VjUuzJx47nlN6iqw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gCG3g72Gp3bhHOJ0IUeQq9wwZM+gtS8sMof0ZHUAhHM9dQNGHKdVYS/VhlvwF2tvg
	 Q2fc0ereehTFzltW71gQNadrBzhEHjjm04JV1oTwB1P+veBJ0oIoI8fn1cGyPvgej0
	 h/cvtDPr93B49vcrLplYRU+aScb+XHVYQ0uLR4SEZIXFoE22caOzdpG1aFcZudsL+u
	 fT2trGmYa3MM+NDmenYQtlBREgFJyfW4Dohi6Dz0SRW3DTKF/k9VBewjHLikkyX9eS
	 3/7I1Mtt27hpAdv+i0l5mUxNS2f0jIkevnOqU4EzYF/4kQ5ilysukGL8+Ne6tdvvRd
	 Pdw4meOewQgtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] arm64: tegra: Add Lenovo ThinkEdge SE70 device tree
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jiqi Li" <lijq9@lenovo.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629111104.645771-3-lijq9@lenovo.com>
References: <20260629111104.645771-1-lijq9@lenovo.com>
 <20260629111104.645771-3-lijq9@lenovo.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 11:23:14 +0000
Message-Id: <20260629112315.516D51F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316970-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:lijq9@lenovo.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,lenovo.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 544BA6D967D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Unused input/event-code headers are included in the baseboard devic=
etree.
--

commit 177543cf6f6216384a5f49bfe40283ab1224a5a2
Author: Jiqi Li <lijq9@lenovo.com>

arm64: tegra: Add Lenovo ThinkEdge SE70 device tree

This commit adds initial device tree support for the Lenovo ThinkEdge SE70,
an industrial edge gateway based on the NVIDIA Jetson Xavier NX module. The
submission includes the 40-pin expansion header pinmux configuration, exter=
nal
Micro SD card slot, and I2C bus for the 40-pin header.

> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-lenovo-thinkedge-se70-ba=
seboard.dtsi b/arch/arm64/boot/dts/nvidia/tegra194-lenovo-thinkedge-se70-ba=
seboard.dtsi
> new file mode 100644
> index 0000000000000..b88388d152293
> --- /dev/null
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-lenovo-thinkedge-se70-baseboard=
.dtsi
> @@ -0,0 +1,106 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +#include <dt-bindings/gpio/tegra194-gpio.h>
> +#include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/input/gpio-keys.h>

[Severity: Low]
Are these two input-related headers needed? There do not appear to be any
gpio-keys nodes or KEY_* event codes utilized anywhere in this file.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629111104.6457=
71-1-lijq9@lenovo.com?part=3D2

