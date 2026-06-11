Return-Path: <devicetree+bounces-310632-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5vYxEkAeK2rB2wMAu9opvQ
	(envelope-from <devicetree+bounces-310632-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:44:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 995C767544F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 22:44:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KHdfP6td;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310632-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310632-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9270832D75F0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 20:42:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0AD6B370AD5;
	Thu, 11 Jun 2026 20:42:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C783191CE;
	Thu, 11 Jun 2026 20:42:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781210524; cv=none; b=PRaft5JH7wZW/3QMRTNO54xtaKguYi0+gWuGUDSB9ujbZeJ13jLgtyFhfKTh409xQzpdFW44LCzEeaCGVAgZvv2z132CIKTd717vnf8WlUCmkQFKHjMoiJbsY0Qpfb6anYzKcRts3a7Bl5x0AluYBgUKaE9IjZx9j5g64751yyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781210524; c=relaxed/simple;
	bh=fbheaSplMSP8dYdGIyEYVaYlO+XnVCz1wSER1lwz0Yw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JID8KrWunUAALm9i25976afNfAhnCfI4k0rj/ZYS/EDQE37JqUDTS85tEUSiD813Kv+PuJP+VwBgyJlVzQSf8SM35U05lM4x1wBMgRu0ZSb4ab3C2ztsKs8kJmcP75cVd3t7w3spDz3h9Pqlr1Vr18HKaI1sbPhv5HeJ4CdVJ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHdfP6td; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4EA601F000E9;
	Thu, 11 Jun 2026 20:42:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781210523;
	bh=zJhp5KveWagoymz/FvdmkGeyXBQ4nW46MgYP5wXlW28=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KHdfP6tdXqDq8e+D4MSr6l7dJTKfDMrBZ6TKHJV2fj63T7JuC3Kdu24zK3hE82BQe
	 WzpdHrfYJ/F6twIOy2bYva5ok82qCkfX6aGapJf3cPolbayd7mb4zOvu5DfrHWW804
	 uIrPOc2QKN6UIJv+f4N8Kt81FtKCEhB5Jt7y4k1RAdNnBReDI+3uJWWbMBh/TTW1Ci
	 nIYo7/73KCDLm5lQ+Q0i9nZAc0rDK9wl+BOJBbrSJnnY+o4+8X7cN429QlwZkgux3Q
	 smm00p29ISnd1zwIJx+h2Qcb9Y/4JQey3Kg+bzX069GFlAZLtmHc91xtDXfHyCdpdM
	 PMvdmkpZPyO3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 16/16] riscv: hwprobe: Introduce rva23u64 base
 behavior
Reply-To: sashiko-reviews@lists.linux.dev
To: "Guodong Xu" <docular.xu@gmail.com>
Cc: kvm@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-rva23u64-hwprobe-v2-v4-16-3f01a2449488@gmail.com>
References: <20260611-rva23u64-hwprobe-v2-v4-16-3f01a2449488@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 20:42:02 +0000
Message-Id: <20260611204203.4EA601F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:docular.xu@gmail.com,m:kvm@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:docularxu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-310632-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
X-Rspamd-Queue-Id: 995C767544F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] In hwprobe_get_cpus(), a stack-allocated cpumask_t is not fully in=
itialized when cpusetsize is smaller than cpumask_size(), causing unpredict=
able logic failures and a kernel memory info leak.
--

commit 23f172deab06c9baa8c73280f488bc8016e4c474
Author: Guodong Xu <docular.xu@gmail.com>

riscv: hwprobe: Introduce rva23u64 base behavior

Provide a hwprobe base-behavior bit so userspace can check RVA23U64
support in one call. Most software treats RVA23U64 as a new base anyway, so
expose it directly.

> diff --git a/arch/riscv/kernel/sys_hwprobe.c b/arch/riscv/kernel/sys_hwpr=
obe.c
> index 3e80e5551ae0d..3f66f2e99d41a 100644
> --- a/arch/riscv/kernel/sys_hwprobe.c
> +++ b/arch/riscv/kernel/sys_hwprobe.c

[ ... ]

> @@ -308,14 +319,12 @@ static void hwprobe_one_pair(struct riscv_hwprobe *=
pair,
>  	case RISCV_HWPROBE_KEY_MIMPID:
>  		hwprobe_arch_id(pair, cpus);
>  		break;
> -	/*
> -	 * The kernel already assumes that the base single-letter ISA
> -	 * extensions are supported on all harts, and only supports the
> -	 * IMA base, so just cheat a bit here and tell that to
> -	 * userspace.
> -	 */
>  	case RISCV_HWPROBE_KEY_BASE_BEHAVIOR:
> -		pair->value =3D RISCV_HWPROBE_BASE_BEHAVIOR_IMA;
> +		pair->value =3D 0;
> +		if (hwprobe_has_isa_base(cpus, RISCV_ISA_BASE_IMA))
> +			pair->value |=3D RISCV_HWPROBE_BASE_BEHAVIOR_IMA;
> +		if (hwprobe_has_isa_base(cpus, RISCV_ISA_BASE_RVA23U64))
> +			pair->value |=3D RISCV_HWPROBE_BASE_BEHAVIOR_RVA23U64;
>  		break;

[Severity: High]
This is a pre-existing issue, but could this code be used to infer
uninitialized kernel stack memory?

In hwprobe_get_cpus(), a stack-allocated cpumask_t is not fully initialized
when cpusetsize is smaller than cpumask_size():

arch/riscv/kernel/sys_hwprobe.c:hwprobe_get_cpus() {
    cpumask_t cpus, one_cpu;
    ...
    ret =3D copy_from_user(&cpus, cpus_user, cpusetsize);
    if (ret)
        return -EFAULT;

    if (cpumask_empty(&cpus))
        cpumask_copy(&cpus, cpu_online_mask);
    ...
}

If the user passes an empty mask, they expect the kernel to treat it as
cpu_online_mask. However, if the stack garbage contains non-zero bits,
cpumask_empty(&cpus) evaluates to false.

The kernel will skip substituting cpu_online_mask and instead process the
uninitialized bits.

Uninitialized bits corresponding to online CPUs will remain set after
cpumask_and(&cpus, &cpus, cpu_online_mask), and the kernel will iterate over
these garbage CPUs via for_each_cpu(), repeatedly calling hwprobe_one_pair(=
):

arch/riscv/kernel/sys_hwprobe.c:hwprobe_get_cpus() {
    ...
    for_each_cpu(cpu, &cpus) {
        cpumask_set_cpu(cpu, &one_cpu);

        hwprobe_one_pair(&tmp, &one_cpu);

        if (!riscv_hwprobe_pair_cmp(&tmp, &pair))
            cpumask_clear_cpu(cpu, &cpus);

        cpumask_clear_cpu(cpu, &one_cpu);
    }
    ...
}

Does this execution time difference act as a timing side-channel, allowing
an attacker to infer the contents of uninitialized kernel stack memory?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-rva23u64-h=
wprobe-v2-v4-0-3f01a2449488@gmail.com?part=3D16

