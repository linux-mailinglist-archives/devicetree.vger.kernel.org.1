Return-Path: <devicetree+bounces-308707-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7/UyGMywJ2qJ0gIAu9opvQ
	(envelope-from <devicetree+bounces-308707-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:21:00 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5365CB07
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:20:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UoC+6Uo6;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308707-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-308707-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 86CF93076B30
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:15:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 053E032AAD6;
	Tue,  9 Jun 2026 06:15:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4783327204;
	Tue,  9 Jun 2026 06:15:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780985712; cv=none; b=ewSVNgfRAZRtreq/FGbhJCDac1D5uLf3nreUITnXQp+E9Db+7UdTXLQn7qDb3I/pwQ0q/Qx+0AQTJCyq/szLRh+YxO6yFNGm+Tr0vrMD473IArWYRFs6ankmRR+YUEwXWe3CDQH4mdN0/x2jFKpHwTKdb0+uX6vM2UL5TfKc4VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780985712; c=relaxed/simple;
	bh=qpkmfvCU+7f+UslRVfbJCcqrwx+TBjTwQQcOP+NTR6w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Ixn499RGY1R0kTitNvupnDH6ouHIML9Xrn4e0OB1p3iVJbBlU9hHGzl+4/ov1vXWbXSxDKMJFVQZFOlaE0j6Cj8cZs9+1KqjQqcSYV5IEA9UREy55MlMf8vskTAAlKB7mE5V0XwoN3+AaG8lfsnQ4Wy5vyXNdxFc7BwvkLivEGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UoC+6Uo6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 276E31F00893;
	Tue,  9 Jun 2026 06:15:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780985711;
	bh=Hvm4jV+/KJv6DS2txn505jCxuJKmwmuxmFgX6eBO3ZA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UoC+6Uo6UfZF0npWrU3d8MMmPoOQ7fMp+14Ndk5n4wR0bttWaG6q0tovjjlKqFqow
	 lNJwvhKNOtaQeijqF3iEVZ+aHt2MnRsV66bLBH/mHjvwPqPjp3KEer6MwRMAwu+iiQ
	 WIFiLU0siyBz4isJy857UWumd1SHJ1PFkLpwPIj5ifrlKJltITu3MevwlJrzb+MuuV
	 tXR+j2gw5o9JzXby0NSeE/zSU7VoVMCxbdEt/9LEj2/rQUAbGR/YuPo9mXI29Z8Go1
	 8q7X//aBBB3yUu9vLygJOtCyzfTwvCbkYosUHVkdqcDbeLPw+88I/wbEs3FLIPmFb8
	 H/NGnsW9O2kxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 04/21] RISC-V: Define indirect CSR access helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260608-counter_delegation-v6-4-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-4-285b72ed65a9@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 06:15:10 +0000
Message-Id: <20260609061511.276E31F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rivosinc.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TAGGED_FROM(0.00)[bounces-308707-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AED5365CB07

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Unsafe statement-expression macro definitions causing delayed ev=
aluation and variable shadowing hazards.
--

commit 572b7555547c1b5bc07701482ba67d379f6a2177
Author: Atish Patra <atishp@rivosinc.com>

RISC-V: Define indirect CSR access helpers

This commit introduces helper macros to read, write, and perform WARL
operations on indirect CSRs. The macros use statement-expressions to handle
the multiple instructions required while disabling interrupts.

> diff --git a/arch/riscv/include/asm/csr_ind.h b/arch/riscv/include/asm/cs=
r_ind.h
> new file mode 100644
> index 0000000000000..6fd7d44dc640a
> --- /dev/null
> +++ b/arch/riscv/include/asm/csr_ind.h
> @@ -0,0 +1,44 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) 2024 Rivos Inc.
> + */
> +
> +#ifndef _ASM_RISCV_CSR_IND_H
> +#define _ASM_RISCV_CSR_IND_H
> +
> +#include <linux/irqflags.h>
> +
> +#include <asm/csr.h>
> +
> +#define csr_ind_read(iregcsr, iselbase, iseloff) ({		\
> +	unsigned long __value =3D 0;				\
> +	unsigned long __flags;					\

[Severity: Medium]
Will these generic variable names (__value, __flags) cause shadowing issues=
 if
the caller passes in arguments with the same names?

Evaluating macro arguments into unique local variables before entering the
IRQ-disabled region would avoid this regression.

> +	local_irq_save(__flags);				\
> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	__value =3D csr_read(iregcsr);				\
> +	local_irq_restore(__flags);				\
> +	__value;						\
> +})
> +
> +#define csr_ind_write(iregcsr, iselbase, iseloff, value) ({	\
> +	unsigned long __flags;					\
> +	local_irq_save(__flags);				\
> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	csr_write(iregcsr, (value));				\

[Severity: Medium]
Since value is evaluated here after CSR_ISELECT has been programmed, what
happens if a caller passes an expression that accesses another indirect CSR,
such as a nested csr_ind_read(), as the value argument?

It appears the nested call would overwrite CSR_ISELECT, causing the write to
silently corrupt the wrong hardware register. Evaluating arguments into loc=
al
variables before disabling interrupts would prevent this, and also avoid the
risk of evaluating expressions with side effects while interrupts are disab=
led.

> +	local_irq_restore(__flags);				\
> +})
> +
> +#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
> +	unsigned long __old_val =3D 0, __value =3D 0;		\
> +	unsigned long __flags;					\

[Severity: Medium]
Do these generic local variables risk shadowing caller arguments?

> +	local_irq_save(__flags);				\
> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	__old_val =3D csr_read(iregcsr);				\
> +	csr_write(iregcsr, (warl_val));				\

[Severity: Medium]
Is there a risk that evaluating warl_val here could overwrite CSR_ISELECT if
the caller provides an expression that performs another indirect CSR access?

> +	__value =3D csr_read(iregcsr);				\
> +	csr_write(iregcsr, __old_val);				\
> +	local_irq_restore(__flags);				\
> +	__value;						\
> +})
> +
> +#endif

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-counter_de=
legation-v6-0-285b72ed65a9@meta.com?part=3D4

