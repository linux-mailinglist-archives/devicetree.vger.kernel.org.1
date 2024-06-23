Return-Path: <devicetree+bounces-78811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 76353913760
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 04:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29FA528382A
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 02:35:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421A82F4A;
	Sun, 23 Jun 2024 02:35:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC248BE7
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 02:34:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719110101; cv=none; b=jZ4EkyheFiV1heUxZXBXGk4xzqlpp4xvG5WoPMNyy70DsCovdd5Pichv4FCMi7wn3ZWZqkfxYTQgCo8+fEivPprbQaRIXr4113aMKj9Cns7WE7nAusoivAWstS7LidoDidblUQcQxenf07PIWPRv55pAkfwncc547mhfG8NpMfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719110101; c=relaxed/simple;
	bh=RRhi7CjQ4YwbGZDvd3Utz7hasWNkl5DJaJhrz2BZ50A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=c3rpl58+VFOKHYGuN6wr/3zrSISNiBoGj4Jp7TOR71Q6k7t8dMkDWcHqqIwMY3PSZXVlvCyEMAoD/XzbHVcN4dGhh/RfEyAo2dBxNv4HhNy9yf3QCX8myr+DyMDtY8KkLhDeBzj3N7esRcNwzhi7zZD7MuKF/jT5CTO6s9eKDqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com; spf=fail smtp.mailfrom=radxa.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=radxa.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=radxa.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45N2XZ4J004959;
	Sun, 23 Jun 2024 11:33:38 +0900
From: FUKAUMI Naoki <naoki@radxa.com>
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        amadeus@jmu.edu.cn, chris.obbard@collabora.com,
        sebastian.reichel@collabora.com, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: add (but disabled) SFC node for Radxa ROCK 5A
Date: Sun, 23 Jun 2024 11:33:28 +0900
Message-ID: <20240623023329.1044-2-naoki@radxa.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623023329.1044-1-naoki@radxa.com>
References: <20240623023329.1044-1-naoki@radxa.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This commit adds SFC node for Radxa ROCK 5A.

since sdhci and sfc on RK3588s share pins(i.e. exclusive), it cannot
be enabled both nodes at the same time. so status = "okay" is omitted
here.

you may be able to enable sfc (and disable sdhci) by fdt overlay.

SPI NOR flash chip may vary, so use safe(lowest) spi-max-frequency.

Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index c0f6a4b1493f..03ed48246d36 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -377,6 +377,19 @@ &sdmmc {
 	status = "okay";
 };
 
+&sfc {
+	pinctrl-names = "default";
+	pinctrl-0 = <&fspim0_pins>;
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
 &spi2 {
 	status = "okay";
 	assigned-clocks = <&cru CLK_SPI2>;
-- 
2.43.0


