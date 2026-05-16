Return-Path: <devicetree+bounces-298793-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oDnaGb7wCGq1AgQAu9opvQ
	(envelope-from <devicetree+bounces-298793-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 00:33:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C007E55E1E2
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 00:33:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3972300FEF8
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 22:33:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A52D5385D9F;
	Sat, 16 May 2026 22:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcuzeSw+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8259D257844
	for <devicetree@vger.kernel.org>; Sat, 16 May 2026 22:33:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778970811; cv=none; b=sS1b+k+OtUtvPA7aZqRQtFOkheVHPtEskF9YdSTQ7h0miL4HmFGf5/Hqfk0INVTBxw9gjMXi3oo88iNL+Ky6nOJ6ZaN4V3KcjfPyvzPuM90iDi7P4+nebt1iprVlwODZjwHprTiu5faKwpdk5sQe8k28Y47cDalvs8bsF1bg2AI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778970811; c=relaxed/simple;
	bh=hAA0Puk6a6+lbrFi9vrvWMkcCFdNmG2ALuMhtMC9eyg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Uox1AqMeTEqN9a2eNlS7Qo53IVmSh3ba8cJmkSY4aWlSpyTv6SS6lfoxDx3gcOn5moWcdkSxMS0hdFcFlLX4CdirHaYuzkj/kwYy7qdNyfN1783qGCoaqlxovm4BnDfhcC5GLC7WdetnUT0+rNZVQ3EMxV8U0v7VG1HIEeyOymY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcuzeSw+; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A843C19425;
	Sat, 16 May 2026 22:33:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778970811;
	bh=hAA0Puk6a6+lbrFi9vrvWMkcCFdNmG2ALuMhtMC9eyg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gcuzeSw+C1zwaKC4hsIYiEY8o7Ub5ejmlvKKkjfkwVcYJY4sCygg7DK1dVsc790Hc
	 l1s65sY23ozdz+4U+P4+mLGCGRdl4X+1ieJOT4PRQCZxnwtn1tP0teV9cEHsMcymBD
	 91fmQOqfSSwln5B4QmLCnqZnO8ORw5cgqDYhFLPpSxzQ5Ev4QNcZDFPBKF7MtdCI4y
	 2ksQ2k+ak+n2e7MFCEM05dxQLbEUDzXGTKf+hT9+lig4H0lR1tDu9vLCbknfYswkAo
	 NTSjGLOIdwsnZhV/fRN0eiQCBcF33sSV5B/ywUJ6W6heHyONS10+HzsNSiRKQVTCam
	 +oESUCN9nT8jA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/4] clocksource/timer-econet-en751221: Init teardown
 on error if possible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Caleb James DeLisle" <cjd@cjdns.fr>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260516215720.4160831-3-cjd@cjdns.fr>
References: <20260516215720.4160831-3-cjd@cjdns.fr>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 16 May 2026 22:33:30 +0000
Message-Id: <20260516223331.3A843C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: C007E55E1E2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298793-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Teardown path unmaps memory while clockevents remain registered (U=
se-After-Free)
- [High] Missing CPU hotplug teardown callback leaves per-CPU IRQs enabled =
on offline CPUs
- [High] Pre-existing out-of-bounds mapping access with sparse CPU possible=
 mask
- [Medium] Ignored error code from clocksource_mmio_init causes false succe=
ss reporting
--

commit d0c6a451d26e5e0afd704c60615c1cfa9457c425
Author: Caleb James DeLisle <cjd@cjdns.fr>

clocksource/timer-econet-en751221: Init teardown on error if possible

This commit reorganizes the driver initialization process into two
distinct phases, providing a rollback path for errors that occur prior to
the point of no return. It adds logic to unmap memory and release interrupts
if the setup steps fail.

> diff --git a/drivers/clocksource/timer-econet-en751221.c b/drivers/clocks=
ource/timer-econet-en751221.c
> index 4008076b1a210..155471f68e6f8 100644
> --- a/drivers/clocksource/timer-econet-en751221.c
> +++ b/drivers/clocksource/timer-econet-en751221.c
> @@ -186,22 +165,45 @@ static int __init timer_init(struct device_node *np)
>  		econet_timer.membase[i] =3D of_iomap(np, i);
>  		if (!econet_timer.membase[i]) {
>  			pr_err("%pOFn: failed to map register [%d]\n", np, i);
> -			return -ENXIO;
> +			ret =3D -ENXIO;
> +			goto out_membase;
>  		}
>  	}

This is a pre-existing issue that is resolved later in this patch series
by commit clocksource/timer-econet-en751221: Support EN751627 without
percpu IRQ, but I am mentioning it here for completeness.

Can this loop cause an out-of-bounds access with a sparse CPU mask?

The loop iterates up to num_blocks, which is calculated based on
num_possible_cpus(). If the system has a sparse CPU topology where
CPUs 0 and 4 are possible, num_possible_cpus() is 2, so the loop only
maps membase[0].

However, cevt_init() iterates over for_each_possible_cpu(i). For CPU 4,
cevt_dev_init(4) accesses membase[2], which remains null, potentially
causing a kernel panic when dereferenced.

[ ... ]

> +	cevt_init(np);
> +
> +	ret =3D cpuhp_setup_state(CPUHP_AP_ONLINE_DYN,
> +				"clockevents/econet/timer:starting",
> +				cevt_init_cpu, NULL);
> +	if (ret < 0) {
> +		pr_err("%pOFn: cpuhp setup failed (%d)\n", np, ret);
> +		goto out_irq_free;
> +	}

If cpuhp_setup_state() fails here, can the teardown path cause a
use-after-free?

Because the teardown callback in cpuhp_setup_state() is null, the CPU
hotplug core's attempt to roll back the state on previously initialized
CPUs acts as a no-op. This leaves the clock event devices and hardware
timers fully active on those CPUs.

The error path then proceeds to out_irq_free and subsequently unmaps the
memory regions via iounmap(). When the clockevents core later tries to
access the active timer on those CPUs, it will read from and write to
unmapped memory.

Additionally, while this is a pre-existing issue, does providing a null
teardown callback leave per-CPU interrupts enabled on offline CPUs?

When a CPU is dynamically offlined, the teardown callback should stop the
hardware timer and call disable_percpu_irq(). Without it, the timer remains
free-running and the interrupt unmasked for the offline CPU.

> +
> +	/* Point of no return, do not attempt to tear down after this. */
> =20
>  	/* For clocksource purposes always read clock zero, whatever the CPU */
>  	ret =3D clocksource_mmio_init(reg_count(0), np->name,
>  				    econet_timer.freq_hz, 301, ECONET_BITS,
>  				    clocksource_mmio_readl_up);
> -	if (ret) {
> -		pr_err("%pOFn: clocksource_mmio_init failed: %d", np, ret);
> -		return ret;
> -	}
> -
> -	ret =3D cevt_init(np);
> -	if (ret < 0)
> -		return ret;
> +	if (ret)
> +		pr_err("%pOFn: clocksource_mmio_init failed: %d\n", np, ret);

Does removing the return on error here cause the driver to report success
when initialization fails?

The failure code is captured in ret, but execution falls through and the
function unconditionally returns 0 at the end. This allows the driver to
print success messages and report a successful initialization even if the
clocksource registration failed.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260516215720.4160=
831-1-cjd@cjdns.fr?part=3D2

