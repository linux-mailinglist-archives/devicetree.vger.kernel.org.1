Return-Path: <devicetree+bounces-183091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7C8ACF355
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 17:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4B8431772C2
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 15:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BDA31F462D;
	Thu,  5 Jun 2025 15:41:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc08.mail.infomaniak.ch (smtp-bc08.mail.infomaniak.ch [45.157.188.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC1F71E0B66
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 15:41:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749138089; cv=none; b=BaqicYqqJSXv2XL9t1vjmMi3b6g8qG+2nkhTVX54fbKNdz+J5cPhJiWhCgtRP81TTsBujVFImNMTdlhvaCKM4cvdjN4J4S0/bjlepK6kZcAldhzUoAuc26iuvSD6v8btX8f54y7I3s7++x/P5h4XM7FxBkXD5eJCTM50+BPpvCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749138089; c=relaxed/simple;
	bh=8+Sypfrx2ChSZvVb5GtzdDo7H4mVx2VmT0mTEBKQXww=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MCYwn3yqFfahx1H9J09XJDA/u1SplVtfbvmTBe66EwO2J5dAynjzbZbBYq9LVkov/YqLVLKCrNB8ZWDe5cSqoZRanZhH6sAlK9RLOC0Lc+d5WfIXwUG0grCVL2codI0QH+7Wfr/zeZgC1FmM4wJCusBu4MRWU1oIntgkwDXlC4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0000.mail.infomaniak.ch (smtp-3-0000.mail.infomaniak.ch [10.4.36.107])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4bCpZl23Znz2f6;
	Thu,  5 Jun 2025 17:41:19 +0200 (CEST)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4bCpZk11YKzppn;
	Thu,  5 Jun 2025 17:41:18 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH v2 0/4] rockchip: rk8xx: allow to customize PMIC reset mode
 on RK806
Date: Thu, 05 Jun 2025 17:41:05 +0200
Message-Id: <20250605-rk8xx-rst-fun-v2-0-143d190596dd@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJG6QWgC/3XMQQ6CMBCF4auQWTumNKWCK+9hWGA7lYkJmCk2E
 NK7W9m7/F/yvh0iCVOEa7WDUOLI81RCnypw4zA9CdmXBq10oxptUV7tuqLEBcNnwqBt7Yx6WK8
 clM9bKPB6ePe+9MhxmWU7+FT/1n9SqlEhDW1nfGcuhtTNjSSynT1Bn3P+Ap2qUSyqAAAA
X-Change-ID: 20250526-rk8xx-rst-fun-f261c40b6d0c
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Daniel Semkowicz <dse@thaumatec.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

This allows to customize the PMIC reset method (also called RST_FUN) on
RK806 PMIC from Rockchip, mainly found on RK3588 devices but also on
RK3576.

Finally, this is required on the two RK3588 devices from Theobroma as
U-Boot changes the silicon-default (which is suitable for us) to
something that breaks our companion microcontroller's reboot detection
which breaks a bunch of assumptions in the MCU FW code.

To validate this works on those devices do the following:

On Tiger:
i2cset -y -f 6 0x6f 0x9 0x62
On Jaguar:
i2cset -y -f 0 0x6f 0x9 0x62

You hear a nice (loud :) ) beep, then reboot and it should stop right
before entering U-Boot TPL again.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Changes in v2:
- moved rst_fun variable declaration out of the switch-case,
- initialized rst_fun variable to make kernel test robot happy even
  though the variable wouldn't be used uninitialized due to breaking
  before using it,
- renamed rockchip,rst-fun to rockchip,reset-mode
- rewrote rockchip,reset-mode binding description to not mention the
  relation to registers or register values,
- added binding header file to make it easier to understand what the
  mode is when reading a Device Tree without having to read the binding,
- Link to v1: https://lore.kernel.org/r/20250526-rk8xx-rst-fun-v1-0-ea894d9474e0@cherry.de

---
Quentin Schulz (4):
      dt-bindings: mfd: rk806: allow to customize PMIC reset mode
      mfd: rk8xx-core: allow to customize RK806 reset mode
      arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Jaguar
      arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Tiger

 .../devicetree/bindings/mfd/rockchip,rk806.yaml    | 23 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |  2 ++
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |  2 ++
 drivers/mfd/rk8xx-core.c                           | 14 +++++++++++++
 include/dt-bindings/mfd/rockchip,rk8xx.h           | 17 ++++++++++++++++
 include/linux/mfd/rk808.h                          |  2 ++
 6 files changed, 60 insertions(+)
---
base-commit: ec7714e4947909190ffb3041a03311a975350fe0
change-id: 20250526-rk8xx-rst-fun-f261c40b6d0c

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


