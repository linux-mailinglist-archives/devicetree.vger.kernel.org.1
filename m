Return-Path: <devicetree+bounces-270143-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aJgIH6+8pWn8FQAAu9opvQ
	(envelope-from <devicetree+bounces-270143-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:37:03 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFA51DCFCF
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 17:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ABE3F3034614
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 16:32:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B84B2FE58F;
	Mon,  2 Mar 2026 16:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="C+s9xaCV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2F12E6CAB
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 16:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772469141; cv=none; b=SKMh6dHOhCCz1+8GKj6KNQUResZRBGxX5ykuyfKnTkbmqLIstH2ho4Ejwv25Vlr0B7F4A4ygYbJBMKuGDBkImKXIh6ady54J9FvWqP0gMsqIHUuajQLGXhpaFZPoaAj5zrHrx6pKN63hyhpzaE92ngyx47Ng46Gopnv+cw7yzsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772469141; c=relaxed/simple;
	bh=WTJ3pzdwIneOX06IoFSpJpP/ij3N5ThgvRmHQQVgZdw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BlnrjycAh/hf5Gw69Kopl9yBBd3QsD24mUF6NgZKD0yMLIR2gqvM5Qocd+mtyg+mlB0VpUGPDewh2PMIbiMfabVfbX77yHCHPDa/HS+8puH0pa1uaxEUIDBddff3ofbtN65S3JjgXrWN35+d4qPPixvg2VS8uI4mC/U02HZffEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=C+s9xaCV; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-48375f1defeso35357285e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 08:32:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772469138; x=1773073938; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6vgVgq/PKL42P9mqoX80JnTj9f0Sx394ufpp39qX55w=;
        b=C+s9xaCVLFQDE5pK8Sk8Y/tOCYGcF+EmfdMaf9f31qd7lRzfaNiQ/7pOgXAMWuXdeW
         l07YTl6mk83iSTWbwzi2T8ddWxNQz+mzVZcvHoiAz5eMN0nxSqU4DZJ1L5eKJjG6VGI8
         MZzPHS6K4BYznLWO/FWGGJyJ7EI+4yoFy4Wc7URl8U1msGnFnC55aiB/vw/LOPa7Kf4R
         f8qShO+/eKfv33mXCazLIzA7Qnc7fqnHiYnT+vYm3XPZH8s6oa6QqXEwJHJqmH24KWi4
         f/8ok7qkh6MwZ/y3hWMW8p5SGdIo4pFa5f89zZJBbjSxFTxjTV+tIHB3KFR2rxZzT981
         YwXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772469138; x=1773073938;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6vgVgq/PKL42P9mqoX80JnTj9f0Sx394ufpp39qX55w=;
        b=HN7uMVZesncdnTwO1X2ZoZnSWOyVtfqG6aq9W8qnwiKCn0OgaGNgnKGNPLGz6sFs8a
         5wKTa/DVR0klCRMuJaxJxsVIufwzio2fCAD6mpoilfJAskLR/FxD/Dd+m3ZF47Kb3aoe
         q6GkclBLUOIUAh0jZc7RcuEgMzKBMnu6Y/nygVES5vfOSBopdweW2wClftFnYcvKJbV9
         hDGtFHNPNmgk+d7r6x9jQSoTB+teHOdrH2WLLxEbYYXnr3dS1B22sjQJr8E7YC7m4mmz
         HPlWfoXwi2vQjaIL/13IimkmznB8wgYYGncjj1AqPrA/qGCn/OP11ee7+xooeJvz1cPd
         xtgA==
X-Forwarded-Encrypted: i=1; AJvYcCVhk01RZzZ5xbH7Tsh9Mfyz/0YoZ0poRVGSHIzIHJMM4JAuUq/Geiqe0wG16llY9hEQkupXzMsm5AdC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3oU0tjUL0zUMYaQEHuR7hTyhi7FEiE2vR29Ac3rQ9TH74f3s6
	voJBlajlScU4oAI109YopzV2zQ6ZnQh+bh3GtCasE+7VWmkqGl7b3je0tSv3nVREDzKYAGS2KRm
	ixNpK
X-Gm-Gg: ATEYQzyDnTP7Sl6er67QyAGs/YpwZZHAz3YKhd77iJxqvSYZZz70C7xCaOnf6qj+Am4
	CNjz3kfBheCB81qYl4gAKhsSBltqGhipt8mRPF+w2iNvOYtmw8As9POkccRG0/0WT2W+VUgkJlp
	i3koK/Faz+GN/N4GPKmaEPtu2sYuLnQFgSpZwljE80olqQiTzuXt8XZIGwsUGIosoNN0vRMgnYY
	n9leyi1+sAsMrhTpg6yZNjNYZHjlJZsxxmv6T6PYV/S2JFJwSqIWFDk/X0qAHo+ilP0jn/fboUL
	vVqP3HbMAMLR8AMAqKI0KMzEdQ5TInWtCC3kz/vtGvFGFeQNFLbiihAZiEsWq+E37pd2hX0DcOo
	q+FvDgG8bovT4Cs4Hy5AZ6GEIkqKV3sN2FOx17tn6Re/cnlP8GDpiG12S2+CSpwSi9AV5nVqEwq
	v7sYJFR5WRJAlHiQNbP9yZCw63uHueMV5EScJc
X-Received: by 2002:a05:6000:402c:b0:439:b55d:b0e3 with SMTP id ffacd0b85a97d-439b55db2e6mr9320134f8f.42.1772469137917;
        Mon, 02 Mar 2026 08:32:17 -0800 (PST)
Received: from [172.19.170.194] ([213.233.104.147])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439b503424fsm11923248f8f.22.2026.03.02.08.32.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Mar 2026 08:32:16 -0800 (PST)
Message-ID: <712feb0d-2855-444b-852b-49920ebfa4e9@tuxon.dev>
Date: Mon, 2 Mar 2026 18:32:14 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 06/15] dt-bindings: PCI: renesas,r9a08g045s33-pcie:
 Document RZ/G3E SoC
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260227153236.55988-1-john.madieu.xa@bp.renesas.com>
 <20260227153236.55988-7-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260227153236.55988-7-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 3CFA51DCFCF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270143-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action



