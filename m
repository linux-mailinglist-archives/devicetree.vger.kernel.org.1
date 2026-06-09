Return-Path: <devicetree+bounces-308577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Tm7tEuJvJ2rMwgIAu9opvQ
	(envelope-from <devicetree+bounces-308577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:44:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D69D65BBA2
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 03:44:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HDqYHu1f;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308577-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-308577-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B95D7301FC81
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 01:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37B832C924;
	Tue,  9 Jun 2026 01:41:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 974D83242BE
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 01:41:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780969312; cv=none; b=Ml6qRYxn/XkTldk2AEVhJxVPDva8JEVeQ+Rv/WH6Tk3CSug+JcDsP5ch1h1j5wWL3TFYj/zbZTy0yBZNiTk+vePxBwZz7Y03JHHlXDe9N6s53p12NkG8ZaNtc5172TulNk8dWO49YSi/bQ92uWc/lHdZNchBlowgBVaBJ0DG8ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780969312; c=relaxed/simple;
	bh=hk6bsbBA9vSDl8MI8y+724KOd9U/E0lbrnbd847abfQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=J9hDGK53iD3RFqMpT/k8AoLe6C55R6i4ER8qmDVIrNlMm/A65QEnq26URpo6fiSFbZYJ4t8qVG2kkqqXwB3UrKXXnMErK2st8ln6sk/yWghoHMxhSl+P1UGpHlqD8aHNJSjLB+aNwOTwMMJ668lQevdET7WYe7Tbx/IjTqSxj8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDqYHu1f; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F0EA1F00893;
	Tue,  9 Jun 2026 01:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780969311;
	bh=CFdhcEZBXgtMhO+IcSq3MlxQ10tqMgCQ2p6EsQ4+sYg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HDqYHu1fAGtBL/e9GDdAQINRUIb/3SB61JiWe74gsTSH0FS5wHvon4UfKoWYAaKwp
	 iZfvlZttCk4IoLJhrmfctAHbL85zUK4GoqTXmLb6fBK9mav2m1e8X2OlzJVKqsZ+V2
	 kP2PfQH64gJVW9jYDtl6FuyeB912MFgh8sADHLGMBkVhQSqsB0vuNAdORmmI/ToMKl
	 2G/xeyjsIZYbWL+uofQf0ZK7Q3UXMcVQH+TeuVxN/w9ZfhLPSL6eBZfmuirFr8xsDB
	 fBJFVPr1t/GrSTdALDtQSQlbDahMux9wqTeyjcIwi9IuytZC+Aq2e9DbQOPb/IwJ8x
	 zqc/a39Yj6LaQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 01/11] ASoC: dt-bindings: renesas,fsi: add support
 multiple clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: devicetree@vger.kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org
In-Reply-To: <20260609013107.5995-2-phucduc.bui@gmail.com>
References: <20260609013107.5995-2-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 01:41:50 +0000
Message-Id: <20260609014151.2F0EA1F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308577-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:conor+dt@kernel.org,m:phucducbui@gmail.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5D69D65BBA2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `clocks` property specifies an `items` array with a rigid posit=
ional sequence that contradicts the flexible order allowed by `clock-names`=
 and demonstrated in the example.
--

commit e7db6aae2c19d98ecd80fa5d59fbb27124874059
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: dt-bindings: renesas,fsi: add support multiple clocks

The FSI on r8a7740 requires the SPU bus/bridge clock to be enabled before
accessing its registers. This update adds multiple clocks to properly
describe the hardware clock tree.

> diff --git a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml b/D=
ocumentation/devicetree/bindings/sound/renesas,fsi.yaml
> index df91991699a72..b966b55ff7728 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
[ ... ]
> @@ -38,7 +35,32 @@ properties:
>      maxItems: 1
> =20
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    items:
> +      - description: Main FSI module clock
> +      - description: |
> +          SPU bus/bridge clock. On R8A7740, this clock must be enabled t=
o allow
> +          register access as the FSI block is connected behind the SPU b=
us.
> +      - description: CPG DIV6 functional clocks for FSI port A
> +      - description: CPG DIV6 functional clocks for FSI port B
> +      - description: FSI dividers for port A used for audio clock genera=
tion
> +      - description: FSI dividers for port B used for audio clock genera=
tion
> +      - description: External clock inputs for FSI port A provided by th=
e board
> +      - description: External clock inputs for FSI port B provided by th=
e board
> +

[Severity: Low]
Does this rigid items array cause a regression with dt-schema validation?=20

Defining the items as a list of descriptions enforces strict positional
indexing, meaning the schema expects index 3 to specifically be 'CPG DIV6
functional clocks for FSI port B'. This contradicts the flexible enum defin=
ed
below in clock-names.

[ ... ]
> @@ -69,6 +91,31 @@ required:
> =20
>  unevaluatedProperties: false
> =20
> +allOf:
> +  - $ref: dai-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,fsi2-r8a7740
> +    then:
> +      required:
> +        - clock-names
> +
> +      properties:
> +        clock-names:
> +          minItems: 2
> +          uniqueItems: true
> +          items:
> +            - const: fck
> +            - const: spu
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +

[Severity: Low]
Is this enum-based list in conflict with the strict positional sequence
in the clocks array?

The clock-names property permits these optional clocks to appear
in any arbitrary order, whereas the clocks descriptions require a fixed
sequence.

>  examples:
>    - |
>      #include <dt-bindings/clock/r8a7740-clock.h>
> @@ -77,7 +124,11 @@ examples:
>              compatible =3D "renesas,fsi2-r8a7740", "renesas,sh_fsi2";
>              reg =3D <0xfe1f0000 0x400>;
>              interrupts =3D <GIC_SPI 9 0x4>;
> -            clocks =3D <&mstp3_clks R8A7740_CLK_FSI>;
> +            clocks =3D <&mstp3_clks R8A7740_CLK_FSI>, <&spu_clk>,
> +                    <&fsia_clk>, <&fsiack_clk>, <&fsidiva_clk>,
> +                    <&fsib_clk>, <&fsibck_clk>, <&fsidivb_clk>;
> +            clock-names =3D "fck", "spu", "icka", "xcka", "diva",
> +                         "ickb", "xckb", "divb";

[Severity: Low]
Does this example directly violate the strict positional sequence defined
above in the clocks array?=20

The example provides the clocks in an order (fck, spu, icka, xcka, diva...)
that doesn't match the fixed list, which expects ickb in the 4th position.
This leads to semantically incorrect documentation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609013107.5995=
-1-phucduc.bui@gmail.com?part=3D1

