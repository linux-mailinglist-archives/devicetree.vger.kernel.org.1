Return-Path: <devicetree+bounces-257466-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mKQLF2O/b2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257466-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:46:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id C3FA648CB8
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:46:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B67037CD40E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:03:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F36E44CF3A;
	Tue, 20 Jan 2026 14:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lRUQ5VaJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC19E4418D8
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 14:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768920627; cv=none; b=SMeoyO2nwdKgZ9VEgRlmszSVciFvMKExngj2n7BQa51zDSMOUFaBNkauoV2d+OmC36VYNO/00wVKy7ZwHUh9IpfVt/ZxW/jESJLZ4W+/7Rg9PXTd7h7MVthn43214EVdBOWHG8ZozMRvEnvGFLsz+nD8ITX/NEgjHB+UG8yejWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768920627; c=relaxed/simple;
	bh=upXj6WWTZKNboRmBMXf5QV2E1JkSHSdpi5l9R919880=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QrToE46Ee59RAqDnO8VSwhL7ELqvkQc+SF7+Kh8pDJNczxfDXYKn87lfip6ZeUz1hy6sfHcrBug5WG23Dw90v1wcjVRpubInR2ns90yJVzxR5qFnUTaxS+/MJojPCqbph3tc6xAsHscOCEwzaP+32GkhQzOPLF4av0QdaZbocec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lRUQ5VaJ; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-81f5381d168so4905890b3a.2
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 06:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768920625; x=1769525425; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bIm0elalg2KtUJFISn8Zrfv+qOvCEqd9XEPFzu+c7x8=;
        b=lRUQ5VaJyrkzrPjKz17VdTTlly0eLn1s4I52f/rx/T2S2de8URs60LZHop0jPIWHWH
         jSEA361jh0G5VIRD7bG2G1+mosFn9QYMVQIwkIvFmKe63eZnGsP7cwxzzYMCbtdZ2WXd
         qYcaEPLkcLicpgjGQiKw7HpdBgsqeTK7jsFLa5QcXzx+UR5Ahmo7gAK0ufZc0BkdXw2+
         1ncKsoNTMAShMJWuMG1lNqKhrY+jQ4Yt4gE0CoS9CMAjnY3Hk26BoDLiaZ1AojAll+YQ
         M/mmtUxM/DAgLm5alIa4bAPLtdmbvZ0+tFU8l8eyshRWW4pTBjgANtPJEyv4QPDvEkPh
         deQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768920625; x=1769525425;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bIm0elalg2KtUJFISn8Zrfv+qOvCEqd9XEPFzu+c7x8=;
        b=ViM3szLbec05YjJ1yVHrMCttJUB/K4hFLjbUb/66XgzQSdcOXhqfE844vfmAVHM5Kx
         kUa4dJoGET5JVqqVMk79NqtgvMdTHzOChWLi7OizirqdXsCZYstP1QhFA31/d5P3r1hV
         20C8HyPyRf7JNTf6x+BQO8HjCEkQzhFVuiZMbK44Ze77yMeCpqj+07kPgV57SajZnOzN
         IVTwG/bu8Cp0mEyxPbKZ0AzeHrTJ3E3IV2OIhauy1rTE9XsRXtJr/ObIblqDMz/ZSK+/
         e+6ya6sqN6l3/CNpP0sHequnsb/3sdCfUJUWEBzVF0q/GMC/e8ZibZawfcKEXpPTCl6F
         atPw==
X-Forwarded-Encrypted: i=1; AJvYcCU9ArDfYBwAw0gfmqv4PZKp0VWR84hDQ2Ngb2BWKb3zPB1WSd2rv5GR4RLwAZv41o6zQHGiyccro6LP@vger.kernel.org
X-Gm-Message-State: AOJu0YxF3FW7miwvp5KMy4/8wNRxwEN5MkC/FeMnlcukPMckgSDVgKBs
	Fi5IELrVgtKE6gt5F9i9edX6zZ5Ng+1B/546MjspwBYDBhxJffSRMVjW
X-Gm-Gg: AZuq6aIfw55j6OsSCy1PmkbObISFZTZPaar/4sVivZGimK3U6w6ZjWcjycmAApROp9b
	1/U+xoaZFvt8+51VxqvAbJGPqjPEkvVSlvUuWCzIY+mWFP1yDtV862JrUDiFEkXD/vT5Ytq/LgU
	BiqYUrU47O7JhH0AbqNANUm/2tk8Vx+dt2OVYjSyOnucucuRQfsmT+PXzvGGPeki7gzs4T/reD3
	qhMQ0tGuyWd5fS09XUVTIK8EDgN61b2KJpVP10P3lsBVDBU2Q9twqYB+/JxhzAkJWFbWHCM95Qm
	ymIu3s9eu71hAUlk/w3hLrIEaPFM5/b7YZJNnZzLbGq08w7KKfTR7IuEwb81NXVFbDfp1pvx+qw
	CU4y2vIedAhZOSrjG4F6xge1eK5LNVuU4IOggV3I+zh/vrFp4O4ssDLwOD7sOIxEOiyE4UvFEFg
	HVYCc/eZHtN7AcDX4LeS6s+u7VF0gX8wkLhME=
X-Received: by 2002:a05:6a00:1bcc:b0:7b8:ac7f:5969 with SMTP id d2e1a72fcca58-81fe87b2942mr2099646b3a.4.1768920624786;
        Tue, 20 Jan 2026 06:50:24 -0800 (PST)
Received: from [192.168.1.7] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa108c4dbsm12573861b3a.5.2026.01.20.06.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 06:50:24 -0800 (PST)
Message-ID: <b626470b-f1e2-4869-baea-bd7629b2feaa@gmail.com>
Date: Tue, 20 Jan 2026 20:20:19 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com>
 <20260115144541.GA3319937-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260115144541.GA3319937-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.46 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_FROM(0.00)[bounces-257466-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo,ti.com:email,devicetree.org:url,4a096000:email]
