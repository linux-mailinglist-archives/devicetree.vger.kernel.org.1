Return-Path: <devicetree+bounces-325443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vw/qArLHVGqTSwAAu9opvQ
	(envelope-from <devicetree+bounces-325443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:10:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9F874A2E6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:10:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b89ceIxD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325443-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325443-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5861330306FE
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:08:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3151F381B01;
	Mon, 13 Jul 2026 11:08:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4FF37E2E1
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 11:08:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783940919; cv=none; b=m1TBlzoD2W00nV/OQepTKfq0vuAvE69lhvXDTvqQiO4K6SmIJyWr7VUHW31zj04USBBrSwjtHC0Y3y6OAs5oz/XavF68h+pM3cy/xF+w6oEfCxnXjM6buK0EkZnpezN3xcCnv2W1/hnrS1DEKtB2l7LoJ9nEV7AIEN6FDGA1BPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783940919; c=relaxed/simple;
	bh=fQUlJVchhb8EZuT9UtLu8CTz2OjvCv40TxUVOVgQmDE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VYsvENiPknCm0WwRxaemaCwn/j2b7d7ZbX4W3OJBmCtLaNS8IfrjNnBwagzPKMk39fS52Zz7dXgjhtY/Q35TQl+rIUjkUbUXrRXImiYChTqhEomxdUpJQBnqZ9ixiWbHPD1OwDsm4qZqRvmd2gMUVrDvlyykILfqjms0GuPwOUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b89ceIxD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5F4811F000E9;
	Mon, 13 Jul 2026 11:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783940917;
	bh=pPcAtmgPN6OBX2ObsZBOb3Bu9UlL9PBi+segBbPKluI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b89ceIxDFT87DpFSp31Z3YxBlaF6G1wQHRmZIvZsM+jQsp2GyZRnA5jVWaWe4vx6L
	 5f7iJky5sK3SdCmBHKicP4PTpLgRP6BEzrwMpf3G9jtDB3eg0LfPs4AeIMzN/1yeDU
	 m8KOVELKhPTqyGookb0CvmIVC6l6VmR5TsmghFVgX+HGzVio6kwSI/wvyHhMg3Fncs
	 /5mfO78sUmD/cTRxpwDKO38nhI/iK6+DNHB70J3GstYCuBL/fsbs6DwJ8xVRbkZ5M7
	 pcilZwxGGH4PnIhMF0EkH839f8NXoGLEioE+vFm9rbiiS+cnkKfEqCguUPyvcUW6Rx
	 QELHSOY/PYPLQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 5/8] ARM: dts: mstar: miyoo-mini: Add vibrator
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Palmer" <daniel@thingy.jp>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713105950.1346962-6-daniel@thingy.jp>
References: <20260713105950.1346962-1-daniel@thingy.jp>
 <20260713105950.1346962-6-daniel@thingy.jp>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:08:36 +0000
Message-Id: <20260713110837.5F4811F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325443-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:daniel@thingy.jp,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0x0f.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5A9F874A2E6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing `#include <dt-bindings/gpio/gpio.h>` causes device tree com=
pilation failure due to an undefined `GPIO_ACTIVE_LOW` macro.
--

--- Patch [5]: [PATCH 5/8] ARM: dts: mstar: miyoo-mini: Add vibrator ---
commit c4d7e499cb7660d52f8d45adc7aae0663b10a9a9
Author: Daniel Palmer <daniel@0x0f.com>

ARM: dts: mstar: miyoo-mini: Add vibrator

This commit adds a vibration motor node to the Miyoo Mini device tree,
configuring it to be driven by a GPIO pin.

> diff --git a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-m=
ini.dts b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.d=
ts
> --- a/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts
> +++ b/arch/arm/boot/dts/sigmastar/mstar-infinity2m-ssd202d-miyoo-mini.dts

[ ... ]

> @@ -18,6 +18,12 @@ aliases {
>  	chosen {
>  		stdout-path =3D "serial0:115200n8";
>  	};
> +
> +	vibrator {
> +		compatible =3D "gpio-vibrator";
> +		enable-gpios =3D <&gpio SSD20XD_GPIO_UART0_TX GPIO_ACTIVE_LOW>;

[Severity: Low]
Does this file compile successfully without the gpio bindings header?

It looks like GPIO_ACTIVE_LOW is used in the new vibrator node, but the
file doesn't appear to include <dt-bindings/gpio/gpio.h>.

Will this result in a compilation failure from the device tree compiler
due to the undefined macro?

> +	};
> +
>  };
> =20
>  &pm_uart {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713105950.1346=
962-1-daniel@thingy.jp?part=3D5

