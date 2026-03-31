Return-Path: <devicetree+bounces-282848-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6FpFO86Gy2l4IgYAu9opvQ
	(envelope-from <devicetree+bounces-282848-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 10:33:18 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DB73662FD
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 10:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0B966304A8F3
	for <lists+devicetree@lfdr.de>; Tue, 31 Mar 2026 08:21:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A12F23CA48F;
	Tue, 31 Mar 2026 08:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lde4PH74"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1FE3B0AFD;
	Tue, 31 Mar 2026 08:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774945270; cv=none; b=kiAhB06apvskYEAw/g3GAjhTfH6PWQ5bg/G8wdqWzq0crj5IhkzhQoHpPoKl7ketWbmywbXslRLCIYLI0Up64k1c/wPkH/2fwga0ICTlsF6iNz0sLtzXZhoYO+5Dm35i31vewH8GlC5wLLm4sfojI6zF4VEUjA77nbAWwerzMh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774945270; c=relaxed/simple;
	bh=DbRAreIvNazq7fUJlTFdsMdk1QTVzgJhSGMqfeKUWuw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NTimfoYMIRg4RXqX1BeQf5M1QQHG0RPgySIiEQjQbdPbFvft4jMYUdCP/6Bj5CTuM7BHT24zqg2UqSD5s6xUO5w6LzbRjM7zwdJVV63gxavrj6e3QgcHpxw9T8y3V/coDYqHGn6vZMVoBrFYwDiK1W8z54kwAIwyu9cYobVJoWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lde4PH74; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8476BC19423;
	Tue, 31 Mar 2026 08:21:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774945270;
	bh=DbRAreIvNazq7fUJlTFdsMdk1QTVzgJhSGMqfeKUWuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lde4PH74cD0jdvfvNKruYxpjcMcANTLYoRHdwBdIABD/iT8KOPIDZhbocPTgxy59o
	 Nk+OCgjqvNt9Ljl3R4Yh9tVDhynBDjOvhdv2a9lS2iOiTdQ+Zz4zq8rT2TBdkpzJEV
	 0VIqpnsna06e+BSkodypUu2DTTMf18IoiaMltnHOilSeaLMeqLvndAt1VmI9NqlbBZ
	 aXV+V9lyGfp2aRedeNB2OTibqS4g5um6lLQ/CxrqXdrUG+ktyaNv8CjZezy8W7LyEr
	 9me7dI35zLOQGjAKi7m54eKKk40x8ueiGhW5cgG6dT66feGUQDczRctl1ZmDAUIPbN
	 dncm/WqftI6qA==
Date: Tue, 31 Mar 2026 10:21:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
	Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
	Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-omap@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 01/11] dt-bindings: regulator: ti,pbias-regulator:
 Convert to DT schema
Message-ID: <20260331-demonic-boisterous-spider-5ed5c6@quoll>
References: <20260330-omap4-fix-usb-support-v2-0-1c1e11b190dc@bootlin.com>
 <20260330-omap4-fix-usb-support-v2-1-1c1e11b190dc@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260330-omap4-fix-usb-support-v2-1-1c1e11b190dc@bootlin.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-282848-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[iki.fi,kemnade.info,baylibre.com,kernel.org,atomide.com,gmail.com,bootlin.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,0.0.0.0:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 01DB73662FD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 30, 2026 at 03:43:58PM +0200, Thomas Richard wrote:
> +$id: http://devicetree.org/schemas/regulator/ti,pbias-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PBIAS internal regulator
> +
> +maintainers:
> +  - Thomas Richard <thomas.richard@bootlin.com>
> +
> +description: |

Do not need '|' unless you need to preserve formatting.

> +  PBIAS internal regulator for SD card dual voltage i/o pads on OMAP SoCs.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - ti,pbias-dra7
> +          - ti,pbias-omap2
> +          - ti,pbias-omap3
> +          - ti,pbias-omap4
> +          - ti,pbias-omap5
> +      - const: ti,pbias-omap
> +
> +  reg:
> +    maxItems: 1
> +
> +  syscon:
> +    description: Phandle of the system control module
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +patternProperties:
> +  '^pbias_*':

That wasn't in old binding and underscore is not allowed, so this needs
explanation. Old binding mentioned only the names.


> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - syscon
> +
> +additionalProperties: false
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pbias-omap2
> +    then:
> +      patternProperties:
> +        '^pbias_*':
> +          properties:
> +            regulator-name:
> +              contains:
> +                enum:
> +                  - pbias_mmc_omap2430
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pbias-omap3
> +    then:
> +      patternProperties:
> +        '^pbias_*':
> +          properties:
> +            regulator-name:
> +              contains:
> +                enum:
> +                  - pbias_mmc_omap2430
> +                  - pbias_sim_omap3
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pbias-omap4
> +    then:
> +      patternProperties:
> +        '^pbias_*':
> +          properties:
> +            regulator-name:
> +              contains:
> +                enum:
> +                  - pbias_mmc_omap4
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - ti,pbias-dra7
> +              - ti,pbias-omap5
> +    then:
> +      patternProperties:
> +        '^pbias_*':
> +          properties:
> +            regulator-name:
> +              contains:
> +                enum:
> +                  - pbias_mmc_omap5
> +
> +examples:
> +  - |
> +    bus {
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +
> +        pbias_regulator: pbias_regulator@0 {

Drop unused labels

Best regards,
Krzysztof


