Return-Path: <devicetree+bounces-308995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dnsjI9z/J2rf6wIAu9opvQ
	(envelope-from <devicetree+bounces-308995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:58:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C9365FBF9
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 13:58:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ZN0jjj1b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308995-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-308995-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CCE383002B71
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 11:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F2DE3F9298;
	Tue,  9 Jun 2026 11:50:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2530F3FC5B9
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 11:50:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781005834; cv=none; b=ZDBLU5rcYR7gsZYw62u70ppG0368gcgkNhSnN3F0uYZZKjYE17FySyE9sSX/nyxnV2Hc3xNGnG/HFaY2UjHHvjXHH6w2lUhyoZ72sptEO5O10AYJcfMtf9at9lRI2xO3r6skbv6DFYdqw0YkIttz8S95NRk2VtjvxN11pIUQLrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781005834; c=relaxed/simple;
	bh=e3i8EXH0z6awCSE/2faX2xu2Op+OzamloI/0L+wejQE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ryWVZagqZTQJ/UZ219OH1TGWFnRzfQD081NXjq+ilzjWC88PJE1WdnjptlOX3MdNE4A9mf4Je1hx50Q9TLv60xmXWYCi8VZPZaTsPZYqjoYQgrdpHNAzVMGwaEJmrZ/RKyT2qv8JCkBB5+2PMKxqTgQKjkWh8XOmi7+fDUK7uI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZN0jjj1b; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EEFC1F00893;
	Tue,  9 Jun 2026 11:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781005832;
	bh=fY4pugE/2TECDaf96tCmITZPoAv7RbnPMN5y03nxFFA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ZN0jjj1bIqglXl0na/GWdrAyabf1qGzzf1ACYgBg20x604P50WVsMaopBd18dxcm0
	 YLixj0Nf+dsK2n9XGXsRfApuiDoeQTqnfhE/8KZGNmUjf4iZBPaIPQSH9BFk3/XnlA
	 iIgLpMxwqQ+6GTghB+93hFeD6sreImX9HRzo0aA/0pKkI+geaelTisgX1/3HUBE7h7
	 GBfYny1zIqiz962MpkvRzS0MjggtJbidfklo53qS2RANIjTbAbDcxsU40/DhxLbm7y
	 8fziegaGUtQb2bWoUjH0uKxKhsz9oMB/3jgOuOJDWxsaWiOFRHcGD4jvKRqVMzm3sr
	 uZM4BOPihHjkg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 01/11] ASoC: dt-bindings: renesas,fsi: add support
 multiple clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: phucduc.bui@gmail.com
Cc: conor+dt@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260609113836.45079-2-phucduc.bui@gmail.com>
References: <20260609113836.45079-2-phucduc.bui@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 11:50:31 +0000
Message-Id: <20260609115032.3EEFC1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-308995-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:phucduc.bui@gmail.com,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:phucducbui@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82C9365FBF9

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing schema constraints for `renesas,fsi2-sh73a0`.
- [Medium] Device tree schema mismatch between positional `clocks` descript=
ions and flexible `clock-names`.
--

commit f87e156c63c67f6faedd026ab0b5578543349e89
Author: bui duc phuc <phucduc.bui@gmail.com>

ASoC: dt-bindings: renesas,fsi: add support multiple clocks

This commit updates the FSI binding to support multiple clocks to properly
describe the hardware clock tree, including the SPU bus/bridge clock and
various CPG DIV6 functional clocks. It documents the clocks supported by
the FSI driver for the sh73a0 and r8a7740 variants.

> diff --git a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml b/D=
ocumentation/devicetree/bindings/sound/renesas,fsi.yaml
> index df91991699a72..803945b7f82f0 100644
> --- a/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
> +++ b/Documentation/devicetree/bindings/sound/renesas,fsi.yaml
> @@ -9,9 +9,6 @@ title: Renesas FIFO-buffered Serial Interface (FSI)
>  maintainers:
>    - Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> =20
> -allOf:
> -  - $ref: dai-common.yaml#
> -
>  properties:
>    $nodename:
>      pattern: "^sound@.*"

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
> +  clock-names:
> +    minItems: 1
> +    maxItems: 8
> +    items:
> +      enum:
> +        - fck  # Main FSI module clock
> +        - spu  # optional SPU bus/bridge clock
> +        - icka # optional CPG DIV6 functional clocks for FSI port A
> +        - ickb # optional CPG DIV6 functional clocks for FSI port B
> +        - diva # optional FSI dividers for port A used for audio clock g=
eneration
> +        - divb # optional FSI dividers for port B used for audio clock g=
eneration
> +        - xcka # optional External clock inputs for FSI port A provided =
by the board
> +        - xckb # optional External clock inputs for FSI port B provided =
by the board

[ ... ]

> @@ -69,6 +91,30 @@ required:
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

[Severity: Medium]
The commit message states that both the sh73a0 and r8a7740 variants define
the SPU DIV6 clock control register, but is the renesas,fsi2-sh73a0
compatible string missing from this conditional block?

If the condition restricts the clock validation rules entirely to
renesas,fsi2-r8a7740, the sh73a0 variant would be left without any
enforcement of the required fck and spu clocks, allowing improperly
configured device trees to silently pass schema validation but fail
at runtime.

> +    then:
> +      required:
> +        - clock-names
> +
> +      properties:
> +        clock-names:
> +          minItems: 2
> +          items:
> +            - const: fck
> +            - const: spu
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]
> +            - enum: [icka, ickb, diva, divb, xcka, xckb]

[Severity: Medium]
Does the use of an unordered enum list for clock-names create a structural
mismatch with the strictly positional descriptions defined in the clocks
array above?

Because dt-schema correlates array properties by index, a valid unordered
list of optional clocks might be mismatched with incorrect descriptions.
Additionally, defining sequential items with identical enum lists permits
invalid configurations with duplicate clock entries to pass validation.

> +
>  examples:
>    - |
>      #include <dt-bindings/clock/r8a7740-clock.h>
> @@ -77,7 +123,11 @@ examples:
>              compatible =3D "renesas,fsi2-r8a7740", "renesas,sh_fsi2";
>              reg =3D <0xfe1f0000 0x400>;
>              interrupts =3D <GIC_SPI 9 0x4>;
> -            clocks =3D <&mstp3_clks R8A7740_CLK_FSI>;
> +            clocks =3D <&mstp3_clks R8A7740_CLK_FSI>, <&spu_clk>,
> +                    <&fsia_clk>, <&fsiack_clk>, <&fsidiva_clk>,
> +                    <&fsib_clk>, <&fsibck_clk>, <&fsidivb_clk>;
> +            clock-names =3D "fck", "spu", "icka", "xcka", "diva",
> +                         "ickb", "xckb", "divb";

For instance, this example places xcka at index 3. Would this violate the
strict positional schema since index 3 in the clocks array is explicitly
described as "CPG DIV6 functional clocks for FSI port B"?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609113836.4507=
9-1-phucduc.bui@gmail.com?part=3D1

