Return-Path: <devicetree+bounces-303584-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKUWBKVeF2qpCggAu9opvQ
	(envelope-from <devicetree+bounces-303584-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 23:14:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0AC5EA5DD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 23:14:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A7D8302EECD
	for <lists+devicetree@lfdr.de>; Wed, 27 May 2026 21:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 402BD3C6611;
	Wed, 27 May 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzqjjcKF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139933C584A
	for <devicetree@vger.kernel.org>; Wed, 27 May 2026 21:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779916433; cv=none; b=WqIcXdgNfl+aRhYkvrJjNUbOP6vWN8TXPJojkdCUofivpJxYYor+aHJtp3sJQLqpXzUfpaMrx5pEiR65USmzvt/jIfkggdGt18TfHUxfwoF/YCQmqAmdNL8LpCSyZYgiBsYGZZ5uq3IxxRYFwTiY+Gb1t8LKKeCMNWcScH+4lCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779916433; c=relaxed/simple;
	bh=SOV28sagOo7X3c3sCRNkY6D5aqNd/0dt/8MNlQs7tNA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lADHM9O5IIfCGreBXuPaYFCxD2mrGo4vcbl0frOOhH6WFKjSuFxPlmoCLDPq0XUrnnJca5RHhgqO3NozWKrtdYGZFY2HlKn6b5z6P9+J6jl+k/XOV5Zb6o+J3FyB+hSDPDRAK/WUgQbjTCI1cGxs0iqxdjRnDBayy/FaLLAvF3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzqjjcKF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1B9411F000E9;
	Wed, 27 May 2026 21:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779916431;
	bh=dx2ghtVCYq9spslvnvWf1rEWp+Cta1q8fb3g5eHnsD8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bzqjjcKFPSP474p8S23WwwFYaphQopF1Hvt1URB28nQjGtfV1x1lThuYalU0f/zr6
	 LmvwauIjwyonn1vXkugFfSpEmukqHp0+9KA4kImMcOS110Mn09Rm5LbvR8FUiBg4eL
	 yAstutInpde4ZYIcqd8E2AZczxG3Yb+5N96Ah9dpzPtXbeJxK9Mqz+GeWK98ndw+Z5
	 Pb/b5eDD0LzPXLNSsbQJsFo0GAGThQoLmEQVp0CJGd4kjLZfaPQpAmtjvkw0MifYsi
	 6Tcs54ds0P2PQXQUBW0/pklyHaTJBAOsv+VL/o1i7MLhmQBAVetm4FjIMIFt1ZM/yf
	 TlVmTPN+oIhhw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle:
 add initial device tree
Reply-To: sashiko-reviews@lists.linux.dev
To: "Erikas Bitovtas" <xerikasxx@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260527-yukon-eagle-v1-2-98119d64a71b@gmail.com>
References: <20260527-yukon-eagle-v1-2-98119d64a71b@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 27 May 2026 21:13:50 +0000
Message-Id: <20260527211351.1B9411F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
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
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-303584-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url]
X-Rspamd-Queue-Id: 5E0AC5EA5DD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Board-specific GPIOs lack explicit pin control configurations.
- [Medium] Unjustified use of `regulator-always-on` for managed regulators.
- [Low] Unnecessary deletion and recreation of reserved memory nodes instea=
d of property overrides.
--

commit 9c64533c5c22d487f869e7fde305b8e89bded0d1
Author: Erikas Bitovtas <xerikasxx@gmail.com>

ARM: dts: qcom: msm8926-sony-xperia-yukon-eagle: add initial device tree

This commit adds the initial device tree for the Sony Xperia M2 smartphone
based on the Qualcomm MSM8926 SoC. It includes configurations for the
framebuffer, regulators, internal storage, SD card, sensors, NFC, and USB.

> diff --git a/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts b=
/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts
> new file mode 100644
> index 0000000000000..a203f97aa86cc
> --- /dev/null
> +++ b/arch/arm/boot/dts/qcom/msm8926-sony-xperia-yukon-eagle.dts
> @@ -0,0 +1,406 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2026 Erikas Bitovtas <xerikasxx@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "msm8926.dtsi"
> +#include "pm8226.dtsi"
> +
> +/delete-node/ &adsp_region;
> +/delete-node/ &mba_region;
> +/delete-node/ &mpss_region;
> +/delete-node/ &smem_region;

[Severity: Low]
Is it necessary to delete and recreate these reserved memory nodes? Since t=
he
base unit addresses for these regions don't change, we could override the
reg property directly instead of deleting the nodes. Completely deleting the
nodes risks dropping other properties defined in the base dtsi.

[ ... ]

> +	gpio-keys {
> +		compatible =3D "gpio-keys";
> +
> +		button-camera-focus {
> +			label =3D "Camera Focus";
> +			gpios =3D <&tlmm 108 GPIO_ACTIVE_LOW>;

[Severity: Medium]
Are there missing pinctrl states for this and other board-specific GPIOs
defined in this file? Relying on the bootloader for pin multiplexing, drive
strengths, and bias resistors can leave pins in an undefined state and might
cause issues after resuming from suspend.

[ ... ]

> +		pm8226_l6: l6 {
> +			regulator-min-microvolt =3D <1800000>;
> +			regulator-max-microvolt =3D <1800000>;
> +			regulator-always-on;
> +		};

[Severity: Medium]
Does this regulator need to be forced always-on? It is provided to sdhc_1
as its vqmmc-supply, so the MMC subsystem should be able to dynamically man=
age
its power state. Unless there is an unmodeled hardware constraint, the
regulator-always-on property prevents the consumer from managing the supply
efficiently.

[ ... ]

> +&sdhc_1 {
> +	vmmc-supply =3D <&pm8226_l17>;
> +	vqmmc-supply =3D <&pm8226_l6>;
> +
> +	bus-width =3D <8>;
> +	non-removable;
> +
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260527-yukon-eagl=
e-v1-0-98119d64a71b@gmail.com?part=3D2

