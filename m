Return-Path: <devicetree+bounces-318303-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gyb5HRDgRGrk2QoAu9opvQ
	(envelope-from <devicetree+bounces-318303-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:38:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3486EBA85
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 11:38:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LqeI6r2R;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318303-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-318303-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8476830089B8
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 09:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86DC23F1ACE;
	Wed,  1 Jul 2026 09:38:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C5CA3B52FA;
	Wed,  1 Jul 2026 09:38:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782898702; cv=none; b=DtvAvFi8ouPTmggG03sSsIbfOLBlxZ1LR0ppzRoam7vSxThrInP9U6HLDoqN7mxz+ilhtJHbvP0JPnXosO45Zi8KoKVBBMaSiJa+ZG0GeRiTVVVpDmdGLLjOW6YAxKE7Q/to13JbfX79r4l2GmWXnqz6X6RXZOiqDuwORAUQtUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782898702; c=relaxed/simple;
	bh=xqAkalBFj6P2CfXrC4Djkm278Pl89Ob53W+XVk3g4R8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CniH9BXsdnBNFQenhlyfILPQ0V+PGeGPl2otQq9X8CeF/KJhUZ6sh7PkNjzZSDgWHMAN0kAE5OoK5NEu1NPHMeuxHftg5pYvdB1sL/sdkXhOcvhNgws047ujbm1ij4lDciVXejt/a4lN/GS8TvV+GPRisvVCXX5PQJQwj3XyeBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqeI6r2R; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 184C31F000E9;
	Wed,  1 Jul 2026 09:38:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782898701;
	bh=kEMwVhH5ayejfLZVBhJIuE6nzNZKx9bBPXPaWyhB3gU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LqeI6r2RXSrNidRRa3GyxBBHtj3blbDo0JZ8csofqd+rnbRzfpbK2i2Kq+2j5CLLj
	 0FyG1iHuuJtruoV9UBX1PAInKEsmyzSDrMBVZZfMdZJ8EOxuhddXAC1fY2BN66MWwu
	 fxcfo5mEAFbSLd382IGioyKPoL+nnjewOHXC2FH5l1U72+G6nORbTVOhSyD96rOVeq
	 yKr+X3Y8OQxh/iKKW/IIRX6e9mSK4807KwX4nN9USKEoBwwFqhkjKy61YY8T4sc2D3
	 e/ymoiZuk/F82rZ0zk2SZE2pd+GHW9hByQA+SzAEb8lkOzBFKKtIsST1AWlxOfE074
	 WLu13SXrxv+Bw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 21/22] TEST(do-not-upstream): fake qemu-virt PMU
 events for cdeleg counter-mask testing
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, linux-perf-users@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260701-counter_delegation-v8-21-7909f863a645@meta.com>
References: <20260701-counter_delegation-v8-0-7909f863a645@meta.com>
 <20260701-counter_delegation-v8-21-7909f863a645@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 09:38:20 +0000
Message-Id: <20260701093821.184C31F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-318303-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,meta.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: 0C3486EBA85

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch injects non-existent fake PMU events for testing direc=
tly into a production driver, polluting the sysfs UAPI and userspace ABI.
--

commit 4ecbb9bba705eb0cbe075ec61ec799a9e140a5fc
Author: Atish Patra <atishp@meta.com>

TEST(do-not-upstream): fake qemu-virt PMU events for cdeleg counter-mask te=
sting

This commit adds fake PMU events to the RISC-V SBI PMU driver to exercise
counter-delegation allocation and counter-mask constraints in QEMU.

> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
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
Even though this patch is explicitly marked as a test that is not meant for
upstream, does unconditionally appending these fake events to
qemu_virt_event_group pollute the sysfs UAPI?

Because they are added directly to the group array, tools interacting with
sysfs will see these non-existent hardware PMU events exposed as part of the
public userspace ABI. Could this logic be exercised using a dedicated test
framework rather than injecting fake test events into a production driver?

>  	NULL,
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-counter_de=
legation-v8-0-7909f863a645@meta.com?part=3D21

