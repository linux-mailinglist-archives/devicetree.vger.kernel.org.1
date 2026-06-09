Return-Path: <devicetree+bounces-308703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SiqqOj+vJ2o20gIAu9opvQ
	(envelope-from <devicetree+bounces-308703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4939C65CA56
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 08:14:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="i/Rkutml";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308703-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308703-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CDA623037D74
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 06:09:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C0873CF97E;
	Tue,  9 Jun 2026 06:09:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 190893CF682;
	Tue,  9 Jun 2026 06:09:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780985363; cv=none; b=lniWbhwn+5+cTZxo3AEgZmnDT9tSfbZnjXwk6acjfAaDxqEJNHGUIP1Ue+UMrHSZzNNA8AfWvLZsdEFnWCmFWhKzvhLsABMHiCtK1hP2hWqWgCD89gJZnYXV3xpTFsGOl49Or9CKEVHwJFCtfSbeEKaMgwqmfUIFOp3Ss7X7XFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780985363; c=relaxed/simple;
	bh=qdbXSPFHwZoNhPRAT/mrsMNl7DCanUb2K1KiCYQ2P/c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sg9QbYO9I1TUtBKWbJtMsoEaim1mTukXvwTJhsYkr3iJouJGHamYDqKqso+8dpDpJK+Vyl4BskvE3KlBcOEzXd0WEQ5NWFhY7Xe40lA8xZef032w4KGVhz+8T6Q2khiU7BwFY+jZ+sLuk9a9D3tyzJDxoNkux30X4DTrwUlfT08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i/Rkutml; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 547691F00893;
	Tue,  9 Jun 2026 06:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780985361;
	bh=7ioFgcmWbLW0A334HM9E9xCVxrhYYCUyk+zA3kU/NbA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i/RkutmlUIsz4CFpzywEJep1MNbGxcjtNw5nVnK5HTDLTupu5xqI3hSzxsA8mcVHy
	 xeSmwLzZFCvbgHJR+J1ZanZ1nlu8yseIS5Ej58pZy/t9NpxCqxNY1W+vZw7CHXmwT+
	 biZLmYUNONG+G0WTYyo61dqfjntIf6xVkFsKsbVGpYeIN+bdZKINJS1DFNxHXSdp8M
	 B2mHeb02hJa40vtjLRg94PJZpbCG2oj7dlQOGIvePlUorCRZiKasOeXKrLkUkgGFWJ
	 D6W6tvUvRh572ybIkWcO7ngHtrYdCHQM3lEuCfPq+FLTKcxNYxthZyiRhW2jTr3ebt
	 DboYcQxn69uww==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 03/21] dt-bindings: riscv: add Sxcsrind ISA extension
 description
Reply-To: sashiko-reviews@lists.linux.dev
To: "Atish Patra" <atish.patra@linux.dev>
Cc: linux-perf-users@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608-counter_delegation-v6-3-285b72ed65a9@meta.com>
References: <20260608-counter_delegation-v6-3-285b72ed65a9@meta.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 06:09:20 +0000
Message-Id: <20260609060921.547691F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,rivosinc.com:email,smtp.kernel.org:mid];
	TAGGED_FROM(0.00)[bounces-308703-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:atish.patra@linux.dev,m:linux-perf-users@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4939C65CA56

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The `sscsrind` extension is inserted out of alphanumeric order, vio=
lating the explicit formatting rule in the binding file.
- [Low] The description for `smcsrind` contains a copy-paste error incorrec=
tly labeling it as a 'supervisor-level' extension, and both `smcsrind` and =
`sscsrind` contain a grammatical typo.
--

commit a4e1326a37463e042ca0a72ff72d93f2be1d22f8
Author: Atish Patra <atishp@rivosinc.com>

dt-bindings: riscv: add Sxcsrind ISA extension description

Add the S[m|s]csrind ISA extension description.

> diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/Do=
cumentation/devicetree/bindings/riscv/extensions.yaml
> index 2b0a8a93bb214..4be557dc215de 100644
> --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> @@ -181,6 +181,14 @@ properties:
>              changes to interrupts as frozen at commit ccbddab ("Merge pu=
ll
>              request #42 from riscv/jhauser-2023-RC4") of riscv-aia.
> =20
> +        - const: smcsrind
> +          description: |
> +            The standard Smcsrind supervisor-level extension extends the
> +            indirect CSR access mechanism defined by the Smaia extension=
. This

[Severity: Low]
Is this description accurate for smcsrind? The m in Smcsrind indicates
it is a machine-level extension, rather than a supervisor-level extension.

> +            extension allows other ISA extension to use indirect CSR acc=
ess

[Severity: Low]
This isn't a bug, but there is a typo here. Should "ISA extension" be
pluralized to "ISA extensions"?

> +            mechanism in M-mode as ratified in the 20240326 version of t=
he
> +            privileged ISA specification.
> +

[ ... ]

> @@ -199,6 +207,14 @@ properties:
>              added by other RISC-V extensions in H/S/VS/U/VU modes and as
>              ratified at commit a28bfae (Ratified (#7)) of riscv-state-en=
able.
> =20
> +        - const: sscsrind
> +          description: |
> +            The standard Sscsrind supervisor-level extension extends the
> +            indirect CSR access mechanism defined by the Ssaia extension=
. This
> +            extension allows other ISA extension to use indirect CSR acc=
ess

[Severity: Low]
This isn't a bug, but there is the same typo here. Should "ISA extension" be
pluralized to "ISA extensions"?

> +            mechanism in S-mode as ratified in the 20240326 version of t=
he
> +            privileged ISA specification.
> +
>          - const: ssaia

[Severity: Low]
Should sscsrind be placed after ssaia rather than before it? The
extensions in this file are expected to be sorted alphanumerically.

>            description: |
>              The standard Ssaia supervisor-level extension for the advanc=
ed

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608-counter_de=
legation-v6-0-285b72ed65a9@meta.com?part=3D3

