Return-Path: <devicetree+bounces-305910-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J3d5GwZnH2q+lgAAu9opvQ
	(envelope-from <devicetree+bounces-305910-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:28:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D6111632E76
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 01:28:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZQ51mbaW;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305910-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-305910-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E1B0E3018C2D
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 23:28:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4116A3B5820;
	Tue,  2 Jun 2026 23:28:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359E43546F7;
	Tue,  2 Jun 2026 23:28:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780442882; cv=none; b=N79kKet2bxKHN5I7ltXiZvfojATuIl9uK2/gzUrsNZ4eA5w7MwxTXRYrENHBREPpGRZCMq4g3krZwxUNHAdj+A/RJ/G592pGvppaYexqX9FL6m4SlyUiXU/reJxiQRJMwp/X5T+uNDAUWxQCIo3Bi8GDdaXasQDs1j2rI77R9/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780442882; c=relaxed/simple;
	bh=bkuewVQcsUGgolWpEzr1PVJK+5AW9KPuFpJCrxj+73E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PT58pI1G8TbRAJJJ0PZJOc/2ltlfiCj4AOoLjjcltybhk6RFmxAuzzOmUcdynEvZfZwlj7DhZo4jOAA3nLZaRljwlMoa8tKE+PPrv0HtJrNgfkDXjK18fAkzj/3MQYrPmPhR57UAA5XT1cSAUHZWpqulPZ0PGXjpo3GDdtDqcE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZQ51mbaW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 768311F00893;
	Tue,  2 Jun 2026 23:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780442880;
	bh=AAXDYFvmK+nN8xrEvIIaJnPvs0bYcBJuKeg2OYhoS8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZQ51mbaWovA/ewxwkvufkpz1ixvpZCmYZccdX+rRJSFqoE/yf/FhqiSf0+0wsqoeM
	 U7aGVm+6aVo2mDQKWIbNBI9GunzFlDe/O2vPhkLX7cvyIEHlQOnJfsZFbfoJjb0+Hm
	 sy/r+sxAxpdjxbV/GMhmmU8owVO2/RGxiGUu/e+8++8TCDnQh32iF4R54yDLwT8F6V
	 ma6JaLqBODtg8xSTxUgb6VmmrYSI/K9IF9VSm6IunPvaQh9ddksiA2fSZgVzJd4JbJ
	 aSKqQqi+m+bPXcYRHJdDKstZWtNhnfawXRVMShZ6hfMluhyjfiMWoHX7oRYIf0QNjf
	 GNW2yt/OeYp2A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 08/15] riscv: Add Zic64b to cpufeature and hwprobe
Reply-To: sashiko-reviews@lists.linux.dev
To: "Guodong Xu" <docular.xu@gmail.com>
Cc: kvm@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260603-rva23u64-hwprobe-v2-v3-8-5529a7b28384@gmail.com>
References: <20260603-rva23u64-hwprobe-v2-v3-8-5529a7b28384@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 23:28:00 +0000
Message-Id: <20260602232800.768311F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305910-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:docular.xu@gmail.com,m:kvm@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:docularxu@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
X-Rspamd-Queue-Id: D6111632E76

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Zic64b validation incorrectly requires all CBO extensions to be =
present, erroneously disabling Zic64b if any optional CBO extension is unim=
plemented.
--

commit fecaace37b018a89cd6931b57477f69defdbcd61
Author: Guodong Xu <docular.xu@gmail.com>

riscv: Add Zic64b to cpufeature and hwprobe

This commit adds support for the Zic64b extension, which mandates 64-byte
naturally aligned cache blocks. It allocates an ISA extension ID, adds a
validation callback, and exports the feature via hwprobe.

> diff --git a/arch/riscv/kernel/cpufeature.c b/arch/riscv/kernel/cpufeatur=
e.c
> index e0197160af6dd..79ff431768139 100644
> --- a/arch/riscv/kernel/cpufeature.c
> +++ b/arch/riscv/kernel/cpufeature.c

[ ... ]

> @@ -154,6 +154,23 @@ static int riscv_ext_zicbop_validate(const struct ri=
scv_isa_ext_data *data,
>  	return 0;
>  }
> =20
> +static int riscv_ext_zic64b_validate(const struct riscv_isa_ext_data *da=
ta,
> +				     const unsigned long *isa_bitmap)
> +{
> +	/*
> +	 * Zic64b mandates 64-byte naturally aligned cache blocks; cross-check =
the
> +	 * cbom/cbop/cboz block-size device-tree properties to avoid inconsiste=
ncy.
> +	 */
> +	if (riscv_cbom_block_size !=3D 64 ||
> +	    riscv_cbop_block_size !=3D 64 ||
> +	    riscv_cboz_block_size !=3D 64) {

[Severity: Medium]
Will this check erroneously disable Zic64b if a platform does not implement
all three CBO extensions?

If a hardware platform implements Zic64b but omits an optional extension
like Zicbop, the riscv,cbop-block-size property might be absent from the
device tree, leaving riscv_cbop_block_size initialized at 0.

This unconditional check evaluates 0 !=3D 64 as true, which would spuriously
trigger this error path and disable the valid Zic64b extension.

Should this validation only enforce the 64-byte size if the corresponding
block size variable is non-zero, indicating the extension is actually prese=
nt?

> +		pr_err("Zic64b detected in ISA string, disabling as the cache block si=
ze is not 64 bytes\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603-rva23u64-h=
wprobe-v2-v3-0-5529a7b28384@gmail.com?part=3D8

