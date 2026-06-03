Return-Path: <devicetree+bounces-306204-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mL/sIFcfIGrMwAAAu9opvQ
	(envelope-from <devicetree+bounces-306204-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:34:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D952B6378E2
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 14:34:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=QKKyy2ze;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306204-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306204-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C84C7304097E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 12:15:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B9B147A0B6;
	Wed,  3 Jun 2026 12:15:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25327441027;
	Wed,  3 Jun 2026 12:14:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780488900; cv=none; b=WxkLfzcHWW/9YfWWWklMSq99+k7CIFq78q0iginvQrETJmaHFcueA7bSIzKsDMsD1Rac3VA0sa+R96ymODW9TD05YqzX+hfas8zi89aRheCb1saxCGBcV1O7xWa/ZEJ2Sp1e4BCMkITzZ/D6saS5RK3f33VIryXAXZC98DR1ruI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780488900; c=relaxed/simple;
	bh=n3WHuPIJIqTuO6OMA9qGdB15mAD3+GZrEj/DtYTsoWo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ullKlcX3WMoHrZqiN7OjNzQ5izaYxoyELFWZL76S2xqEvjhNIDJ5lL53RVMF0v+9rhZClyH4iQkH9FEsQ59EjJPUhfCNj/Zbol91o+MWlAs4vKR7OkFA0q55RvojmbYFp8mzfZB4Vb/42lM9QxEtKa6w4B7ZNSwRkiLvkGEa5Tg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QKKyy2ze; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 625971F00893;
	Wed,  3 Jun 2026 12:14:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780488898;
	bh=LuyId85rJ+3fBkpHwHQduuY29G06nIEj0Wd962KPG1E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=QKKyy2ze7eZiJEiTdyQEGTkE0A4e+3XLUoGXa7T6bvCSgTzJ9OlsuFawc0TE2ScgT
	 AbkclbNr9vPeDUwRTbFbbetshy5mUrAvBIAbWoo+ZM/9J5R9Zl1TDrUVPhOZf7Jcys
	 MGtwLUlHVNlXGcb+LeJjaV6XdQ8h9VxLZ6/Ve+exHLyKav6t+0TRA0XUIm0bp7olA+
	 0iK6Av4h10Duvc3tyCEPG45LA9AYtlmr80U3d2UEuKbrqVLzIR+YYERq/vUsOqcwBu
	 /OhkTphi0M84cRaj8C3wAKjbLHOUZ1bJ9+vEfxMF9O2kXTBlodZiatU5q4BSdA+CRF
	 zrgAZmWvyqGKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 06/12] arm64: dts: imx8mp-var-som-symphony: enable
 PCIe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Stefano Radaelli" <stefano.radaelli21@gmail.com>
Cc: Frank.Li@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <8b56416fbc765373643dfb0300c3661564e68ba4.1780487415.git.stefano.r@variscite.com>
References: <8b56416fbc765373643dfb0300c3661564e68ba4.1780487415.git.stefano.r@variscite.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 12:14:57 +0000
Message-Id: <20260603121458.625971F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306204-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:email,i.mx:url,lists.linux.dev:replyto];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefano.radaelli21@gmail.com,m:Frank.Li@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:stefanoradaelli21@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: D952B6378E2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Timeout and PCIe initialization failure during system resume due t=
o I2C-based PCIe reset GPIO in NOIRQ phase.
--

commit 1813e394a2d156f58d0fa0b95aed827b4d4e4bc4
Author: Stefano Radaelli <stefano.r@variscite.com>

arm64: dts: imx8mp-var-som-symphony: enable PCIe

Add the PCIe reference clock and enable the PCIe controller and PHY on
the Symphony carrier board.

> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts b/=
arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> --- a/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-var-som-symphony.dts
[ ... ]
> @@ -146,6 +152,18 @@ rtc@68 {
>  	};
>  };
> =20
> +&pcie {
> +	reset-gpio =3D <&pcal6408 1 GPIO_ACTIVE_LOW>;

[Severity: High]
Does this configuration cause a timeout and PCIe initialization failure dur=
ing
system resume?

The PCIe controller specifies an I2C-based GPIO expander (pcal6408) for its
reset-gpio. During system resume, the i.MX PCIe driver executes its hardware
initialization in the noirq phase (imx_pcie_resume_noirq() ->
dw_pcie_resume_noirq() -> imx_pcie_host_init()), which asserts and deasserts
the reset GPIO using gpiod_set_value_cansleep().

During the dpm_resume_noirq phase, local CPU interrupts are enabled but dev=
ice
interrupts remain masked at the interrupt controller (because
resume_device_irqs() is called after noirq callbacks). As a result, the I2C
controller cannot receive device interrupts.

Furthermore, i2c_in_atomic_xfer_mode() evaluates to false because system_st=
ate
is SYSTEM_RUNNING and local IRQs are enabled, meaning the I2C core will not
fall back to atomic polling mode. The I2C transaction required to toggle the
GPIO will therefore wait for an interrupt that is masked, resulting in a
prolonged timeout and a failed transfer. This causes the PCIe resume to fail
and significantly delays the overall system resume process.

> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1780487415.gi=
t.stefano.r@variscite.com?part=3D6

