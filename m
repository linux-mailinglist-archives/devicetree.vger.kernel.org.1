Return-Path: <devicetree+bounces-238516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3C7C5BE42
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:09:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 764414EA4AE
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 167D228727C;
	Fri, 14 Nov 2025 08:07:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu2.qq.com (smtpbgeu2.qq.com [18.194.254.142])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10562F5A24
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:07:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=18.194.254.142
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763107631; cv=none; b=dB+F5laLbSilc/GmEgcmlyyuTGQLY8fCiEXzwSYBiRQDVsivP/kAriFvU0CK3k4uIZqChxhrAGpHRB+CzHM6iuclDqOh8klJCAnFJNcx6y6oufU9+cPbpK11huPHnfCIrBrf4IpZwmRL5rEcTixVFl+j2aRB1WuO8mtBqSki8OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763107631; c=relaxed/simple;
	bh=72crX6/mPunBrhwNHfprWMo7VIV9VhgzaS64OALxGC4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=DHxVNt5PJ8HGZ/jZo4i4CKA/Mm5J9MH03HsGbgiyzKdrfzhsWHh5lXaPHbhnQYvi+LgYj8DJ0+QlCLDKqtx1O+o5y1qj9TUFiU5hTFvcbLFcPkitIRD/TAU+XacrBTjXilTEXYBCs8BTqp0LvAvjOIPB2Ef2psIMHojunij6z4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=18.194.254.142
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1763107598tca93d855
X-QQ-Originating-IP: +1Wi5TzVeiZJVwJXH16VF0DYKAp8d0rHeNr9JVelc+M=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 16:06:33 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12198683230585159961
Message-ID: <705A25012553039E+ea9a05c0-ccc5-4d70-930b-e989300e55a1@radxa.com>
Date: Fri, 14 Nov 2025 17:06:33 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
Content-Language: en-US
In-Reply-To: <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: OCKxWS2Nvu2zdToXLTGVfd95Mj7bElxAei3AKy8UVk6uIjhHuZ3XrVrH
	Ew12FSTeCYzVKdGHiYaDn/i5nohnD1H/rLw3NZE12D1t/kKgAL3IAJuJ13o1dUxGe4HFAum
	ZQeVC7kKj2sTCdjQKQXp4ogGEHqu/VsCfx04zP4bOYimeN4Rr3z/Xrtt2cEhFQYD0ir/Bcm
	Fs9Z1UuoGUWyYtJVeM0iXrnnT24rN2Sgz/ifPf0nhQemFKbhyHYBsVY9UaZbhhg7f4AKX4v
	b1MjhheXjyvB6XgcwBPQ6EpvWjTjJL8+QNAHOcKxFsP1K2tT2oG1JJe5dJNLusueNk0O8Cv
	5AAS3RYLDpwVacDQFhbBe2K29uIC2LKprkZmP1GGU7LvyRoQOE1W/GRWUxKE6gNJZ/3byGu
	WqgU9hmBH8uMTCx3Hs7JRliQjDgg7+h17WVg/z9XWx+ay/7CUlQ8iYwm5rd/yop+FDvF2zv
	VXIFDRTkPu8Rw5AgKdF/YXmFB03GkWrGvKHllT4hDRoPogFW2+Bs/orp7GHb1Wqt8jzZ9q+
	kgejXdgWDLYXebMBPDRuY8prG+N0cho37bMp6xLm7cUA5oCbHG6zwXy7YTE38sZLh9iBhkC
	59Lwputmyy3GMToG0Ri46yzcBRlc1c+FEzbM4A41VrgH6aQUdr+upg9R56Q5aTJQjgEkCpv
	4vq5JGjnBm9ztAIHUASSh/zAAfCnqehBvVS+MACMJ5zWownpsXHQape8nwq/aJYgwgK/LyN
	UoKf78+xRKsXRbUCQ8QJ5QA8o6Ly5VNm6ci6/BQFpJNSNxOxP4u/A0MHTD/RwTgDYVxdUca
	qlBXtEFvz9J4TEWxbF0dGpNWh71Bxt2d9bGE2YSEe1DjFcCkUpfxOfnB2cjILpSoNPx1urC
	EgGXonDE2B8wfi+91Hvog7XEIVSRO6AryMgvkQ1v7RNvTV9oSOMQqhlzEuHPrJLcUyJ0vK8
	X8+XZyqK7zI/3inaoeq/ZE25MkG4qriSnqPeH8s9pvE1QpOmgK+N1Hx6dAfy3SI5Dl58KU7
	H1mq56nCoMOakK5ObceYdaa2N7GB9CnS1b2ahh512l+WeXbqnNz5AVA7CeaNKqUSnrgXLMM
	A==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0

