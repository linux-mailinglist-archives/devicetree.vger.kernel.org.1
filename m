Return-Path: <devicetree+bounces-313949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id pNT9HhKNNWoJzgYAu9opvQ
	(envelope-from <devicetree+bounces-313949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 20:40:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BECE56A7695
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 20:40:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ktCAIibq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313949-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313949-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8DFB830374A9
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 18:40:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8108B341650;
	Fri, 19 Jun 2026 18:40:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F4CF33D6D6;
	Fri, 19 Jun 2026 18:40:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781894415; cv=none; b=YrK6CXUk1quP4tpwfYb6jr8EZkjn5ijn5RQUR4HnGxhFOiJiz2l0EvrhHZh6tr+CuKsjZyn6M9NcimXgN3Q97g6ldVeeTLbEUw9Tz6KtaKBcZaYz7ITTFEFtdw4KcJqMm/XtjziOX6H+6KnbZm765eEYnu8C8OgYsJn3+aCvDlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781894415; c=relaxed/simple;
	bh=kideF2nvxhPlOqP2XYPRtyLTNGh8Cj8iN9qgDGrAZQU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TS8c9zK4seOb/sjkOps07dzuySDfAF8KWmDjhQmQdiQ0euR+i1wc1mbmGWZD4QKsdCN7sDhzgSbz2DrSYEQSWV8sgA6ZBj8pwqGWzwnBAbY5EBOCMU79c11q8vmjlPQqQ8fjuGQ44mdbG8s9gkW0spv04eiKSr3cedQehRR+tXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ktCAIibq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E439C1F000E9;
	Fri, 19 Jun 2026 18:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781894413;
	bh=+QCD/m3yUimYF8FQ9uS7uW4iGZymEiDymzLsvEYzV0M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ktCAIibqRt8h/l64GMin5kmHOP0477MriB2gsn7kJlDkkKMZARKjoBBKDh+WwrHJo
	 buqzk+sHPw0NcMdbnCi/jlVC6gn0oY0zL2eSQlTTFonzznGi1rXkN54XKtVcvPEEYY
	 +gyuLcCV7CwA0IN4sDEZYde6viczfLYVK3y4VqGjGeIk+o6NxOqTBc4A3mtyTq4zcR
	 8musGvGvd5LUlfbJ2fxUb4Q8+cPAA8X+63ebWU1sJy+FLBKS+iAhL2Bqd5cHBDRU+I
	 zzHAeUFdXE3MWZwOSZHUwg56D9g1VRnHtXs0UXqlwsQVWQd2mm3AfqT2U1+3N0frdw
	 NxsYGixrM5Iog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/8] riscv_cbqri: Add capacity controller probe and
 allocation device ops
Reply-To: sashiko-reviews@lists.linux.dev
To: "Drew Fustini" <fustini@kernel.org>
Cc: linux-rt-devel@lists.linux.dev, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260619-dfustini-atl-sc-cbqri-dt-v1-4-e79a7723fab0@kernel.org>
References: <20260619-dfustini-atl-sc-cbqri-dt-v1-0-e79a7723fab0@kernel.org>
 <20260619-dfustini-atl-sc-cbqri-dt-v1-4-e79a7723fab0@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 18:40:12 +0000
Message-Id: <20260619184012.E439C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-313949-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:fustini@kernel.org,m:linux-rt-devel@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: BECE56A7695

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Unsynchronized mutation of the global `cbqri_controllers` list dur=
ing controller registration.
--

commit 9ebbab9c601133916a2f8c8128683147a9f601b3
Author: Drew Fustini <fustini@kernel.org>

riscv_cbqri: Add capacity controller probe and allocation device ops

This commit adds support for the RISC-V CBQRI capacity controller. It
provides a platform driver interface to probe the controller and register it
to a global controller list.

> diff --git a/drivers/resctrl/cbqri_devices.c b/drivers/resctrl/cbqri_devi=
ces.c
> new file mode 100644
> index 0000000000000..cc4ec3f25ac18
> --- /dev/null
> +++ b/drivers/resctrl/cbqri_devices.c

[ ... ]

> +int riscv_cbqri_register_cc_dt(const struct cbqri_controller_info *info,
> +			       u32 cache_level, const struct cpumask *cpu_mask)
> +{

[ ... ]

> +	if (ctrl->alloc_capable && !ctrl->rcid_count) {
> +		pr_warn("CC at %pa is alloc-capable but has no RCID count, skipping\n",
> +			&ctrl->addr);
> +		cbqri_controller_destroy(ctrl);
> +		return -EINVAL;
> +	}
> +
> +	list_add_tail(&ctrl->list, &cbqri_controllers);

[Severity: High]
Does this list insertion need synchronization?

If the kernel is configured to probe platform devices asynchronously (e.g.,
via the driver_async_probe kernel parameter) and there are multiple CBQRI
capacity controller nodes in the device tree, multiple probes could execute
riscv_cbqri_register_cc_dt() concurrently.

This lockless modification to the global cbqri_controllers list could
corrupt the list's next and prev pointers and result in a kernel panic.

> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619-dfustini-a=
tl-sc-cbqri-dt-v1-0-e79a7723fab0@kernel.org?part=3D4

