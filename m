Return-Path: <devicetree+bounces-253117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id B4966D07AEE
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 09:02:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 757853055DB6
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 08:02:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D99C2F9985;
	Fri,  9 Jan 2026 08:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b="Mvd0brfb"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.163.com (m16.mail.163.com [117.135.210.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B46F2FA0DF;
	Fri,  9 Jan 2026 08:02:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=117.135.210.4
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767945728; cv=none; b=gV5mk0Ff9t4ZAVJYUFc+tsZSIygkAeMk2CIHS/avuDLoOyjQvfV4Nsf13Libs/irM3WI7aOfbCi8Py8WTawLkKEowyrlnKVL3XFnIh3a1hRSZQp/JSCIGljRlxQyBfKdkAt66nObZdSSChbKefaMWzpsz8FHgYEYjebSPe3RZ6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767945728; c=relaxed/simple;
	bh=/VcuIl1lCskVY0FhgiEyMCabM3fKM1Awij5/ycCLVAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=q85LyQgV6ThfsotfJ1nxwiMDSwIB6Gy6jt3GAk8zYzB7D9Bmo4Nlk/seK6cghRGEhmUEimql65KeR93Ie+M/h8XOE7OJc6BkBq42fHML/2Xw6vm2YxuRwUdlKmzT++Hvy3NmfgIpetvOHkBLLT48p32VfP+GX6Glis7O+6jGEEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com; spf=pass smtp.mailfrom=163.com; dkim=pass (1024-bit key) header.d=163.com header.i=@163.com header.b=Mvd0brfb; arc=none smtp.client-ip=117.135.210.4
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=163.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=163.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=zf
	YsLgNdTlE9Go/BF7mYN0S2al1B+Ygo+YQhsBcW/eM=; b=Mvd0brfbiTGiKzXeH8
	O+OR67nivV6PJvkuWSiDJ2vwb7ykQlYfxE9gISutXFsI5aVJRv8Z4gmzbWJUt3E5
	3Y/e1BUwzZZYR8GYtWWPHi6PYM/mHqb5zPZkYzYdyLIqsOPpZn6qTijbbXlis868
	RKhprNd7Nke5aSQ2uGtcfhQlk=
Received: from ProDesk-480.. (unknown [])
	by gzga-smtp-mtada-g1-0 (Coremail) with SMTP id _____wDnzlW4tWBpx1iBFA--.64397S7;
	Fri, 09 Jan 2026 16:01:06 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	dmitry.baryshkov@oss.qualcomm.com
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	Laurent.pinchart@ideasonboard.com,
	mripard@kernel.org,
	hjc@rock-chips.com,
	robh@kernel.org,
	sebastian.reichel@collabora.com,
	tzimmermann@suse.de,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 5/5] arm64: dts: rockchip: Add DisplayPort dt node for rk3576
Date: Fri,  9 Jan 2026 16:00:48 +0800
Message-ID: <20260109080054.228671-6-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260109080054.228671-1-andyshrk@163.com>
References: <20260109080054.228671-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wDnzlW4tWBpx1iBFA--.64397S7
X-Coremail-Antispam: 1Uf129KBjvJXoW7uw4fZFWkWw1kAFy7GF43GFg_yoW8GFyDp3
	ZFkrZ8X3yxur12qwnxt34vqrZ5Jan5AFs0krnFqryUtr1aqry7Kr13Krn3Aa4DJr4UZ3ya
	vFsavryUKFsFyw7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jqa0PUUUUU=
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7gIQbmlgtcLy2AAA3G

From: Andy Yan <andy.yan@rock-chips.com>

The DisplayPort on rk3576 is compliant with DisplayPort Specification
Version 1.4 with MST support, and share the USBDP combo PHY with USB 3.1
OTG0 controller.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 28 ++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index a86fc6b4e8c4..a153c3976cb3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -1446,6 +1446,34 @@ hdmi_out: port@1 {
 			};
 		};
 
+		dp: dp@27e40000 {
+			compatible = "rockchip,rk3576-dp";
+			reg = <0x0 0x27e40000 0x0 0x30000>;
+			interrupts = <GIC_SPI 337 IRQ_TYPE_LEVEL_HIGH>;
+			assigned-clocks = <&cru CLK_AUX16MHZ_0>;
+			assigned-clock-rates = <16000000>;
+			clocks = <&cru PCLK_DP0>, <&cru CLK_AUX16MHZ_0>,
+				 <&cru ACLK_DP0>;
+			clock-names = "apb", "aux", "hdcp";
+			resets = <&cru SRST_DP0>;
+			phys = <&usbdp_phy PHY_TYPE_DP>;
+			power-domains = <&power RK3576_PD_VO1>;
+			status = "disabled";
+
+			ports {
+				#address-cells = <1>;
+				#size-cells = <0>;
+
+				dp0_in: port@0 {
+					reg = <0>;
+				};
+
+				dp0_out: port@1 {
+					reg = <1>;
+				};
+			};
+		};
+
 		sai7: sai@27ed0000 {
 			compatible = "rockchip,rk3576-sai";
 			reg = <0x0 0x27ed0000 0x0 0x1000>;
-- 
2.43.0


