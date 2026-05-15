Return-Path: <devicetree+bounces-298104-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHGsG3T1Bmo4pgIAu9opvQ
	(envelope-from <devicetree+bounces-298104-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:29:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A954454D54D
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 12:29:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D663130B700E
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:08:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3A52441041;
	Fri, 15 May 2026 10:08:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvMNWzPL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4505A3C5837
	for <devicetree@vger.kernel.org>; Fri, 15 May 2026 10:08:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778839694; cv=none; b=htQiIqdaUZQ7QW+cahGl3ZAXwPcReqlaCTH1oRi/s8xAECJYpRXQxqJmOJsMhiBXpqk08ZlD8rFGl8iBNwnAqtt/ipHMc+xGZ6Nvo9CdSixQOmywXjR/R4wmnnl0hrRZaRgvbfNfZ9mVK7MjaOTibYHXqGTMIwx9FxDDcuERvzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778839694; c=relaxed/simple;
	bh=ES7qA1WnyHdAEaDAZQahh7dvYPpmgDXZ2+S9Mq0ZC+M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fK3JgMqINh9Qy9rHUy3hWsnm0NaqGeM04SVYQoNC85oftxaM/Rh1s8GTo5EEKO0yBcQeoehx86envseQV2hf0O11EQh0CyXfU8CWJG4Id2MMe/9yvIsBgi4bIGjAqWXEyQnzGWwe+U8Dy5rxv0VasYNfXq44LpiDdb4c8/mNGP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvMNWzPL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9B81CC2BCB0;
	Fri, 15 May 2026 10:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778839692;
	bh=ES7qA1WnyHdAEaDAZQahh7dvYPpmgDXZ2+S9Mq0ZC+M=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=VvMNWzPLLiauYcoUMc2Rnk/Xvk5gD9rvMAEhYSTdvf4478zOtUTyZQ85IVKVuqFHI
	 /GxuGMYlX/6o/1XewtkOsEXcz7apMn3WU0Obqz9W0sKTMicURGIeNzo63l9l7gT6tq
	 LUwf6ylVeQd4MWsSkoCyYyQlLO3HgoZMViX64Qz2rXemc+Xyf0EXG2y1CI0J3pVkWP
	 2A9IXN20hwBHTlD+k1ekJeDALZTNazt/zTb4cK1ZWZxHjoSaab/ZN9NW/GeH7vCTVq
	 2p7hwEM4OLJ+T9vqLzf2ZGvxmTmzgK2+mBznXNloxgk3DLQM8U1YpBTsp6yI5hYr+z
	 1qOH2cJyTEqbw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: pinctrl: Add
 aspeed,ast2700-soc1-pinctrl
Reply-To: sashiko-reviews@lists.linux.dev
To: "Billy Tsai" <billy_tsai@aspeedtech.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260515-pinctrl-single-bit-v3-2-e97da4312104@aspeedtech.com>
References: <20260515-pinctrl-single-bit-v3-2-e97da4312104@aspeedtech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 15 May 2026 10:08:05 +0000
Message-Id: <20260515100812.9B81CC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A954454D54D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-298104-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Schema uses `additionalProperties: false` alongside `$ref` instead =
of `unevaluatedProperties: false`.
--

commit f22ff0791aac86f631d0cc5f4662941db457d162
Author: Billy Tsai <billy_tsai@aspeedtech.com>

dt-bindings: pinctrl: Add aspeed,ast2700-soc1-pinctrl

This commit introduces a new devicetree binding schema for the ASPEED
AST2700 SoC1 pin controller. It reuses the standard pinmux and generic
pin configuration schemas.

> diff --git a/Documentation/devicetree/bindings/pinctrl/aspeed,ast2700-soc=
1-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2700-s=
oc1-pinctrl.yaml
> new file mode 100644
> index 0000000000000..76944fd14e2c7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/aspeed,ast2700-soc1-pinct=
rl.yaml
> @@ -0,0 +1,760 @@

[ ... ]

> +patternProperties:
> +  '-state$':
> +    description: |
> +      Pin control state.

[ ... ]

> +    type: object
> +    allOf:
> +      - $ref: pinmux-node.yaml#
> +      - $ref: pincfg-node.yaml#

[ ... ]

> +              - pins
> +    additionalProperties: false

Since this block references pinmux-node.yaml and pincfg-node.yaml, should
this use unevaluatedProperties: false instead? Using additionalProperties:
false might cause standard properties provided by the referenced schemas to
be incorrectly rejected during validation.

> +
> +    properties:
> +      function:

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +
> +allOf:
> +  - $ref: pinctrl.yaml#
> +
> +additionalProperties: false

Similarly, since the root level includes a reference to pinctrl.yaml, does
this also need to be unevaluatedProperties: false?

> +
> +examples:
> +  - |

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260515-pinctrl-si=
ngle-bit-v3-0-e97da4312104@aspeedtech.com?part=3D2

