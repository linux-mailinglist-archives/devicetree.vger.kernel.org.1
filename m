Return-Path: <devicetree+bounces-137178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DC9A07D61
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 17:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B9A83A1E09
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4FE221DA0;
	Thu,  9 Jan 2025 16:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BnrLky5U"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06DF421A45C;
	Thu,  9 Jan 2025 16:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736439755; cv=none; b=YWxwKY/fPNPADzJ48rIUmZoGHE4IEASM4chvIL6/btXcP6JFmI1V1N0HOimB227RN3BfedbgzO2cPEIC7XypK6oAL2a07gNMA6XuCn2GDAQzDBLvx2WMc8oEuItq/XZrPJwxD98VsPBZNRnlkBceRwl958MSG3+I6ZNzrdN7LvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736439755; c=relaxed/simple;
	bh=TOCpB+OBemj4wilVJRiMFvXgl3gEWLNpwUg5lvIYhVA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OFmKbkl8v/z0vJoAjg/aCZSd9HKTwfkX9JhOrigQf+Fc/FyucljbH2Q/mTyPr09JonAVK+Lw1kVhBGUuxiRgCAYl5ViIEJH7S7I8onjze1GAT1Me3GYsyyqaD2m8BQ3fzo7UBAK5ehhp7/CtpnTshQh/EcUWpL21KPLtGwq3lDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BnrLky5U; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0154FC4CED2;
	Thu,  9 Jan 2025 16:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736439754;
	bh=TOCpB+OBemj4wilVJRiMFvXgl3gEWLNpwUg5lvIYhVA=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BnrLky5U1osY3oj9AO1721CzqFdZTcjSBMackSdN+nqGzEN8yjePPyN3hQ5YjSHnA
	 rI9MP+uqiRfrPEJurAwpDG9QXjO+Lg4aq4mrfffAHNNm6bASkH54Sl+bbeKN9ZLPPb
	 Q8s59IQrvWNMRFInJSbEWR8qGl/4rJhVifpjB5GfmvxfymjWKHePez9BN6dr8EAQH8
	 FCjRfcAsv37xuzb6+tJTP8HOrsz9EFVZkPlQdc8BP5IfLsJnBpF+Bwr0PzY/laOmBj
	 08/3bZffrZmUk1psax5cPMtY07flDM2gLpNxwTTyIdAvoQUbO96RuWdvKxXA5ly50+
	 5zmjdUxUk0Msg==
Message-ID: <0e86438b-14d8-4558-9f4f-a9170cb4bf83@kernel.org>
Date: Thu, 9 Jan 2025 18:22:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: ti: k3-am68-sk*: Add bootph-all property
 to necessary nodes to enable Ethernet boot
To: "Vankar, Chintan" <c-vankar@ti.com>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Tero Kristo <kristo@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Nishanth Menon <nm@ti.com>
Cc: srk@ti.com, s-vadapalli@ti.com, danishanwar@ti.com,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20250106123122.3531845-1-c-vankar@ti.com>
 <20250106123122.3531845-2-c-vankar@ti.com>
 <dcbda522-eeed-43a9-ab34-a41e5239c6e8@kernel.org>
 <05c79a3d-e185-453a-9071-4e830d0dae6b@ti.com>
Content-Language: en-US
From: Roger Quadros <rogerq@kernel.org>
In-Reply-To: <05c79a3d-e185-453a-9071-4e830d0dae6b@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit



On 09/01/2025 09:01, Vankar, Chintan wrote:
> 
> 
> On 1/7/2025 7:34 PM, Roger Quadros wrote:
>>
>>
>> On 06/01/2025 14:31, Chintan Vankar wrote:
>>> Ethernet boot requires CPSW nodes to be present starting from R5 SPL
>>> stage. Add bootph-all property to necessary nodes for CPSW to enable those
>>> nodes during SPL stage along with later boot stages for AM68-SK.
>>>
>>> Signed-off-by: Chintan Vankar <c-vankar@ti.com>
>>> ---
>>>   arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts | 5 +++++
>>>   arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi | 2 ++
>>>   2 files changed, 7 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>>> index 11522b36e0ce..f1f8b228926d 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>>> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-base-board.dts
>>> @@ -333,6 +333,7 @@ J721S2_WKUP_IOPAD(0x008, PIN_OUTPUT, 0) /* (E22) MCU_RGMII1_TD3 */
>>>               J721S2_WKUP_IOPAD(0x018, PIN_OUTPUT, 0) /* (F21) MCU_RGMII1_TXC */
>>>               J721S2_WKUP_IOPAD(0x000, PIN_OUTPUT, 0) /* (F22) MCU_RGMII1_TX_CTL */
>>>           >;
>>> +        bootph-all;
>>
>> Shouldn't bootph-all be the first property in the DT nodes?
> 
> Hello Roger, You are correct that we used to add 'bootph-all' property
> as the first property in DT nodes, but after seeing this comment of
> Vignesh at here:
> https://lore.kernel.org/r/79bc9fe7-0a35-4f07-b34e-367a4b1e1755@ti.com/,
> I have moved it to the end of all required property.

OK. Thanks for the clarification.

> 
>>
>>>       };
>>>         mcu_mdio_pins_default: mcu-mdio-default-pins {
>>> @@ -340,6 +341,7 @@ mcu_mdio_pins_default: mcu-mdio-default-pins {
>>>               J721S2_WKUP_IOPAD(0x034, PIN_OUTPUT, 0) /* (A21) MCU_MDIO0_MDC */
>>>               J721S2_WKUP_IOPAD(0x030, PIN_INPUT, 0) /* (A22) MCU_MDIO0_MDIO */
>>>           >;
>>> +        bootph-all;
>>>       };
>>>         mcu_mcan0_pins_default: mcu-mcan0-default-pins {
>>> @@ -610,11 +612,13 @@ &main_sdhci1 {
>>>   &mcu_cpsw {
>>>       pinctrl-names = "default";
>>>       pinctrl-0 = <&mcu_cpsw_pins_default>, <&mcu_mdio_pins_default>;
>>> +    bootph-all;
>>>   };
>>>     &davinci_mdio {
>>>       phy0: ethernet-phy@0 {
>>>           reg = <0>;
>>> +        bootph-all;
>>>           ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
>>>           ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
>>>           ti,min-output-impedance;
>>> @@ -624,6 +628,7 @@ phy0: ethernet-phy@0 {
>>>   &cpsw_port1 {
>>>       phy-mode = "rgmii-rxid";
>>>       phy-handle = <&phy0>;
>>> +    bootph-all;
>>>   };
>>>     &mcu_mcan0 {
>>> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
>>> index bc31266126d0..cfae226d3c63 100644
>>> --- a/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
>>> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-mcu-wakeup.dtsi
>>> @@ -154,12 +154,14 @@ mcu_conf: bus@40f00000 {
>>>           cpsw_mac_syscon: ethernet-mac-syscon@200 {
>>>               compatible = "ti,am62p-cpsw-mac-efuse", "syscon";
>>>               reg = <0x200 0x8>;
>>> +            bootph-all;
>>>           };
>>>             phy_gmii_sel: phy@4040 {
>>>               compatible = "ti,am654-phy-gmii-sel";
>>>               reg = <0x4040 0x4>;
>>>               #phy-cells = <1>;
>>> +            bootph-all;
>>>           };
>>>         };
>>

-- 
cheers,
-roger


