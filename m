Return-Path: <devicetree+bounces-235212-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6162DC3594D
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 13:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C886956257F
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 12:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC2223315A;
	Wed,  5 Nov 2025 12:15:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtpbgeu1.qq.com (smtpbgeu1.qq.com [52.59.177.22])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B8F3314A95
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 12:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=52.59.177.22
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762344957; cv=none; b=UlW52C15ZLrf5B2DVVK/Y2M786ykqHCfzIFmjEBsUukAqZTlt8livc9Z9zf960N+QisP41mO0iOUIz3cJIT2ByvD9P3oY9pTQRBCT9ecBIADnzd8TYgvvMntxTIW2NWFvlGF32BV1F3LxiMJHOXeBl86vtDW/rUUAnLHo8appeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762344957; c=relaxed/simple;
	bh=T3flDCZ1nO5lEsqK2xHs5e9LVOOvqYeZR1qkkNS+cwI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eovEqHec7mqTNIguYb+K1iHnwlTI1/9YohwdnN/DmUMo5oX7phOrAHJG/HHpOAmsYQwPzgUDu0blQh2ipiz4xMFWk0OESbyWdSpOOOrDbVgYCqDN+hobJNl76agyun9PXt8gu+Zbqu2lsTLg2eOJ/LOjs1iGVDsHeP+VMmEAAVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com; spf=pass smtp.mailfrom=radxa.com; arc=none smtp.client-ip=52.59.177.22
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=radxa.com
X-QQ-mid: zesmtpip3t1762344914tdef61ad0
X-QQ-Originating-IP: djTh7QdjVUWcRiYAoapKXHkUKbuN+SCdDaSf47CEMDk=
Received: from [IPV6:240f:10b:7440:1:a426:813: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 05 Nov 2025 20:15:11 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 14550206470937993937
Message-ID: <199E172C8E20ED38+71169242-5525-4d60-9e37-a03ad172d639@radxa.com>
Date: Wed, 5 Nov 2025 21:15:11 +0900
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 0/3] Add Radxa CM5 and IO Board
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
 honyuenkwun@gmail.com, quentin.schulz@cherry.de, dsimic@manjaro.org,
 pbrobinson@gmail.com, amadeus@jmu.edu.cn, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20251105051335.17652-1-naoki@radxa.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: MmpliBmRb3iCHYrXm7eQLJWfFr1jEsFKfQN3Z7lLxnps6rfFZJxAD4EI
	o8mBN6UFu3NvWGr1Yp8hmyHKnb0zV40reabVMbEhDMZtA+brbtQFzZrpc+pGcm6ctfRzpkD
	4+AXxJqwsM0XBVNNFsjlRV8WCJivFE8MUCxspTpEh75jWssyJpb9MgCLrA053zyCJgjUoxk
	xVDGpI6yRigVcWIik/AWtXemVeiTpV8FIN2Su+wKRLAbJJoom6xGSTGhMFQs1/UMvYLLtBl
	swT8fVI/84Sz1uwMXo4fK8YU3+zf/2TZv5u5gXbT49AVBNf7NcHdB/Bh/y0K/EwtpvDLq4r
	07Ot07gc7yuRbBBNc4xkd0z+Sy9SlKc+3vlvTZChctv0fDjNKf9tl6XfbIxbdOUn9BUAQLh
	lNr6EQ0EQNtfCQb2PakE9Pu6hv65Z+EuPTYWtquUbG/XyPlN7c9zvS6n2ARpZFerDXrP+ve
	1/pr2SiEjpWL8GsC9SaEio28iOplhHFYMk7PVVGnfCJ41NgUTYaPSoHPVqR2n8j62Hs6jHy
	XnX9VZlLPp5zilmiWm/KQ/g4piAV8xHUa5Nq3z7K87FVl/pqoy8NKQh9aDzfRlHGW8oyACE
	CJPlkD2k2P/LsRWdns2H6rNw8rfZGXmcGbaPAHx5CvBhHFtjAQ9xYpmWvWLAJtEAsOZY7Z9
	SmwYjQwm6bU9cvlf03W11gnRMHZFLr9vhEh/vkFlwx1fZENyYwKXU17yjdixW1jmYsYfsLJ
	7iFa4bvzvZoBq8cLoGElmCBUURio8DdjoGPlh4rHDegwocwtKK98BWTzwbY/9eXXrU7XHa2
	cc/3BYGkmMq/GwjVKJS4alf7RyQ7ynKD55cNNJxBTln8LCS16C1YIt1ZYtv8CzMy0x2+jX+
	DDsWQQzj0VhciXBoLF6ibOGr8qxyR6xp0THTKuAWWeXnYOdRWIlhkHy86ax4GArv7XAy23x
	tFRkQsUONHHqzKnuo7XtHef2jggZIK/VdToC4lFo3JYYv1uBxuobCXUYDyOV2icbtuqjlQR
	3Y/zPkYOG1mbLepV/rNOcUcnyoHA3QnMjH0Y58vuiEUr9nnKkKUMO7+CIo184=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0

