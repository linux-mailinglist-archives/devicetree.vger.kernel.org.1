Return-Path: <devicetree+bounces-314308-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id roKHLlHzOGrzkQcAu9opvQ
	(envelope-from <devicetree+bounces-314308-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:33:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 53ECF6ADC07
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:33:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SCzFj5Ey;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314308-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-314308-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 20B853011E91
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12866391E74;
	Mon, 22 Jun 2026 08:32:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE4602459FE;
	Mon, 22 Jun 2026 08:32:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782117166; cv=none; b=kcRYJWPy1FQhfuYmGToOXybYymwXz4x4o/314BWYCYJpGoPr5yc/L6vCaNZN93Q9Thf1kVMMUx4r354vC02uTRNj9YBWFaEE8BZWzPOCZON7sfUbo7epaA5+43Sk88W2+zO7OvZJKsZrwmd4apNNeDY0j1VIIxg4npE1n5oo82o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782117166; c=relaxed/simple;
	bh=AWogiQXCAlmbiCz3wOYfhwEvVTa1PEeDZSZYZQlXvsI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=OMtx0ZOE3o/q/xTL56doFGnTlv5G74daYiLDtEMvyk+5daxdNmCbhX91HEN2vASbix+0Jgo+bK1fF4shUvPP552f/UDFu+siWQ6MG1m0IKPBiv9RqLTGHSVcRehtlj2BvV5X3BmRSqSSKccrt8EDRBQdMg8xPSs6QxR+Oq6Wd1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCzFj5Ey; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 545201F000E9;
	Mon, 22 Jun 2026 08:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782117164;
	bh=gRo+yh+uMGa/HFHFrijN9lHq0jUfiUTLTt/0fEk0fIE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SCzFj5EyWLGKoT24MSpf+Y7YliIZVv06/DokSyC6R107qz7F9M5F/qL+hl58Z1fHb
	 om16emfgwJ0+VO7eJVcjIlaL89YN9+yk0jqm84XPaG5mQFTlJtM5kX3pF/yN55Rqyl
	 evOdGlKtQfn+HuxRWM3pEw5+UZXR67TJzn14XbpYWC4bq5Pz+laUfk90BMGUW8uj0f
	 z6g8fdpHTYQiT28KhtQDsIbdx4PGSPreDGETX3IcQzdqZ+TRwym7sYl0yCCsmLnhh8
	 3QYhYioF5YRIFYeJwoHzCvqGu3n4KQRH2DBDqhE+OLdYgoqfJCHuAhrOtRpBvfIBhD
	 KJdjbduoToqow==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 21/22] TEST(do-not-upstream): fake qemu-virt PMU
 events for cdeleg counter-mask testing
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260622-counter_delegation-v7-21-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
 <20260622-counter_delegation-v7-21-0ba2fd34614e@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:32:43 +0000
Message-Id: <20260622083244.545201F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314308-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[meta.com:email,vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,sashiko.dev:url,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53ECF6ADC07

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch introduces fake PMU events intended solely for testing=
 and unconditionally pollutes the production sysfs ABI.
--

commit 4ceddd2e5a59573074b3f2f8f712ad1f99946ae0
Author: Atish Patra <atishp@meta.com>

TEST(do-not-upstream): fake qemu-virt PMU events for cdeleg counter-mask te=
sting

This commit adds fake PMU event codes to exercise counter-delegation alloca=
tion
and counter-mask constraints in QEMU. It unconditionally exposes these test
events to the user by adding them to the driver's event group.

> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 3cb7a1f4035ef..13a9f1fe42936 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c

[ ... ]

> @@ -499,6 +505,9 @@ static struct attribute *qemu_virt_event_group[] =3D {
>  	RVPMU_EVENT_ATTR_PTR(dTLB_load_miss),
>  	RVPMU_EVENT_ATTR_PTR(dTLB_store_miss),
>  	RVPMU_EVENT_ATTR_PTR(iTLB_load_miss),
> +	RVPMU_EVENT_ATTR_PTR(fake_any),
> +	RVPMU_EVENT_ATTR_PTR(fake_ctr3),
> +	RVPMU_EVENT_ATTR_PTR(fake_ctr34),

[Severity: Medium]
Is it intended to leave these test-only events unconditionally exposed in t=
he
production sysfs ABI?

Although the patch is explicitly marked as do-not-upstream, these fake even=
ts
are added directly to qemu_virt_event_group without being cleaned up later =
in
the series. This will visibly alter userspace tools like perf list on stand=
ard
RISC-V virtual workloads.

Could these test artifacts be separated from the mainline driver or removed
entirely if this series is routed upstream?

>  	NULL,
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-counter_de=
legation-v7-0-0ba2fd34614e@meta.com?part=3D21

