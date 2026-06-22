Return-Path: <devicetree+bounces-314289-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id zM8NGDXxOGqMkQcAu9opvQ
	(envelope-from <devicetree+bounces-314289-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:24:21 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA116ADACE
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:24:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ldYxizRh;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314289-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314289-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5308B304706A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A86138E8CB;
	Mon, 22 Jun 2026 08:17:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F47B2F361B;
	Mon, 22 Jun 2026 08:17:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782116261; cv=none; b=obKIu93kFbx2Zu5xh4/Dsf1itTRBKHA6TvtDyjDjGeUj6wCBAzJDBPAFmIWB8W9HGRJelCLqP8CC8GC9FWJrpK85vrPPCQA08VdW5WT3C7lqgVpPIBsu+BbkmWx5AXJwGqDsuQWjcgmWzqRUYEEUbcmY/64NLHo+2f1d08sAJhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782116261; c=relaxed/simple;
	bh=u1LS3uvePDWIYttxbms8wKOPE7YnZmC7jDl0yIdmEcI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lygmuhca6KLwhZt2bifedUsutO9eTTGVHq0G2d0HjmoRa5/xDcJfbWxHGt4nkguodCcf1tGLFfLUiA9bkVwhwNMyJxSMShRKdiFMlDm9/e+WBj+y+rS3IXvBa8Kpp5JXRDpV4DnjHlehh0U/UZlXcuzlEb9urNFRp/oZo++KXPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ldYxizRh; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D18951F00A3A;
	Mon, 22 Jun 2026 08:17:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782116260;
	bh=MpkYDg0uL5kbgVFnHA6HInWelm5xeQr/zyZmnA7aQTA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ldYxizRhktSJXYLzCIKFfs9vMFpsHXaM/QuDkrPbNL3yBeeCIYBxHe5TfH7S561pn
	 +IqMgJ8qplRsV7EWZqaPmePmyAI+cSDfBQKvE0T3EI6PF5hPhWOddO0+smuCLbqu0P
	 ntDoPQtlD/XRdd8wU/Hz770Qxvz/etnLT2I+vqdKvRzkiioDEJNlTcGUI7gP4T+qYK
	 Qr8rpkvAF0c2BWhu1ZAlBkeHndyPi+8UOgdRO8Z4ALO4kAMQph+N3+S7Op6aCLCpV8
	 tcVyB7wfPezUKJGI6KhWEAJW6WDHOPVeLvV7Z1j2NJ2HPDP05bijN4zJROJn9zcU4E
	 cWAEnbY1XeLqg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 05/22] RISC-V: Define indirect CSR access helpers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-perf-users@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260622-counter_delegation-v7-5-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
 <20260622-counter_delegation-v7-5-0ba2fd34614e@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:17:39 +0000
Message-Id: <20260622081739.D18951F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314289-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,rivosinc.com:email,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: BCA116ADACE

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Macro Variable Shadowing / Hygiene vulnerability in statement ex=
pressions
- [Medium] API Asymmetry / Hardcoded Selector in Indirect CSR Access Helpers
--

commit aa0528a3e619974b7113157843897b147ef398e9
Author: Atish Patra <atishp@rivosinc.com>

RISC-V: Define indirect CSR access helpers

The indirect CSR requires multiple instructions to read/write CSR. Add a few
helper functions for ease of usage.

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
> +	local_irq_save(__flags);				\

[Severity: Medium]
Is there a risk of variable shadowing here? Since this macro evaluates call=
er
arguments inside the statement expression, passing an argument named __flags
or __value could silently shadow these local variables.=20

For example, if a caller passes a variable named __flags as the iselbase
argument, local_irq_save() would save the IRQ state into the inner shadowed
__flags variable before iselbase is evaluated.=20

Could these internal variables use more unique namespace prefixes to avoid
collisions?

> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	__value =3D csr_read(iregcsr);				\

[Severity: Medium]
Does this hardcoded use of CSR_ISELECT create an issue if callers use other
data registers?=20

The macro allows specifying the data register via iregcsr, but hardcodes the
selector. If these macros are used with virtualized state registers like
CSR_VSIREG, the macro would write to the host's CSR_ISELECT but then read f=
rom
the guest's CSR_VSIREG using an unmodified CSR_VSISELECT.

Would it be safer to either accept the selector register as an explicit
parameter or enforce that iregcsr must be the corresponding data register?

> +	local_irq_restore(__flags);				\
> +	__value;						\
> +})
> +
> +#define csr_ind_write(iregcsr, iselbase, iseloff, value) ({	\
> +	unsigned long __flags;					\
> +	local_irq_save(__flags);				\

[Severity: Medium]
Similarly, does the local __flags variable here risk shadowing arguments
passed as iselbase, iseloff, or value?

> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	csr_write(iregcsr, (value));				\
> +	local_irq_restore(__flags);				\
> +})
> +
> +#define csr_ind_warl(iregcsr, iselbase, iseloff, warl_val) ({	\
> +	unsigned long __old_val =3D 0, __value =3D 0;		\
> +	unsigned long __flags;					\
> +	local_irq_save(__flags);				\

[Severity: Medium]
Does this macro have the same shadowing concerns with __old_val, __value, a=
nd
__flags colliding with the evaluated macro arguments?

> +	csr_write(CSR_ISELECT, (iselbase) + (iseloff));		\
> +	__old_val =3D csr_read(iregcsr);				\
> +	csr_write(iregcsr, (warl_val));				\
> +	__value =3D csr_read(iregcsr);				\
> +	csr_write(iregcsr, __old_val);				\
> +	local_irq_restore(__flags);				\
> +	__value;						\
> +})
> +
> +#endif

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-counter_de=
legation-v7-0-0ba2fd34614e@meta.com?part=3D5

