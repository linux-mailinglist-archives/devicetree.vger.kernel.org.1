Return-Path: <devicetree+bounces-314288-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7QtcNkDxOGqNkQcAu9opvQ
	(envelope-from <devicetree+bounces-314288-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:24:32 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 422C96ADAD1
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 10:24:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fFj1COtV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314288-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314288-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3EBFD3031E88
	for <lists+devicetree@lfdr.de>; Mon, 22 Jun 2026 08:17:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D5838E8B0;
	Mon, 22 Jun 2026 08:17:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B12E32F361B;
	Mon, 22 Jun 2026 08:17:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782116250; cv=none; b=WMKMCa8OGCx34RbOvNyW42zK5nFO0MqKyEd/HnT325Y3KP/9sU/gj0WcnHIimnQm/CXVCPn5mPsNPFUgpjAymJJTl2yQNGkxTZEKiVp1OPEGvGq3w2YCF9ItkXjT6FKF93g6WvP2ZZZLiip9j9HtThciqpK1ocHxGA8HNyjcdlg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782116250; c=relaxed/simple;
	bh=c9Legje/6PEoPwWbB8DdI0TrcRkVkn4FJIJXmSkaEEs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=CzxMDE9u5rUfj1Jbt/iJ2LP9ks+xIqBDXViLPjzhoQ7CZC4q5oTn9T0hrOOl/21RiQM1ciI3BXA/bzgu40ggLBBRqanBrorxs3pKjPxw5b+F/Hnmp5ipAOkgl0PiWPy9MByXe1Z3HoDA3J8t7uO92r4ribz8rzoFAKH/kbTJj2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFj1COtV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FBA91F00A3A;
	Mon, 22 Jun 2026 08:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782116249;
	bh=B+MvlFfQ2BU922S9MBOmkOoMBNYkvODzKpFKiXhMC+k=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fFj1COtVb86nB4Pxf+xTPMlPXZsDkkP6fBXCph2HsUo1cxFgMfibcAHte93aVLlIN
	 mVYUxsJboiSuuqqs1bNh7s1gejlIae6k5OlwXaKHmXKI2qH7xhwUgiEctk1U8h1qC3
	 H4IYuoirNdPS5Y5bjlhbcLqnk25YWHlJPfjF4I4TEbfBnckANEhOFNVm2R/uMP0QAb
	 xTrtsiNQlBqkGriuavM+vlmlj4Jc4QJ+c0B7bmzwfl3Wp6X6YlVmsPnNH/7/F60Tfz
	 gWGBUy5kuKHnQ+Y+4zSdnkCl8w85eb/fn7EVSVToWv/bygqZwMLwzQ3f11sx8WQiuV
	 mplIClM3Kcndw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 06/22] RISC-V: Add Smcntrpmf extension parsing
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: devicetree@vger.kernel.org, robh@kernel.org, linux-perf-users@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260622-counter_delegation-v7-6-0ba2fd34614e@meta.com>
References: <20260622-counter_delegation-v7-0-0ba2fd34614e@meta.com>
 <20260622-counter_delegation-v7-6-0ba2fd34614e@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 22 Jun 2026 08:17:28 +0000
Message-Id: <20260622081729.1FBA91F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-314288-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,rivosinc.com:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 422C96ADAD1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing architectural dependency validation for `Smcntrpmf` requ=
iring `Sscofpmf`.
- [Low] The commit message contains a confusing, grammatically incorrect se=
ntence that obscures the technical meaning.
--

commit f81e6e1ce235d73d77e6f5d1061ddb41f7aab7b6
Author: Atish Patra <atishp@rivosinc.com>

RISC-V: Add Smcntrpmf extension parsing

This commit adds parsing for the Smcntrpmf extension, allowing the kernel
to detect its presence. The extension enables M-mode to configure privilege
mode filtering for cycle/instret counters.

> Smcntrpmf extension allows M-mode to enable privilege mode filtering
> for cycle/instret counters. However, the cyclecfg/instretcfg CSRs are
> only available only in Ssccfg only Smcntrpmf is present.

[Severity: Low]
This isn't a bug, but there is a typo in the commit message where the word
"only" is repeated three times. Did you mean to say "... are available in
Ssccfg only if Smcntrpmf is present"?

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index 3fa0a563fb214..1452521d740a6 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c
[ ... ]
> @@ -576,6 +576,7 @@ const struct riscv_isa_ext_data riscv_isa_ext[] =3D {
>  	__RISCV_ISA_EXT_BUNDLE_VALIDATE(zvksg, riscv_zvksg_bundled_exts, riscv_=
ext_vector_crypto_validate),
>  	__RISCV_ISA_EXT_DATA_VALIDATE(zvkt, RISCV_ISA_EXT_ZVKT, riscv_ext_vecto=
r_crypto_validate),
>  	__RISCV_ISA_EXT_DATA(smaia, RISCV_ISA_EXT_SMAIA),
> +	__RISCV_ISA_EXT_DATA(smcntrpmf, RISCV_ISA_EXT_SMCNTRPMF),

[Severity: Medium]
Does this extension need a validation callback to enforce its dependency
on Sscofpmf?

According to the RISC-V specification, the Smcntrpmf extension explicitly
depends on the Sscofpmf extension. Using __RISCV_ISA_EXT_DATA instead of
__RISCV_ISA_EXT_DATA_VALIDATE omits these dependency checks.

A malformed device tree claiming smcntrpmf support without the requisite
Sscofpmf infrastructure might bypass validation and lead to an inconsistent
PMU driver state.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260622-counter_de=
legation-v7-0-0ba2fd34614e@meta.com?part=3D6

