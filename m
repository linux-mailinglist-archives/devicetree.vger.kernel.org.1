Return-Path: <devicetree+bounces-270450-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QMLhEVrSpmnHWgAAu9opvQ
	(envelope-from <devicetree+bounces-270450-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:21:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DA2D71EF4F3
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 13:21:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5104F3063A06
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 11:48:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE72133A6F8;
	Tue,  3 Mar 2026 11:48:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CuW5qIXK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FA53382E5
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 11:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772538518; cv=none; b=QR29KL/HSd+Z0EerOG+/C/0nSg2rh1ktIA+3dYTtoDpmtEUMk894cTy0QWKG9sGBX+NHazXhDJngFzuRh3PoQoPuNAR3mQBxA8hEfCXt1GKoZYzeUauMStNvlA+PbzznI6C882I4SVTLWa+/5QrOEd57abib8bad0yV5DYJgszQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772538518; c=relaxed/simple;
	bh=SgaA2N9sc0F1DgPEq0odv6BqgNIh3XdFreW7q9mGCAk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MFGbF1I0y89VEpMWL3AC2HDqnTSacHzsErkLscQ77qMW59pAyd8nlO4PwGqkrHnOIwqCgpEmXoZnBXTq7SCXYu1Sjpcgd6CDEEzRNwPW0Fb5DzFub8XxptDptVLlaCOVFzrGlFzZTBKz7s1/1cGlzmDrq3X1hTt6FQXjGJCZzUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CuW5qIXK; arc=none smtp.client-ip=209.85.222.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f171.google.com with SMTP id af79cd13be357-8cbc593a67aso497049685a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 03:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772538516; x=1773143316; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BW1Va6sWvPgNlKNz67u0LUyNkUVwjA4Z8vSpPvXtvgs=;
        b=CuW5qIXKCLn9qRTTCLlYgHwTwRUwft//5nryPcXHACp86Ei7yleRe66r3VnXnhIhVb
         zh5vpNCsJVzIIgsXJ1I5xwl7n49LrnNKrpzfIGDCQUu1CULOOS3ehE9EvphJu9KV9AJf
         bX5/Y88medZ2XA4u/XWbVqDH7chXcqxP08A/kr4FBE1WPXWwVOis9yfRy7fY0jwE7bwL
         M8OT3Njya4ya/rp/LXps+uMQrmnaL6+8X/WXNGyp5bQ6QTF6I6glXiGCZW3gSzyIal7B
         96Qi5jon0sgvDxSrMaz11TUNyY/Vhmkdp5C6w1oqQpwJ8WTXK4tEY5aIiDEOm1n//NgN
         4cOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772538516; x=1773143316;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BW1Va6sWvPgNlKNz67u0LUyNkUVwjA4Z8vSpPvXtvgs=;
        b=hsD1m8hDjQbgSDER6BuTi5+T0F2Cnam7fd6us+m1N14XURRMaSmdJKO1Z5BOLzpQi/
         W4RY/FI+J0cCSOO2TtB5Xuv6f/hVD85jox3tTIjQ2Y+/3limVjGnCLn2QtEMD0iDaMwg
         kWDZZ2ByoaFQW4IFQMmzmc0Ro56DvuTRq0ebU4PkjwTF453GayYuLQ869/jXY8ljYXEG
         54ATh6/8gG3MEe4Pb8vmKgvld6ac6UkfpvehqSrNniaKWe8s29V4wJgD9ihStkx/xOCn
         XUXWSZKjlL06TCIbC+U0iDJPoTyFtiKB5Orrxehxiqutj8yxIu6vxP/lOpGOAreHXmpI
         TNzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXN6mTLQFZdU2n4jPxtRfLRQJ09oVQqHwlXRwwjzjNhz3hqdKifWv10QUB9rDSSaxvztApJg5gCtmQw@vger.kernel.org
X-Gm-Message-State: AOJu0YyoYTOjo/x6KaCrpNuJEV86kyLaNL4LDsYV+Jt9i6nAzQjBzUKc
	YwycaHpTVEbusScm1O5Pqk3mBGbqstq9PdkQdsp62zXhpgcf8ZCnrMca
X-Gm-Gg: ATEYQzxRrMenkkQJe8/ozM61bq9HECmd+zUPt9IHKal1mbkeegqg/Nvhunlrcsbf2D8
	TiTWGgS7bGBWaqCopqr45V/HG+raCRFd/56io2LFpLWcp/Ppuzzd297NdudnqrVIow4KXdz1HZs
	a4C7mBZ5uAc7MloicTm0ReYY+yCG4fa/jOGzf+8VYgenKH9aF4YKTa9FLmh+VjZHkZgMaPfrB1p
	IYqP2zV35sQH56+xPI9gBzw4dkHQX6TSGem9o7yvSHY78FfRXpmZIs+YU7xCxR0DbxT4GHK7XFc
	zI8Bi/lDTW97A9pEZnrSU4DrfrKsjsPkPYlG3KZYbPmaPAlEpD25ZpfFO+uRf+2olAMGNR9Fzfw
	HV9ydux88sihY65Q6/0Rko22i0GCnDxPdjFXyj6KoJIksFsWLEWM0YrekDrzsBGy8lQNK/VroV7
	mC+NvygOUS9I2BBzxhdMSXKVLD
X-Received: by 2002:a05:620a:3952:b0:8c9:f8e5:9f0d with SMTP id af79cd13be357-8cbc8d9f948mr1901267285a.32.1772538516212;
        Tue, 03 Mar 2026 03:48:36 -0800 (PST)
Received: from [192.168.0.13] ([172.92.174.155])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cbbf71ae8esm1341419185a.41.2026.03.03.03.48.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 03:48:35 -0800 (PST)
Message-ID: <5116340c-4702-47d0-87f0-9399937f0e64@gmail.com>
Date: Tue, 3 Mar 2026 03:46:25 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 1/2] dt-bindings: phy: eswin: Document the EIC7700 SoC
 SATA PHY
