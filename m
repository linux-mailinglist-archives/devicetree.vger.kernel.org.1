Return-Path: <devicetree+bounces-316721-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gOiIBM0aQmo+0QkAu9opvQ
	(envelope-from <devicetree+bounces-316721-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:12:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8536D6D38
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:12:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316721-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-316721-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 987FE30E92EC
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128763B4EBD;
	Mon, 29 Jun 2026 07:05:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C531D3B19AE;
	Mon, 29 Jun 2026 07:05:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716704; cv=none; b=fkfiqINxXOOYAYgfa4kCqFb7zwOGWhgNWRJFUjrODB6v+JO6QfV6KopqcT80v1FyluEBW6yYWJgN/PQ5HJo6f6X3ZdLt/7Yx/86LWXLVPSPBP6BqN8ohEx9Xgm3GrkEehO1IYJuGHarpdMI7PmkZC6MUfyDJ3U+NaxlyL5jUQ5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716704; c=relaxed/simple;
	bh=bfdO1vBU6urV5FPyWWOGw1w9pfLNUtGXSKNu36pKHC8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gxBlRByy47AH9/FWCvr9lvHNzS6hzWSNjHrVnGlWzTAsbpnQp2TEtSQW/71GDhxfJHXTk3Q600i8XS+dpwZtXQAgo2i+Ol0Bb2b6OJly/IWMrW19ot1bnlzJQlccjk0gEP3Y0VzgQ/DKz+FVAdkTAR4wzEVO4JNL7RJgE2Cniu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 689861F00A3F;
	Mon, 29 Jun 2026 07:05:01 +0000 (UTC)
Date: Mon, 29 Jun 2026 09:04:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
Cc: linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, 
	Ulf Hansson <ulfh@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/9] dt-bindings: mmc: cdns,sdhci: add SD6HC support
 and PHY properties
Message-ID: <20260629-elegant-furry-fossa-1fd2ae@quoll>
References: <20260627201457.12318-1-tanmay.kathpalia@altera.com>
 <20260627201457.12318-3-tanmay.kathpalia@altera.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260627201457.12318-3-tanmay.kathpalia@altera.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316721-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tanmay.kathpalia@altera.com,m:linux-mmc@vger.kernel.org,m:ulf.hansson@linaro.org,m:ulfh@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:yamada.masahiro@socionext.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,quoll:mid,devicetree.org:url,altera.com:email,socionext.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE8536D6D38

On Sat, Jun 27, 2026 at 01:14:47PM -0700, Tanmay Kathpalia wrote:
> Extend the Cadence SDHCI binding to support the sixth-generation SD6HC
> controller. Add the cdns,sd6hc compatible string with two named clocks
> (ciu and biu) and three SD6HC-specific PHY timing properties for iocell
> input/output delay and delay element size.
> 
> Add the altr,agilex5-sd6hc compatible string with three named reset
> lines from the Altera HPS Reset Manager. Introduce per-variant
> constraints so SD6HC and SD4HC each enforce their own clock, reset, and
> PHY property requirements independently.

You just repeated the diff. Instead describe the hardware.

> 
> Signed-off-by: Tanmay Kathpalia <tanmay.kathpalia@altera.com>
> ---
>  .../devicetree/bindings/mmc/cdns,sdhci.yaml   | 122 ++++++++++++++++--
>  1 file changed, 111 insertions(+), 11 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> index 6c7317d13aa6..edd96e1d2bdc 100644
> --- a/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> +++ b/Documentation/devicetree/bindings/mmc/cdns,sdhci.yaml
> @@ -4,21 +4,29 @@
>  $id: http://devicetree.org/schemas/mmc/cdns,sdhci.yaml#
>  $schema: http://devicetree.org/meta-schemas/core.yaml#
>  
> -title: Cadence SD/SDIO/eMMC Host Controller (SD4HC)
> +title: Cadence SD/SDIO/eMMC Host Controller (SD4HC and SD6HC)
>  
>  maintainers:
>    - Masahiro Yamada <yamada.masahiro@socionext.com>
> +  - Tanmay Kathpalia <tanmay.kathpalia@altera.com>
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - amd,pensando-elba-sd4hc
> -          - microchip,mpfs-sd4hc
> -          - microchip,pic64gx-sd4hc
> -          - mobileye,eyeq-sd4hc
> -          - socionext,uniphier-sd4hc
> -      - const: cdns,sd4hc
> +    oneOf:
> +      - description: Cadence SD4HC controller

Drop description, you repeat the fallback compatible, so this is obvious.

> +        items:
> +          - enum:
> +              - amd,pensando-elba-sd4hc
> +              - microchip,mpfs-sd4hc
> +              - microchip,pic64gx-sd4hc
> +              - mobileye,eyeq-sd4hc
> +              - socionext,uniphier-sd4hc
> +          - const: cdns,sd4hc
> +      - description: Cadence SD6HC controller

Same here

> +        items:
> +          - enum:
> +              - altr,agilex5-sd6hc
> +          - const: cdns,sd6hc
>  
>    reg:
>      minItems: 1
> @@ -28,10 +36,12 @@ properties:
>      maxItems: 1
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
>  
>    resets:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
>  
>    # PHY DLL input delays:
>    # They are used to delay the data valid window, and align the window to
> @@ -115,6 +125,25 @@ properties:
>      minimum: 0
>      maximum: 0x7f
>  
> +  # SD6HC PHY timing properties:
> +  cdns,iocell-input-delay:

Use standard unit suffixes from dtschema. I am pretty sure we have
picoseconds.

> +    description: Input delay across IO cells in picoseconds
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 20000   # 20 ns
> +
> +  cdns,iocell-output-delay:
> +    description: Output delay across IO cells in picoseconds
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 0
> +    maximum: 20000   # 20 ns
> +
> +  cdns,delay-element:
> +    description: Delay element size in picoseconds

None of these are deducible from the compatible? IOW, they differ in
each board with the same SoC?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    minimum: 1
> +    maximum: 1000    # 1 ns
> +
>  required:
>    - compatible
>    - reg
> @@ -139,6 +168,77 @@ allOf:
>          reg:
>            maxItems: 1
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: cdns,sd6hc
> +    then:
> +      description: SD6HC variant - use IO-cell and delay element properties
> +      properties:
> +        clocks:
> +          minItems: 2
> +          maxItems: 2
> +        clock-names:
> +          items:
> +            - const: ciu
> +            - const: biu

There is no property like clock-names. Look at the schema/binding.

> +        dma-coherent: true
> +        iommus:
> +          maxItems: 1a

Do not define properties in conditional block, but top level.

> +        cdns,phy-input-delay-sd-highspeed: false
> +        cdns,phy-input-delay-legacy: false
> +        cdns,phy-input-delay-sd-uhs-sdr12: false
> +        cdns,phy-input-delay-sd-uhs-sdr25: false
> +        cdns,phy-input-delay-sd-uhs-sdr50: false
> +        cdns,phy-input-delay-sd-uhs-ddr50: false
> +        cdns,phy-input-delay-mmc-highspeed: false
> +        cdns,phy-input-delay-mmc-ddr: false
> +        cdns,phy-dll-delay-sdclk: false
> +        cdns,phy-dll-delay-sdclk-hsmmc: false
> +        cdns,phy-dll-delay-strobe: false
> +      required:
> +        - clock-names

All this clearly suggests you should have own binding file.

Best regards,
Krzysztof


