Return-Path: <devicetree+bounces-238532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 54965C5C148
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 09:49:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E94704E6538
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 08:47:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127D32FFDE2;
	Fri, 14 Nov 2025 08:47:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgsg1.qq.com (smtpbgsg1.qq.com [54.254.200.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667CE12DDA1
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 08:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=54.254.200.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763110034; cv=none; b=RmAqMXUWoQOf+tfo8hM1yGun2Ik2WxcpLZdXaj5NybiZiKBmS4oPXmnhcPUmysXMTHnXyCKkBCBys3EFd3LEX79EEO4cD/i7Hbl5Lof34vA9XvwW0RrXGWJb1RH17RYV5Gxz62yH4tt8+7VuTHNCk+cBFmaoLO/IrH9aamr7WbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763110034; c=relaxed/simple;
	bh=uNi0IN8z9nQus5eNw7uGH1EX3oz3GiVff8AX5ejQ6yM=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=M4PrbI+4PmTnthSYu7RTHjIvk9L0GsdIE7oVDzMJRYBtU5oh+8ddWZrfMxAnBsbJqT6t/YBc/OLWQOINX8AJb3T0qW143Wt0zFYRCfl5Thzy4/NO3WB00sr/kZPDT+ZIzkWXfhkNjQiFBcV1QiiwfJOad4H8gcWIr0HeO/POjZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=54.254.200.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip4t1763110003t6e9a2cbd
X-QQ-Originating-IP: /6Z5+nX3o4vML1dAYSFZidFlE4csM/xLSFdrWgK4Pqo=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 16:46:39 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2104105009139998330
Message-ID: <5CDCCB3C8D98AFF4+865e773e-29b1-4e60-b8b1-3633b996619b@radxa.com>
Date: Fri, 14 Nov 2025 17:46:39 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
From: FUKAUMI Naoki <naoki@radxa.com>
To: joseph.kogut@gmail.com
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
 <705A25012553039E+ea9a05c0-ccc5-4d70-930b-e989300e55a1@radxa.com>
Content-Language: en-US
In-Reply-To: <705A25012553039E+ea9a05c0-ccc5-4d70-930b-e989300e55a1@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M5aCtjAndv5OVcqTjEihMTj5f1Ko0fludn0BGn0XcmYqxUIs/DKAIRhN
	tEh4E8AXMglYR71ODOK3DewekC2cP0y5oM13Glr7YA7c4vTHVh5W6IrRkYQKnoDqzFxT2GT
	PQha2GSLJd62fHTsdGuT6Fwb9zq9VIP/avQrNwc1FHspOGuXb++ySCKUmXait6YnlQPFYIt
	IpdHInm+EcINF3vNRYKnO7KNDJ1eXzLovtvVMfuMFl4yi5xid1EOcWTMXX/qnByQ460oqf5
	nAOqO3Z97DYnUo0Nj1xzCZ2c+lQkyPRs1cWucYJ/2Ys2fY/wS3loMwXbdJ+PwCHpmiVV1jA
	uPzs4Dcyv5Yj2Gcj++Hdp1ljZ2TBAfUdQ4SvSNFo66tcJVAdhVEUx/AcSnkjxKGfv8kusRf
	gvqt5lscArhhsdM4Wz9fczPZZx10EKzoTrHMcRysU+RlpPShtHZXKQfqnHihQa/dofR8ece
	2Q2ns6UaT0pFjEuLdzY648ljX1R60/wOVN/Ehisrta0TBL7c6ATBYc1gbsuf6PnnOcU28Jj
	YxBMQCWlqt8gbGgDb6a8Rl3hxBrLH7yK5BGFvTo1aZNYsm/cw3Ry1dWYdqRIBTISxMleNN7
	h+9DjnBO5vsxP+wAsZf9aVtgkn9vPZz8k2RVlDwh+mzWSWSSNi4ON63x1T4sJ0lJofuCsnr
	A9PSWmGNlI6fr6ewpt7nO1yo8Vo/BwK7nZu8jFcfGiO21yK2Yok6hfQxB4LTpaRaQhBzQ6v
	ryCHLd/D2UAe/bQtTD1f/neRMlA63xcLyVmQrJpBQOftjjmseEaO8kWAWnRnQdW0AXZmX6q
	s2ZHKZ1pBGnbJUpJ4xJ1XDNVjmp+LTeDDzaLHeq21YSoJjP2zjwb6zv0BBxIt6ypzWGB3cf
	POkRHsVBMzwvniYmimxDFr9qd9EQZaYDAIOiHnca2n+Ps71PYXsqiktMUBXMhCM4xov+tO4
	lVmsKM2pPsMQiDO7iKa0eobroxW7ZSUlsVzf6X9TdGE6urIqryvMYj0FjVI0FBgUAURQElm
	NMLW0MrYqoxk0aBSIi
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0

(Sorry, "To:" was wrong in previous email)

Hi Joseph,

On 11/14/25 17:06, FUKAUMI Naoki wrote:
> Hi Joseph,
> 
> On 11/5/25 21:15, FUKAUMI Naoki wrote:
>> I'd like to clarify the situation regarding the v6 patch series I 
>> submitted.
>>
>> The original device tree work for the Radxa CM5 and IO Board was 
>> authored by Joseph Kogut. I took over the responsibility of getting it 
>> upstreamed with his agreement.
>>
>> However, I now understand that I should have preserved the original 
>> Signed-off-by chain (and DCO) in the v6 series. This was my oversight.
>>
>> To correct this, I would prefer for Joseph to post the patches 
>> himself, which will not include my Signed-off-by.
> 
> Could you please post the patches?

Please ignore the patches I sent as v6. Also, I don't claim my 
copyright. Feel free (not) to use them.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Best regards,
> 
> -- 
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
> 
>> My apologies for the confusion this caused. Thank you for pointing 
>> this out.
>>
>> Best regards,
>>
>> -- 
>> FUKAUMI Naoki
>> Radxa Computer (Shenzhen) Co., Ltd.
>>
>> On 11/5/25 14:13, FUKAUMI Naoki wrote:
>>> This patch series add support for the Radxa CM5 SoM and IO Board.
>>>
>>> Changes in v6:
>>> (Patch 1/3)
>>> - Fix description; "Radxa CM5" is the correct name
>>> (Patch 2/3)
>>> - Fix #include(s)
>>> - Include rk3588s.dtsi
>>> - Move alias for gmac1 from io board dts
>>> - Add Maskrom key
>>> - Add pinctrl-* for led-0
>>> - Add vcc_1v1_nldo_s3 regulator for pmic
>>> - Move gmac1 (except status) from io board dts
>>> - Fix phy-supply for gmac1
>>> - Fix compatible for vdd_cpu_big1_s0 regulator
>>> - Add eeprom on i2c0
>>> - Add vdd_npu_s0 regulator for rknn
>>> - Fix compatible for rgmii_phy1
>>> - Add pinctrl-* and reset-* for rgmii_phy1
>>> - Add domain-supply for pd_npu
>>> - Add rknn_*
>>> - Add saradc
>>> - Fix properties in sdhci
>>> - Move pmic from io board dts
>>> - Fix vcc*-supply for pmic
>>> - Add regulators in pmic
>>> - Add tsadc
>>> - Move vop(_mmu) from io board dts
>>> - Trivial changes (labels, names, etc)
>>> (Patch 3/3)
>>> - Fix #include(s)
>>> - Remove #include "rk3588s.dtsi"
>>> - Fix model
>>> - Add fan
>>> - Add Recovery key
>>> - Add pinctrl-* for vcc3v3_wf
>>> - Add vcc_sysin regulator
>>> - Add pinctrl-* for vbus5v0_typec
>>> - Add rfkill-bt and rfkill-wlan for M.2 module
>>> - Add sound for es8316
>>> - Add phy-supply for combphy2_psu
>>> - Fix power-role to "source" for fusb302
>>> - Add rtc for hym8536
>>> - Add audio-codec on i2c8 for es8316
>>> - Add i2s0_8ch for es8316
>>> - Add package_thermal for fan
>>> - Add pinctrl-* for pcie2x1l2
>>> - Add pwm11 for fan
>>> - Fix properties in sdmmmc
>>> - Add phy-supply for u2phy2_host and u2phy3_host
>>> - Remove usb_host0_ohci
>>> - Add pinctrl-* for usbdp_phy0
>>> - Trivial changes (labels, names, etc)
>>>
>>> Changes in v5:
>>> (Patch 2/3, per Jimmy)
>>> - Alias eMMC to mmc0
>>> - Remove unused sdio alias
>>> - Move gmac, hdmi0 nodes to carrier board dts
>>> (Patch 3/3, per Jimmy)
>>> - Enable hdmi0_sound and i2s5_8ch
>>> - Remove redundant enablement of sdhci
>>> - Enable usb_host2_xhci
>>>
>>> - Tested HDMI audio
>>>
>>> Changes in v4:
>>> - Fixed XHCI initialization bug by changing try-power-role from source
>>>    to sink
>>>
>>> Changes in v3:
>>> - Addressed YAML syntax error in dt binding (per Rob)
>>> - Fixed whitespace issue in dts reported by checkpatch.pl
>>> - Split base SoM and carrier board into separate patches
>>> - Added further details about the SoM and carrier to the commit
>>>    messages
>>>
>>> Changes in v2:
>>> - Added copyright header and data sheet links
>>> - Removed non-existent property
>>> - Sorted alphabetically
>>> - Removed errant whitespace
>>> - Moved status to the end of each node
>>> - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
>>> - Removed delays from gmac with internal delay
>>>
>>> Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream- 
>>> v5-0-8d96854a5bbd@gmail.com
>>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>>> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
>>> ---
>>> I have communicated with Joseph privately and taken ownership of
>>> moving this forward, with his blessing. All bugs belong to me.
>>> ---
>>> FUKAUMI Naoki (3):
>>>    dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
>>>    arm64: dts: rockchip: Add Radxa CM5
>>>    arm64: dts: rockchip: Add Radxa CM5 IO Board
>>>
>>>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
>>>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
>>>   4 files changed, 1113 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5- 
>>> io.dts
>>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi
>>
>>
> 


