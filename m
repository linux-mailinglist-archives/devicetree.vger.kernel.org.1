Return-Path: <devicetree+bounces-306056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PRKCBKrhH2rxrgAAu9opvQ
	(envelope-from <devicetree+bounces-306056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:11:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7436358E2
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 10:11:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=V6c29d2n;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306056-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306056-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7AB3A3051D1E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:55:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F07733FFAB4;
	Wed,  3 Jun 2026 07:55:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6050C401A25
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:55:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780473358; cv=none; b=gjvZqqeCRenHsMADNa/rLlxuKXy6YsJo5rVzaK7wiPEEVVFjS9Ll9LYemVGOJqOMFMMd+e2d8+GRG+r8HoAHsp3j8kayb/U6+eTw1fAWpmumYiCfL+x3u+glJUlPDzVpJ304N9d7U2vzQTHiIU8JjJY5gpP/4AfrZ/jQgYqvLm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780473358; c=relaxed/simple;
	bh=XZJenswdTRw1d6FNHVFFATpTw/lD4jQWNyl2DUZvlf0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=O5Ea5J6+IAHVR3fev1ebuyxwWV8BOvVYmIXNNLtzAwm54EmSbsWDoXOKifCu6SZ42zSfB5jBP640hLRyKlQZcH/Sig3kgvHQiOyaRKFQbuTDvIyGou0pMVL2Qb6nt2EYrdCNdBoe108XJiIV2jn/Yfjtvax8S9+Iqq8PvPmpfio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6c29d2n; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8FCC91F00898;
	Wed,  3 Jun 2026 07:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780473356;
	bh=KeeG4eYlZCMNiuI1ugTXf6I+ChAN/zFgZEYbvP5DWLQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=V6c29d2nc2FAcxi2m1Gnkk8LGlxyJUclFo1VnEoD7mxpTYJREqIbo/NTlA2vtVNXV
	 VOWtpsFto5y4rOJuPQHBvRxMqTjotDV/roUHgEmkOB7VLzqvYIcF/DFDnN+iw0PRM3
	 9bxpWy4IRivGuRRb9Vq6FHlpK4nsGsrklkOtJm88y2yLpM/yUU0e+yIS5RSGzWQVlP
	 KobyIx5Xe+9Z3YWAfFEvWE2awOklw30pA5iwACZRiuRKXbjEcGIJ6ZjjxeOqDz6j/k
	 rfKFhyfG0rLVxcmsiGhHRSifXO/79GdsJew8nkdVwPMAm56s7o7mS0imvjzJduKIdF
	 QnedEh3rsnA2w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/7] dt-bindings: timer: Add RISC-V ACLINT bindings
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joel Stanley" <joel@jms.id.au>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260603074222.593243-5-joel@jms.id.au>
References: <20260603074222.593243-5-joel@jms.id.au>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 07:55:56 +0000
Message-Id: <20260603075556.8FCC91F00898@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306056-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,jms.id.au:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5B7436358E2

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The `reg` property erroneously allows up to 4095 items, undermining=
 schema validation.
- [Low] The `interrupts-extended` property is missing from the `required` l=
ist, weakening schema validation.
--

commit 173c98f19d28214c8c437b5b2fe1fe7ffd581f01
Author: Joel Stanley <joel@jms.id.au>

dt-bindings: timer: Add RISC-V ACLINT bindings

This commit documents the device tree bindings for the RISC-V Advanced Core
Local Interruptor (ACLINT). It defines the memory-mapped devices providing
IPI and timer functionalities for each HART on a multi-HART platform.

> diff --git a/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.=
yaml b/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.yaml
> new file mode 100644
> index 0000000000000..192ff3fcf79f3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/riscv,aclint-mtimer.yaml
[ ... ]
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - tenstorrent,atlantis-aclint
> +          - qemu,aclint-mtimer
> +      - const: riscv,aclint-mtimer
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 4095

[Severity: Low]
Is this maxItems limit of 4095 correct for the reg property?

It appears this might be a copy-paste from the interrupts-extended property.
Since the RISC-V ACLINT MTIMER typically has only 1 or 2 memory-mapped
regions (e.g., for mtimecmp and mtime), allowing up to 4095 items could
permit incorrect device tree definitions to silently pass schema validation.

> +
> +  interrupts-extended:
> +    minItems: 1
> +    maxItems: 4095
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false

[Severity: Low]
Should interrupts-extended be added to this required list?

Since the primary purpose of the ACLINT MTIMER is to generate machine-level
timer interrupts for harts, omitting the interrupt routing from the required
list might allow incomplete, non-functional hardware descriptions to pass
validation. Other similar bindings typically mandate interrupt routing
properties.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603074222.5932=
43-1-joel@jms.id.au?part=3D4

