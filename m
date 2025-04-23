Return-Path: <devicetree+bounces-169777-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A92CA98267
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 10:12:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A3F43A41CA
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 08:12:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4A4E211711;
	Wed, 23 Apr 2025 08:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="DgSekd1U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731108.qiye.163.com (mail-m19731108.qiye.163.com [220.197.31.108])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667301DFE8
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 08:12:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.108
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745395954; cv=none; b=Scy5l3+P8aEFNs1lRU6vmpwxbmj6frWsEcLxV2gh6d7Mm3C1o5KtvxssAflPWUwS6wChs+LTLqyg2DwV3wB50ZR2+8Iiz5o+lI4wen419HwFm+Z962xRbXjlWAHdrzlYtB0KjMWPTqcCbzYLt6dif+R+I7EapnOvT4DdNpCR6Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745395954; c=relaxed/simple;
	bh=uF4MaySy/Ib72G/hwd4yqVVdofLa4EpDHTBw5EDOXcg=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Cpo3gdN9WfzvI9PbpTxi0PCcP4imGIHQYLB+K54rFv+O1jtTGOVWi3ZCIoYh63RVG5QPsRFJP3ZWUBubEu8UCnSisea1uEqc/j9KnSJ3YuDu8hRbuS5GJzwDEYn/jvK6U5sA+krXOmEL4v72Rlfwdp15ZUCrulIRhPvtzvRryDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=DgSekd1U; arc=none smtp.client-ip=220.197.31.108
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 12c927d32;
	Wed, 23 Apr 2025 09:22:47 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH] arm64: dts: rockchip: Add pcie1 slot for rk3576 evb1 board
Date: Wed, 23 Apr 2025 09:22:39 +0800
Message-Id: <1745371359-30443-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkkeS1ZIQk8dGUIeGR8fGEJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96603d870509cckunm12c927d32
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MBQ6SQw5SzJLQ0hDPwMJHhdD
	OQhPCg5VSlVKTE9OSExKSE1MQk5DVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpNS0o3Bg++
DKIM-Signature:a=rsa-sha256;
	b=DgSekd1UMNw31ZSTg0wpZ48mFl9hATv3aPFNo6nex1Uh5PPXDNM8Tm/oPYi0sSlu4mf5ciU74dAcKy4Dez48GqaJ5xV6KDLQcVcIK50n/A3rgeaB255q5pQm34ozCsvt3T5fXNlfztkeXre9LrnesTcNeWU5tLH7mg/GXJ1BKqE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=FIhCJo3q1AwrUZ/79S564gX+70Ily7amwz9KfqL0qOc=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

PCIe1 and usb_drd1_dwc3 is sharing the same PHY on RK3576 platform.
For pcie1 slot and USB interface, there is a swich IC labelled as
Dial_Switch_1 on evb1 board. If we need to make pcie1 slot work for this
board, we should first disable usb_drd1_dwc3 and then set Dial_Switch_1
to low state.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index ac397ac..d51f3f1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -691,6 +691,15 @@
 	};
 };
 
+&pcie1 {
+	reset-gpios = <&gpio4 RK_PC4 GPIO_ACTIVE_HIGH>;
+	vpcie3v3-supply = <&vcc3v3_pcie1>;
+	/* Disable usb_drd1_dwc3 if enabling pcie1 and set Dial_Switch_1
+	 * to low state according to the schematic of page 17.
+	 */
+	status = "disabled";
+};
+
 &pinctrl {
 	usb {
 		usb_host_pwren: usb-host-pwren {
-- 
2.7.4


