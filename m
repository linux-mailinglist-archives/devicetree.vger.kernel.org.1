Return-Path: <devicetree+bounces-300807-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6+9dDGDzDWoF5AUAu9opvQ
	(envelope-from <devicetree+bounces-300807-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:46:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 256C9594816
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 19:46:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E04E031F8DF3
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 16:58:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC41B37D101;
	Wed, 20 May 2026 16:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRS6CrAZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66FA3164C3
	for <devicetree@vger.kernel.org>; Wed, 20 May 2026 16:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779296273; cv=none; b=ErPeSOS+IRtJP9UyYLHNOwKt28eEzwoKrk8XBu3Ju/3Vob7mutCMPnpDzvdcK4IPAsQePUriyAQDRIq62taG0Fxe6Ff/mi3/yibL7iV8SDHXX8IY4OXDKCPU0uxClC1vD68WhHa2HIRopkbteGAwRAOygj+tW5LRFc+fLGCOlOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779296273; c=relaxed/simple;
	bh=rL8CCESSnSbcNzTSivVjXHlH20xteqi+4lc4nnt8j6I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tBtTC0RHlZMwNIs7PHLv451Dy7FqMsrK6f0Dvd88cu9c348mtvaf+n5SYApZr5YXsJQnYttPvObPrGSi5Qt74JF/V+KFS+aQYj+H6vvYauxHdeXH5xRa3TaoR1tYFYKI+UCT4HDAKKPOZLAISYa++cjqBPpBSJJRGWAzLar+0xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRS6CrAZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4A1441F000E9;
	Wed, 20 May 2026 16:57:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779296272;
	bh=9AJnk7IuBXrqqUHH2yK7TYytAHUGALmanx7OYR5zduw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BRS6CrAZgaDnzZaJxJEPFJZJJOOB7X4GTp4Fr0O8EUG+wPnubcivYafTlkf6EYnGw
	 uSG/LkWbIgfLxx250gPKMktQnZLganGizO8HetI9gSqkkdrhzw4tpj0cDmjQ0qqLD+
	 yhUZaZC4ZgndNsDJCL2uSsvaGzSd0WaCdTBeYd9yNnxAYJY88CJapTtq00U7jpGULd
	 R0+iXVBuCq4BkyFYUcpFerQdENVubuP6Ic0K2NYdPnDCfIBe9B1E2+7nOR88WQqmg4
	 Q4nlbBUIW0VgBVbhkIoikgt94cAIjTqllW91koNdLoz3eHtAHy2f1iWnRrnvbsTgVS
	 N97gVdbnzkB3g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: misc: add YAML binding for
 qemu,pvpanic-mmio
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rohan Mithari" <rohanmithari09@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260520164846.637522-1-rohanmithari09@gmail.com>
References: <20260520164846.637522-1-rohanmithari09@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 20 May 2026 16:57:51 +0000
Message-Id: <20260520165752.4A1441F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-300807-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_PROHIBIT(0.00)[0.138.62.160:email];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto]
X-Rspamd-Queue-Id: 256C9594816
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The commit introduces a YAML version of the qemu,pvpanic-mmio bi=
nding without deleting the original text binding.
- [Low] The example uses a 4-cell `reg` property without specifying `#addre=
ss-cells` and `#size-cells`, which will cause `dt_binding_check` to fail.
- [Low] Missing newline at the end of the YAML file.
--

commit 8822d211de2348fd88169fd34a07c2dd995de355
Author: Rohan Mithari <rohanmithari09@gmail.com>

dt-bindings: misc: add YAML binding for qemu,pvpanic-mmio

This commit adds a new YAML device tree binding schema for the QEMU PVPANIC
MMIO device.

> diff --git a/Documentation/devicetree/bindings/misc/qemu,pvpanic-mmio.yam=
l b/Documentation/devicetree/bindings/misc/qemu,pvpanic-mmio.yaml
> new file mode 100644
> index 0000000000000..22d1333f9c2df
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/qemu,pvpanic-mmio.yaml

[Severity: Medium]
Does this patch omit the deletion of the original pvpanic-mmio.txt file?

When converting an older text device tree binding to the YAML format, the
original text file should typically be removed in the same commit to prevent
duplicated documentation and out-of-sync updates.

[ ... ]

> +examples:
> +  - |
> +    pvpanic@9060000 {
> +      compatible =3D "qemu,pvpanic-mmio";
> +      reg =3D <0x0 0x9060000 0x0 0x2>;

[Severity: Low]
Will this example trigger a schema validation error during make
dt_binding_check?=20

In the dt-schema testing framework, example snippets are implicitly wrapped=
 in
a root node where the default address-cells and size-cells are 1. The reg
property here provides 4 cells, which parses as an array of 2 distinct item=
s.
However, the schema restricts the reg property with a maxItems: 1 constrain=
t.

Could the example be updated to specify the correct address-cells and
size-cells to match the 4-cell reg property?

> +    };
> \ No newline at end of file

[Severity: Low]
This isn't a bug, but there is a missing trailing newline character at the
end of the file.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260520164846.6375=
22-1-rohanmithari09@gmail.com?part=3D1