I'd like to clarify the situation regarding the v6 patch series I submitted.

The original device tree work for the Radxa CM5 and IO Board was 
authored by Joseph Kogut. I took over the responsibility of getting it 
upstreamed with his agreement.

However, I now understand that I should have preserved the original 
Signed-off-by chain (and DCO) in the v6 series. This was my oversight.

To correct this, I would prefer for Joseph to post the patches himself, 
which will not include my Signed-off-by.

My apologies for the confusion this caused. Thank you for pointing this out.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 11/5/25 14:13, FUKAUMI Naoki wrote:
> This patch series add support for the Radxa CM5 SoM and IO Board.
> 
> Changes in v6:
> (Patch 1/3)
> - Fix description; "Radxa CM5" is the correct name
> (Patch 2/3)
> - Fix #include(s)
> - Include rk3588s.dtsi
> - Move alias for gmac1 from io board dts
> - Add Maskrom key
> - Add pinctrl-* for led-0
> - Add vcc_1v1_nldo_s3 regulator for pmic
> - Move gmac1 (except status) from io board dts
> - Fix phy-supply for gmac1
> - Fix compatible for vdd_cpu_big1_s0 regulator
> - Add eeprom on i2c0
> - Add vdd_npu_s0 regulator for rknn
> - Fix compatible for rgmii_phy1
> - Add pinctrl-* and reset-* for rgmii_phy1
> - Add domain-supply for pd_npu
> - Add rknn_*
> - Add saradc
> - Fix properties in sdhci
> - Move pmic from io board dts
> - Fix vcc*-supply for pmic
> - Add regulators in pmic
> - Add tsadc
> - Move vop(_mmu) from io board dts
> - Trivial changes (labels, names, etc)
> (Patch 3/3)
> - Fix #include(s)
> - Remove #include "rk3588s.dtsi"
> - Fix model
> - Add fan
> - Add Recovery key
> - Add pinctrl-* for vcc3v3_wf
> - Add vcc_sysin regulator
> - Add pinctrl-* for vbus5v0_typec
> - Add rfkill-bt and rfkill-wlan for M.2 module
> - Add sound for es8316
> - Add phy-supply for combphy2_psu
> - Fix power-role to "source" for fusb302
> - Add rtc for hym8536
> - Add audio-codec on i2c8 for es8316
> - Add i2s0_8ch for es8316
> - Add package_thermal for fan
> - Add pinctrl-* for pcie2x1l2
> - Add pwm11 for fan
> - Fix properties in sdmmmc
> - Add phy-supply for u2phy2_host and u2phy3_host
> - Remove usb_host0_ohci
> - Add pinctrl-* for usbdp_phy0
> - Trivial changes (labels, names, etc)
> 
> Changes in v5:
> (Patch 2/3, per Jimmy)
> - Alias eMMC to mmc0
> - Remove unused sdio alias
> - Move gmac, hdmi0 nodes to carrier board dts
> (Patch 3/3, per Jimmy)
> - Enable hdmi0_sound and i2s5_8ch
> - Remove redundant enablement of sdhci
> - Enable usb_host2_xhci
> 
> - Tested HDMI audio
> 
> Changes in v4:
> - Fixed XHCI initialization bug by changing try-power-role from source
>    to sink
> 
> Changes in v3:
> - Addressed YAML syntax error in dt binding (per Rob)
> - Fixed whitespace issue in dts reported by checkpatch.pl
> - Split base SoM and carrier board into separate patches
> - Added further details about the SoM and carrier to the commit
>    messages
> 
> Changes in v2:
> - Added copyright header and data sheet links
> - Removed non-existent property
> - Sorted alphabetically
> - Removed errant whitespace
> - Moved status to the end of each node
> - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
> - Removed delays from gmac with internal delay
> 
> Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
> ---
> I have communicated with Joseph privately and taken ownership of
> moving this forward, with his blessing. All bugs belong to me.
> ---
> FUKAUMI Naoki (3):
>    dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
>    arm64: dts: rockchip: Add Radxa CM5
>    arm64: dts: rockchip: Add Radxa CM5 IO Board
> 
>   .../devicetree/bindings/arm/rockchip.yaml     |   7 +
>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>   .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
>   .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
>   4 files changed, 1113 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi



