Return-Path: <devicetree+bounces-180621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B998AC4372
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 19:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E0210174F4B
	for <lists+devicetree@lfdr.de>; Mon, 26 May 2025 17:24:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1595189B80;
	Mon, 26 May 2025 17:24:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-bc0c.mail.infomaniak.ch (smtp-bc0c.mail.infomaniak.ch [45.157.188.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67EC13A258
	for <devicetree@vger.kernel.org>; Mon, 26 May 2025 17:24:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=45.157.188.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748280280; cv=none; b=Hh5ET7BqFoYVhPo768ZfSNghGVzpmTfhNMorUkHYZIUAXsjvKmgbbKlhLDjYp9MbGzVe67HlQqtWZhtO4WfVQu/T3UL4ow2e3N0SeAvbt3HHAtUND5d9QhXSTHXEhsxACd8bP+3U5x9T3bpHPYAKbqAHpQVVc/CG8pKJvK108h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748280280; c=relaxed/simple;
	bh=nKzeZGwDNmqtTSym90+Dh7Khk2jPAMYUzO5RjSP8N84=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Xp3g94nAbig4BM3xHuudPwE5gpgcHQHWMT25bYXfDy7OHwo0+uWS+BVTDvGdBSOT6AcHy6P5vMV2XPLpudE4ZUedZv3K8fNvT5XLTuyoZFf8LZgBkIGZTIA6yl5/OsG2+Up1CWrfguYWKd+CRkPQrKQyooheDTtDx90UWXR6xa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net; spf=pass smtp.mailfrom=0leil.net; arc=none smtp.client-ip=45.157.188.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=0leil.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=0leil.net
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246c])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4b5hwX2s0czdPL;
	Mon, 26 May 2025 19:05:32 +0200 (CEST)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4b5hwW370Szsmn;
	Mon, 26 May 2025 19:05:31 +0200 (CEST)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Mon, 26 May 2025 19:05:17 +0200
Subject: [PATCH 3/4] arm64: dts: rockchip: force PMIC reset behavior to
 restart PMU on RK3588 Jaguar
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk8xx-rst-fun-v1-3-ea894d9474e0@cherry.de>
References: <20250526-rk8xx-rst-fun-v1-0-ea894d9474e0@cherry.de>
In-Reply-To: <20250526-rk8xx-rst-fun-v1-0-ea894d9474e0@cherry.de>
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The bootloader for RK3588 Jaguar currently forces the PMIC reset
behavior (stored in RST_FUN bitfield in register SYS_CFG3 of the PMIC)
to 0b1X which is incorrect for our devices.

It is required to restart the PMU as otherwise the companion
microcontroller cannot detect the PMIC (and by extension the full
product and main SoC) being rebooted which is an issue as that is used
to reset a few things like the PWM beeper and watchdogs.

Let's add the new rockchip,rst-fun property to make sure the PMIC reset
behavior is the expected one.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
index 9fceea6c1398e92114dcb735cf2babb7d05d67a5..0f431a9a01c4b93ce7ffcb409dbe06de25cc7edd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-jaguar.dts
@@ -685,6 +685,7 @@ pmic@0 {
 		vcc13-supply = <&vcc_1v1_nldo_s3>;
 		vcc14-supply = <&vcc_1v1_nldo_s3>;
 		vcca-supply = <&vcc5v0_sys>;
+		rockchip,rst-fun = <0>;
 
 		rk806_dvs1_null: dvs1-null-pins {
 			pins = "gpio_pwrctrl1";

-- 
2.49.0


