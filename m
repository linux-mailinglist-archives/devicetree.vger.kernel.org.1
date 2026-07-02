Return-Path: <devicetree+bounces-319246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PdtNNtk6RmqNMQsAu9opvQ
	(envelope-from <devicetree+bounces-319246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:18:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FEB26F5C45
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:18:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZNjt3TCy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319246-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319246-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 15FF63149EDC
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 09:53:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4893B48C3EC;
	Thu,  2 Jul 2026 09:48:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E663547ECC8;
	Thu,  2 Jul 2026 09:48:43 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782985726; cv=none; b=VBq2kJqsALre//5in8WSBHUtoVzA7wAS4KfOW6qa/sWh/gX2YYMUQTRX/Ruk3mEN7+shAY0qDiu9KPUzpqcHP6Is4z1TxvO58716JjuUkq1/8L8FLjTnB1OwioCpvw59AHgeWsCfGIdGJGkK41gXw6MH8JurtIyXAz2zAuoxmHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782985726; c=relaxed/simple;
	bh=Eyu11J5qv2ZHi+Qi9Vyi5LEotpm2dk7vSRiNNvts5yk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J5TAZ65+4tIOGdjkhwEO6QaG5REmWglYvUclTIESqpRKxzf8aTCklAQLaYxfwsfgSvzMxSb4gHbVomXjo9xuBg+FTm+9HLMhOh1Bp1sSbo2CXoWG5hRc76yh/deYoiV8LPzOMIR0e+FRBUuuQ1H/RDh1uUBsANs4kpl8a6s20x0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZNjt3TCy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BB5BA1F01561;
	Thu,  2 Jul 2026 09:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782985723;
	bh=25uRpcrhlekZgFGBJk/vF4cL8fcos6REBCogQ2xzQPo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZNjt3TCyeddP9Lm0ZCnLLO9cagutMOPkg42FqKWCmVOjRBRGAr7cMS/ez2Eg7RsrQ
	 N/uXDxtx/bytSVkpzhGqclleM0kuAyfUobcMVoSZxaowEEFgVGnkSvBSqp8fzZ3oCj
	 6K7L7kfhaatIoHc6l+4yfhWhAxaSqax8352DClpwViBCC6zfGGYexj/ynYjRJCj8ky
	 D77uPEDARnSbrcdzC+dl+WP5zTlJOnKpM238KvkblGY2BWWIdPICbudm3/Dx7pj9lU
	 tElaqWy1P+JwFMTNHcY/WRqz5IOwSFWV9iPyoujyfUNzvISuUmVcaKqYtW4MCnr675
	 YDkIXIIhDorXg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/18] arm64: dts: ti: k3-j722s-evm: Add overlay for
 fusion application daughter board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260702093123.1048575-11-y-abhilashchandra@ti.com>
References: <20260702093123.1048575-1-y-abhilashchandra@ti.com>
 <20260702093123.1048575-11-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 09:48:42 +0000
Message-Id: <20260702094842.BB5BA1F01561@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-319246-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,ti.com:url,ti.com:email,sashiko.dev:url,svtronics.com:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:Frank.Li@kernel.org,m:robh@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FEB26F5C45

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] Incorrect EVM name in the file header comment.
- [Low] Unused header inclusion.
- [Low] Inconsistent formatting in port declarations.
--

commit 7986b08cfb6e71a222dd7aeeb1377324b1869253
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j722s-evm: Add overlay for fusion application daughter b=
oard

This commit adds a device tree overlay for the Fusion application daughter
board on the TI J722S EVM. It configures two DS90UB960 deserializers to
aggregate input from up to 8x FPDLink-III sensors over the CSI RX ports.

> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-fusion.dtso b/ar=
ch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-fusion.dtso
> new file mode 100644
> index 0000000000000..cbad2409a9c18
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm-fpdlink-fusion.dtso
> @@ -0,0 +1,196 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * DT Overlay for Fusion (FPD-Link III) board on J721E EVM

[Severity: Low]
This isn't a bug, but should this read J722S EVM instead of J721E EVM to
match the target board mentioned in the commit message and file name?

> + * https://svtronics.com/portfolio/evm577pfusion-v1-0-fusion/
> + *
> + * Copyright (C) 2024 Texas Instruments Incorporated - http://www.ti.com/
> + */
> +
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>

[Severity: Low]
This isn't a bug, but is this dt-bindings/gpio/gpio.h inclusion necessary?
It appears no GPIO-related bindings or constants are actually used in this
overlay.

[ ... ]

> +			ds90ub960_0_ports: ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0{
> +				reg=3D <0>;
> +				status =3D "disabled";
> +				};

[Severity: Low]
This isn't a bug, but does this spacing follow the standard device tree
formatting conventions? There appear to be missing spaces before the opening
brace and after the equals sign here, such as port@0 { instead of port@0{,=
=20
and reg =3D <0>; instead of reg=3D <0>;.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702093123.1048=
575-1-y-abhilashchandra@ti.com?part=3D10

