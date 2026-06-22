Return-Path: <devicetree+bounces-314299-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mGzVE6DxOGqlkQcAu9opvQ
	(envelope-from <devicetree+bounces-314299-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:26:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD8A6ADB1B
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:26:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jZlFl1Xd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314299-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314299-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6EA113028C62
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:24:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50EAA3905F5;
	Mon, 22 Jun 2026 08:24:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF6C390219;
	Mon, 22 Jun 2026 08:24:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782116672; cv=none; b=MkXG81u3OoizObTDl4Z9vYo28a+jouAGB/341IDIGV2lCMgO2QCONX7Rk6PBX+3h9HcmmEB9ZjvcJ4GXmwd6/oGx8ZRtiRveweD3TOypUWdfm8CB63fwSCL/seyjoWsNJtFxi+EWmc1py056qvOEPOs2l6Rdcuc+Jz6F8mSjb6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782116672; c=relaxed/simple;
	bh=fw+WNctlKjdJfOLKXr90LFf0YYPvjxV7vNXyMg++45o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bya0pVGKb006kiC6uwE577GLbaMI9As8Rz1vT9gI3lQrdHYqcyjb6OyAR1Z21hTYgNhY2u5c2gMqDEILx7CUr5i47CyxkNc/aEjwAqqmffHDuJu5hmwHC8b2HMuAa8/v1D86+WoUIz9+JIsswvl15iw3DAXOSzMmcS9R8Vu9Gz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZlFl1Xd; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EC881F000E9;
	Mon, 22 Jun 2026 08:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782116666;
	bh=U9aEBx+5pcbVcq6P1mFr85/POApeaMz/aRqzYaYr4RA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jZlFl1XdxcjBDnxS5vdTuHJC/TxxmPx5JQa3J3wBCadOQ6UO+AbDV/dApt4WlPry6
	 wPNAIPEX+HPOTwkP9vANZWHJ6IONOAf1xf36+tv6NC+KFqbjG393jdaA3ZAMc/eSte
	 58ZoMBFS2ovWZ0q+mnNKWUJU9r7k45jnjwh6HjyUjA9JUOlTjzppPR/1yVXE76RhhF
	 /+mnVz9/Ua+2REoa3/U7qqFT/d5GWbHSZlZYWYpF9XpTZvQDl8qzSglX2jSo4Z67tA
	 /3/VqLDtOrhykVBHWuRJXbpjgzAoJML7COQQ4wKRwwag4aqzSfaUXYJEHYEpdzQExQ
	 xBo9rgVm91TzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 01/22] RISC-V: perf: fix resource cleanup on driver
 probe failure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: linux-perf-users@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260622-counter_delegation-v7-1-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
 <20260622-counter_delegation-v7-1-0ba2fd34614e@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:24:25 +0000
Message-Id: <20260622082426.3EC881F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314299-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,smtp.kernel.org:mid,meta.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:linux-perf-users@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: ADD8A6ADB1B

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

Pre-existing issues:
- [Critical] Premature PMU registration exposes the PMU to userspace before=
 all initialization steps are complete, risking a Use-After-Free in the err=
or path.
- [High] Global flag `riscv_pmu_use_irq` is not cleared when IRQ setup fail=
s, causing a kernel panic during CPU hotplug initialization.
- [High] Probe failure leaves a dangling PMU snapshot physical page configu=
red in the firmware for the boot CPU, leading to UAF and kernel memory corr=
uption.
- [High] The CPU PM notifier is unregistered on error paths, but PMU struct=
ures are freed immediately without waiting for concurrent readers, leading =
to Use-After-Free.
--

commit e8a230ead53ac1c197ed8d75659a624a38133975
Author: Atish Patra <atishp@meta.com>

RISC-V: perf: fix resource cleanup on driver probe failure

This commit reorganizes the error paths in pmu_sbi_device_probe() to
fix several resource cleanups. It ensures previously registered PMUs
and per-cpu IRQs are released appropriately on failure.

> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 385af5e6e6d0d..8753007cc57ec 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c

[ ... ]

> @@ -1452,6 +1454,7 @@ static int pmu_sbi_device_probe(struct platform_dev=
ice *pdev)
>  		pmu->pmu.capabilities |=3D PERF_PMU_CAP_NO_INTERRUPT;
>  		pmu->pmu.capabilities |=3D PERF_PMU_CAP_NO_EXCLUDE;
>  	}
> +	irq_requested =3D (ret =3D=3D 0);

[Severity: High]
This is a pre-existing issue, but when IRQ setup fails in
pmu_sbi_setup_irqs(), the global flag riscv_pmu_use_irq is not cleared.

Since the driver continues probing even if ret < 0 here, could this lead to=
 a
kernel panic later during CPU hotplug?  When pmu_sbi_starting_cpu() runs, it
will check riscv_pmu_use_irq and call enable_percpu_irq(riscv_pmu_irq, ...).
Because the IRQ was never successfully requested, its desc->action is NULL,
which would cause a panic when handle_percpu_devid_irq() dereferences it.

[ ... ]

> @@ -1515,9 +1518,17 @@ static int pmu_sbi_device_probe(struct platform_de=
vice *pdev)
>  	return 0;
> =20
>  out_unregister:
> +	perf_pmu_unregister(&pmu->pmu);

[Severity: Critical]
This isn't a bug introduced by this patch, but does ignoring the return val=
ue
of perf_pmu_unregister() here risk a use-after-free?

Because the PMU was registered earlier in the probe sequence, userspace mig=
ht
have already opened a perf event by the time we hit an error (such as faili=
ng
to add the CPU hotplug instance).

If an event is active, perf_pmu_unregister() will return -EBUSY and leave t=
he
PMU fully registered.

kernel/events/core.c:perf_pmu_unregister() {
    ...
    if (pmu->event_unmapped && !pmu_empty(pmu)) {
        ...
        return -EBUSY;
    }
    ...
}

Because the error path ignores the return value and proceeds to free the PMU
structures, userspace could continue interacting with the active perf event=
s,
triggering a use-after-free of the PMU data structures.

> +
> +out_destroy:
>  	riscv_pmu_destroy(pmu);

[Severity: High]
This is a pre-existing issue, but does this error path properly handle PMU
snapshot cleanup on the boot CPU?

In pmu_sbi_device_probe(), the snapshot is manually configured for the boot
CPU using an SBI ecall inside pmu_sbi_snapshot_setup(), after which
preemption is enabled.

If a subsequent step fails, riscv_pmu_destroy() calls
pmu_sbi_snapshot_disable() which only disables the snapshot on the current
CPU. If the task migrated due to preemption, the snapshot would be disabled
on the wrong CPU.=20

This would leave the boot CPU with a snapshot pointing to a physical page
that gets freed shortly after, allowing the firmware to silently overwrite
freed kernel memory.

[Severity: High]
This is also a pre-existing issue, but could this cause a use-after-free
during CPU PM transitions?

riscv_pmu_destroy() unregisters the CPU PM notifier using
riscv_pm_pmu_unregister(). Since cpu_pm_notifier is a raw notifier chain,
concurrent traversals during cpu_pm_enter() do not use RCU and do not block
unregistration.

Because the driver immediately calls kfree(pmu) and free_percpu() after thi=
s,
another CPU entering idle and traversing the notifier chain could dereferen=
ce
the freed notifier_block and pmu struct.

> +	if (irq_requested)
> +		free_percpu_irq(riscv_pmu_irq, pmu->hw_events);
> =20
>  out_free:
> +	free_percpu(pmu->hw_events);
> +	kfree(pmu_ctr_list);
> +	pmu_ctr_list =3D NULL;
>  	kfree(pmu);
>  	return ret;
>  }

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-counter_de=
legation-v7-0-0ba2fd34614e@meta.com?part=3D1