Hi Joseph,

On 11/5/25 21:15, FUKAUMI Naoki wrote:
> I'd like to clarify the situation regarding the v6 patch series I 
> submitted.
> 
> The original device tree work for the Radxa CM5 and IO Board was 
> authored by Joseph Kogut. I took over the responsibility of getting it 
> upstreamed with his agreement.
> 
> However, I now understand that I should have preserved the original 
> Signed-off-by chain (and DCO) in the v6 series. This was my oversight.
> 
> To correct this, I would prefer for Joseph to post the patches himself, 
> which will not include my Signed-off-by.

Could you please post the patches?

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> My apologies for the confusion this caused. Thank you for pointing this 
> out.
> 
> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
> On 11/5/25 14:13, FUKAUMI Naoki wrote:
>> This patch series add support for the Radxa CM5 SoM and IO Board.
>>
>> Changes in v6:
>> (Patch 1/3)
>> - Fix description; "Radxa CM5" is the correct name
>> (Patch 2/3)
>> - Fix #include(s)
>> - Include rk3588s.dtsi
>> - Move alias for gmac1 from io board dts
>> - Add Maskrom key
>> - Add pinctrl-* for led-0
>> - Add vcc_1v1_nldo_s3 regulator for pmic
>> - Move gmac1 (except status) from io board dts
>> - Fix phy-supply for gmac1
>> - Fix compatible for vdd_cpu_big1_s0 regulator
>> - Add eeprom on i2c0
>> - Add vdd_npu_s0 regulator for rknn
>> - Fix compatible for rgmii_phy1
>> - Add pinctrl-* and reset-* for rgmii_phy1
>> - Add domain-supply for pd_npu
>> - Add rknn_*
>> - Add saradc
>> - Fix properties in sdhci
>> - Move pmic from io board dts
>> - Fix vcc*-supply for pmic
>> - Add regulators in pmic
>> - Add tsadc
>> - Move vop(_mmu) from io board dts
>> - Trivial changes (labels, names, etc)
>> (Patch 3/3)
>> - Fix #include(s)
>> - Remove #include "rk3588s.dtsi"
>> - Fix model
>> - Add fan
>> - Add Recovery key
>> - Add pinctrl-* for vcc3v3_wf
>> - Add vcc_sysin regulator
>> - Add pinctrl-* for vbus5v0_typec
>> - Add rfkill-bt and rfkill-wlan for M.2 module
>> - Add sound for es8316
>> - Add phy-supply for combphy2_psu
>> - Fix power-role to "source" for fusb302
>> - Add rtc for hym8536
>> - Add audio-codec on i2c8 for es8316
>> - Add i2s0_8ch for es8316
>> - Add package_thermal for fan
>> - Add pinctrl-* for pcie2x1l2
>> - Add pwm11 for fan
>> - Fix properties in sdmmmc
>> - Add phy-supply for u2phy2_host and u2phy3_host
>> - Remove usb_host0_ohci
>> - Add pinctrl-* for usbdp_phy0
>> - Trivial changes (labels, names, etc)
>>
>> Changes in v5:
>> (Patch 2/3, per Jimmy)
>> - Alias eMMC to mmc0
>> - Remove unused sdio alias
>> - Move gmac, hdmi0 nodes to carrier board dts
>> (Patch 3/3, per Jimmy)
>> - Enable hdmi0_sound and i2s5_8ch
>> - Remove redundant enablement of sdhci
>> - Enable usb_host2_xhci
>>
>> - Tested HDMI audio
>>
>> Changes in v4:
>> - Fixed XHCI initialization bug by changing try-power-role from source
>>    to sink
>>
>> Changes in v3:
>> - Addressed YAML syntax error in dt binding (per Rob)
>> - Fixed whitespace issue in dts reported by checkpatch.pl
>> - Split base SoM and carrier board into separate patches
>> - Added further details about the SoM and carrier to the commit
>>    messages
>>
>> Changes in v2:
>> - Added copyright header and data sheet links
>> - Removed non-existent property
>> - Sorted alphabetically
>> - Removed errant whitespace
>> - Moved status to the end of each node
>> - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
>> - Removed delays from gmac with internal delay
>>
>> Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream- 
>> v5-0-8d96854a5bbd@gmail.com
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>> ---
>> I have communicated with Joseph privately and taken ownership of
>> moving this forward, with his blessing. All bugs belong to me.
>> ---
>> FUKAUMI Naoki (3):
>>    dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
>>    arm64: dts: rockchip: Add Radxa CM5
>>    arm64: dts: rockchip: Add Radxa CM5 IO Board
>>
>>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
>>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
>>   4 files changed, 1113 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5- 
>> io.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
> 
> 