To: Yulin Lu <luyulin@eswincomputing.com>, vkoul@kernel.org,
 neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, p.zabel@pengutronix.de, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: ningyu@eswincomputing.com, linmin@eswincomputing.com,
 fenglin@eswincomputing.com
References: <20260205082009.1780-1-luyulin@eswincomputing.com>
 <20260205082129.1482-1-luyulin@eswincomputing.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <20260205082129.1482-1-luyulin@eswincomputing.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: DA2D71EF4F3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-270450-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ganboing@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_PROHIBIT(0.00)[3.1.168.108:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

Hi Yulin,

Can your team share the dt and driver for &hspcrg? I want to do some
testing with your latest v15 clock patchset on my P550 w/ SATA. W/o
&hspcrg, the SATA phy can't be enabled, hence SATA drive doesn't work.

Bo

On 2/5/26 00:21, Yulin Lu wrote:
> Document the SATA PHY on the EIC7700 SoC platform,
> describing its usage.
> 
> Signed-off-by: Yulin Lu <luyulin@eswincomputing.com>
> ---
>   .../bindings/phy/eswin,eic7700-sata-phy.yaml  | 92 +++++++++++++++++++
>   1 file changed, 92 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> new file mode 100644
> index 000000000000..fc7dbac77acf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/eswin,eic7700-sata-phy.yaml
> @@ -0,0 +1,92 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/eswin,eic7700-sata-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Eswin EIC7700 SoC SATA PHY
> +
> +maintainers:
> +  - Yulin Lu <luyulin@eswincomputing.com>
> +  - Huan He <hehuan1@eswincomputing.com>
> +
> +properties:
> +  compatible:
> +    const: eswin,eic7700-sata-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +  clock-names:
> +    const: phy
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: port
> +      - const: phy
> +
> +  eswin,tx-amplitude-tuning:
> +    description: This adjusts the transmitter amplitude signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x7f
> +    default: [0, 0, 0]
> +
> +  eswin,tx-preemph-tuning:
> +    description: This adjusts the transmitter de-emphasis signal, and its value
> +      is derived from eye diagram tuning. The three values correspond to Gen1,
> +      Gen2, and Gen3 parameters respectively.
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    items:
> +      - description: Gen1 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +      - description: Gen2 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +      - description: Gen3 parameter.
> +        minimum: 0
> +        maximum: 0x3f
> +    default: [0, 0, 0]
> +
> +  "#phy-cells":
> +    const: 0
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - "#phy-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    sata-phy@50440300 {
> +        compatible = "eswin,eic7700-sata-phy";
> +        reg = <0x50440300 0x40>;
> +        clocks = <&hspcrg 17>;
> +        clock-names = "phy";
> +        resets = <&hspcrg 0>, <&hspcrg 1>;
> +        reset-names = "port", "phy";
> +        #phy-cells = <0>;
> +    };


