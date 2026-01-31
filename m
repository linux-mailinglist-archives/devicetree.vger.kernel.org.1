Return-Path: <devicetree+bounces-261444-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4F1gBw0kfmkDWAIAu9opvQ
	(envelope-from <devicetree+bounces-261444-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:47:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8A6C2C3C
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:47:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 77B2C3013A45
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:47:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92FCA331234;
	Sat, 31 Jan 2026 15:47:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ZY3gSt4e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05DC62FDC57
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874431; cv=none; b=hyZz5dXUf2YKkxLW+kLFrclxSnTTEyeuihY9WsQ0ltmgmDG8ZUscR7VY+93wGig/BsjslTLgzPO5DPWB+4TmCwEPWb+dPX7VWSio7ga95MhsmZjUCOl3//M/tGmOX9B4c7iJ1uaOG6lU6l7PstFV1hKd0P60v6gCgdWb0Xim9Ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874431; c=relaxed/simple;
	bh=w/+oaKLap8ukpggiur3CZXqekXweHxIJ+9YUIZvq/mU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qy8/RTEfaPswmG6cjO7dy7LGTo/PDkuGldMYljDcCMwqjUN4/Tm5R4qXF56O1ysk0cP4s8zKhgKBVc2eZEhUvneiHd0+QwQOwS+39GBg29Ovl5p1Cqr5PXM2IS2NlKdneDTBqodvpd35EGG3FwyFa5aBO+OCwFBSKr7+rbgMSeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ZY3gSt4e; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-47edd9024b1so24551935e9.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874428; x=1770479228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bL7VWRVbzv/1ns3vcMzexf+AEseL3f6DgUbURN/e+QA=;
        b=ZY3gSt4et7nB5A2Psty+5QXZnZlyTD9/mrVuCr0S7+jNXz6G5LdeExnr7fL4/8LKQG
         Fw9nifH2M8MP8zTxX9CY5pS8NRUB53VGrH1yM691gr9u24HA4IX5HJCIsorz16mhTDCI
         EWh8jTzd/+yCr7I5SPT0ojutIgCZloV9NLB2coyKta7jIT+tW5BAgfFSEtuFW7+RLG0E
         ehkBwtJFCxspmukrewQjfGblxjlRBqhtXpzT1R+SY+7GAdHqeVbAXPGp5A+2twvhACpZ
         HV80wG3sY2+c3hrX5d7XBIB6H+ore/olfWOS4cZ6c4Z32f3iMCbBEm8Sz07fTBAh3JNg
         Gf1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874428; x=1770479228;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bL7VWRVbzv/1ns3vcMzexf+AEseL3f6DgUbURN/e+QA=;
        b=xIBu+8vm+oAJ+wKtDrfiga0fsSAedCEn7pd6ZXN8+wi2LFl3XNliJyPx7mKmjePK8f
         mHKsBaMHsyXhPvziRsQzUAWNiBpZZiamc8PP7mSkXnWXdvb01vbiNfMk3E+m106lPWQu
         9m1iMnwX6iWoi6YsNA7f47yv7SVvQh8yNndWZiUJA6PumEN+LTSoMBeASXpuOYdYHlwn
         bBIhKxgUokArYFrhcXJ1Q1g1sLbjIuSxQ3DagIZ/46RAHI1h9bP2VWnVj1EodUDp8g5d
         08YPyohN3zvmVWGawLteBgBfJJAWcH2JTXMVZ3Bw0ejzje4Se/jQ0lvOGZXRfrC3iu6R
         SsOw==
X-Forwarded-Encrypted: i=1; AJvYcCUucgF6oxP5y78JkuZDKPfytqc0ndyaHYPCpMbliavQ0I7h/TVGlT66Gsp/rHyaPNDd15luljPROI2o@vger.kernel.org
X-Gm-Message-State: AOJu0YwCobiZWpommqSUUAhIyIW0h09tnHgYa9Fqp55Q/MFjQTkXVedp
	FV2M1Yf4AYVI21HUV2b+7840kNib7hoaBzKS07djbbYhzlL5SXTrlqenIZf7eeVnY0A=
X-Gm-Gg: AZuq6aL8yrqBfnJMurI2YFkluCAialUpBNjKW7uMsuDLdzquZNlQeEEaxXQJfV07JzC
	CwUte+RaX5WJFNf3QZIzqCvbWK5pgl4G98GfCTjL3w9DpBLUijnvAJp+yDKvUfvXH0ivW8yud71
	9ILOtA32WUx4+YNwTFKw/7lNdv/Mipyi47Hlomor+Fno9lwTjboLLVEWeIne72P/dtReUL2J2uu
	9VEoIm2400ujIyWLZakGZRUbFOFPTjuJ4iwGS074iOWjQbdZIHOboXpvo4tsf+jEov3bTEvX2Dh
	f3qswG6u/9MwLOZS2/CCcfVe891rob+Qu/XNdwQXoLXzIpSHZalbfFeUAMgthJQBDhfjdSM3mXJ
	fNuUCj6/wTKUS37zovAXRfJyWaBDMOPHhn0J0b+1TlNGmMaR9IMYVAdRUYdduaf+ttXjPkhCZIS
	8C7A2+sgfzjt0leOVAgg==
X-Received: by 2002:a05:600c:4443:b0:475:dd8d:2f52 with SMTP id 5b1f17b1804b1-482db4a317bmr78541975e9.32.1769874428509;
        Sat, 31 Jan 2026 07:47:08 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482e2973d57sm40798865e9.18.2026.01.31.07.47.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:47:07 -0800 (PST)
Message-ID: <f406abde-c7d1-4ed6-b7dd-5336956bc795@tuxon.dev>
Date: Sat, 31 Jan 2026 17:47:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/19] dt-bindings: nvmem: microchip-otpc: Add required
 clocks
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120154502.1280938-1-ada@thorsis.com>
 <20260120154502.1280938-3-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120154502.1280938-3-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261444-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[e8c00000:email,thorsis.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim,0.0.0.1:email]
