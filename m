Return-Path: <devicetree+bounces-257484-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0N0WJwm5b2kOMQAAu9opvQ
	(envelope-from <devicetree+bounces-257484-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:19:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4F8486D5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 18:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id D54177E11CE
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 15:35:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B93D82D1911;
	Tue, 20 Jan 2026 15:16:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="gj+sG/iO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E062D1907
	for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 15:16:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768922164; cv=none; b=a2aBQBN/3I37LyGbpnWtRMeDTDmbaORh0Kex1SFbU5dXZFkT5dA15qVgIBZujJVNRoOecxgnzLB8hUAw7NdGE3C8CxIEYIhIbmBm3tTQzp1A803VgestCk+YIwNWBJzasmSMAi/Ww4PLJ7QbQT5ZjKVxWchLu9Z1gcrTj9++x5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768922164; c=relaxed/simple;
	bh=WxSpLY8JT5pjSQoCJTRUA3V6vtDASsBs8AqG9eeiFRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ws+aCjc6/J5ytb2+ECAvStNg8GlhJzTxoV9nqDmKL2ndJARhZihwqxmfbxxHqEvjnFTbJQekMzof61O6dN1uFmnHAL/4S8yF8wQOPVffH4chrRfni9aa0jX5/fXSyZRod5a9bMTApHepSClYgzAW+Z+h44ysoGW7T1wK0Og74w0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=gj+sG/iO; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-81e93c5961cso4525433b3a.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jan 2026 07:16:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768922162; x=1769526962; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2smliZ697OIve1WFyAVdoNgI4azBOocrPtfm86BP1ts=;
        b=gj+sG/iOnQ92C6bX6MgtEg/UDiQ1OtwkrOAjV3r1kP8bY1FZwFAY4/kHoPOTBBUhkr
         uN+i6fSLJTP7Smxh/ULd9NqcX6FjVlGzMKXlxq+VU2rOSqnl8HLEKA2l6Sy4yN2bLm1T
         qBnQyZgHeViilHrNLaoapr2cESelMg1/tYX9tqKwNeWQigj2ZPmJKprhXV9UTTb+Rnj/
         VXO/KDRFN6jsW/rtVG/+gb6BJA9ESfiBc13zHLUvcRK6iVuW34Ms+qGk5Y5JGm8bqX86
         h/bOSE2bQGido5ch855vegh6wEqe+wy84rqXGGtVIrlkAmKUlmkH2S9snh6S71rJ3xSd
         2e8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768922162; x=1769526962;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2smliZ697OIve1WFyAVdoNgI4azBOocrPtfm86BP1ts=;
        b=ph5sNCCj43Rn3388FKNCKgYVC+Re2LeZI0in/Dcx0Kx0Jwfwp3wW6uu8xP5oGRVQA8
         rjFvnhKMx14VeMrWjQdU29j1Jqje1EKMVc/o7lnYMw3KU4IAIQIqgI2itQZ7Wrw0q9xs
         mkMxABYOP7aObtquu0lt5Rb12X7afVmQngawbrrau7MsWkpcX9pNqrQXViFNEMUqwVV3
         fCqKR7qUcP38oy/lEFtSssczXSFMdCSgpCEl9tV4Bm1+Y8tBAaioJ9xAhULascK3cEow
         ykVujbRJlDjXQagP4r83+BZ0RMAQUYhetuC41VKeyA0T9uJuE8joIuFV61pIm482Bi0N
         Ggtg==
X-Forwarded-Encrypted: i=1; AJvYcCUrvYQmHpnZtQpvbnrv2jOzz/btWnRm4pBpp6S4c4xoVjpolnTV5n7nDw11fS+MsmtR3mlFDRM1a0bQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxADpzPQNgaPa1PdRtCf+USFX6JmWk5KWKoekvb+0F5sBBfUijq
	BEUC/N13TbBgwXHUwlfQ7w+IKbH/bg4hzY75JAMPdg8ap9kBBF6i6bRDKeixHg==
X-Gm-Gg: AY/fxX7yL2gaHBy6IiPt+Fxqr9cJpIpblxf+IbnrrXwATnn+Q13X516LOGmfuu7tjhO
	H3lSsgVkPQC9vMeE5AIf52gpq4kJxM5a4VyiWNO0O2dqVI1rsTCpAXtv623J3kzfev3v31BoVjx
	fHaErDS7ZgrMACL69ThPEPcNQmwTWuvV/mtuOLgc2yvbfynPZdP7skERJ4yICsG/D+gZzDDRram
	y9UWZNeYxPAuuXWPKorddWV+HsGFApBVjToDA369FnHM7FHAlv4t6CLsXDxiSqeXPEEP9PSJ6O4
	9fBZXShB2XOHj6X8d+E7K4d9RerlNNcrbQ2Vyki/902iKVY1a05eevaQxgN2kTMT9iPNBer/ybl
	niaIe0QO+62Z9IKleXtiXtFBV6iCxLCP3X+cr5ZasX9RvDcZZI0kGSQKYkwjAWo5Utq4yGz6foC
	Jrct63XXGl5upHh8gJgWJYj9XKuCeP774AocM=
X-Received: by 2002:a05:6a21:3992:b0:366:14b0:1a3e with SMTP id adf61e73a8af0-38e45e8dd4cmr2220716637.76.1768922161945;
        Tue, 20 Jan 2026 07:16:01 -0800 (PST)
Received: from [192.168.1.7] ([115.99.251.203])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf32d1f1sm11997360a12.22.2026.01.20.07.15.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jan 2026 07:16:00 -0800 (PST)
Message-ID: <00bb2ec6-8992-4282-bd83-cd5e411aaa0b@gmail.com>
Date: Tue, 20 Jan 2026 20:45:56 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] dt-bindings: phy: ti,control-phy-otghs: convert to
 DT schema
