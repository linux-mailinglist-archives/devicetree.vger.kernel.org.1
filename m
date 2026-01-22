Return-Path: <devicetree+bounces-258240-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMhDFnrbcWk+MgAAu9opvQ
	(envelope-from <devicetree+bounces-258240-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:10:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id B583F62DDC
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 09:10:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 19B677A9E21
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 08:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA712480327;
	Thu, 22 Jan 2026 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYx3cLRb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CA5133B6F4;
	Thu, 22 Jan 2026 08:01:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769068914; cv=none; b=jHMEk4MtnzxVZ7drKVOVQnPlxB7sYwsOHPv1EE71HhGAgjPU5V35l3luffA4Qlut+Jl9JePLabGxXWNujnQKpzqX+Po2SPiNjlUVdYQ2mGYT71u15s92F6cd27CiJVdmkne6WojZK+/5Odlc/Nf4BxA5q36K8M2ebcnQ6MTswaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769068914; c=relaxed/simple;
	bh=q9nUtkJk1o0FWrLES1FCP+/8uIsHDZ/8HoWrHOW7euI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HvcsFCotuvFE4C6q73wGoY32X3Tvg1kYFk0DRLKllWAZ+D9c7av0q9F7RBDdgmVLLVA25ANejTvJyATotsGOnJuich3iczaxNcOlWP6/23G7Uhr/GwVmeFNsz943ySMigxrgCt4+jXEvAPqqrKhzOqNcnOnfbUpDwoe6zmzl0pM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYx3cLRb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 82500C116C6;
	Thu, 22 Jan 2026 08:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769068914;
	bh=q9nUtkJk1o0FWrLES1FCP+/8uIsHDZ/8HoWrHOW7euI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kYx3cLRbrT+PWwM+fkHbtcD5DA355RZD0Su0kGLsrkynpnnlLVQNUSXvnATE6FYbr
	 96sTwSlmFMJHEyaHUTsSweR7wwNGaQW6K1SpJKH300TZoG3pUSpA9Wa97Xl2i1JDzC
	 gIwINE+bWgCPzNBK3LoeA1fp4+rhOOZS4u6/QF13KtqkwJhJFsyTIOdY0JvEoYfLSj
	 oQrZyHHotyO8a1I0TDH5yyaLA7gcQOny6ybZkE4ZJoQ4+Z4YdBoPC6VAKP1DL04ahv
	 aHHbo6HTiakDu3QQexsmbJOHfAlQ+azeTJqGWvgvjiqkit55uWGwCD40rIaYyMCKsI
	 3e7JiItHb7f9w==
Date: Thu, 22 Jan 2026 09:01:51 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Nadi Ke <kenadicanady@gmail.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, orsonzhai@gmail.com, 
	baolin.wang@linux.alibaba.com, zhang.lyra@gmail.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: clock: sprd: add SC9832E clock
 controller
Message-ID: <20260122-unselfish-charming-jaguar-dfee77@quoll>
References: <20260121071412.256215-1-kenadicanady@gmail.com>
 <20260121071412.256215-2-kenadicanady@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260121071412.256215-2-kenadicanady@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258240-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,linux.alibaba.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_PROHIBIT(0.00)[1.72.16.96:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns,devicetree.org:url,402b0000:email,403c0000:email]
X-Rspamd-Queue-Id: B583F62DDC
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 03:14:11PM +0800, Nadi Ke wrote:
> The SC9832E clock architecture involves several PLLs and gates.
> Some gate clocks are located within the PMU global register area.
> These are modeled as part of the system controller node to reflect
> the hardware layout where clock control bits are interleaved with
> other system control registers.
> 
> Signed-off-by: Nadi Ke <kenadicanady@gmail.com>
> ---
> Changes in v2:
>  - Removed the artificial 'sprd,sc9832e-pmu-gate' child node definition.
>  - Added '#clock-cells' to the 'sprd,sc9832e-glbregs' node definition.
>  
>  .../bindings/clock/sprd,sc9832e-clk.yaml      | 182 ++++++++++++++++++
>  include/dt-bindings/clock/sprd,sc9832e-clk.h  | 177 +++++++++++++++++
>  2 files changed, 359 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
>  create mode 100644 include/dt-bindings/clock/sprd,sc9832e-clk.h
> 
> diff --git a/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
> new file mode 100644
> index 000000000..06c09b184
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/sprd,sc9832e-clk.yaml
> @@ -0,0 +1,182 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/sprd,sc9832e-clk.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc SC9832E Clock Controllers
> +
> +maintainers:
> +  - Orson Zhai <orsonzhai@gmail.com>
> +  - Baolin Wang <baolin.wang7@gmail.com>
> +  - Chunyan Zhang <zhang.lyra@gmail.com>
> +  - Nadi Ke <kenadicanady@gmail.com>
> +
> +description: |
> +  Unisoc SC9832E Clock Controllers.
> +
> +  The SC9832E clock architecture uses a mix of independent controllers and
> +  sub-nodes within a system controller.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - const: sprd,sc9832e-glbregs
> +          - const: syscon

This does not look like related to this binding and size of your
if:then: cases confirm this.

> +      - enum:
> +          - sprd,sc9832e-ap-clk
> +          - sprd,sc9832e-aon-clk
> +          - sprd,sc9832e-apahb-gate
> +          - sprd,sc9832e-aonapb-gate
> +          - sprd,sc9832e-apapb-gate
> +          - sprd,sc9832e-pll
> +          - sprd,sc9832e-mpll
> +          - sprd,sc9832e-dpll
> +          - sprd,sc9832e-rpll
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 6
> +    description:
> +      The input parent clock(s) phandle for this clock controller.

Drop description completely, redundant.

> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 6
> +
> +required:
> +  - compatible
> +  - '#clock-cells'

Don't mix style of quotes, ' or "

> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: sprd,sc9832e-ap-clk
> +    then:
> +      required:
> +        - reg
> +        - clocks
> +        - clock-names

So these three are required ALWAYS, so they should be placed in
top level required: block.

> +      properties:
> +        clocks:
> +          items:
> +            - description: External 26MHz clock
> +            - description: External 1MHz clock
> +        clock-names:
> +          items:
> +            - const: ext-26m
> +            - const: ext-1m
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: sprd,sc9832e-aon-clk
> +    then:
> +      required:
> +        - reg
> +        - clocks
> +        - clock-names
> +      properties:
> +        clocks:
> +          items:
> +            - description: External 4.3MHz clock
> +            - description: External 26MHz clock
> +            - description: External 32kHz clock
> +            - description: External 6.5MHz clock
> +            - description: External 13MHz clock
> +            - description: External 250kHz clock
> +        clock-names:
> +          items:
> +            - const: ext-4m3
> +            - const: ext-26m
> +            - const: ext-32k
> +            - const: ext-6m5
> +            - const: ext-13m
> +            - const: ext-250k
> +
> +  - if:
> +      properties:
> +        compatible:
> +          enum:
> +            - sprd,sc9832e-pll
> +            - sprd,sc9832e-mpll
> +            - sprd,sc9832e-dpll
> +            - sprd,sc9832e-rpll
> +            - sprd,sc9832e-apahb-gate
> +            - sprd,sc9832e-aonapb-gate
> +            - sprd,sc9832e-apapb-gate
> +    then:
> +      required:
> +        - reg
> +        - clocks
> +        - clock-names
> +      properties:
> +        clocks:
> +          items:
> +            - description: External 26MHz clock
> +        clock-names:
> +          items:
> +            - const: ext-26m
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: sprd,sc9832e-glbregs
> +    then:
> +      required:
> +        - reg
> +        - "#clock-cells"
> +        - clocks
> +        - clock-names
> +      properties:
> +        "#clock-cells":
> +          const: 1

Pointless.

> +        clocks:
> +          items:
> +            - description: External 26MHz clock
> +        clock-names:
> +          items:
> +            - const: ext-26m

So this is exactly the same as other if... This is poor code still, like
you were not sure what you want to achieve here.

I suggest to slow down and look at other bindings first.


> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sprd,sc9832e-clk.h>
> +
> +    ap_clk: clock-controller@21500000 {
> +      compatible = "sprd,sc9832e-ap-clk";
> +      reg = <0x21500000 0x1000>;
> +      clocks = <&ext_26m>, <&ext_1m>;
> +      clock-names = "ext-26m", "ext-1m";
> +      #clock-cells = <1>;
> +    };
> +
> +    pll: clock-controller@403c0000 {
> +      compatible = "sprd,sc9832e-pll";
> +      reg = <0x403c0000 0x1000>;
> +      clocks = <&ext_26m>;
> +      clock-names = "ext-26m";
> +      #clock-cells = <1>;
> +    };

Drop node, same as previous one.

I did not ask to grow the examples!

> +
> +    pmu_controller: syscon@402b0000 {
> +      compatible = "sprd,sc9832e-glbregs", "syscon";

Drop node, same as previous one.

> +      reg = <0x402b0000 0x4000>;
> +      #clock-cells = <1>;
> +      clocks = <&ext_26m>;
> +      clock-names = "ext-26m";
> +    };
> +...

Best regards,
Krzysztof


