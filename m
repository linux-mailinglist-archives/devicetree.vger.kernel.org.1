Return-Path: <devicetree+bounces-324124-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id qtppNuAGUGpysAIAu9opvQ
	(envelope-from <devicetree+bounces-324124-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:38:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDF77357AA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:38:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VTb5wonk;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324124-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-324124-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D151B30054E8
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA463D16E2;
	Thu,  9 Jul 2026 20:38:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE28D3CE0A2
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 20:38:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783629534; cv=none; b=DeD4DNjKSHFitSzXKxEy1fDxyrlFxGEV184TxttnUj22lCaH1bGcYbpqG+0HpAl/Qk6pdY9FzrGOTkJPYmABuVQT7C5KUiQY+YZ3xSsZ/xMas/7EpR0GmklkVwFv02eFmuU7oLT1ToLnb6k1f3Nsk/IUHrVxLDA0MCmg1kd+VFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783629534; c=relaxed/simple;
	bh=5a1oev0qmzK4rCQ06hBgHetSD/Q1WPMvl2ggpKPDL/c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TAyDivcaN2EDQgpK+cjgMbjcWK6aLx1q6gtvAC0cntqbxybUKNZlBJM1mY375gyKSjlBb2qXIMQU4RPrQy6dDiC5VgAimf6467iLFEOtjI3UStgYviklcT2NM5FaQfBgn5jadfteCObPcQCkD2aujUS/qFAvuhTNpwIq+YygGR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTb5wonk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F2871F000E9;
	Thu,  9 Jul 2026 20:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783629532;
	bh=pyMfdXHUuaY8ZLv6NGjyrCMc8vzviT0TrXwRkeNWvtI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VTb5wonkaOVvX2K7wKa0H+LuozjCPkSdVNj94J11j/FRDQ0AmwgB5EOKQzEoAALbq
	 H7WGf8vVH+Wyo51sOHGqu0C29o5G6brkXRAq9/JkjuKHZQ0ftJameWaEqPPdqP6g1E
	 gwx0kz/fzODEVs/4+J7p4+Fr7H2JCISyzSiyHCoMgIaIJCs3HSxlKJQFrXBfnQ3Gra
	 mecNJiovCMfQI++8gZ5bwmej9m2wZ4uSV7O6bewzSDeQWTeMafG3g3NUlzoQ5+OJXc
	 6p2lutrr8/wZ1N6JDporOnyRGLDdoHlpgwnE873R8sIrL+x1PeLU7q932D9gbjXY9b
	 1uLtmftC0+Oxw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/19] dt-bindings: crypto: add Rambus CryptoManager
 Hub
Reply-To: sashiko-reviews@lists.linux.dev
To: "Saravanakrishnan Krishnamoorthy" <skrishnamoorthy@rambus.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709203037.1884436-2-skrishnamoorthy@rambus.com>
References: <20260709203037.1884436-1-skrishnamoorthy@rambus.com>
 <20260709203037.1884436-2-skrishnamoorthy@rambus.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 20:38:50 +0000
Message-Id: <20260709203851.2F2871F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324124-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:skrishnamoorthy@rambus.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rambus.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6FDF77357AA

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Commit message and schema discrepancy regarding child node compa=
tible strings.
- [Low] Ambiguous or missing standard DMA properties in schema.
- [Low] Missing programmatic bounds validation for mailbox configuration pr=
operties.
--

--- Patch [1]: [PATCH v2 01/19] dt-bindings: crypto: add Rambus CryptoManag=
er Hub ---
commit 4a05b4db54dfefd3f8865951add1c86499b1b7bd
Author: Alex Ousherovitch <aousherovitch@rambus.com>

dt-bindings: crypto: add Rambus CryptoManager Hub

This commit adds a device tree binding schema for the CRI CryptoManager Hub
hardware crypto accelerator. It defines the SoC-level node properties
including registers, interrupts, and mailbox configuration, along with
per-core child nodes.

> Add device tree binding schema for the CRI CryptoManager Hub (CMH)
> hardware crypto accelerator.  The binding covers the parent SoC-level
> node with register region, interrupt, DMA properties, and per-core
> child nodes identified by compatible string and unit address.

[Severity: Medium]
The commit message states that per-core child nodes are identified by a
compatible string and unit address. However, looking at the schema definiti=
on
for the child nodes, they strictly set additionalProperties: false and do n=
ot
define or allow a compatible property. Will validation fail if a device tree
author adds a compatible string to a child node as described here?

[Severity: Low]
The commit message also mentions that the binding covers DMA properties.
Since the root node sets additionalProperties: false without referencing
standard DMA properties like dmas or dma-coherent, they won't be permitted.
If standard DMA properties are intended, shouldn't they be explicitly allow=
ed
in the schema? If the message is referring to the custom cri,mbx-* properti=
es,
the phrasing might be slightly ambiguous.

> diff --git a/Documentation/devicetree/bindings/crypto/cri,cmh.yaml b/Docu=
mentation/devicetree/bindings/crypto/cri,cmh.yaml
> new file mode 100644
> index 0000000000000..db41132e0591d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/crypto/cri,cmh.yaml
[ ... ]
> +  cri,mbx-slots-log2:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 64
> +    description:
> +      Per-mailbox slot count as log2.  Valid range 1..15.
> +      Array length must match cri,mbx-instances.
> +      Default is 5 (32 slots).

[Severity: Low]
Does this property need YAML constraints to enforce the documented range?
Without minimum and maximum constraints for the items, invalid device trees
specifying out-of-range values might silently pass schema validation.

> +
> +  cri,mbx-strides-log2:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 1
> +    maxItems: 64
> +    description:
> +      Per-mailbox stride (bytes per slot) as log2.  Valid range 7..10.
> +      Array length must match cri,mbx-instances.
> +      Default is 7 (128 bytes per slot).

[Severity: Low]
Similar to the slots property above, can we add minimum and maximum bounds
to the schema here so that tooling can automatically catch values outside
the 7 to 10 range?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709203037.1884=
436-1-skrishnamoorthy@rambus.com?part=3D1

