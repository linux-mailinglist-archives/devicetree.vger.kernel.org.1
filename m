Return-Path: <devicetree+bounces-146448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E57E6A34F46
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 21:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A59C416D60D
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 20:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D68D24BC06;
	Thu, 13 Feb 2025 20:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="EEw26GON"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB54324BBF8
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 20:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739477965; cv=none; b=s0An+fwwAbClgjl5DehR4M9CPkUaOY5fQEWv7M1mpDSmgJqolIqY5jQY4Il+qV7UHZrSipg0A8E8Zo2+gsIaIGDIojTge0I8kN6Cq7SjnEWHMktcguqV/VW7Gw0ANOH0HN0S5syk5pZYm8ImvvVEDw8RjQUWpYImt8DIvpIVUtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739477965; c=relaxed/simple;
	bh=R3gp0/xn5MD0hMtEjlXTBJZUS3gA1JpvIAi+rpJVCPs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e0GI1gEfcfffvg9oFgRFRvAmzquZcwnQWrTEyfwU99QRt7krf4Fu6d5Mgd9oLsFoHUkcL+S+FBTNsxd+PNjWNR4VK+BNaGF4pl0Qth3eF2sxP0YYpYF8knOwVuX7Ih+AzvWuBvIc6Ya5WcBdPNGSgJdOmF8HX0pEYoS6+Q4dWsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=EEw26GON; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1739477962;
 bh=S+N8QktHLziteDHKc6l89RJnsEypWQF7J2Pqb6k3fjQ=;
 b=EEw26GONFpoHafKvMj6awzNHrxruxsHaXlQJIigE2XLWB294oqiLa2jpEgSAKn6H+V8CXe7DX
 Zo3zVk8FyjzmD5RcilbFN/8pbrei2DRptmVSUnEQZDaPVWMaADvS5G/RZS8sV2QE98RJhuEXR7D
 D/kTFsWlk+YD/yeMrF6VmC03vIYhhnSLSYp/0JOV2Vyc/8blFmAhPDA/etmOpY4C8VZw5c03czF
 3I7vjNLGimKPwXTYl0eC+Br9QsbUaAt3GCN0kONEtK1tfW0aen7wdv4TGKliSQZ1Q5yHFsi4Avd
 bjCNFkbH5GJ9bWI6IuBg05LZKkL8u7YPHtR3UMpV2YIg==
X-Forward-Email-ID: 67ae53c49555f68eb8805aed
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3da8e680-1f36-473d-b51a-6c77a6ea8cc1@kwiboo.se>
Date: Thu, 13 Feb 2025 21:19:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 4D device
 tree
To: Detlev Casanova <detlev.casanova@collabora.com>
Cc: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Dragan Simic <dsimic@manjaro.org>, Chris Morgan <macromorgan@hotmail.com>,
 Kever Yang <kever.yang@rock-chips.com>, Tim Lunn <tim@feathertop.org>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Weizhao Ouyang <weizhao.ouyang@arm.com>, Elon Zhang
 <zhangzj@rock-chips.com>, Alexey Charkov <alchark@gmail.com>,
 Stephen Chen <stephen@radxa.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250213145921.133412-1-detlev.casanova@collabora.com>
 <20250213145921.133412-3-detlev.casanova@collabora.com>
 <b5977d21-aa39-4e91-863b-cc7f9dc6938c@kwiboo.se>
 <5973630.DvuYhMxLoT@trenzalore>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <5973630.DvuYhMxLoT@trenzalore>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Detlev,

