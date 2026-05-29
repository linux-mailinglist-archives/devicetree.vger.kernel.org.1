Return-Path: <devicetree+bounces-304213-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMdKNJBpGWrGwQgAu9opvQ
	(envelope-from <devicetree+bounces-304213-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:25:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FBFE600C46
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 12:25:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1F798301C5BE
	for <lists+devicetree@lfdr.de>; Fri, 29 May 2026 10:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9FF83A9D9D;
	Fri, 29 May 2026 10:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BKW+xkvC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9353B5318
	for <devicetree@vger.kernel.org>; Fri, 29 May 2026 10:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780050217; cv=none; b=GtkfLBKk65M2MkU9DMWXwjJGc/VJ7L4SZlrQ7BYGcI3ldkMh9Woz1v0rs2fc4piA7oRGasXo/U/WPplHWBhZDuhtoRIPD7fbt9qNx1J+FbGIBw+uVEs6rZ+u5kjl4+f+jEM6GxBmQYIzITphKMUd6hz6Yl48oXtv6RdTiNpYClE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780050217; c=relaxed/simple;
	bh=08+lAaN+OJq3k++IAC/2FGxKFQrhCK1oU3bsNwWlFcU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=a18Z6OiO7CnDSQkp88KJNoXC9PCg2gG1CuxK5Yrpx/PC3+mB2ZDZP/IjkrAQS1uKJHS4GSncW/Ri7/7iaiL2WFpl8r5R9LcEwgxH7k6p5rsajbPuZ34SsEFv+UMLrAhMyhVXo5Dqdbw/rk134VcKGru2E9qIku4+QpSG1azUQKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BKW+xkvC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A6E281F0089A;
	Fri, 29 May 2026 10:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780050215;
	bh=cr0OqpZDW4Uiq5u3VxYlkLWQdJuPdM45GgD/6kViHBg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BKW+xkvCKFjBVbMdtxL1h7f6Go8+czIeKELpJNEJIQCKRxU6qXgrD5VCzB0PGIyDA
	 +QljPf6KgKTnQWDO1J/kGRiJMovZWqZBasQG322jYOf23SHohujmM32XNZ/1fPoF4i
	 mH9rtmmlZpN65MsTvxNOOmx8uhWNV6A1DvZeFMdfppEt5ZnfvgfDXX3kKHzDRY1Av1
	 EK+lI21Ytj77WUHIgl8SVAnr79YAQXyQb/PGxomlq26pAhx/Vl+2N5A+/Kho+/kEzK
	 VtXTEsw3flm7l9v5WhR+yM0YDVHaP3TVchhiYvi/JhwJoXaVntohy5PXUqc1IP565A
	 CJ0Sg6uvS1QRA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 01/10] ACPI: APEI: GHES: share macros via a private
 header
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ahmed Tiba" <ahmed.tiba@arm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260529-topics-ahmtib01-ras_ffh_arm_internal_review-v5-1-2e0500d42642@arm.com>
References: <20260529-topics-ahmtib01-ras_ffh_arm_internal_review-v5-1-2e0500d42642@arm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 29 May 2026 10:23:34 +0000
Message-Id: <20260529102335.A6E281F0089A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-304213-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,arm.com:email]
X-Rspamd-Queue-Id: 2FBFE600C46
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The patch un-staticizes and exposes 7 core internal functions wi=
thout documenting this behavior in the commit message.
- [Low] The new header `include/acpi/ghes_cper.h` uses `enum fixed_addresse=
s` in function prototypes without including `<asm/fixmap.h>`.
--

commit 30e8939fe8b7b5fe0f59a4dfeee62c476774ac25
Author: Ahmed Tiba <ahmed.tiba@arm.com>

ACPI: APEI: GHES: share macros via a private header

This patch moves CPER helper macros from ghes.c to a new private header.
It aims to allow sharing these macros with upcoming helper files without
functional changes.

> Carve the CPER helper macros out of ghes.c and place them in a private
> header so they can be shared with upcoming helper files. This is a
> mechanical include change with no functional differences.

[Severity: Medium]
Is this description accurate?

The patch removes the static keyword from seven internal functions (such as
ghes_new() and ghes_fini()), exposing them.

Could the commit message be more precise about these function visibility
changes?

> diff --git a/include/acpi/ghes_cper.h b/include/acpi/ghes_cper.h
> new file mode 100644
> index 0000000000000..6b7632cfaf667
> --- /dev/null
> +++ b/include/acpi/ghes_cper.h
[ ... ]
> +#include <acpi/ghes.h>
[ ... ]
> +#ifdef CONFIG_ACPI_APEI
> +struct ghes *ghes_new(struct acpi_hest_generic *generic);
> +void ghes_fini(struct ghes *ghes);
> +
> +int ghes_read_estatus(struct ghes *ghes,
> +		      struct acpi_hest_generic_status *estatus,
> +		      u64 *buf_paddr, enum fixed_addresses fixmap_idx);

[Severity: Low]
Does this header need to include <asm/fixmap.h>?

Without it, is enum fixed_addresses treated as a new incomplete type scoped
to the parameter list, potentially causing a conflicting types compilation
error when the functions are defined?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260529-topics-ahm=
tib01-ras_ffh_arm_internal_review-v5-0-2e0500d42642@arm.com?part=3D1

