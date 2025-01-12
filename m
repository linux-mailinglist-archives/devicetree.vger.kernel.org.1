Return-Path: <devicetree+bounces-137724-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 025DCA0A76F
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 08:40:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EFAF9166C28
	for <lists+devicetree@lfdr.de>; Sun, 12 Jan 2025 07:40:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D506C14F9EB;
	Sun, 12 Jan 2025 07:40:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="qhXwYR0a"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 19DEC14900F;
	Sun, 12 Jan 2025 07:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736667607; cv=none; b=Z+8MHgPYSEPrMrpAzxQwIu4YkF/8ONVON54ABkj6S9e+3lLSZtOsql+yjs3PWdzlMfBO4URlmciYjosCt4JXb/o/ONzzoDWYIle8aqsRLHYdRqFVC+ipv/Zfw+OiK6EPek1oUV+aZIRKlm91xHokXkLWkzTy4NCx0Fbc0oQQiOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736667607; c=relaxed/simple;
	bh=9p0hEFoSsqeo+7024SmrUqO2tn4nPCF3spfIRBSzaEY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=FkkqZTuFYarjh8nwXgsPf2PRR/OLLvLc29bPo5sGWdyYx55LpZMWPSDjDmkEndZarmwJv5kywwKtuXkGdj/6FMFy8KI/MLMakyGkH+FBi9bPT9cKOc1N3dKwm6OTUwtAweqtV2dZO7nZPRbf57BRZjDQHr2OQeaJtA6WcV0jCko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=qhXwYR0a; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 012E17891C;
	Sun, 12 Jan 2025 15:33:57 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 012E17891C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736667241;
	bh=HVVCWqz7om8BHjjEZbzs4VlK2aeGgOGoS2Oo6h3uT1Y=;
	h=From:To:Cc:Subject:Date:From;
	b=qhXwYR0aO6ZVDV/sRRd8TWAZFzu28o1EjBjXcG5akjti63KHmNJEu/LQ3KVR7KZwl
	 OIANxyqRHiLX/r5KeU/6eySKwK4GeV1yuduwWYC9tjw5xH3COZKSMuRWxu/qjcJ8xB
	 k55yaxRc5atxRkCDt5K5RqwPlUlZ+M1C7tsxJT/g=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] Add support for Ariaboard Photonicat RK3568
Date: Sun, 12 Jan 2025 15:33:41 +0800
Message-ID: <20250112073344.1976411-1-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add dts for Ariaboard Photonicat RK3568.

This series bring support for:
* Debug UART
* SDIO QCA9377 WiFi and Bluetooth
* M.2 E-Key PCIe WiFi and Bluetooth
* M.2 B-Key USB Modem WWAN
* Ethernet WAN Port
* MicroSD Card slot
* eMMC
* HDMI Output
* Mali GPU
* USB Type-A

Changed from v1:
- move some general nodes (firmware, ramoops, reboot-mode) to rk356x.dtsi
- gmac1 change to phy-mode rgmii-id
- corrected some regulator to be closer to schematics
- rename rk3568-ariaboard-photonicat.dts to rk3568-photonicat.dts
https://lore.kernel.org/lkml/20240904111456.87089-1-bigfoot@classfun.cn/

Changed from v2:
- remove unused headers
- corrected some regulator to be closer to schematics
- remove usb_host1_ohci, usb_host1_ehci, usb2phy1_host that have no connection
https://lore.kernel.org/lkml/20240906045706.1004813-1-bigfoot@classfun.cn/

Changed from v3:
- corrected some regulator to be closer to schematics
- changed to using clk32k_out1 in xin32k
https://lore.kernel.org/lkml/20240911122809.1789778-2-bigfoot@classfun.cn/

Changed from v4:
- corrected some regulator to be closer to schematics
- corrected some label to match node name
- use resets props in phy node instead deprecated snps,reset-gpio
https://lore.kernel.org/lkml/20240914145549.879936-1-bigfoot@classfun.cn/

Changed from v5:
- resort regulator nodes
- remove dr_mode from usb_host1_xhci
https://lore.kernel.org/lkml/20241108031847.700606-1-bigfoot@classfun.cn/

Junhao Xie (3):
  dt-bindings: vendor-prefixes: Add prefix for Ariaboard
  dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
  arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 599 ++++++++++++++++++
 4 files changed, 607 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts

-- 
2.47.1


