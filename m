Return-Path: <devicetree+bounces-311266-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fl8tMlcWLWo2bQQAu9opvQ
	(envelope-from <devicetree+bounces-311266-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:35:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F12567E26C
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 10:35:35 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mKu+lwOH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311266-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311266-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DE92D302C6D9
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 08:35:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791443750DB;
	Sat, 13 Jun 2026 08:35:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A3F357D14
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 08:35:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781339731; cv=none; b=ZlwF3AWFEUNR73LiL4kD4bbArJaqwZRJ1hHkils2KPtaAdFV+AxnEPdlKxwpBdLAOmBqTVHkK8G7h0q7UDq/nyPvFNm6yCNzR/l/Buei0b1xUq/nNBPLLTVXAE0pHsYYh7zMk84CXcQoCaIr+OPkQLQLf5q8vbHNnU3L6Xuebe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781339731; c=relaxed/simple;
	bh=U9IUJA3tCxDIlNDvhzxqE4JNO1E+RFRIyJBCdnP/83s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=c2d8EjmaTC9o8Nm+bf6OkqKcvwombCHsVUfuLQI7fAbxKKx5jCMCAOEX1RNJh94clfUq4KhzRLgTzHRe3AQelq+4qPoMatmtPW94q68XMWKXBTWVEfQsOwws1FeoJNnMBYM2LrXsV+Xx6Xnt8eEqmmp24gDI0eu6Qm2R0QFBfTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKu+lwOH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D9D791F000E9;
	Sat, 13 Jun 2026 08:35:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781339730;
	bh=GDWCm2Xia9VKdf1r3aJApT5CXyXC41+0z9c4dDxNSiU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mKu+lwOHX+kzWGmjD2lhXH9GUAGwQTKUHoDvik4SNUAXMamvgezauMQ82g5TMbNOH
	 SDj62gLxDxbTQAgOE/JQ2yyQBKGCvG2n1JP0N4y81dOlfO9JInTcE+5+pcVHhej2Tc
	 dvBcSeiVWtT0wNU1h9tR97bN7lq+gr5sB/xl9TmstYCmU1clsSLIb1B6xJp+lvH5h9
	 ZqMcFtM7Y350FwsgYAfiVOt0ED970i3RQnNUsh8/DB9K2kk52cCd/Ayqekws+dJKhK
	 +KOLViRRcDbr2J63MNh2QZqL9Vo44SyN6oxwWtiY5PItnMSkikJ59RGsM5OvOmmrWw
	 1kRXTQX1SLPiw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] dt-bindings: sound: nvidia,tegra30-ahub: Convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260613-nvidia-ahub-v1-1-5b7e85301736@gmail.com>
References: <20260613-nvidia-ahub-v1-1-5b7e85301736@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 08:35:29 +0000
Message-Id: <20260613083529.D9D791F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311266-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1F12567E26C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `allOf` conditional block for `nvidia,tegra124-ahub` fails to c=
onstrain the `reg` property count, allowing missing register regions to sil=
ently pass validation.
--

commit 9a0f1d546144b78d414e177cfaf59f6770e9ba9b
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

dt-bindings: sound: nvidia,tegra30-ahub: Convert to DT schema

Converts the NVIDIA Tegra Audio Hub (AHUB) binding from text to DT schema.
The patch enforces per-SoC differences in reset-names, dma-names, and reg
entry counts using allOf conditionals.

> diff --git a/Documentation/devicetree/bindings/sound/nvidia,tegra30-ahub.=
yaml b/Documentation/devicetree/bindings/sound/nvidia,tegra30-ahub.yaml
> new file mode 100644
> index 0000000000000..82738058f6722
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/nvidia,tegra30-ahub.yaml
[ ... ]
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: nvidia,tegra124-ahub
> +    then:
> +      properties:
> +        "#address-cells":
> +          const: 2

[Severity: Low]
Does the tegra124-ahub conditional need to enforce the reg property count?

The commit message mentions that reg entry counts described in the text
binding are now enforced via allOf conditionals, but this block omits the
reg constraints for tegra124-ahub. It falls back to the top-level
minItems: 2, maxItems: 3, which could allow a tegra124-ahub node with only
2 register entries to incorrectly pass schema validation. Since tegra114-ah=
ub
enforces minItems: 3 and maxItems: 3, should this block do the same?

> +
> +        "#size-cells":
> +          const: 2
> +
> +        resets:
> +          minItems: 21
> +          maxItems: 21

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260613-nvidia-ahu=
b-v1-1-5b7e85301736@gmail.com?part=3D1

