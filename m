Return-Path: <devicetree+bounces-313171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vM0ONcAIM2rg8gUAu9opvQ
	(envelope-from <devicetree+bounces-313171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:51:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id BF9AA69C6CF
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 22:51:11 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TmqAEqmT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313171-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-313171-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id EF6AA300B503
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 20:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E716038F957;
	Wed, 17 Jun 2026 20:51:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DECAB27FD4B
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 20:51:06 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781729467; cv=none; b=Y48QN58/0sSXqVyk180oe2AU97ojHjz+NLksU2uAtyZ0pzXw1Txop2W3hCRJKplKODa/4A1YUPNgwb+gUscGgrYUMNvSylBR77jTrelILFNsUfHqq7EB/VtHs1U9/i5IFOeT/6It2QBokPfRb309CDeykNQY7NtaZM8upPrAYA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781729467; c=relaxed/simple;
	bh=im5pnGMUlDh9++5Hp+P92pTcOxkNUh6iU/UK+eLX1HQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fRKR5Zi6EAyeaxF/mbDoL+HlPQMPngFqm9AWftps1sqPoslu0DKClGbw7B6m5ScSKcIl13jy64Y77rMri/rurPBwvTW1MjYYvdT6z7x9+RNSgsPu1fWvP1EwgDI7qJQx6c6yMTP8ihqiJXOBWd02RiVEDKiwKslxJy+yblTAH7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TmqAEqmT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59B2A1F000E9;
	Wed, 17 Jun 2026 20:51:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781729466;
	bh=rytpHzgF484wf81fAB85AI+s/DoNZAU6/J3f4UL8XK8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TmqAEqmTX7Uq8Da321l49OQz4ELoF/fHx8J2ZY55AgvqBk1R/uo3MsSUETOyiDf6V
	 9imZHoIhLfN1UZX4BIthHR/y+ognYp3a1ezovcatlEbH+/AXROwZKhG6djvnwNIWKl
	 omq3/2Grg/V8spEa+h6cnVm4Oe8iIdgPKX0NLqHnorgXLnzZKuDo72rnqlUZC4Hzvz
	 134Hquqsoml8IJfo8wJFYTq+3QNZc8A47Lq9gEE5GiK4zG7SaY1MczlDb6PEeZIGdR
	 1MkTCe8pdAgz2h2H8nkEpD7ql+uIy7LZCiGiizl3ZqfW4Iw7zYPvO/XXk1CFWnUkAC
	 34sr2Vqnal3dQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: xen: Convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tejas Mutalikdesai" <tejasmutalikdesai@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260617185518.43500-1-tejasmutalikdesai@gmail.com>
References: <20260617185518.43500-1-tejasmutalikdesai@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 20:51:06 +0000
Message-Id: <20260617205106.59B2A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313171-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tejasmutalikdesai@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BF9AA69C6CF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] The `$nodename` pattern requires a unit address, which breaks =
Linux's hardcoded Xen node detection.
--

commit e4969fb4c5852849c9ecbfff9b63719a0d10dc05
Author: Tejas Mutalikdesai <tejasmutalikdesai@gmail.com>

dt-bindings: arm: xen: Convert to DT schema

Convert the Xen ARM device tree binding documentation from the legacy
plain-text format to the DT schema format.

> diff --git a/Documentation/devicetree/bindings/arm/xen.yaml b/Documentati=
on/devicetree/bindings/arm/xen.yaml
> new file mode 100644
> index 0000000000000..a22e950566c23
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/xen.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---

[ ... ]

> +description:
> +  Xen ARM virtual platforms shall have a top-level "hypervisor" node with
> +  the properties defined below.
> +
> +properties:
> +  $nodename:
> +    pattern: "^hypervisor@[0-9a-f]+$"

[Severity: Critical]
Does enforcing a unit address here break existing kernel expectations?

The Linux kernel seems to strictly expect the node to be named exactly
"hypervisor" without a unit address.

In arch/arm/xen/enlighten.c:fdt_find_hyper_node(), the code uses:

    if (depth !=3D 1 || strcmp(uname, "hypervisor") !=3D 0)

And in drivers/firmware/efi/fdtparams.c:dt_params[], the path is hardcoded:

    .path =3D "/hypervisor/uefi",

If a hypervisor or devicetree generator updates its output to comply with t=
his
new schema and adds a unit address (e.g., hypervisor@b0000000), won't the
kernel silently fail to detect Xen and its UEFI runtime services?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617185518.4350=
0-1-tejasmutalikdesai@gmail.com?part=3D1

