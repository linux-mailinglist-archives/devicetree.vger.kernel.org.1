Return-Path: <devicetree+bounces-269086-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LN4KF9DoWndrgQAu9opvQ
	(envelope-from <devicetree+bounces-269086-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:10:23 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 03B1A1B3A85
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 08:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DCEDD3010490
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 07:10:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 219CF36A009;
	Fri, 27 Feb 2026 07:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOqvjHTI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F322227FB1F;
	Fri, 27 Feb 2026 07:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772176216; cv=none; b=Mn6hoHjAZ2DTG0hAzNL9p/DlGfK+ZBcpOScmMHwH1SLIoaY48DGa40XRZenZbtgdb4rCjeLFB4o9dfpM6IZq12GqIdaxI9h/lI/kQz0zZpYUipFoLKO7GD6LSPJ2jsqz6CokfYhPdCvR6UGPmP8oiJUw1SsmGslBxqbmSnLfMkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772176216; c=relaxed/simple;
	bh=93SPmf8E1jF/TUfDZS9PtOn4hN3P8OgjiQA0WaPpkyc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kozGweQGFFekV56vSMuZRROc4WrIrdIomk+Ua6KsrRoVlfJy1HbQTjNJdF+m+PLTmtiwP/TtPyihzw1E79XaSZ/xvedoSSnSfgvwamoe7W6iGyt7U8sSZ6pNi1ydjh0yDPHreYzj7AepeR9QDRch0D0+fX+KKduapPT+ip+jSqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOqvjHTI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EB63C116C6;
	Fri, 27 Feb 2026 07:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772176215;
	bh=93SPmf8E1jF/TUfDZS9PtOn4hN3P8OgjiQA0WaPpkyc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lOqvjHTIbBmGaLmKo7MKt67M5+Af+GJ86NRwN2OlqEJLzdbtTezhxOjbSjJZP+xAs
	 SOZErT7krFSIlClMQH0xvETYKDJOpapuDbdCtTZSTSWGC8nt8nqpJNkgapfjQQDACw
	 d1Lx7lLoAcgJOYBlHEMNH0OU7AKP/WTMdKXZyYZzcx0ytP6la3SlCiXC3fH9WOEbJw
	 oFi2oLFSaoUuE+grq3S68v8jO7xA6iCmPBD5ny1o2eGrcvZhBJXjb3t3YxumCGQIAg
	 CTL5f2NtnpBhwgj1RoEpk/UyD1mf0sMQWtZJ6As3q0P8c3K8caAMYahDY0HMawDNcv
	 EuQGP1TFrpOyw==
Date: Fri, 27 Feb 2026 08:10:13 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: jk@codeconstruct.com.au, andriy.shevchenko@linux.intel.com, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Rayn Chen <rayn_chen@aspeedtech.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
	openbmc@lists.ozlabs.org
Subject: Re: [PATCH v25 1/4] dt-bindings: i2c: Split AST2600 binding into a
 new YAML
Message-ID: <20260227-fragrant-industrious-aardwark-bdb63b@quoll>
References: <20260225-upstream_i2c-v25-0-9f4bdd954f3f@aspeedtech.com>
 <20260225-upstream_i2c-v25-1-9f4bdd954f3f@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260225-upstream_i2c-v25-1-9f4bdd954f3f@aspeedtech.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269086-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.80:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,devicetree.org:url,aspeedtech.com:email]
X-Rspamd-Queue-Id: 03B1A1B3A85
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 05:19:38PM +0800, Ryan Chen wrote:
> The AST2600 I2C controller introduces a completely new register layout
> with separate controller and target register blocks, unlike the mixed
> register layout used by AST2400/AST2500.
> 
> To describe this properly, split out the AST2600 I2C binding into its
> own YAML file. The compatible string remains unchanged.

But you made other changes in the binding. You must list them, because
otherwise it sounds like you only SPLIT. It's not true. You actually
changed the binding in at least two places, maybe more.

> 
> The example section is updated to reflect the actual AST2600 SoC
> register layout and interrupt configuration (aspeed-g6.dtsi,
> lines 885-897):
> 
> - I2C bus and buffer register offsets
>   - AST2600 I2C controller register base starts at 0x80, and the
>     buffer region is located at 0xc00, per the AST2600 SoC register map.
> 
> - Interrupt configuration
>   - AST2600 I2C controllers are connected to the ARM GIC, not the legacy
>     internal interrupt controller.

Example is irrelevant, don't mention it. We discuss here binding.

> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  .../bindings/i2c/aspeed,ast2600-i2c.yaml           | 62 ++++++++++++++++++++++
>  .../devicetree/bindings/i2c/aspeed,i2c.yaml        |  3 +-
>  2 files changed, 63 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
> new file mode 100644
> index 000000000000..077be85137c9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/aspeed,ast2600-i2c.yaml
> @@ -0,0 +1,62 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/aspeed,ast2600-i2c.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ASPEED I2C on the AST26XX SoCs

s/26XX/2600/ probably

> +
> +maintainers:
> +  - Ryan Chen <ryan_chen@aspeedtech.com>
> +
> +allOf:
> +  - $ref: /schemas/i2c/i2c-controller.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      - aspeed,ast2600-i2c-bus
> +
> +  reg:
> +    items:
> +      - description: controller registers
> +      - description: controller buffer space
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-frequency:
> +    description: Desired operating frequency of the I2C bus in Hz.
> +    minimum: 500
> +    maximum: 4000000
> +    default: 100000
> +
> +  resets:
> +    maxItems: 1
> +
> +required:
> +  - reg
> +  - compatible
> +  - clocks
> +  - resets
> +  - interrupts
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/aspeed-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    i2c@80 {
> +      #address-cells = <1>;
> +      #size-cells = <0>;

Please follow DTS coding style.

Best regards,
Krzysztof


