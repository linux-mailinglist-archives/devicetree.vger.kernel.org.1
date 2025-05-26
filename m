Return-Path: <devicetree+bounces-180619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAF8AC4355
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 19:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 075C47A66AA
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 17:13:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27FC62405ED;
	Mon, 26 May 2025 17:14:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-190e.mail.infomaniak.ch (smtp-190e.mail.infomaniak.ch [185.125.25.14])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A07DC1BF33F
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 17:14:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.25.14
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748279680; cv=none; b=ocEpRB82tTPAUjV61KzSNPLsyDICXlv0D/S+2CxDhYrfjmKcuIl45YIdK5WECmUhAnd6UpZ7WeGBq6eQVhB7pLJ4pyXHqqPCFXL7usQ7RkaXe4ZOItA/SZmZZDM8XxlWeeFh2pRtm1ApQasPCZ8wDQ+5OOirK7ysWVOrhcZRQD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748279680; c=relaxed/simple;
	bh=ZcpFRckONNk0IxICy9wdY3sQ8Q1X3+puSI8PoaWnr94=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ac5QVv31cDEADwWBIjrARFnaW5vYzZKaCI35nxv/FKMqQxMHYFXX6pHK1bkXjJNejt20wXxzGbVtBrJMv2JFezTKM3v0on+sDajqck3PThC0s198cffE+HuAi46fzf2gzvLN2J/qmVt2BTFAokvWe7PbWmKTNm/UZPCt65QZQjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=185.125.25.14
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246c])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4b5hwT0xxFzcBF;
	Mon, 26 May 2025 19:05:29 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4b5hwR6dDXzvWr;
	Mon, 26 May 2025 19:05:27 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/4] rockchip: rk8xx: allow to customize PMIC reset method
 on RK806
Date: Mon, 26 May 2025 19:05:14 +0200
Message-Id: <20250526-rk8xx-rst-fun-v1-0-ea894d9474e0@cherry.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEqfNGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDUyMz3aJsi4oK3aLiEt200jzdNCMzw2QTgySzFINkJaCegqLUtMwKsHn
 RsbW1AKpXPrRfAAAA
X-Change-ID: 20250526-rk8xx-rst-fun-f261c40b6d0c
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Daniel Semkowicz <dse@thaumatec.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha

This allows to customize the PMIC reset method (also called RST_FUN) on
RK806 PMIC from Rockchip, mainly found on RK3588 devices.

Although RK809 and RK817 also have this feature, this isn't implementing
the feature for them.

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
Quentin Schulz (4):
      dt-bindings: mfd: rk806: allow to customize PMIC reset method
      mfd: rk8xx-core: allow to customize RK806 reset method
      arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Jaguar
      arm64: dts: rockchip: force PMIC reset behavior to restart PMU on RK3588 Tiger

 .../devicetree/bindings/mfd/rockchip,rk806.yaml    | 24 ++++++++++++++++++++++
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts     |  1 +
 arch/arm64/boot/dts/rockchip/rk3588-tiger.dtsi     |  1 +
 drivers/mfd/rk8xx-core.c                           | 15 ++++++++++++++
 include/linux/mfd/rk808.h                          |  2 ++
 5 files changed, 43 insertions(+)
---
base-commit: 0ff41df1cb268fc69e703a08a57ee14ae967d0ca
change-id: 20250526-rk8xx-rst-fun-f261c40b6d0c

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


