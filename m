Return-Path: <devicetree+bounces-255081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666BD1F871
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:46:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52F04300B6A8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:46:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 524F02F3622;
	Wed, 14 Jan 2026 14:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RxBOHjYd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FA952F5461
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 14:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768401977; cv=none; b=fB8m63CuV+meCSSq832r4NX51Pk5kQkEzjQeRP5C4EuQI1KrMBJ++qPXYqEe+2R7dXby2qwuUV67QuEX38+PWOavaEQC8oErQ6dmha0HKGbSmT1rztkkGKPc2voTO4duXKIt8cDdPNvf0MRVVv/Bzszgz8sn/AbLvNY4irb/17c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768401977; c=relaxed/simple;
	bh=BHuGy4ERj5aQ+Kx13434pVIjPKYDCGxMez1xdqBnUKQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UZyZms2bX33T2LJV5WUPRUGaYjyBA6L/sqa+/kH4Gake3sPmFqHSCR3S15F7fTgJqj323kPZJPklHCPe9eFZup+PPinVmkk8RSGrMP07Z6X2hD+zHYqSngmuBOQes7EhBmv0q2Xs3u2KmRhIg32d+q9OLwcUKpyv+b6mFPRvEy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RxBOHjYd; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-34c213f7690so5814054a91.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 06:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768401974; x=1769006774; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YHcwbTkt2wJKMYzdpeFHm792d07zxoPY9Vc8wlApszQ=;
        b=RxBOHjYduc/pmnK7CEPdqfbXHzGtCzxcUi32eCAfigjRFrq6/RRGBMJNNa+UM5A9hq
         rb4uL0rItaBDFRg853DLqCxXaoZojxgvA1f65z5q3V3oVDyC2JewqE/73Wpf69+VS4L+
         dVXsFl0Py/qOjyY991G6PfS/+E4YXZS4vE67+z4ZxpB1jFkVNAZEXCuvS5JiLnVGM8Jg
         a3+RVehcOALrTtohu7KKGr3FbD+eOgwOv/VhEpJByOe3WAwbB5/LpeqG0w9OLPsr0Y7b
         kLQwU6hs32ZKQyXgx6R3DxVBdRvO80S7DUl9DLzFrRjN1JNZH9NS3II0DTWuDQiwGpzn
         n0Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768401974; x=1769006774;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YHcwbTkt2wJKMYzdpeFHm792d07zxoPY9Vc8wlApszQ=;
        b=AtKdL/L970Qu/nzJ12Vcq5UykaBVMbFMs2T1JHRQS51Coz7q5mfxvNdLSun4Fa1T+o
         UvgjTciO0Alh/9O4UKouyFpO3MMH4GT9eIBKNTcJZhQQJH+E0UKVGRoLKR+kMXjN3Lrz
         t9QBIJ8d3yuRqXn2CMCN1NbrFegVzk9HIrAJRDlFKM1UsrTmqaX1jgwtUzITuAYjV2ih
         WI6nFUUKSQg5P+NaDF3Fp/hp3R7nvWKbU67DxJ0T22JnSqJw0s79063FpRJ7zGWAwazb
         CuMunNT4m5ArqZeOm5nFWAcf56KTCGfhgzYTbqs0DRYiVEyCmY6/j0VZ8MQNDPCYX0Kk
         blmw==
X-Forwarded-Encrypted: i=1; AJvYcCVxhbT/tmwDOX1YqpCanJUxD9tTI/MFV8Qv0vTG6ZIYjzoe4KUH5dg/XwiKljqr1J3BmoQzQD37F4/H@vger.kernel.org
X-Gm-Message-State: AOJu0YwrAun2ZLVCkQmU9cX3Vc33hS2X/S9k8MHoao1oA1K4XZ6UOQk7
	zEIKZOdAHDKRrgoMuM0PZLeUB0oXbVrYVZrv9pBt9HZ45EDNV3rficNV
X-Gm-Gg: AY/fxX7bmU8JeU98tEP7/P4ONHpgXoRAWKSFi2oyAe3DL6HIdv89Jyd/fdANrpUEh7f
	eE6MUPV6WgST0TipNVeoU+ckDDaarqiHBiwYXpbxFRFhOLVNpEPmdQl35/Qvtu/Rv4EPphJSAb4
	UK+/sNBB0XVZKeZZPshVlRpU0wesqul7qW751lS6eZO+TmhZPOxXgdcfQOpPUBS4eEv+Zp4A9Pm
	DBmDhaMnpDYWbfhlD0n94Zbn7RGtu4E+30ubdHMpjl+D6NPqAyyhdUakWcZU6Y2P3FPYt4RbmmY
	nkkaJV6dxIMIazaltfaQAKsMyMlIuOsu3INdiWhcSp5LPlXCeK/byKvTwHd+n+MZIl65FSOf/Z5
	tguSRc8KhNkBM4tOXgs5AWSqge40J45t9y8MaUQ+pBZIPPGZL108+YTadFYvtIdOC7IdJEmnIzL
	zRT3F2Y48tI9cbnuhckBlitATZOrJCB95qLAo=
X-Received: by 2002:a17:90b:51c1:b0:34c:aba2:dd95 with SMTP id 98e67ed59e1d1-35109134b00mr3121476a91.26.1768401974283;
        Wed, 14 Jan 2026 06:46:14 -0800 (PST)
Received: from [192.168.1.5] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109d5e20asm2235127a91.1.2026.01.14.06.46.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 06:46:13 -0800 (PST)
Message-ID: <b86695e3-9d61-4e9b-aed2-d2585d8646b5@gmail.com>
Date: Wed, 14 Jan 2026 20:16:08 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: ti,phy-usb3: convert to DT
 schema
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-1-a1ec27401fff@gmail.com> <aWelQ7P1kjKrQMG9@vaman>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <aWelQ7P1kjKrQMG9@vaman>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 14-01-2026 19:46, Vinod Koul wrote:
> On 07-01-26, 16:11, Charan Pedumuru wrote:
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
> 
> That is not correct, please check the current people on TI for this.

I checked the driver author and MAINTAINERS, I couldn't find anyone. No one seems to have updated the MAINTAINER.

> 
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
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,phy-usb3
>> +      - ti,phy-pipe3-sata
>> +      - ti,phy-pipe3-pcie
>> +      - ti,omap-usb3
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
>> +
>> +  syscon-pllreset:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to CTRL_CORE_SMA_SW_0 register containing
>> +      SATA_PLL_SOFT_RESET bit (SATA PHY only).
>> +
>> +  syscon-pcs:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    description:
>> +      Phandle/offset pair to system control module for writing PCS delay value.
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
> 

-- 
Best Regards,
Charan.


