Return-Path: <devicetree+bounces-295986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kIgDAg+qAmqkvQEAu9opvQ
	(envelope-from <devicetree+bounces-295986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:18:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 547A0519880
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 06:18:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 035F6300D966
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:18:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9345E2BD01B;
	Tue, 12 May 2026 04:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jQeAS0Fv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 702EC1E49F
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 04:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778559500; cv=none; b=XpDTYeJfiRAfbJEL6MGYj+8DqcvVmMuCQHYwGZjPPGnC1SSq1bteHIe+Nq+zNZHFqcDHhOam8njqYDzoW4OzCnl+7F55hnv4haNmQygmoUj7UzmTlsDv+HluKVMhxHyew6fNeKrgQzwcTy+hIABeygByJUYvPOrAH4k66TfE9SU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778559500; c=relaxed/simple;
	bh=6OBqOqnFhbHjAXGPFI1F382wZFUlmxOgbBiThnHiQzw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AWT0drSuodci/XRiWO3fF01cX89oWXOLM/VXIPV5Fj1FyL27P6yYqcNgfbZ8/IFyccQgO+zU9+itTaTTU2PUX93BO/kyIDctYoLYqibNbP3PhvemqpeJhyE0IYE0yBEXNiTS5DnTdGJjMAqmKBLn4rf3D3+qVhOQv09mn5a+iV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQeAS0Fv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19BD2C2BCB0;
	Tue, 12 May 2026 04:18:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778559500;
	bh=6OBqOqnFhbHjAXGPFI1F382wZFUlmxOgbBiThnHiQzw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=jQeAS0FvfuxEmYvEH+WqsYTobNg6oDPorQFWC4t78Nd3wH9WNiefJ/Yv1nKjp9fwt
	 eMVVFVYHGf7O91EPy+dx9/zShxIqrugbgaTRJmwOBsDRedAtUwal1/rqHHDfGfs3in
	 JJZys23bdhuIbszm8tUWaf5t+FxxecsurkdEp0kx5v30ILzWVUnSeuGepLjvKX8V+/
	 WT3TsG+eUeLD/7KUwDWl4QFTViw0/iF25zErEYtqgg2OZLpXEkZ+Fzjq8ZUwanDdUb
	 tyiZQhknS0cntK2p3P0VVZIpRD2l+KnL9PXhHgcfFmcGHBoIJzV2okvgqbvNhRtVhJ
	 4UrVnwc4DpFtA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: clock: Add Amlogic A9 PLL clock
 controller
Reply-To: sashiko@lists.linux.dev
To: "Jian Hu via B4 Relay" <devnull+jian.hu.amlogic.com@kernel.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260511-b4-a9_clk-v1-2-41cb4071b7c9@amlogic.com>
References: <20260511-b4-a9_clk-v1-2-41cb4071b7c9@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 04:18:19 +0000
Message-Id: <20260512041820.19BD2C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 547A0519880
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,amlogic.com:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,jian.hu.amlogic.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema conditional block for MCLK PLLs fails to enforce the =
required second clock input, allowing incomplete device tree nodes to pass =
validation.
--

commit 5fa007b81417dc37662d2d766cd8ecfc23758d15
Author: Jian Hu <jian.hu@amlogic.com>

dt-bindings: clock: Add Amlogic A9 PLL clock controller

This commit adds the PLL clock controller device tree bindings for the
Amlogic A9 SoC family.

> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.=
yaml b/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.yaml
[ ... ]
> +  clocks:
> +    items:
> +      - description: pll input oscillator gate
> +      - description: fixed input clock source for mclk_sel_0
> +      - description: u3p2pll input clock source for mclk_sel_0 (optional)
> +    minItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: in0
> +      - const: in1
> +      - const: in2
> +    minItems: 1
[ ... ]
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,a9-mclk0-pll
> +              - amlogic,a9-mclk1-pll
> +
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +
> +        clock-names:
> +          maxItems: 3

Does this conditional block also need to specify minItems: 2 for the clocks
and clock-names properties?

The global property definition describes the second clock as a fixed input
clock source without the (optional) designation given to the third clock.

Since the global minItems is 1, omitting a stricter minItems constraint
here causes a schema validation regression where an incomplete device tree
node specifying only a single clock for an MCLK PLL will silently pass,
even though it is missing the mandatory second input.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511-b4-a9_clk-=
v1-0-41cb4071b7c9@amlogic.com?part=3D2

