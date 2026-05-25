Return-Path: <devicetree+bounces-302652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4GX9OXIxFGqUKgcAu9opvQ
	(envelope-from <devicetree+bounces-302652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:24:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 537155C9E7C
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 13:24:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BC77F30078E7
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2026 11:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 951FA372054;
	Mon, 25 May 2026 11:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvE4RoK+"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69313355F41
	for <devicetree@vger.kernel.org>; Mon, 25 May 2026 11:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779708235; cv=none; b=SMlEcWjhDxuZ3Tdu8bCE2QiMpe2NOnt83yWUisrFB6IFmS1eEwtzb5h1L39conelwY6SAFWOSWqOtIaPLC0+uWJx2rZrOIEv8rMkNrIA0CQfRfP98zMX7sWUjVTm1JSyokRbCBW5I8o9dgLjfjtRN+unEOpj/iBwapI+Dcn9XU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779708235; c=relaxed/simple;
	bh=fob8GHAUO4M+MhULPepOwHBPgvEvsl5nnG0tEwqsbZA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QqqkC39ybdKsx4RPwFkI91uaXYLdTOOjubA36tO6dmeaM2mU9Alb7A/EAh5apbUkx9DR75hN2nTmELH7ZSvWkEliCs3Fn9Sa+JbPadhGPHeArRLtBJmY7Y4oXM0jbf0507xjB+0KjZ7s87mOa6XSjexZKReh4rCLK64hReNU4xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvE4RoK+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5DAA1F000E9;
	Mon, 25 May 2026 11:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779708234;
	bh=bcMXvnhW9PBiG8jURJhSPd5xNF2IhQ3cn6xY0uXKga8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CvE4RoK+qrtkp3jj8OVcPRcqnNG58aC08bmu1C6xbmZUU3k5I0m0JL2JRi9iaV9SX
	 Pq1VXdNh3tH3bkvNv9g4Kc4Z1ioMQPDb83Lx2IS7qYevE/vp9uzYiEz14n3cj2pcBB
	 z8WJ1d8hdSNvq28iUZFxVpJXwOv/YncxG+xF1n5jbiGOTDdAWfL4bmUIlt4zihj0ZM
	 LA6sKVBOqN5UBFsvPIGAzbqPVIPhBrWcfGqE9sgi1ADViApNaukcJLLx8wXzmkCV4n
	 H1iALYpGKFSKMUN2aFICBfOX1jKWjV8gUgLKxhw9sacrEx27NTjzDBjprxdHMT9vl3
	 3U0swoyBkB1Dg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 01/18] ASoC: dt-bindings: sound: Add DT binding for
 RZ/G3E sound
Reply-To: sashiko-reviews@lists.linux.dev
To: "John Madieu" <john.madieu.xa@bp.renesas.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260525110230.4014435-2-john.madieu.xa@bp.renesas.com>
References: <20260525110230.4014435-2-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 25 May 2026 11:23:53 +0000
Message-Id: <20260525112353.E5DAA1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302652-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,renesas.com:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 537155C9E7C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] Missing `required` constraints for `interrupts`, `dmas`, and `dma-n=
ames` in `src` pattern properties.
- [Low] Top-level `"#address-cells"` and `"#size-cells"` are defined but un=
used and invalid for the direct child nodes.
--

commit 608c00e35f32aa411be040aeecd6e9cb09cb8264
Author: John Madieu <john.madieu.xa@bp.renesas.com>

ASoC: dt-bindings: sound: Add DT binding for RZ/G3E sound

Add a standalone device tree binding for the Renesas RZ/G3E (R9A09G047)
sound controller.

> diff --git a/Documentation/devicetree/bindings/sound/renesas,r9a09g047-so=
und.yaml b/Documentation/devicetree/bindings/sound/renesas,r9a09g047-sound.=
yaml
> new file mode 100644
> index 0000000000000..d7fa165546985
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/renesas,r9a09g047-sound.yaml

[ ... ]

> +  "#sound-dai-cells":
> +    const: 1
> +
> +  "#clock-cells":
> +    const: 0
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +  clocks:
> +    maxItems: 47

[Severity: Low]
Are these top-level address and size cells necessary?

It appears no direct child nodes of the sound controller (such as ctu, dvc,
mix, src, ssi, or ssiu) use unit addresses or reg properties. The ports
node correctly defines its own cells for its children. Leaving these at the
top level might lead to dtc warnings about avoiding empty address-cells
if device tree writers blindly include them.

[ ... ]

> +  src:
> +    type: object
> +    additionalProperties: false
> +
> +    patternProperties:
> +      "^src-[0-9]$":
> +        type: object
> +        additionalProperties: false
> +
> +        properties:
> +          interrupts:
> +            maxItems: 1
> +
> +          dmas:
> +            maxItems: 10
> +            description:
> +              Must contain a list of pairs of references to DMA
> +              specifiers, one for transmission and one for reception,
> +              repeated for each DMA controller. The dma-engine core
> +              falls through the list to find a free channel.
> +
> +          dma-names:
> +            maxItems: 10
> +            allOf:
> +              - items:
> +                  enum:
> +                    - tx
> +                    - rx

[Severity: Low]
Should there be a required list for interrupts, dmas, and dma-names here?

The schema currently allows src subnodes to pass validation even if they
are missing the interrupts property. However, it looks like the driver
strictly requires an interrupt to be present for an active src node, and
it will fail to probe without it. Should the schema enforce these
properties for src subnodes similar to how it does for ssi subnodes?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260525110230.4014=
435-1-john.madieu.xa@bp.renesas.com?part=3D1