On 2/27/26 17:32, John Madieu wrote:
> Extend the existing device tree bindings for Renesas RZ/G3S PCIe
> controller to include support for the RZ/G3E (renesas,r9a09g047e57-pcie) PCIe

Still a checkpatch warning:

WARNING: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#8:
controller to include support for the RZ/G3E (renesas,r9a09g047e57-pcie) PCIe

> controller. The RZ/G3E PCIe controller is similar to RZ/G3S but has some key
> differences:
> 
>   - Uses a different device ID
>   - Supports PCIe Gen3 (8.0 GT/s) link speeds
>   - Uses a different clock naming (clkpmu vs clkl1pm)
>   - Has a different set of interrupts, interrupt ordering, and reset signals
> 
> Add device tree bindings for renesas,r9a09g047e57-pcie compatible IPs.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> 
> Changes:
> 
> v7: No changes
> v6: Collected Rb tag from Claudiu
> v5: Collected Rb tag from Rob
> v4: Fixed clock name constraint using enum
> 
> v3:
>   - Moved interrupt/clock description in distinct PATCH
>   - Fixed clock name constraints
>   - Updated clock descriptions
> 
> v2: Reuse G3S names
> 
>   .../bindings/pci/renesas,r9a08g045-pcie.yaml  | 73 +++++++++++++++++--
>   1 file changed, 67 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
> index d1eb92995e2c..a67108c48feb 100644
> --- a/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml
> @@ -10,17 +10,21 @@ maintainers:
>     - Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>   
>   description:
> -  Renesas RZ/G3S PCIe host controller complies with PCIe Base Specification
> -  4.0 and supports up to 5 GT/s (Gen2).
> +  Renesas RZ/G3{E,S} PCIe host controllers comply with PCIe
> +  Base Specification 4.0 and support up to 5 GT/s (Gen2) for RZ/G3S and
> +  up to 8 GT/s (Gen3) for RZ/G3E.
>   
>   properties:
>     compatible:
> -    const: renesas,r9a08g045-pcie # RZ/G3S
> +    enum:
> +      - renesas,r9a08g045-pcie # RZ/G3S
> +      - renesas,r9a09g047-pcie # RZ/G3E
>   
>     reg:
>       maxItems: 1
>   
>     interrupts:
> +    minItems: 16
>       items:
>         - description: System error interrupt
>         - description: System error on correctable error interrupt
> @@ -38,8 +42,16 @@ properties:
>         - description: PCIe event interrupt
>         - description: Message interrupt
>         - description: All interrupts
> +      - description: Link equalization request interrupt
> +      - description: Turn off event interrupt
> +      - description: PMU power off interrupt
> +      - description: D3 event function 0 interrupt
> +      - description: D3 event function 1 interrupt
> +      - description: Configuration PMCSR write clear function 0 interrupt
> +      - description: Configuration PMCSR write clear function 1 interrupt
>   
>     interrupt-names:
> +    minItems: 16
>       items:
>         - const: serr
>         - const: serr_cor
> @@ -57,20 +69,28 @@ properties:
>         - const: pcie_evt
>         - const: msg
>         - const: all
> +      - const: link_equalization_request
> +      - const: turn_off_event
> +      - const: pmu_poweroff
> +      - const: d3_event_f0
> +      - const: d3_event_f1
> +      - const: cfg_pmcsr_writeclear_f0
> +      - const: cfg_pmcsr_writeclear_f1
>   
>     interrupt-controller: true
>   
>     clocks:
>       items:
>         - description: System clock
> -      - description: PM control clock
> +      - description: PM control clock or clock for L1 substate handling
>   
>     clock-names:
>       items:
>         - const: aclk
> -      - const: pm
> +      - enum: [pm, pmu]
>   
>     resets:
> +    minItems: 1
>       items:
>         - description: AXI2PCIe Bridge reset
>         - description: Data link layer/transaction layer reset
> @@ -81,6 +101,7 @@ properties:
>         - description: Configuration register reset
>   
>     reset-names:
> +    minItems: 1
>       items:
>         - const: aresetn
>         - const: rst_b
> @@ -128,7 +149,9 @@ patternProperties:
>           const: 0x1912
>   
>         device-id:
> -        const: 0x0033
> +        enum:
> +          - 0x0033
> +          - 0x0039
>   
>         clocks:
>           items:
> @@ -167,6 +190,44 @@ required:
>   
>   allOf:
>     - $ref: /schemas/pci/pci-host-bridge.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a08g045-pcie
> +    then:
> +      properties:
> +        interrupts:
> +          maxItems: 16
> +        interrupt-names:
> +          maxItems: 16
> +        clock-names:
> +          items:
> +            - const: aclk
> +            - const: pm
> +        resets:
> +          minItems: 7
> +        reset-names:
> +          minItems: 7
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: renesas,r9a09g047-pcie
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 23
> +        interrupt-names:
> +          minItems: 23
> +        clock-names:
> +          items:
> +            - const: aclk
> +            - const: pmu
> +        resets:
> +          maxItems: 1
> +        reset-names:
> +          maxItems: 1
>   
>   unevaluatedProperties: false
>   


