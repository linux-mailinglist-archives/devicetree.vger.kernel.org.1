Return-Path: <devicetree+bounces-138301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C4AA0FD3D
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 01:15:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64A6F1888BC0
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 00:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357AFEAC7;
	Tue, 14 Jan 2025 00:15:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b="qakSak/b"
X-Original-To: devicetree@vger.kernel.org
Received: from classfun.cn (unknown [129.204.178.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F79219BBC;
	Tue, 14 Jan 2025 00:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=129.204.178.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736813700; cv=none; b=lOlLeZyUWTAMynjuZ8C1Dd3UKaS0ToXaHEuIXGjvlqPvpD1XbzC5xcLATE7M9vxGtc1oRq+8ThF/DgEtDenwq9ETNGww5yuRGEsIy+7KgSGMCnmNWfz7heVDsVPsdJ4e99AzlVmYwhSKXO/NU82wnXiFr5DqYBPUnvLKg2T65VI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736813700; c=relaxed/simple;
	bh=Rit/oWEZ/R+JfeA8FOFdp7WxJnTQnXrvzl6M6KgHp2s=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DCOvCOkAmqono1OwAsxTmnH624gL3IHs5u0szRi0MIBPc+PPvxI4YrXeKj8cRYBGPyVErSAmTk5BICfB98ApNPIBty7vDvA5TUNf5KwAtsM3kyKdFEXOmZ6+Znf+7GQ/o1p8IYrTs/DL808y4ZD3PNwce5kNx9NYZUuYh3gAznw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn; spf=pass smtp.mailfrom=classfun.cn; dkim=pass (1024-bit key) header.d=classfun.cn header.i=@classfun.cn header.b=qakSak/b; arc=none smtp.client-ip=129.204.178.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=classfun.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=classfun.cn
Received: from bigfoot-server-storage.classfun.cn (unknown [124.72.162.122])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id 29EE978841;
	Tue, 14 Jan 2025 08:14:45 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn 29EE978841
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1736813687;
	bh=uXQUmf+sUnAZX17QEqWUsAvmffSZN44xH/IxQSgjoig=;
	h=From:To:Cc:Subject:Date:From;
	b=qakSak/b1OejsADI6HfazO/Cm+reAR/lopzCErBFyXv20Ks1JTEgRZ0awRokF6NEk
	 9/lZrl26bRS5ujcR+e7D0ZdYKX2nn60Bi20UzuzxX5pRnZKVdZmmcx1PBihdxGpU6L
	 vnatJjoo/DBWAWAnX7g67LsC7w1i6kg4i5uOy9oE=
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
Subject: [PATCH v7 0/3] Add support for Ariaboard Photonicat RK3568
Date: Tue, 14 Jan 2025 08:14:08 +0800
Message-ID: <20250114001411.1848529-1-bigfoot@classfun.cn>
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
- remove some general nodes (firmware, ramoops, reboot-mode)
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

Changed from v6:
- fix property gpios to gpio in vcc3v3_pi6c
- rename rgmii_phy1 to rgmii_phy
- change address from 0x0 to 0x3 in rgmii_phy
- add link to downstream board dts
https://lore.kernel.org/lkml/20250112073344.1976411-1-bigfoot@classfun.cn/

Junhao Xie (3):
  dt-bindings: vendor-prefixes: Add prefix for Ariaboard
  dt-bindings: arm: rockchip: Add Ariaboard Photonicat RK3568
  arm64: dts: rockchip: add dts for Ariaboard Photonicat RK3568

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-photonicat.dts   | 591 ++++++++++++++++++
 4 files changed, 599 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-photonicat.dts

-- 
2.47.1


