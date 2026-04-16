Return-Path: <devicetree+bounces-287795-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4HeiHq2q4Gm8kgAAu9opvQ
	(envelope-from <devicetree+bounces-287795-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:23:57 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EDC40C430
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 11:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5C96E309691D
	for <lists+devicetree@lfdr.de>; Thu, 16 Apr 2026 09:18:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4811339A80E;
	Thu, 16 Apr 2026 09:18:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAboXo3C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239B239A7E9;
	Thu, 16 Apr 2026 09:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776331111; cv=none; b=r6qkh6iAyYBEPzTVSEFwzsOz1ruThwz0B8BzUpYaX0dSUa0iUd+d6r0cwlmV3USpTHcqYTAVOJb74lCi6AEqkdzRTnRPVduSh8aBO8FQZeMT1dpEK4SAEZZFaSZR6h40VkqQmimrZpgqVkIDw90cVw894ExBIP7HtYzW3v+yHZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776331111; c=relaxed/simple;
	bh=4U4OAvkECWHeIcBHERmTEVZXXKRg5guY3xSB75Ww/z0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mmpoCcH+J7eqT9hBbIZvH3iG9I49FmXpMo030+xYgF85O4yeeOcaKWMmT3mLqjrHjpXTEAPWCiYL0XIU5t3UevJJxWsOeh3A4tehpccusaqlJd6xxKn87yAneVIqqShBB3PnuVrNrlg1fG1CJ6/JRLQyZNw5H5GHfg0PCiyp1LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAboXo3C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5EEDFC2BCB3;
	Thu, 16 Apr 2026 09:18:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776331110;
	bh=4U4OAvkECWHeIcBHERmTEVZXXKRg5guY3xSB75Ww/z0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uAboXo3CwF9etP73NJHeEYq/LPU9Xai8PIiS6yQAr4kG9Uiq7zA0MSstLchBUQd7J
	 Nooq8WpZNZ4T8vWYFIuQbaNnelgIEonkuE2oQ2UXc5j3N9Lbez9CBgAJuk4S1yUFow
	 yyr7E83yGzrhsfWbAogV7qYL9D1g4mNUpLofqOlEgbyLYoZJtIs9IJbpr0PgUnOXAt
	 O/XBIuXBbr/UN/0wXBvPMuNh84sLjoyKoP41BAn3UEj8Mn2snOAg4KMFFCtz89LeiL
	 JGwtwoSlrkiySYuawIs5ZSezCDksIqn/QXKmnyg/Lbz9tVdmbjofy/OIJShKc2C8eB
	 vzQBkJdc/HRKg==
Date: Thu, 16 Apr 2026 11:18:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Charan Pedumuru <charan.pedumuru@gmail.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: mmc: st,sdhci: convert to DT schema
Message-ID: <20260416-merciful-bug-of-fantasy-f08d00@quoll>
References: <20260409-st-mmc-v1-1-4c54321c3535@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260409-st-mmc-v1-1-4c54321c3535@gmail.com>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-287795-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.138.62.160:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D9EDC40C430
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Thu, Apr 09, 2026 at 07:43:16AM +0000, Charan Pedumuru wrote:
> +properties:
> +  compatible:
> +    oneOf:
> +      - const: st,sdhci
> +      - items:
> +          - const: st,sdhci-stih407
> +          - const: st,sdhci
> +
> +  reg:
> +    minItems: 1
> +    maxItems: 2

replace maxItems with a list with description

> +
> +  reg-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum:

List order is not flexible. The only flexibility is presence of top-mmc-delay

> +        - mmc
> +        - top-mmc-delay
> +
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum:

Same here

> +        - mmc
> +        - icn
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  interrupt-names:
> +    const: mmcirq
> +
> +  pinctrl-names:
> +    const: default

Drop

> +
> +  resets:
> +    maxItems: 1
> +    description: Phandle to reset line of host controller.

Drop description

> +
> +  vqmmc-supply:
> +    description: Regulator supplying I/O voltage (Vcc/Vdd for SD/eMMC).
> +
> +  non-removable:
> +    type: boolean
> +    description:
> +      Indicates a non-removable device (e.g., eMMC). Also used for mmcss config.
> +
> +  bus-width:
> +    description: Number of data lines.
> +    enum: [1, 4, 8]
> +
> +  max-frequency:
> +    enum: [50000000, 100000000, 200000000]
> +    default: 50000000
> +    description:
> +      Maximum bus frequency. Used to configure CCONFIG3 in mmcss.
> +
> +  sd-uhs-sdr50:
> +    type: boolean
> +
> +  sd-uhs-sdr104:
> +    type: boolean
> +
> +  sd-uhs-ddr50:
> +    type: boolean

No, drop all above. Look how MMC bindings are written.

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - interrupts
> +  - interrupt-names
> +  - pinctrl-names
> +

Missing allOf with $ref to mmc-controller

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/clock/stih407-clks.h>
> +    sdhci@9060000 {

Wrong name. Look at other examples. You might need to fix DTS.

Best regards,
Krzysztof


