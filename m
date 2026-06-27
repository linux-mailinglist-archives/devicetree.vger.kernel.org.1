Return-Path: <devicetree+bounces-316316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fu/mAAkDQGrlbAkAu9opvQ
	(envelope-from <devicetree+bounces-316316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 19:06:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4C26D2609
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 19:06:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=m4plowG3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316316-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316316-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 01B523011779
	for <lists+devicetree@lfdr.de>; Sat, 27 Jun 2026 17:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 913B32F0661;
	Sat, 27 Jun 2026 17:06:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729C72EFDA6
	for <devicetree@vger.kernel.org>; Sat, 27 Jun 2026 17:06:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782579974; cv=none; b=JZqEZX4jNuKT6oYccnlKtQmHEM1FJvPTFkt9DtMJnKsIVR0Q1N2v+Bagyk1EFM8kRIgxNmxXp4MQHmCVTdJXM4U78Ev5z0tGsWqGRNLGpV1H30ahzAZYDkYzv/J9RadnUwBv3hbF+JEfI/y322L7n12phup5M+KpuT8hhHVdepY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782579974; c=relaxed/simple;
	bh=M9L7AXXhJgQLTz5NpAwi7LaclsewlY8QyWJg7WtnVi4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CIIfVjD01GGvaxurH5C53SduiGpXEKkor0Y1W9J+uAOrY+ZLUdA3T9d7NsYa/WfaRnNtlG0u5ixmAr5LQsYcUGnA2Il17/q56v4EozSeVSvWJJj967szyjdTD8K3Mpvlxcvl/pIJLxSrPy+iiBZXntZQ0eoos1KRM7k41k3SDOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4plowG3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDCFA1F000E9;
	Sat, 27 Jun 2026 17:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782579973;
	bh=kTlZBBiVMZn6SswD0xhgS1f2XNydaojBH23tbMcp6B8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=m4plowG3qKHA8VDOCpneaTyGsvKlNo5xIyfSwMx72Mv0Jc56iy5UPzTKDUww5ldoW
	 Vmr6//yb2KbVBJX67Oj1eNJEpKcCmYD6LW2LXCNgrnVSC/APT7MuoOZuWugS4PVrFw
	 +3GDI+4i65MrpfjpilWS1y/ENy+y6t9Y8gDxUG73cwBfyGotEKjJxu2I5sBiwI/hnZ
	 O8YP0/l7nICFiDWXzPdVGAg9HrERp7peZAGJDPjc+Vn9kR5bbMjByZ7Us5PF712i4d
	 wxVOK8HpaWnyTzH28m+q6N+lYqvO0YIoosWUeAWflWTt10J2gkts7EGUn/wbjaC7MO
	 b6WuY3rrf1rEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/6] arm64: dts: exynos: add initial support for
 Samsung Exynos8855 smdk
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alim Akhtar" <alim.akhtar@samsung.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260627171228.2687857-6-alim.akhtar@samsung.com>
References: <20260627171228.2687857-1-alim.akhtar@samsung.com>
 <CGME20260627165422epcas5p4e4c6bce0e2daa6d08a9ec18afde9ce0e@epcas5p4.samsung.com>
 <20260627171228.2687857-6-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 27 Jun 2026 17:06:12 +0000
Message-Id: <20260627170612.BDCFA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316316-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:alim.akhtar@samsung.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,samsung.com:url,samsung.com:email,lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4D4C26D2609

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The pinctrl_cmgp controller and its first child bank gpm0 both cla=
im the exact same GIC interrupt (SPI 114), and the driver configuration is =
fundamentally broken for CMGP interrupts.
- [Medium] The asymmetric big.LITTLE CPU topology (Cortex-A520 and Cortex-A=
720) is missing CPU capacity definitions.
--

commit 46c39da58bc865179bf89eb7be4c747cacdd7227
Author: Alim Akhtar <alim.akhtar@samsung.com>

arm64: dts: exynos: add initial support for Samsung Exynos8855 smdk

This commit adds initial devicetree support for the Samsung SMDK board using
the Exynos8855 SoC. The SoC features an Octa-core CPU with a tri-cluster
architecture, a custom GPU, and an NPU supporting up to 14.7 TOPS.

Link: https://semiconductor.samsung.com/processor/mobile-processor/exynos-1=
580/

> diff --git a/arch/arm64/boot/dts/exynos/exynos8855-pinctrl.dtsi b/arch/ar=
m64/boot/dts/exynos/exynos8855-pinctrl.dtsi
> new file mode 100644
> index 0000000000000..b65f1698cd74a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos8855-pinctrl.dtsi
[ ... ]
> +&pinctrl_cmgp {
> +	gpm0: gpm0-gpio-bank {
> +		gpio-controller;
> +		#gpio-cells =3D <2>;
> +
> +		interrupt-controller;
> +		#interrupt-cells =3D <2>;
> +		interrupt-parent =3D <&gic>;
> +		interrupts =3D <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +	};

[Severity: High]
Does this child bank gpm0 claim the exact same SPI 114 interrupt as its
parent pinctrl_cmgp node?

If the child explicitly requests SPI 114 here, it might create an IRQ
resource conflict with the parent.

[ ... ]
> diff --git a/arch/arm64/boot/dts/exynos/exynos8855.dtsi b/arch/arm64/boot=
/dts/exynos/exynos8855.dtsi
> new file mode 100644
> index 0000000000000..9d82fceb5130a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/exynos/exynos8855.dtsi
[ ... ]
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;

[Severity: Medium]
Will the Energy Aware Scheduler function properly without the
capacity-dmips-mhz property defined here for the asymmetric Cortex-A520 and
Cortex-A720 nodes?

Without this property and lacking OPP tables, the scheduler might assume a
symmetric topology, which could cause it to schedule heavy tasks on the
small A520 cores or background tasks on the big A720 cores.

[ ... ]
> +		pinctrl_cmgp: pinctrl@12030000 {
> +			compatible =3D "samsung,exynos8855-pinctrl";
> +			reg =3D <0x12030000 0x1000>;
> +			interrupts =3D <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
> +		};

[Severity: High]
Could claiming GIC_SPI 114 here in the parent node lead to initialization
failures for CMGP interrupts?

The Exynos driver configures CMGP to use exynos_eint_gpio_init, which
expects a single demultiplexed IRQ on the parent. However, the gpm banks
are Wakeup EINTs with direct per-bank GIC interrupts (like the SPI 114
requested by gpm0).

Because exynos_eint_gpio_init skips EINT_TYPE_WKUP banks, the parent
successfully claims SPI 114 for a non-functional demux handler, blocking
gpm0. Any peripheral attempting to map an interrupt from a CMGP bank might
fail to probe. Should this instead have a wakeup-interrupt-controller
child node without claiming a parent interrupt?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260627171228.2687=
857-1-alim.akhtar@samsung.com?part=3D5

