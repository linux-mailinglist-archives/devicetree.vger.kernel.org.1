Return-Path: <devicetree+bounces-308717-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KHFiKSGxJ2qd0gIAu9opvQ
	(envelope-from <devicetree+bounces-308717-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:22:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5FF65CB27
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:22:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=n6HXht5T;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308717-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308717-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8FE30301AA71
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:22:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A436A3C8731;
	Tue,  9 Jun 2026 06:22:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9222C17A30A;
	Tue,  9 Jun 2026 06:22:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780986143; cv=none; b=gnWlWUUylIIyCAlT9wGd/KFFr2TEvs4axvBM9gE1feZNQ7KiEAdGtd4Udvo6prGmep575rX8Zj3trBbbGoypISiI4vl6wYE8GBRsuiBs8BeAJclbUSJKiW0N4/gh6YGpb8mtjyNJBoRoYDKu37TtcJ3r6Tohh3NR0VaokY22yLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780986143; c=relaxed/simple;
	bh=tytI5l/0zQrdvgZJoG5J/gKZud0TNFlxZMVylN1OMPo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OFb8AngaTOleCE5ja8hij+kUv0jvIbA0quD+DSAGIc9kAgpEwnrG9iGR16A8HwqHyOqYQCKHSZ11ow/+56oti5Kk6yXvyxxegRCY3Z8CMGg1Wr7Ik2aGcBRu/0dF1Vicu7/ylpHPdmuvXtppZ25G613YEyO57+kOIwtZTMt/VTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n6HXht5T; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D90C81F00893;
	Tue,  9 Jun 2026 06:22:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780986142;
	bh=WDa98brwrNPSjvoXajWInmf3xbWFYF28BBA1BE+tiAs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n6HXht5Ts+Yl0gYuXhvXDOLnnPCVzp28l3pTBBQDUlrrRx3Bd3IqGw4y1uzgREVix
	 vvQsrGrA/oytiAdsRgP603u5P0FPo8A0bW3OfwYY4WA2Q9tbt0WcaP9DOodwi5G084
	 JDN+oFkICVd4prTXB8zxgLqxspNuzauII9MKHeCT6GWwfhwdWjLkcm0m5FOKLqQif+
	 nCssS/elsDneKDuwUEVnvw4HzhpiCwYvQnSqrWImAxeIUs5G6ybCMPRbgUz4sYJyEP
	 5D+5OCt1wlJPQhiacwozerIH79BbSEMSYkhq0pBnkxcjrvzoZMORvF+Ynff1nSdhQC
	 aBv43zf5KZi0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 17/21] RISC-V: perf: Add Qemu virt machine events
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: linux-perf-users@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-17-285b72ed65a9@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 06:22:21 +0000
Message-Id: <20260609062221.D90C81F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,rivosinc.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo];
	TAGGED_FROM(0.00)[bounces-308717-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3C5FF65CB27

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch incorrectly overloads the generic 'unimplemented' or '=
non-commercial' CPU IDs (`mvendorid=3D0`, `marchid=3D0`, `mimpid=3D0`) to u=
niquely identify the QEMU virt machine, applying QEMU-specific PMU events g=
lobally to any minimal or academic RISC-V core.
--

commit 61b476b524390d76a4db3dcbab4b57114ff0ebc8
Author: Atish Patra <atishp@rivosinc.com>

RISC-V: perf: Add Qemu virt machine events

This patch adds a minimal set of legacy perf events for the QEMU virt
machine to the vendor table, allowing users to use them when counter
delegation is enabled.

> diff --git a/arch/riscv/include/asm/vendorid_list.h b/arch/riscv/include/=
asm/vendorid_list.h
> index 7f5030ee1fcf8..603aa2b21c0ba 100644
> --- a/arch/riscv/include/asm/vendorid_list.h
> +++ b/arch/riscv/include/asm/vendorid_list.h
> @@ -11,4 +11,8 @@
>  #define SIFIVE_VENDOR_ID	0x489
>  #define THEAD_VENDOR_ID		0x5b7
> =20
> +#define QEMU_VIRT_VENDOR_ID		0x000
> +#define QEMU_VIRT_IMPL_ID		0x000
> +#define QEMU_VIRT_ARCH_ID		0x000
> +

[Severity: Medium]
Do these definitions overload the generic "unimplemented" or "non-commercia=
l"
CPU IDs to uniquely identify the QEMU virt machine?

According to the RISC-V Privileged Architecture specification, a value of 0
in the mvendorid, marchid, and mimpid CSRs indicates that the ID is either
unimplemented or represents a non-commercial implementation.

> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 00b84b28117a8..74acac54328e0 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c

[ ... ]

> @@ -453,7 +454,42 @@ struct riscv_vendor_pmu_events {
>  	  .hw_event_map =3D _hw_event_map, .cache_event_map =3D _cache_event_ma=
p, \
>  	  .attrs_events =3D _attrs },
> =20

[ ... ]

>  static struct riscv_vendor_pmu_events pmu_vendor_events_table[] =3D {
> +	RISCV_VENDOR_PMU_EVENTS(QEMU_VIRT_VENDOR_ID, QEMU_VIRT_ARCH_ID, QEMU_VI=
RT_IMPL_ID,
> +				qemu_virt_hw_event_map, qemu_virt_cache_event_map,
> +				qemu_virt_event_group)
>  };

[Severity: Medium]
By binding the 0x000 ID tuple to QEMU's specific PMU event maps here, will
the kernel mistakenly assume any generic core returning 0 is a QEMU virt
machine?

If that non-QEMU core implements PMU counter delegation (Ssccfg/Smcdeleg) b=
ut
uses standard or different raw event encodings, this could unconditionally
program QEMU's arbitrary raw event values into the core's PMU configuration
registers, silently corrupting performance monitoring statistics.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-counter_de=
legation-v6-0-285b72ed65a9@meta.com?part=3D17

