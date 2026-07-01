Return-Path: <devicetree+bounces-318296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id UWDaKdTdRGpi2QoAu9opvQ
	(envelope-from <devicetree+bounces-318296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:28:52 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AD96EB994
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:28:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WYTELD+G;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318296-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318296-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 50E8930A1EC8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C4B03F483E;
	Wed,  1 Jul 2026 09:26:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE053F39CC;
	Wed,  1 Jul 2026 09:26:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782897995; cv=none; b=Mwi92D1mAEh7E/At+y4b45tns9Cco9ZQfcsiiWjHns3XpbDll7e0dWRXA4bMLxUnXBNc70NWqp09Cc7Gd6S2lBBLd7snPlg3NafwUwxPShDsy6kqus9S5SIwQaPvsDQqxoOx3o7+1WC0dZ87ZcC4uGH2f6SsZaGJyKF/Y+k71N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782897995; c=relaxed/simple;
	bh=Y0ErOcZ5llF/N8ZhL21i0qiwoTv8gzpjW0h0gZsvvzU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jHHpOjF44DBCiyd55Hzpg1bG2i0BVUA1/xxiSIFI4dUjcVYYUDqPIcPNjjFy18AEs5mCzXRy6+uKcakWx6NmeLUQURVLBxgL9rhbESfIwXCF94VDB4uLtU9ofUrfiufKwIXMk6Atc3TZn3US1a/S0bH1ZXgeHQJFpJdt9/UvMXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYTELD+G; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09F731F000E9;
	Wed,  1 Jul 2026 09:26:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782897993;
	bh=UOfFWUZ30P9bNJCKjVq8xiLG+nd6yVb8fJMf7LTMrw0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WYTELD+G28nKq8erUPYvzAxm3DlLtgQHkk9raQq6CGgUvDg/kGFTwunA3Xu0Md0tQ
	 JBCpxzIa9jCNWCLrBs90LUfvYu+4wFPgVLp5/Y/ah/8LPMUW8rPGVmE6VqNubTdatY
	 WmfLBFr1LW9JcoGdY3eWich5CnvhNZhKfiM0V385o5ge491xUA71vPptgaarnyu0P0
	 9eOuzqTR7cbcpd1sUgStPivSpv5sRv6z0KYVAjUmIe7xGG8uQxQ96iaKyGh0tN2sVI
	 7fRA/GoqMsTE8u/5TK3ABSZBtl8arD50E+RossMh/x29ma21K5pWJNBcjNZSOU4FM+
	 MRJkgZDaw1cOg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 15/22] RISC-V: perf: Skip PMU SBI extension when not
 implemented
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: conor+dt@kernel.org, linux-perf-users@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-counter_delegation-v8-15-7909f863a645@meta.com>
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
 <20260701-counter_delegation-v8-15-7909f863a645@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 09:26:32 +0000
Message-Id: <20260701092633.09F731F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318296-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:conor+dt@kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 08AD96EB994

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] Skipping standard event checking when SBI is unavailable leaves ev=
ent maps with valid default encodings, causing false-positive event support.
--

commit b28b4646a82db47f9cf2c2d617a8c7ae78dfb038
Author: Charlie Jenkins <charlie@rivosinc.com>

RISC-V: perf: Skip PMU SBI extension when not implemented

This commit modifies the RISC-V perf driver to skip the SBI extension for
counter configuration matching and firmware counter reads when the PMU
SBI extension is not implemented. It also prevents sbi_v2_available from
being set to true when the extension is missing.

> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -495,27 +495,32 @@ static void rvpmu_sbi_check_event(struct sbi_pmu_ev=
ent_data *edata)
[ ... ]
> -static void rvpmu_sbi_check_std_events(struct work_struct *work)
> +static void rvpmu_check_std_events(struct work_struct *work)
>  {
>  	int ret;
> =20
> -	if (sbi_v3_available) {
> -		ret =3D pmu_sbi_check_event_info();
> -		if (ret)
> -			pr_err("pmu_sbi_check_event_info failed with error %d\n", ret);
> -		return;
> -	}
> +	if (riscv_pmu_sbi_available()) {
> +		if (sbi_v3_available) {
> +			ret =3D pmu_sbi_check_event_info();
> +			if (ret)
> +				pr_err("pmu_sbi_check_event_info failed with error %d\n", ret);
> +			return;
> +		}
> =20
> -	for (int i =3D 0; i < ARRAY_SIZE(pmu_hw_event_sbi_map); i++)
> -		rvpmu_sbi_check_event(&pmu_hw_event_sbi_map[i]);
> +		for (int i =3D 0; i < ARRAY_SIZE(pmu_hw_event_sbi_map); i++)
> +			rvpmu_sbi_check_event(&pmu_hw_event_sbi_map[i]);
> =20
> -	for (int i =3D 0; i < ARRAY_SIZE(pmu_cache_event_sbi_map); i++)
> -		for (int j =3D 0; j < ARRAY_SIZE(pmu_cache_event_sbi_map[i]); j++)
> -			for (int k =3D 0; k < ARRAY_SIZE(pmu_cache_event_sbi_map[i][j]); k++)
> -				rvpmu_sbi_check_event(&pmu_cache_event_sbi_map[i][j][k]);
> +		for (int i =3D 0; i < ARRAY_SIZE(pmu_cache_event_sbi_map); i++)
> +			for (int j =3D 0; j < ARRAY_SIZE(pmu_cache_event_sbi_map[i]); j++)
> +				for (int k =3D 0; k < ARRAY_SIZE(pmu_cache_event_sbi_map[i][j]); k++)
> +					rvpmu_sbi_check_event(&pmu_cache_event_sbi_map[i][j][k]);
> +	} else {
> +		DO_ONCE_LITE_IF(1, pr_info,
> +				"Boot time config matching not required for smcdeleg\n");
> +	}
>  }

[Severity: High]
When riscv_pmu_sbi_available() is false, does skipping this loop leave the
event map arrays like pmu_hw_event_sbi_map with valid default event codes?

If these standard events are not invalidated via the hardware verification
step, riscv_pmu_get_event_info() could unconditionally return the default
uninvalidated values or synthesize valid encodings for firmware events.
Would this incorrectly signal to callers, such as KVM, that the events
are supported?

[ ... ]
> @@ -708,6 +713,9 @@ static int rvpmu_sbi_ctr_get_idx(struct perf_event *e=
vent)
> =20
>  	cflags =3D rvpmu_sbi_get_filter_flags(event);
> =20
> +	if (!riscv_pmu_sbi_available())
> +		return -ENOENT;

[Severity: High]
If firmware events successfully map via riscv_pmu_get_event_info() because
the mappings were left intact during initialization, they would be accepted
by perf_event_open.=20

Will they then fail silently here at schedule time instead of being
appropriately rejected during event initialization?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-counter_de=
legation-v8-0-7909f863a645@meta.com?part=3D15