On 2025-02-13 20:56, Detlev Casanova wrote:
> Hi Jonas,
> 
> On Thursday, 13 February 2025 10:48:10 EST Jonas Karlman wrote:
>> Hi Detlev,
>>
>> On 2025-02-13 15:57, Detlev Casanova wrote:
>>> From: Stephen Chen <stephen@radxa.com>
>>>
>>> The Radxa ROCK 4D board is based on the Rockchip rk3576 SoC.
>>>
>>> The device tree adds support for basic devices:
>>>  - UART
>>>  - SD Card
>>>  - Ethernet
>>>  - USB
>>>  - RTC
>>>
>>> It has 4 USB ports but only 3 are usable as the top left one is used
>>> for maskrom.
>>>
>>> It has a USB-C port that is only used for powering the board.
>>>
>>> Signed-off-by: Stephen Chen <stephen@radxa.com>
>>> Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
>>> ---
>>>
>>>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>>  .../boot/dts/rockchip/rk3576-rock-4d.dts      | 651 ++++++++++++++++++
>>>  2 files changed, 652 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile
>>> b/arch/arm64/boot/dts/rockchip/Makefile index
>>> def1222c1907e..a112aeb37948a 100644
>>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>>> @@ -132,6 +132,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=
>>> rk3568-wolfvision-pf5-display-vz.dtbo> 
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-wolfvision-pf5-io-expander.dtbo
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-armsom-sige5.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-evb1-v10.dtb
>>>
>>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3576-rock-4d.dtb
>>>
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3582-radxa-e52c.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-sige7.dtb
>>>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-armsom-w3.dtb
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
>>> b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts new file mode 100644
>>> index 0000000000000..f356742f9d643
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
>>> @@ -0,0 +1,651 @@
>>
>> [snip]
>>
>>> +&gmac0 {
>>> +	phy-mode = "rgmii-id";
>>> +	clock_in_out = "output";
>>> +
>>> +	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
>>> +	snps,reset-active-low;
>>> +	snps,reset-delays-us = <0 20000 100000>;
>>
>> The snps,reset- props are deprecated and should be changed to reset-
>> props in the phy node.
> 
> Arg, second time I use deprectated props on new things. Are there plans or 
> ways to make dtbs_check warn about those ?

Agree, would be nice if dtbs_check could be a little bit more verbose
about use of deprecated props :-)

> 
>>> +
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&eth0m0_miim
>>> +		     &eth0m0_tx_bus2
>>> +		     &eth0m0_rx_bus2
>>> +		     &eth0m0_rgmii_clk
>>> +		     &eth0m0_rgmii_bus
>>> +		     &ethm0_clk0_25m_out>;
>>> +
>>> +	phy-handle = <&rgmii_phy0>;
>>> +	status = "okay";
>>> +};
>>
>> [snip]
>>
>>> +&mdio0 {
>>> +	rgmii_phy0: phy@1 {
>>
>> Maybe ethernet-phy@1 ?
> 
> Indeed.
> 
>>> +		compatible = "ethernet-phy-ieee802.3-c22";
>>> +		reg = <0x1>;
>>> +		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
>>
>> Please add reset- props here.
>>
>> Changing to use reset- props may cause issue if a RTL8211F PHY is used
>> on the board. Use a ethernet-phy-id compatible or mainline U-Boot to
>> ensure the Ethernet PHY can be discovered during probe.
> 
> Using downstream u-boot, with the RTL8211F PHY, linux can still detect the PHY 
> and use it correctly, even with reset-* props at the PHY level.
> 
> I guess I can keep those there then, unless the issues you mention are more 
> subtle than that ?
> 

Ohh, typically there has been issues for Linux to find the Ethernet PHY unless
it has first been reset by boot firmware. Something like:

  rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
  rk_gmac-dwmac fe010000.ethernet eth0: stmmac_open: Cannot attach to PHY (error: -19)

There was a chicken-and-egg issue related to detecting ethernet phy:
- phy needs to be reset or phy_id read back as 0xffffffff on mdio bus
- phy device is not created because a valid phy_id is not read back
- phy device needs to be created before it can be reset

See [1] for more details on the ethernet phy issue that typically have
affected multiple Rockchip boards with RTL8211F PHYs. Maybe it has been
fixed in v6.13+.

[1] https://lore.kernel.org/all/47d55aca-bee6-810f-379f-9431649fefa6@kwiboo.se/

Regards,
Jonas

> 
> Detlev.
> 
> 
> 


