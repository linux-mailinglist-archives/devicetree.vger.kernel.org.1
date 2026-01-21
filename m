Return-Path: <devicetree+bounces-258046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sOw/KPAMcWmPcQAAu9opvQ
	(envelope-from <devicetree+bounces-258046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:29:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4D25A88F
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 18:29:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 73E485AFB22
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 16:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47084426D36;
	Wed, 21 Jan 2026 16:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbBHm4UM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A233242AD;
	Wed, 21 Jan 2026 16:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769013135; cv=none; b=KzNbx3DBMYzys/MCrZ1KVjpo8W+zDRb/69PKiDQQZ9LilBfKn2097tjQ3JVJoT6r0ApLvzJVsewyrBax+XjmXq3N7kGig+A/eLIhj0mj/BLlDKsr9dG7OvQWMcX9AHAd0J4BJM4/WK3FoYQO/Rfe2fOcL7Ove0NbO/zjcoLv9ik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769013135; c=relaxed/simple;
	bh=urBQxfp8acAC7apC0Egv7eKeUUoROllL5JyUeZCroCI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WM/b2Ra9JuIpq88X2VaZvdwgbQZMg4JW7uU6SAhaDvo57H2mbG67R5yZKxZI9kTBYluEvSIWSeE1AtEdJfGiyWRxTrdDa5w8y4pJs1pgv5QTBni6ydfq2+tRKg626TQ7Ad8GlMQmCd9cS9TdCwIXG3IjiZgauUkbdmNKPNJwsmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbBHm4UM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAE1BC116D0;
	Wed, 21 Jan 2026 16:32:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769013134;
	bh=urBQxfp8acAC7apC0Egv7eKeUUoROllL5JyUeZCroCI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XbBHm4UMVre+ZO7KCmFmi5b9+J4MHIvgeTbx3TdI6bGKcVRIscDltGHlr9mry70FQ
	 /Uky3iWzvHbSRQp42h+g1ZJAEzSn34/5wkbMxIydgZsp4L/7ysk7xiYWsatMDPvZ0E
	 6LLzqvfH4dooLi/XbzR2Mo3NdprvZWVtH/mHOfR2ZTLkgdql11vFC/qx2EHbyR3bC3
	 jDJqPG8t+5ifjy7Ha0vhpo9P3iqwLCqaJrzCcT3txl92jp6FBHy8Zrw4ZOIBZAyxU4
	 4Kv5aqU8cWxIQWzPp27LT2v0wrstC63umKyz7yp5B5i2zHre23kGskE9rS2UFwVwV9
	 k4e2sk8Xg//zA==
Date: Wed, 21 Jan 2026 10:32:13 -0600
From: Rob Herring <robh@kernel.org>
To: "Anton D. Stavinskii" <stavinsky@gmail.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	sophgo@lists.linux.dev, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/8] dt-bindings: sound: sophgo: add CV1800B I2S/TDM
 controller binding
Message-ID: <20260121163213.GA3413426-robh@kernel.org>
References: <20260115-cv1800b-i2s-driver-v1-0-e8b22b8578ab@gmail.com>
 <20260115-cv1800b-i2s-driver-v1-1-e8b22b8578ab@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-cv1800b-i2s-driver-v1-1-e8b22b8578ab@gmail.com>
X-Spamd-Result: default: False [0.54 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-258046-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,outlook.com,perex.cz,suse.com,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DBL_PROHIBIT(0.00)[0.62.182.176:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,devicetree.org:url]
X-Rspamd-Queue-Id: 0C4D25A88F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Jan 15, 2026 at 11:17:38PM +0400, Anton D. Stavinskii wrote:
> Purpose: introduce DT schema for the CPU driver

Please write a better commit msg. Use complete sentences for starters.

> 
> Signed-off-by: Anton D. Stavinskii <stavinsky@gmail.com>
> ---
>  .../bindings/sound/sophgo,cv1800b-i2s.yaml         | 75 ++++++++++++++++++++++
>  1 file changed, 75 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
> new file mode 100644
> index 000000000000..cf30880a62da
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/sophgo,cv1800b-i2s.yaml
> @@ -0,0 +1,75 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/sound/sophgo,cv1800b-i2s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo CV1800B I2S/TDM controller
> +
> +maintainers:
> +  - Anton D. Stavinskii <stavinsky@gmail.com>
> +
> +description: |

Don't need '|' if no formatting.

> +  I2S/TDM controller found in CV1800B / Sophgo SG2002/SG2000 SoCs.
> +
> +properties:
> +  compatible:
> +    const: sophgo,cv1800b-i2s
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#sound-dai-cells":
> +    const: 0
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: i2s
> +      - const: mclk
> +
> +  dmas:
> +    maxItems: 2

dma-names allows 1 entry, but this requires 2?

> +
> +  dma-names:
> +    description: |
> +      Names of DMA channels. May be omitted. If present, one entry
> +      selects a single direction, while two entries select RX and TX.

Drop the first 2 sentences.

> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum: [rx, tx]
> +

> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0

What are these for? You don't have any child nodes with addresses.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - "#sound-dai-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/sophgo,cv1800.h>
> +
> +    i2s1: i2s@4110000 {

Drop unused label.

> +        compatible = "sophgo,cv1800b-i2s";
> +        reg = <0x04110000 0x10000>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        clocks = <&clk CLK_APB_I2S1>,  <&clk CLK_SDMA_AUD1>;
> +        clock-names = "i2s", "mclk";
> +        dmas = <&dmamux 2 1>, <&dmamux 3 1>;
> +        dma-names = "rx", "tx";
> +    };
> +...
> 
> -- 
> 2.43.0
> 

