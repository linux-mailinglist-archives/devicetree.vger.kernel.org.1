Return-Path: <devicetree+bounces-315042-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dzQzLDN2O2o2YQgAu9opvQ
	(envelope-from <devicetree+bounces-315042-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:16:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0DD6BBB5E
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 08:16:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="M/Bf91+/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315042-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315042-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6E8EB301B733
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 06:15:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF0CD386561;
	Wed, 24 Jun 2026 06:15:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A4231F991
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 06:15:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782281742; cv=none; b=HstLaVtSk+6IQ4rQVp1VIfLUeVUHU7viHR1Zzao73gdv9fIavIP2colGrcA/ME8l/Rj1xUwX+gzkQpyVni/UcV5qBHzaUhjWMlZm59cidXjHkuI+GVUkaTVZV988Vnir8LKZw/18PlV+6MUJ9vBxN2HogOcVGMh2y0choPDBsZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782281742; c=relaxed/simple;
	bh=99qAr7r7rOHl1yTDeh08+e/IYSa2c6SeLWRYsZkeq98=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=cw8HLnHW5YAm6QCvJ93F+6x0Pgu7i1qhdLaZR+XrH8goCGIKNr54qdu/aWeTLqcRI6hzwI9HCfXZzf83ONHcoIcDCkoAHuPpZLgClHDJxv9Ay4aCSwOXzH486rrKTvEsAECaIy9l1UWF5OQkOf6JR9px8396k/hLulFXVris1NQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/Bf91+/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D6DC1F00A3A;
	Wed, 24 Jun 2026 06:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782281741;
	bh=nVt+MfBuE29lg5j9k5CdRrS7bv8GkZMC0W72iDzN5Z8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=M/Bf91+/4BFB/mMdYnjGb8/N/utxeqL4hTWFg+BnEY3vawZAgeb3d2iLHfqnxHelt
	 fTE+ZD6cUNEsXpRQRgpnaCseuR5MmMWpbMaIt4z6LNwvYdjzNWm/zAYDzdbAB+tr3s
	 I1dq41hME93kkii9jJ7exTIY6dBHCouHbk8pWpeXVGQ6Jvu8jg95SuUtoD2LQiBPXX
	 ZW611PVtRXhSdPdoV8bW3qONzG0/KIakV49LtlLwt+MzWOqaCfFfYnZSbqhhohTCce
	 eHWKFtmMfPZTuz/Mv+KNBno4Alr9124VbgIGU132FsWp3XboCvD6PqI4G6V2OCZU5h
	 QYW1fNi6wnXaA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: socfpga: agilex72: Add initial
 device tree
Reply-To: sashiko-reviews@lists.linux.dev
To: muhammad.nazim.amirul.nazle.asmade@altera.com
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260624055644.7508-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
References: <20260624055644.7508-1-muhammad.nazim.amirul.nazle.asmade@altera.com>
 <20260624055644.7508-3-muhammad.nazim.amirul.nazle.asmade@altera.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 06:15:40 +0000
Message-Id: <20260624061541.2D6DC1F00A3A@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315042-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:muhammad.nazim.amirul.nazle.asmade@altera.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,altera.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B0DD6BBB5E

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] Missing VGIC maintenance interrupt breaks KVM virtualization suppo=
rt.
- [Medium] Invalid properties in static `reserved-memory` nodes (ATF and se=
rvice buffers).
- [Medium] Missing CPU capacity properties for heterogeneous ARMv9 scheduli=
ng.
--

commit aab0b211863fe0abf5dfd65b45d11637ecf3a3d5
Author: Nazim Amirul <muhammad.nazim.amirul.nazle.asmade@altera.com>

arm64: dts: socfpga: agilex72: Add initial device tree

This commit introduces the initial device tree support for the Intel
SoCFPGA Agilex72 platform, including the SoC DTSI and the SoCDK board
DTS.

> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex72.dtsi b/arch/arm64=
/boot/dts/intel/socfpga_agilex72.dtsi
> new file mode 100644
> index 0000000000000..2a4ad4130f37e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex72.dtsi
> @@ -0,0 +1,128 @@
[ ... ]
> +	reserved-memory {
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		ranges;
> +
> +		atf_reserved: atf@80000000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x80000000 0x0 0x100000>;
> +			alignment =3D <0x1000>;
> +			no-map;
> +		};
> +
> +		service_reserved: svcbuffer@80100000 {
> +			compatible =3D "shared-dma-pool";
> +			reg =3D <0x0 0x80100000 0x0 0xf00000>;
> +			alignment =3D <0x1000>;
> +			no-map;
> +		};
> +	};

[Severity: Medium]
Is it intentional to expose the Arm Trusted Firmware secure memory region
as a shared DMA pool? The compatible =3D "shared-dma-pool" property here co=
uld
expose secure EL3 memory as a Linux DMA pool, which could trigger a fatal
secure monitor abort if a driver attempts to attach and access it.

Also, both the atf_reserved and service_reserved nodes define a static
physical address using the reg property, but they also include the alignment
property. Does this violate the devicetree schema? The reserved-memory.yaml
schema dictates that alignment is strictly for dynamically placed allocatio=
ns
and is mutually exclusive with reg.

[ ... ]
> +	cpus {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		cpu0: cpu@0 {
> +			compatible =3D "arm,cortex-a520";
> +			device_type =3D "cpu";
> +			enable-method =3D "psci";
> +			reg =3D <0x0>;
> +		};
[ ... ]
> +		cpu2: cpu@200 {
> +			compatible =3D "arm,cortex-a720";
> +			device_type =3D "cpu";
> +			enable-method =3D "psci";
> +			reg =3D <0x200>;
> +		};

[Severity: Medium]
Since the Agilex72 features a heterogeneous cluster with Cortex-A520
and Cortex-A720 cores, does this cpus node need capacity-dmips-mhz
properties?=20

Without these properties or an active OPP table, the Energy Aware Scheduling
(EAS) subsystem cannot discover the relative compute capacities, and might
assume all cores are identical. This could cause heavy workloads to be
scheduled suboptimally on the slower A520 cores.

[ ... ]
> +	intc: interrupt-controller@7000000 {
> +		compatible =3D "arm,gic-v3";
> +		reg =3D <0x0 0x7000000 0x0 0x10000>,
> +		      <0x0 0x7080000 0x0 0x100000>;
> +		ranges;
> +		#interrupt-cells =3D <3>;
> +		#address-cells =3D <2>;
> +		#size-cells =3D <2>;
> +		interrupt-controller;

[Severity: High]
Is the VGIC maintenance interrupt missing from this node?=20

KVM relies on this interrupt (typically GIC_PPI 9) to populate gic_v3_kvm_i=
nfo
during the GICv3 driver initialization in drivers/irqchip/irq-gic-v3.c.
Without it, the driver skips VGIC setup, which leaves hardware virtualizati=
on
support broken on this platform.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624055644.7508=
-1-muhammad.nazim.amirul.nazle.asmade@altera.com?part=3D2

