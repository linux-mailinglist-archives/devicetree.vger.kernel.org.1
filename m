Return-Path: <devicetree+bounces-231238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB64AC0B910
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:05:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 504983B9B96
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 01:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B31871A9FBF;
	Mon, 27 Oct 2025 01:03:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8569219E7D1
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761527021; cv=none; b=rM9O99a6JIgrCafhh2s0NTNS0OtjCXxIJHtD2kGR2YIuC7PoZYf/d9vqyVhvvPw3sOTxMCXt5nsdYYr9Rvq6OD/7AymACpxtynjolhOJq3A1xCJrEaroCbAqAHsgZmGIbGA2qpZhFYZ+fPlcBIqdtaq+vjKWgnfneMEZp/RXDBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761527021; c=relaxed/simple;
	bh=pHzG58KY1fSoV3XuPlHfyzuac5efYY6jhsQeV6pVJfc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CMTMSpGus/WFFzL33vr7c6/BeShLe9Ii7WWR+i4V9Vergngzfa1AsOFXR2F0Ppi06kN3TULsv33zPx8kWh9tu5YsPFc1RQrkSP78ReHPl0FXvBqSCff1YnCMpN6BUyvDYTva93Ze6g1W99YuZaJkD1nzhcd7zpuCfLRY9dvN1ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 59R0rbfd030125;
	Mon, 27 Oct 2025 09:53:37 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
Date: Mon, 27 Oct 2025 00:52:20 +0000
Message-ID: <20251027005220.22298-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
audio-supply for Rock Pi 4").

Fix the APIO5_VDD power supply to vcc_3v0 as per the schematics[1][2]
[3][4][5].

This fixes the SPI-NOR flash probe failure when the blue LED is on[6],
and the garbled serial console output on Linux.

The ES8316 headphone and microphone are confirmed to work correctly
after this fix.

[1] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4a/ROCK_4A_V1.52_SCH.pdf p.14
[2] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4ap/radxa_rock_4ap_v1730_schematic.pdf p.14
[3] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4b/ROCK_4B_v1.52_SCH.pdf p.14
[4] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/4bp/radxa_rock_4bp_v1730_schematic.pdf p.14
[5] https://dl.radxa.com/rockpi4/docs/hw/rockpi4/ROCK-4-SE-V1.53-SCH.pdf p.14

[6]
=> led blue:status off
=> sf probe
SF: Detected w25q128 with page size 256 Bytes, erase size 4 KiB, total 16 MiB
=> led blue:status on
=> sf probe
jedec_spi_nor flash@0: unrecognized JEDEC id bytes: ff, ff, ff
Failed to initialize SPI flash at 1:0 (error -2)

Fixes: 7ebfd4f6b52a6 ("arm64: dts: rockchip: add LED for ROCK Pi 4A/B/C/A+/B+")
Fixes: 8240e87f16d17 ("arm64: dts: rockchip: fix audio-supply for Rock Pi 4")
Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 046dbe3290178..fda7ea87e4efc 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -516,7 +516,7 @@ &i2s2 {
 };
 
 &io_domains {
-	audio-supply = <&vcca1v8_codec>;
+	audio-supply = <&vcc_3v0>;
 	bt656-supply = <&vcc_3v0>;
 	gpio1830-supply = <&vcc_3v0>;
 	sdmmc-supply = <&vcc_sdio>;
-- 
2.43.0