X-Rspamd-Queue-Id: C3FA648CB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 15-01-2026 20:15, Rob Herring wrote:
> On Wed, Jan 07, 2026 at 04:11:15PM +0000, Charan Pedumuru wrote:
>> Convert TI PIPE3 PHY binding to DT schema.
>> Changes during conversion:
>> - Define a new pattern 'pciephy' to match nodes defined in DT.
>> - Drop obsolete "id" property from the schema.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../devicetree/bindings/phy/ti,phy-usb3.yaml       | 127 +++++++++++++++++++++
>>  1 file changed, 127 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> new file mode 100644
>> index 000000000000..41b3828723ae
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,phy-usb3.yaml
>> @@ -0,0 +1,127 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,phy-usb3.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI PIPE3 PHY Module
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +description:
>> +  The TI PIPE3 PHY is a high-speed SerDes (Serializer/Deserializer)
>> +  transceiver integrated in OMAP5, DRA7xx/AM57xx, and similar SoCs.
>> +  It supports multiple protocols (USB3, SATA, PCIe) using the PIPE3
>> +  interface standard, which defines a common physical layer for
>> +  high-speed serial interfaces.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^(pciephy|usb3phy|phy)(@[0-9a-f]+)?$"
> 
> Again, don't define your own patterns. Either update the .dts files to 
> use the established patterns (pcie-phy, usb3-phy, phy) or leave it 
> undefined here.

Sure, I will try to update them in dts.

> 
> Plus the unit-address is not optional as 'reg' is not optional...

Okay.

> 
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,phy-usb3
>> +      - ti,phy-pipe3-sata
>> +      - ti,phy-pipe3-pcie
>> +      - ti,omap-usb3
> 
> Alphabetical order please.

Sure.

> 
>> +
>> +  reg:
>> +    minItems: 2
>> +    maxItems: 3
>> +
>> +  reg-names:
>> +    minItems: 2
>> +    maxItems: 3
>> +    items:
>> +      enum:
>> +        - phy_rx
>> +        - phy_tx
>> +        - pll_ctrl
> 
> Do this really need to be any order? Looks to me like this works for all 
> users in tree:
> 
> minItems: 2
> items:
>   - const: phy_rx
>   - const: phy_tx
>   - const: pll_ctrl

This will work, I tested it now.

> 
>> +
>> +  "#phy-cells":
>> +    const: 0
>> +
>> +  clocks:
>> +    minItems: 2
>> +    maxItems: 7
>> +
>> +  clock-names:
>> +    minItems: 2
>> +    maxItems: 7
>> +    items:
>> +      enum: [wkupclk, sysclk, refclk, dpll_ref,
>> +             dpll_ref_m2, phy-div, div-clk]
>> +
>> +  syscon-phy-power:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module register for PHY
>> +      power on/off.
> 
> Needs constrants on the size:
> 
> items:
>   - items:
>       - description: phandle to ...
>       - description: offset of ...

Sure, I will change for the other properties too.

> 
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
>> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
> 
> Same here.
> 
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module for writing PCS delay value.
> 
> Same here.
> 
>> +
>> +  ctrl-module:
>> +    $ref: /schemas/types.yaml#/definitions/phandle
>> +    description:
>> +      Phandle of control module for PHY power on.
>> +    deprecated: true
>> +
>> +dependencies:
>> +  syscon-pllreset:
>> +    properties:
>> +      compatible:
>> +        contains:
>> +          const: ti,phy-pipe3-sata
> 
> Usually we express this the other way around:
> 
> if:
>   properties:
>     compatible:
>       contains:
>         const: ti,phy-pipe3-sata
> then:
>   required:
>     - syscon-pllreset
> else:
>   properties:
>     syscon-pllreset: false
> 
> But that's slightly different as syscon-pllreset is optional for 
> ti,phy-pipe3-sata in your case. Seems like it should be required if 
> ti,phy-pipe3-sata?

I checked the DTS, it is not a required property. So, I will not change the format.

> 
> 
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - reg-names
>> +  - "#phy-cells"
>> +  - clocks
>> +  - clock-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    /* TI PIPE3 USB3 PHY */
>> +    usb3phy@4a084400 {
>> +        compatible = "ti,phy-usb3";
>> +        reg = <0x4a084400 0x80>,
>> +              <0x4a084800 0x64>,
>> +              <0x4a084c00 0x40>;
>> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> +        #phy-cells = <0>;
>> +        clocks = <&usb_phy_cm_clk32k>,
>> +                 <&sys_clkin>,
>> +                 <&usb_otg_ss_refclk960m>;
>> +        clock-names = "wkupclk", "sysclk", "refclk";
>> +        ctrl-module = <&omap_control_usb>;
>> +    };
>> +
>> +  - |
>> +    /* TI PIPE3 SATA PHY */
>> +    phy@4a096000 {
>> +        compatible = "ti,phy-pipe3-sata";
>> +        reg = <0x4A096000 0x80>,  /* phy_rx */
>> +              <0x4A096400 0x64>,  /* phy_tx */
>> +              <0x4A096800 0x40>;  /* pll_ctrl */
>> +        reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> +        clocks = <&sys_clkin1>, <&sata_ref_clk>;
>> +        clock-names = "sysclk", "refclk";
>> +        syscon-pllreset = <&scm_conf 0x3fc>;
>> +        #phy-cells = <0>;
>> +    };
>> +...
>>
>> -- 
>> 2.52.0
>>

-- 
Best Regards,
Charan.