X-Rspamd-Queue-Id: 6D8A6C2C3C
X-Rspamd-Action: no action



On 1/20/26 17:44, Alexander Dahl wrote:
> The OTPC requires both the peripheral clock through PMC and the main RC
> oscillator.  Seemed to work without explicitly enabling those clocks on
> sama7g5 before, but did not on sam9x60.
> 
> Older datasheets were not clear and explicit about this, but recent are,
> e.g. SAMA7G5 series datasheet (DS60001765B),
> section 30.4.1 Power Management:
> 
>> The OTPC is clocked through the Power Management Controller (PMC).
>> The user must power on the main RC oscillator and enable the
>> peripheral clock of the OTPC prior to reading or writing the OTP
>> memory.

As this was not mentioned in the previous datasheet versions, the current driver 
don't handle those clocks, and it probably worked as the clocks were enabled by 
bootloaders, I think the clocks should be marked as required and this patch to 
be propagated as a fix along with fixes on driver and device trees.

I'll let DT binding maintainers for the final decision on this.

> 
> Link: https://lore.kernel.org/linux-clk/ec34efc2-2051-4b8a-b5d8-6e2fd5e08c28@microchip.com/T/#u

Why this link here?

> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - Removed clock-names (led to confusion, and not used by the driver anyways)
>      - Removed redundant example
>      
>      v2:
>      - new patch, not present in v1
> 
>   .../devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
> index 9a7aaf64eef32..847dfb67c6b72 100644
> --- a/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/microchip,sama7g5-otpc.yaml
> @@ -29,6 +29,11 @@ properties:
>     reg:
>       maxItems: 1
>   
> +  clocks:
> +    items:
> +      - description: main rc oscillator
> +      - description: otpc peripheral clock
> +
>   required:
>     - compatible
>     - reg
> @@ -37,6 +42,8 @@ unevaluatedProperties: false
>   
>   examples:
>     - |
> +    #include <dt-bindings/clock/at91.h>
> +    #include <dt-bindings/clock/microchip,sama7g5-pmc.h>
>       #include <dt-bindings/nvmem/microchip,sama7g5-otpc.h>
>   
>       otpc: efuse@e8c00000 {
> @@ -44,6 +51,7 @@ examples:
>           reg = <0xe8c00000 0xec>;
>           #address-cells = <1>;
>           #size-cells = <1>;
> +        clocks = <&pmc PMC_TYPE_CORE SAMA7G5_PMC_MAIN_RC>, <&pmc PMC_TYPE_PERIPHERAL 67>;
>   
>           temperature_calib: calib@1 {
>               reg = <OTP_PKT(1) 76>;


