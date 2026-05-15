Return-Path: <devicetree+bounces-297986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qCQGGWrVBmpSoQIAu9opvQ
	(envelope-from <devicetree+bounces-297986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:12:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D714F54B1AF
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 10:12:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 524DE3019078
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 08:09:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 941793EF0AC;
	Fri, 15 May 2026 08:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNTOm601"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DD842D5941;
	Fri, 15 May 2026 08:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778832546; cv=none; b=kjmI2jNLgStrVQnyjnB0C/tuOCJWfzDLPcvzqZpZNolNHhNBlDV3MQwAuR16FoJg8NQZsc6LJ1QD2/aGQgyB3/VPEUC3ubyJZCJrVQ5uyXkPK+ts65g8G37CS0fz14WzcrRceMPFftiXd+Qit71bUIfWNPkvuq82sxtVai0auBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778832546; c=relaxed/simple;
	bh=Bg1YT47zyTBWhwh0sSsEf1oPFueOBupCLeeynnys2HI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ozpem2nP5nE+d3vFJRZB6psIpsmK1SJWKv8FSBP8qUXVlKc/B48uHL3A7H94soJwe8KxvDUKSH2pyRDGQ/1+PViOZLYQBvY5nF/rka4+xuz3Z6Y5TcFpFkyBV4RYk2QxQyejXYICxNY+Kl0XaT13MM9Y+Ij838daNQmZbndxVME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNTOm601; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 70295C2BCB0;
	Fri, 15 May 2026 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778832546;
	bh=Bg1YT47zyTBWhwh0sSsEf1oPFueOBupCLeeynnys2HI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vNTOm601qZQyM9NgdondIjlzH01Q1CG7YdS5AgL6NV15huyEn/G5DKJSeDw1NzIVu
	 thjZF1bzS4pQhwkwA07lyUn25QBWDIqArSxr7+EoJ4IAjJKohxBLtRQ8JCqP/A684b
	 p9aoJuB8si12qsbvVcaL8BDgsV8eaIybycR9kQv3qpRKmTIcVhyDFxiZc2H2oiJpF2
	 Trq2LzeONPJPe8tcuiejcDJMBsDW+ioARKNuXmm46Bali1i87BpDyBy0/1GBA/+jxH
	 8LSFT7lLUZHSTQMgkjRv3Fh0+gDzIQ0Y3kcwg4RDhyxX8IQB3cT/2dBeCC7+JbFw0n
	 1pkY+tlnELCkQ==
Date: Fri, 15 May 2026 10:09:03 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jian Hu <jian.hu@amlogic.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jerome Brunet <jbrunet@baylibre.com>, 
	Xianwei Zhao <xianwei.zhao@amlogic.com>, Kevin Hilman <khilman@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 02/10] dt-bindings: clock: Add Amlogic A9 PLL clock
 controller
Message-ID: <20260515-subtle-sepia-tuatara-cfee3d@quoll>
References: <20260511-b4-a9_clk-v1-0-41cb4071b7c9@amlogic.com>
 <20260511-b4-a9_clk-v1-2-41cb4071b7c9@amlogic.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260511-b4-a9_clk-v1-2-41cb4071b7c9@amlogic.com>
X-Rspamd-Queue-Id: D714F54B1AF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,linaro.org,amlogic.com,googlemail.com,vger.kernel.org,lists.infradead.org];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.32.8:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,baylibre.com:email,linaro.org:email,0.0.32.138:email,amlogic.com:email,devicetree.org:url]
X-Rspamd-Action: no action

On Mon, May 11, 2026 at 08:47:24PM +0800, Jian Hu wrote:
> Add the PLL clock controller dt-bindings for the Amlogic A9 SoC family.
> 
> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
> ---
>  .../bindings/clock/amlogic,a9-pll-clkc.yaml        | 110 +++++++++++++++++++++
>  include/dt-bindings/clock/amlogic,a9-pll-clkc.h    |  55 +++++++++++
>  2 files changed, 165 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.yaml
> new file mode 100644
> index 000000000000..4ee6013ba1a1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a9-pll-clkc.yaml
> @@ -0,0 +1,110 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2026 Amlogic, Inc. All rights reserved
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/amlogic,a9-pll-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic A9 Series PLL Clock Controller
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Jian Hu <jian.hu@amlogic.com>
> +  - Xianwei Zhao <xianwei.zhao@amlogic.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - amlogic,a9-gp0-pll
> +      - amlogic,a9-hifi0-pll
> +      - amlogic,a9-hifi1-pll
> +      - amlogic,a9-mclk0-pll
> +      - amlogic,a9-mclk1-pll
> +
> +  reg:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clocks:
> +    items:
> +      - description: pll input oscillator gate
> +      - description: fixed input clock source for mclk_sel_0
> +      - description: u3p2pll input clock source for mclk_sel_0 (optional)

Second clock is also optional. Drop "(optional)" comment, just
confusing.

> +    minItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: in0
> +      - const: in1
> +      - const: in2

Pretty pointless names, drop property.

> +    minItems: 1
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - reg
> +  - clocks
> +  - clock-names
> +
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

No, minItems instead. maxItems is already 3, so what is the point of
redefining it?

> +
> +        clock-names:
> +          maxItems: 3
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - amlogic,a9-gp0-pll
> +              - amlogic,a9-hifi0-pll
> +              - amlogic,a9-hifi1-pll
> +
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 1
> +
> +        clock-names:
> +          maxItems: 1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    apb4 {

soc

> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        clock-controller@8200 {
> +            compatible = "amlogic,a9-gp0-pll";
> +            reg = <0x0 0x8200 0x0 0x20>;
> +            #clock-cells = <1>;
> +            clocks = <&scmi_clk 0>;
> +            clock-names = "in0";
> +        };
> +
> +        clock-controller@8330 {
> +            compatible = "amlogic,a9-mclk0-pll";
> +            reg = <0x0 0x8330 0x0 0x14>;
> +            #clock-cells = <1>;
> +            clocks = <&scmi_clk 4>,
> +                     <&scmi_clk 8>;
> +            clock-names = "in0", "in1";

One example is enough, you have exactly the same properties.


Best regards,
Krzysztof


