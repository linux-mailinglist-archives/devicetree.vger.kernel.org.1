Return-Path: <devicetree+bounces-318603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DfU/AB0VRWq36goAu9opvQ
	(envelope-from <devicetree+bounces-318603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:24:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A62E6EE100
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 15:24:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="VmjKMq+/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318603-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318603-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ECEA8319C8D6
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 13:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA9BE481FCC;
	Wed,  1 Jul 2026 13:01:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91470481675
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 13:01:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782910861; cv=none; b=fvyoNnA7VUEpcMJGYqH4XmiI/97HX2pxZBJHyNe08WasZOZWk+teVTtrohPrqztq/jZSzlLWYJKsFNEBzt8jUt6HuTAL6pNhRSy+aXKQ1zsx6c1Od84uk0vWpyESZlcxcSuisO4xfSzYVI7AjW+vQdAMXLXc8/8wAlOYW1Yr8XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782910861; c=relaxed/simple;
	bh=PLDFwNsSNo0h/cvl/Tj/+qBFAGbjzQYvExFJq9kmHd8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jzqLjjm0si17BNucPATUw5/+mD7fzBmJ7R3hq9wy4hPfVzV5wkmXxJyxvIHuGsHoH6eJ0k2mmVgay10jOuDLD/cEhQmQpTPqTj5sNLGThaqe31cOuOZExIMW84mydy/2eBy9TaNZHjHx7vdcVcMxdZynEdWJKPsN7qjN/R3mGs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmjKMq+/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A3B21F000E9;
	Wed,  1 Jul 2026 13:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782910860;
	bh=kOkAeBB+92JcFW8cpK2kN1Y2iIo6Mir3C2PBf05Veps=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VmjKMq+/7uACagpyWZ0I0l3TjHbwDdavT7uMy6/kLRNF3it+qHqUt4oVh3+608dm/
	 O5Mzt9R2jsk7tpaMNI03Sq6o2yaD/8EF1pyimw0SnJh3uXsafYoEfHMVXorxvvaaSx
	 wc6+dF0ghg9f0kfnlchrYW56sDGWfMczj2a4cXqcNAamW+O/Gervek+XXqb69lIxq+
	 py1bS99Ge2+S0ug4fWr9ARbucW8bXx8XPX3IbLGdbfRwC1ycGtbwqDDLdNm+D/oXV5
	 fz1IMn/PU2/pCBuTwN1xBQtMKDa0rjX69ix4VTmqRgB8WssZstVySrHAxpF3EGYRjM
	 4M/9cBNAUCUeQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v15 4/4] crypto: spacc - Add SPAcc Kconfig and Makefile
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pavitrakumar Managutte" <pavitrakumarm@vayavyalabs.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260701122941.2149121-5-pavitrakumarm@vayavyalabs.com>
References: <20260701122941.2149121-1-pavitrakumarm@vayavyalabs.com>
 <20260701122941.2149121-5-pavitrakumarm@vayavyalabs.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 13:00:59 +0000
Message-Id: <20260701130059.9A3B21F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318603-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:pavitrakumarm@vayavyalabs.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,vayavyalabs.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6A62E6EE100

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] Boolean Kconfig option selecting tristate crypto algorithms forc=
es them to be built-in (`=3Dy`), even when the driver is built as a module =
(`=3Dm`).
- [Medium] Hardware operational tuning parameters are hardcoded as compile-=
time Kconfig options.
- [Low] Proliferation of custom Kconfig debug options instead of using stan=
dard kernel tracing.
- [Low] Misspellings in the Kconfig help texts ('oprations', 'opration').
--

commit 02c8050dd555ff6b5029092b4cb5ab0b1d97221f
Author: Pavitrakumar Managutte <pavitrakumarm@vayavyalabs.com>

crypto: spacc - Add SPAcc Kconfig and Makefile

