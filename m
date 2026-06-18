Return-Path: <devicetree+bounces-313250-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 6N7XKv2XM2rFDwYAu9opvQ
	(envelope-from <devicetree+bounces-313250-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:02:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE4D69DF6D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 09:02:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LfxxRjyq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313250-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313250-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A32763007AFF
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 07:02:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CAC283264F4;
	Thu, 18 Jun 2026 07:02:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA18D78F39
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 07:02:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781766136; cv=none; b=qG+vJ+OEAIj/S2xwpMqiqUyJsg2vt+eG1O0nkXhWEyCD1vBu4a/UoWV64PGoQJbEIXyGwem7oQCmlKpa2tssr5nQ9KyZZ56yQFol5d3d8ORf5pYLVEwqOMclXT+9ggLoD1s0D5IRkGGZUsOVJWXD6AI8mEH4V84AjGYQVMseWHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781766136; c=relaxed/simple;
	bh=0uNoHyQHrBN0wXhxZRX3dpMZxwKvAZaQ7HF/rprWYDA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=R63hCAWq1K83IZjNSIrxYAQvSoavZ/BZfoJ9MN+tYRhdkDlXWC9k5sjxgcBgpicLJWaYJDDX6VD2JR1MbUwcQLla2MJO8Gcq73I3ONUlPcbDOCXXyRodbTPhSuYDPc4Kyrp2qsjHo/Gb5uKEEiwDcSbBWzAo+WVXEJXOShty5Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LfxxRjyq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 268ED1F000E9;
	Thu, 18 Jun 2026 07:02:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781766135;
	bh=7xmWHp4Pgy5j0CM+yUj+irtlW//CXYGC4sSqsE2hs+g=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LfxxRjyqwCKy+siewzx0OXKnUYigucAs1xW0LzsFdygAODevwE74nXQR18yondm8B
	 avdioGAdEcNJKGQWd8egCHs07iE0ec6rDGwnmEDMKrGGhjARUBaEF6J+6YonGJTBml
	 EMjaq1ezPE//aExNHcXRy0zpqOCO2G9rg+wtKpr1/mCwzD3Ah7eQ+h+IXFmb0kYxis
	 s5piBylZP0fWBD5cqyVY+OpFfcVuO8vFBj4CaRPMKYYUkhp8+OY8ZTTeN8j4UlMv//
	 6sDgGmczNzO/dUFwtN5aeuV8p7La9H8njWqGE45gWN7bh3t7kitzwGDyEN5Vo95CkF
	 X7oq8xrMCybQQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/3] riscv: track effective hardware PTE A/D updating
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yunhui Cui" <cuiyunhui@bytedance.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260618064406.14508-3-cuiyunhui@bytedance.com>
References: <20260618064406.14508-1-cuiyunhui@bytedance.com>
 <20260618064406.14508-3-cuiyunhui@bytedance.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 07:02:14 +0000
Message-Id: <20260618070215.268ED1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313250-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:cuiyunhui@bytedance.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,bytedance.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EAE4D69DF6D

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] A hotplugged CPU lacking the Svadu extension is incorrectly allowe=
d to come online when hardware PTE A/D updating is globally enabled but FWF=
T is not required, leading to silent data corruption.
--

commit e238566a69f2ecd235872518a759dd75d54f71af
Author: Yunhui Cui <cuiyunhui@bytedance.com>

riscv: track effective hardware PTE A/D updating

This commit tracks the runtime state of hardware PTE A/D updating using a
static key. It attempts to enable FWFT for all online harts, falling back
to software A/D if that fails, and ensures hotplugged CPUs match the global
state before coming online.

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c

[ ... ]

> +int riscv_enable_hw_pte_ad_updating(void)
> +{
> +	unsigned int cpu;
> +	int ret;
> +
> +	if (!riscv_has_hw_pte_ad_updating() ||
> +	    !riscv_hw_pte_ad_updating_requires_fwft)
> +		return 0;

[Severity: High]
Does this code allow a hotplugged CPU to come online without the Svadu
extension when hardware A/D updating is globally enabled?

If the boot CPUs have Svadu but lack Svade, the flag
riscv_hw_pte_ad_updating_requires_fwft is set to false and the global
static key riscv_hw_pte_ad_updating is enabled.

When a new CPU is later hotplugged, it calls this function via
smp_callin(). Since riscv_hw_pte_ad_updating_requires_fwft is false, it
returns 0 and bypasses any capability checks for the local CPU.

If the hotplugged CPU does not actually support Svadu (e.g., in an
asymmetric SoC or due to firmware misconfiguration), it successfully
comes online. Because the kernel globally assumes hardware A/D updating
is active, it skips software A/D fault handling.

Could this lead to the hotplugged CPU silently failing to update
accessed/dirty bits, causing data corruption when dirty data is dropped
during reclaim?

> +
> +	cpu =3D smp_processor_id();
> +	ret =3D riscv_enable_local_hw_pte_ad_updating();
> +	if (ret)
> +		pr_err("CPU%u failed to enable hardware PTE A/D updating: %d\n",
> +		       cpu, ret);
> +
> +	return ret;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618064406.1450=
8-1-cuiyunhui@bytedance.com?part=3D2