To: Rob Herring <robh@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260107-ti-phy-v2-0-a1ec27401fff@gmail.com>
 <20260107-ti-phy-v2-2-a1ec27401fff@gmail.com>
 <20260115145137.GB3319937-robh@kernel.org>
Content-Language: en-US
From: Charan Pedumuru <charan.pedumuru@gmail.com>
In-Reply-To: <20260115145137.GB3319937-robh@kernel.org>
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
	TAGGED_FROM(0.00)[bounces-257484-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7979, ipnet:2a01:60a::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[charanpedumuru@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,ams.mirrors.kernel.org:rdns,ams.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: 2E4F8486D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 15-01-2026 20:21, Rob Herring wrote:
> On Wed, Jan 07, 2026 at 04:11:16PM +0000, Charan Pedumuru wrote:
>> Convert TI OMAP Control PHY binding to DT schema.
>> Changes during conversion:
>> - Define a new pattern 'control-phy' to match nodes defined in DT.
>>
>> Signed-off-by: Charan Pedumuru <charan.pedumuru@gmail.com>
>> ---
>>  .../bindings/phy/ti,control-phy-otghs.yaml         | 94 +++++++++++++++++++++
>>  Documentation/devicetree/bindings/phy/ti-phy.txt   | 98 ----------------------
>>  2 files changed, 94 insertions(+), 98 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> new file mode 100644
>> index 000000000000..2c91609cac35
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/ti,control-phy-otghs.yaml
>> @@ -0,0 +1,94 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/ti,control-phy-otghs.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: TI OMAP Control PHY Module
>> +
>> +maintainers:
>> +  - Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +description:
>> +  The TI OMAP Control PHY module is a hardware block within the system
>> +  control module (SCM) of Texas Instruments OMAP SoCs. It provides
>> +  centralized control over power, configuration, and auxiliary features
>> +  for multiple on-chip PHYs. This module is essential for proper PHY
>> +  operation in power-constrained embedded systems.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^control-phy(@[0-9a-f]+)?$"
> 
> Drop. Non-standard.

Sure, I will change it to phy and will modify in dts too.

> 
>> +
>> +  compatible:
>> +    enum:
>> +      - ti,control-phy-otghs
>> +      - ti,control-phy-usb2
>> +      - ti,control-phy-pipe3
>> +      - ti,control-phy-pcie
>> +      - ti,control-phy-usb2-dra7
>> +      - ti,control-phy-usb2-am437
> 
> Alphabetical order

Okay.

> 
>> +
>> +  reg:
>> +    minItems: 1
>> +    maxItems: 4
> 
> With the constraints below, there is no case that allows 4 entries.

Yeah, I will make it 3.

> 
>> +
>> +  reg-names:
>> +    minItems: 1
>> +    maxItems: 4

I will make it 3 here too

>> +    items:
>> +      enum: [otghs_control, power, pcie_pcs, control_sma]
>> +
>> +allOf:
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-otghs
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          const: otghs_control
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-pcie
> 
> There's no .dts with this compatible. Do you really need this 
> compatible or can drop it?

Yeah, currently there is no such compatible, I was following the old binding, I could remove if it's necessary.

> 
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          items:
>> +            - enum: [power, pcie_pcs, control_sma]
> 
> It's really 1 entry of 3 possible names?

I think it should be direct 3 entries as per the binding, shouldn't be an enum, I will change it.

> 
>> +
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            enum:
>> +              - ti,control-phy-usb2
>> +              - ti,control-phy-usb2-dra7
>> +              - ti,control-phy-usb2-am437
>> +              - ti,control-phy-pipe3
>> +    then:
>> +      properties:
>> +        reg-names:
>> +          const: power
>> +
>> +required:
>> +  - reg
>> +  - compatible
>> +  - reg-names
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    control-phy@4a00233c {
> 
> phy@...
> 
>> +        compatible = "ti,control-phy-otghs";
>> +        reg = <0x4a00233c 0x4>;
>> +        reg-names = "otghs_control";
>> +    };
>> +...
>> diff --git a/Documentation/devicetree/bindings/phy/ti-phy.txt b/Documentation/devicetree/bindings/phy/ti-phy.txt
>> deleted file mode 100644
>> index 7c7936b89f2c..000000000000
>> --- a/Documentation/devicetree/bindings/phy/ti-phy.txt
>> +++ /dev/null
>> @@ -1,98 +0,0 @@
>> -TI PHY: DT DOCUMENTATION FOR PHYs in TI PLATFORMs
>> -
>> -OMAP CONTROL PHY
>> -
>> -Required properties:
>> - - compatible: Should be one of
>> - "ti,control-phy-otghs" - if it has otghs_control mailbox register as on OMAP4.
>> - "ti,control-phy-usb2" - if it has Power down bit in control_dev_conf register
>> -                        e.g. USB2_PHY on OMAP5.
>> - "ti,control-phy-pipe3" - if it has DPLL and individual Rx & Tx power control
>> -                        e.g. USB3 PHY and SATA PHY on OMAP5.
>> - "ti,control-phy-pcie" - for pcie to support external clock for pcie and to
>> -			set PCS delay value.
>> -			e.g. PCIE PHY in DRA7x
>> - "ti,control-phy-usb2-dra7" - if it has power down register like USB2 PHY on
>> -                        DRA7 platform.
>> - "ti,control-phy-usb2-am437" - if it has power down register like USB2 PHY on
>> -                        AM437 platform.
>> - - reg : register ranges as listed in the reg-names property
>> - - reg-names: "otghs_control" for control-phy-otghs
>> -	      "power", "pcie_pcs" and "control_sma" for control-phy-pcie
>> -	      "power" for all other types
>> -
>> -omap_control_usb: omap-control-usb@4a002300 {
>> -        compatible = "ti,control-phy-otghs";
>> -        reg = <0x4a00233c 0x4>;
>> -        reg-names = "otghs_control";
>> -};
>> -
>> -TI PIPE3 PHY
>> -
>> -Required properties:
>> - - compatible: Should be "ti,phy-usb3", "ti,phy-pipe3-sata" or
>> -   "ti,phy-pipe3-pcie. "ti,omap-usb3" is deprecated.
>> - - reg : Address and length of the register set for the device.
>> - - reg-names: The names of the register addresses corresponding to the registers
>> -   filled in "reg".
>> - - #phy-cells: determine the number of cells that should be given in the
>> -   phandle while referencing this phy.
>> - - clocks: a list of phandles and clock-specifier pairs, one for each entry in
>> -   clock-names.
>> - - clock-names: should include:
>> -   * "wkupclk" - wakeup clock.
>> -   * "sysclk" - system clock.
>> -   * "refclk" - reference clock.
>> -   * "dpll_ref" - external dpll ref clk
>> -   * "dpll_ref_m2" - external dpll ref clk
>> -   * "phy-div" - divider for apll
>> -   * "div-clk" - apll clock
>> -
>> -Optional properties:
>> - - id: If there are multiple instance of the same type, in order to
>> -   differentiate between each instance "id" can be used (e.g., multi-lane PCIe
>> -   PHY). If "id" is not provided, it is set to default value of '1'.
>> - - syscon-pllreset: Handle to system control region that contains the
>> -   CTRL_CORE_SMA_SW_0 register and register offset to the CTRL_CORE_SMA_SW_0
>> -   register that contains the SATA_PLL_SOFT_RESET bit. Only valid for sata_phy.
>> - - syscon-pcs : phandle/offset pair. Phandle to the system control module and the
>> -   register offset to write the PCS delay value.
>> -
>> -Deprecated properties:
>> - - ctrl-module : phandle of the control module used by PHY driver to power on
>> -   the PHY.
>> -
>> -Recommended properties:
>> - - syscon-phy-power : phandle/offset pair. Phandle to the system control
>> -   module and the register offset to power on/off the PHY.
>> -
>> -This is usually a subnode of ocp2scp to which it is connected.
>> -
>> -usb3phy@4a084400 {
>> -	compatible = "ti,phy-usb3";
>> -	reg = <0x4a084400 0x80>,
>> -	      <0x4a084800 0x64>,
>> -	      <0x4a084c00 0x40>;
>> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> -	ctrl-module = <&omap_control_usb>;
>> -	#phy-cells = <0>;
>> -	clocks = <&usb_phy_cm_clk32k>,
>> -		 <&sys_clkin>,
>> -		 <&usb_otg_ss_refclk960m>;
>> -	clock-names =	"wkupclk",
>> -			"sysclk",
>> -			"refclk";
>> -};
>> -
>> -sata_phy: phy@4a096000 {
>> -	compatible = "ti,phy-pipe3-sata";
>> -	reg = <0x4A096000 0x80>, /* phy_rx */
>> -	      <0x4A096400 0x64>, /* phy_tx */
>> -	      <0x4A096800 0x40>; /* pll_ctrl */
>> -	reg-names = "phy_rx", "phy_tx", "pll_ctrl";
>> -	ctrl-module = <&omap_control_sata>;
>> -	clocks = <&sys_clkin1>, <&sata_ref_clk>;
>> -	clock-names = "sysclk", "refclk";
>> -	syscon-pllreset = <&scm_conf 0x3fc>;
>> -	#phy-cells = <0>;
>> -};
>>
>> -- 
>> 2.52.0
>>

-- 
Best Regards,
Charan.


