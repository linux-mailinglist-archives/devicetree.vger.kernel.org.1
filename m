Return-Path: <devicetree+bounces-321549-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vMS3JgwTTGr2fwEAu9opvQ
	(envelope-from <devicetree+bounces-321549-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:41:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C003871581F
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:41:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mYIgkLj5;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321549-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321549-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 45EC43015CA2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 20:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF8FD3DE439;
	Mon,  6 Jul 2026 20:17:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC09A3DDDAB
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 20:17:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783369075; cv=none; b=qzALm9c0zQQ/H93gDhFgEpDd3zW/y46ph45V7rEr/ruNy9PdTqa8b8yOz+tfH1pcRAEoP2et+xsjemGfFY7a9MbR98rAt73KXI2WS+yLu0wT2dyoiacwyzH5GXEBOMMmeIgpkMhk90u+JxhJSV0sG+cGrTqDYNKR8yiMZubdAH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783369075; c=relaxed/simple;
	bh=dZZ3i5oK43/1JAx8IdOT/icNglLabUAuAqjOTJ9a1zs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gUpFCXGMKkoz3oiaayxDKKRxruVGFzykIq6XkxxJS8bcdEWhwHDMxUhXZjmHTWF1RplbqBlmWhbhOyPDKRH7cBzhvEOqoZv+SXBr5Q8GN27BGfXeRIFWrVhjqD4Th4HNVMHnaT02oBpFWvJ3fP/QEJ7oah39Tim/ZmdB2POzbQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYIgkLj5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1D6141F000E9;
	Mon,  6 Jul 2026 20:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783369074;
	bh=JX6AUBLj7y+u6y7lZiIII80OkHNSNiBUN0qNfn1yyR0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mYIgkLj5wEdT54PwvFNWbU5B4No1X4WbXNsWcShS41RLJjlYJxAi/v/Ld0mzCzOI3
	 5NMsyEK2+Y3Zjor5IFr8gX5OiBPDDlxC6Ve8Xf9G3KtVNAc+32PCHV1Hcu8SkTNdQB
	 gUGZrIfLr6cjuHavS86RrlWbyQXbwXJC1NlXLU+06hO53EfLhpfrXAA1KbyWnQowyb
	 zChafz437VNwK4uA56bsnEpdTnrXphNQdMfR/AG5RgBbcLHQdyWoiVcComFZpmNnPE
	 V0ohV6NJj5o00xz3mib/pP8/ZcmLMdZaN284mOikm4xMyV+aEcHZAqf25h42+CNJoA
	 OiMm2cQsx1fSA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 10/12] ARM: dts: rockchip: Add support for RV1106 and
 RV1103
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260706195818.3906949-11-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
 <20260706195818.3906949-11-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 20:17:53 +0000
Message-Id: <20260706201754.1D6141F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-321549-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:email,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C003871581F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The unit-address of the GIC `interrupt-controller` node does not ma=
tch its `reg` base address.
- [Low] Introduction of undocumented hardware compatible string for the SoC=
 root node.
--

commit dd5d51e321a7026dddb62fa99ec6452872734a4f
Author: Simon Glass <sjg@chromium.org>

ARM: dts: rockchip: Add support for RV1106 and RV1103

This commit adds devicetree files for the Rockchip RV1106 Cortex-A7 SoC
and its RV1103 variant. The pinctrl data is derived from the vendor kernel
in the Luckfox Pico SDK.

[ ... ]

> diff --git a/arch/arm/boot/dts/rockchip/rv1106.dtsi b/arch/arm/boot/dts/r=
ockchip/rv1106.dtsi
> new file mode 100644
> index 0000000000000..e4b57086e04c1
> --- /dev/null
> +++ b/arch/arm/boot/dts/rockchip/rv1106.dtsi
> @@ -0,0 +1,299 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
> + */
> +
> +#include <dt-bindings/clock/rockchip,rv1106-cru.h>
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +
> +/ {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <1>;
> +
> +	compatible =3D "rockchip,rv1106";

[Severity: Low]
Is this root compatible string documented in
Documentation/devicetree/bindings/arm/rockchip.yaml?

It looks like dtbs_check will report a warning because "rockchip,rv1106" is
used here but lacks corresponding YAML binding documentation in this patch.

> +
> +	interrupt-parent =3D <&gic>;

[ ... ]

> +	soc {
> +		compatible =3D "simple-bus";
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		ranges;
> +
> +		grf: syscon@ff000000 {
> +			compatible =3D "rockchip,rv1106-grf", "syscon", "simple-mfd";
> +			reg =3D <0xff000000 0x68000>;
> +
> +			grf_cru: clock-controller {
> +				compatible =3D "rockchip,rv1106-grf-cru";
> +				#clock-cells =3D <1>;
> +			};
> +		};
> +
> +		gic: interrupt-controller@ff1f0000 {
> +			compatible =3D "arm,gic-400";
> +			reg =3D <0xff1f1000 0x1000>,

[Severity: Low]
Does the unit-address @ff1f0000 need to match the first reg address
0xff1f1000?

This mismatch will trigger a devicetree compiler warning (simple_bus_reg
warning) during the build process.

> +			      <0xff1f2000 0x2000>,
> +			      <0xff1f4000 0x2000>,
> +			      <0xff1f6000 0x2000>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706195818.3906=
949-1-sjg@chromium.org?part=3D10

