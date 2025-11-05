Return-Path: <devicetree+bounces-235028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1D6C33FAA
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 06:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5C52D4E39B7
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 05:18:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97A0D254B19;
	Wed,  5 Nov 2025 05:18:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8221D3D2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 05:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762319921; cv=none; b=hcjOhuMTTRqFM9imWm8wgPViaqNw5rqiZwHkzpi8HXsP2J8jwzojXe9Am/CXFIH90ObyefmI6xkOI2lIfC9KRWOunuMh+8WjM2rZEqWfO6PC2cLOKT6z0zL43gesjR9XxfhLHMyCH0u5mrSqFb3NLoBhW/9roKeHWu3384Q3frc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762319921; c=relaxed/simple;
	bh=sqivD5Cd4GhDHBwOLMdGJL3A6bBx4LcvdQ8hFvRMNv4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=GpxsT4RU8AeEkggsmxRhzHXCipjcVJkVBK88FUJZLm0LzXKsG/X4CJLHFDpV7LwQvEAamKS8lgCD84DR1rgbbvpmveNiLLdVOMm/BghYr22Ftgd4Cv7FZgEoNLRvgJg9GcQ1+zx8Z2ioFgVM1B2aGj2OvUMzYsHU3K/jNKwoAz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 5A55DfSr031533;
	Wed, 5 Nov 2025 14:13:42 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jonas@kwiboo.se, kever.yang@rock-chips.com,
        i@next.chainsx.cn, honyuenkwun@gmail.com, quentin.schulz@cherry.de,
        dsimic@manjaro.org, pbrobinson@gmail.com, amadeus@jmu.edu.cn,
        jbx6244@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH v6 0/3] Add Radxa CM5 and IO Board
Date: Wed,  5 Nov 2025 05:13:32 +0000
Message-ID: <20251105051335.17652-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series add support for the Radxa CM5 SoM and IO Board.

Changes in v6:
(Patch 1/3)
- Fix description; "Radxa CM5" is the correct name
(Patch 2/3)
- Fix #include(s)
- Include rk3588s.dtsi
- Move alias for gmac1 from io board dts
- Add Maskrom key
- Add pinctrl-* for led-0
- Add vcc_1v1_nldo_s3 regulator for pmic
- Move gmac1 (except status) from io board dts
- Fix phy-supply for gmac1
- Fix compatible for vdd_cpu_big1_s0 regulator
- Add eeprom on i2c0
- Add vdd_npu_s0 regulator for rknn
- Fix compatible for rgmii_phy1
- Add pinctrl-* and reset-* for rgmii_phy1
- Add domain-supply for pd_npu
- Add rknn_*
- Add saradc
- Fix properties in sdhci
- Move pmic from io board dts
- Fix vcc*-supply for pmic
- Add regulators in pmic
- Add tsadc
- Move vop(_mmu) from io board dts
- Trivial changes (labels, names, etc)
(Patch 3/3)
- Fix #include(s)
- Remove #include "rk3588s.dtsi"
- Fix model
- Add fan
- Add Recovery key
- Add pinctrl-* for vcc3v3_wf
- Add vcc_sysin regulator
- Add pinctrl-* for vbus5v0_typec
- Add rfkill-bt and rfkill-wlan for M.2 module
- Add sound for es8316
- Add phy-supply for combphy2_psu
- Fix power-role to "source" for fusb302
- Add rtc for hym8536
- Add audio-codec on i2c8 for es8316
- Add i2s0_8ch for es8316
- Add package_thermal for fan
- Add pinctrl-* for pcie2x1l2
- Add pwm11 for fan
- Fix properties in sdmmmc
- Add phy-supply for u2phy2_host and u2phy3_host
- Remove usb_host0_ohci
- Add pinctrl-* for usbdp_phy0
- Trivial changes (labels, names, etc)

Changes in v5:
(Patch 2/3, per Jimmy)
- Alias eMMC to mmc0
- Remove unused sdio alias
- Move gmac, hdmi0 nodes to carrier board dts
(Patch 3/3, per Jimmy)
- Enable hdmi0_sound and i2s5_8ch
- Remove redundant enablement of sdhci
- Enable usb_host2_xhci

- Tested HDMI audio

Changes in v4:
- Fixed XHCI initialization bug by changing try-power-role from source
  to sink

Changes in v3:
- Addressed YAML syntax error in dt binding (per Rob)
- Fixed whitespace issue in dts reported by checkpatch.pl
- Split base SoM and carrier board into separate patches
- Added further details about the SoM and carrier to the commit
  messages

Changes in v2:
- Added copyright header and data sheet links
- Removed non-existent property
- Sorted alphabetically
- Removed errant whitespace
- Moved status to the end of each node
- Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
- Removed delays from gmac with internal delay

Link: https://lore.kernel.org/r/20250617-rk3588s-cm5-io-dts-upstream-v5-0-8d96854a5bbd@gmail.com
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
I have communicated with Joseph privately and taken ownership of
moving this forward, with his blessing. All bugs belong to me.
---
FUKAUMI Naoki (3):
  dt-bindings: arm: rockchip: Add Radxa CM5 IO Board
  arm64: dts: rockchip: Add Radxa CM5
  arm64: dts: rockchip: Add Radxa CM5 IO Board

 .../devicetree/bindings/arm/rockchip.yaml     |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-radxa-cm5-io.dts     | 503 +++++++++++++++
 .../boot/dts/rockchip/rk3588s-radxa-cm5.dtsi  | 602 ++++++++++++++++++
 4 files changed, 1113 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5-io.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi

-- 
2.43.0


