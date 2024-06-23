Return-Path: <devicetree+bounces-78812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 771E9913761
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 04:35:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 21F5F1F22538
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 02:35:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42BE7944D;
	Sun, 23 Jun 2024 02:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC5C8BFA
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 02:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719110101; cv=none; b=JgTRrdMgre/OpIDzf1DrQ4m7k55MosEkYH1hm9sDmG3v5yqMg+H0xZxH0Bur38GKHAGM7hPX6xRlYWFALfMX+I3t8H+3Lk3Nwc3+v6xmUogoAFz/m0FuAvy8lbPHbP93+gH50RZ02oAyvXqW99Hwbw4HGRks8YEdFtDjAEsvNlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719110101; c=relaxed/simple;
	bh=o+Q8D88xgc3ujM588fEHBJ7AHH73+kXUkmayuF5G3T4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jiVg3Ossd0wNq28am4qGzvEJZviLYHP1uO2Wh7nFGaCq2C/4rWWrVxATDTIVN3Qq7kdGO1svW0LW07ju6BJ0VA1SsTHzBB4hxseMLMk035Zan1nyAMJix87B/O2iJQC4EFu4rh3l9zSAWaxJ8zTshICNQybBrcySKDG/X8I0uFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4I004959;
	Sun, 23 Jun 2024 11:33:36 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 1/3] arm64: dts: rockchip: add SFC support for Radxa ROCK 5B
Date: Sun, 23 Jun 2024 11:33:27 +0900
Message-ID: <20240623023329.1044-1-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This commit adds support for SPI NOR flash on Radxa ROCK 5B.

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 6a3fd6be1793..966bbc582d89 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -449,6 +449,20 @@ &sdio {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim2_pins>;
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <104000000>;
+		spi-rx-bus-width = <4>;
+		spi-tx-bus-width = <1>;
+	};
+};
+
 &uart6 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
-- 
2.43.0