This commit adds the Makefile and Kconfig entries for the new SPAcc
driver, integrating it into the drivers/crypto subsystem.

> diff --git a/drivers/crypto/dwc-spacc/Kconfig b/drivers/crypto/dwc-spacc/=
Kconfig
> new file mode 100644
> index 0000000000000..a9172606d77aa
> --- /dev/null
> +++ b/drivers/crypto/dwc-spacc/Kconfig
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +config CRYPTO_DEV_SPACC
> +	tristate "Support for dwc_spacc Security Protocol Accelerator"
> +	depends on HAS_DMA
> +	select CRYPTO_ENGINE
> +	default n
> +
> +	help
> +	  This enables support for SPAcc Hardware Accelerator.
> +
> +if CRYPTO_DEV_SPACC
> +
> +config CRYPTO_DEV_SPACC_HASH
> +	bool "Enable HASH functionality"
> +	default y
> +	select CRYPTO_HASH
> +	select CRYPTO_SHA1
> +	select CRYPTO_MD5

[Severity: Medium]
Since CRYPTO_DEV_SPACC_HASH is a boolean option, does selecting these trist=
ate
core crypto symbols force them to be built-in (=3Dy), even when the driver
itself is built as a module (=3Dm)?

This could prevent distributions from compiling these generic algorithms as
modules and cause unnecessary vmlinux bloat.

[ ... ]

> +config CRYPTO_DEV_SPACC_DEBUG_TRACE_IO
> +	bool "Enable Trace MMIO reads/writes stats"
> +	default n
> +	help
> +	  Say y to enable Trace MMIO reads/writes stats.
> +	  To Debug and trace IO register read/write oprations.

[Severity: Low]
Is it necessary to use custom Kconfig options for tracing MMIO reads and=20
writes, rather than utilizing standard kernel tracepoints or dynamic debug?

[Severity: Low]
This isn't a bug, but there is a typo here: "oprations" should be "operatio=
ns".

> +
> +config CRYPTO_DEV_SPACC_DEBUG_TRACE_DDT
> +	bool "Enable Trace DDT entries stats"
> +	default n
> +	help
> +	  Say y to enable Enable DDT entry stats.
> +	  To Debug and trace DDT opration

[Severity: Low]
This isn't a bug, but there is a typo here: "opration" should be "operation=
".

> +
> +config CRYPTO_DEV_SPACC_SECURE_MODE
> +	bool "Enable Spacc secure mode stats"
> +	default n
> +	help
> +	  Say y to enable SPAcc secure modes stats.
> +
> +config CRYPTO_DEV_SPACC_PRIORITY
> +	int "VSPACC priority value"
> +	range 0 15
> +	default 1

[Severity: Medium]
Could this hardware priority parameter be configured dynamically via Device
Tree or module parameters instead of a compile-time Kconfig option?

Hardcoding this in Kconfig enforces a single global configuration for all
instances and prevents tuning across multi-SoC environments without a full
kernel recompilation.

> +	help
> +	  Default arbitration priority weight for this Virtual SPAcc instance.
> +	  Hardware resets this to 1. Higher values means higher priority.
> +
> +config CRYPTO_DEV_SPACC_INTERNAL_COUNTER
> +	int "SPAcc internal counter value"
> +	range 100000 1048575
> +	default 100000

[Severity: Medium]
Similarly, does hardcoding this hardware timeout limit in Kconfig enforce a
single global configuration across all instances?

Could this be exposed via Device Tree or module parameters instead to allow
platform-specific tuning at runtime?

> +	help
> +	  This value configures a hardware watchdog counter in the SPAcc engine.
> +	  The counter starts ticking when a completed cryptographic job is
> +	  sitting in the STATUS FIFO. If the job remains unprocessed for the
> +	  configured duration, an interrupt is triggered to ensure it is servic=
ed.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122941.2149=
121-1-pavitrakumarm@vayavyalabs.com?part=3D4

