Return-Path: <devicetree+bounces-274382-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6NxtDj0bsmnjIgAAu9opvQ
	(envelope-from <devicetree+bounces-274382-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:47:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E89826BFF7
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 02:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BAB3F3031AE6
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 01:47:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B59D3750DA;
	Thu, 12 Mar 2026 01:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Fk90FPzQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m155106.qiye.163.com (mail-m155106.qiye.163.com [101.71.155.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8E32B9A8
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 01:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773280058; cv=none; b=l1qsF0/pMOLY1lBXq55Qeu9uwI7Tsj2igozuchFLzE4YU6QZfo0bfBvUOvZcb6soDJz+XD4ZGC8cXonJiZHVml0gL4Hdovn1WYYGzbXut4kigazdQvFHnfNpwvYQ3kPU5xcgrk+O23t6kk0w+advig5jv68XW0tB2rJuXrMlLDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773280058; c=relaxed/simple;
	bh=8oHn3g58BjkzzNeVVqdmFSLCToBCLKfb38krdPklpIo=;
	h=From:To:Cc:Subject:Date:Message-Id; b=Uu4Rx2ckRQgHWBuPprxCW/fckomlyTsK1mT6yrXDZnG9STyySy69daUndZeKy1O1Syof9yKcPiuMwzgRfsGAg+mN7G94akDHi6Kao6+bMMQ6SXxvuY2HlyX9l1eOpRUs+rJhPUfADln0f5BY4zDF01bcwQ1JVr/jgWwl/whSxt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Fk90FPzQ; arc=none smtp.client-ip=101.71.155.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 369fb8d6d;
	Thu, 12 Mar 2026 09:12:04 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v2] arm64: dts: rockchip: Add mphy reset to ufshc node
Date: Thu, 12 Mar 2026 09:11:53 +0800
Message-Id: <1773277913-29580-1-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
X-HM-Tid: 0a9cdf99cc3b09cckunme9be3b7f5ae6a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0NDGVYaTkMaSx1CH0tOGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Fk90FPzQjXMpd3UbBC3R9hIpLv6zu2xic5j6pXsrN0H9rI/DHQKIuuqIgjN4HhIdtHZcdiMF6BWwpE5mELvxHtjbU71UIpd43ssd/4WhJk4N2PIjiosEM3y7057l+PWKy+0rY6evfLCOJI3b5WFsFZN4rJwdk//DvcAnWwC+Vf0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=fHmb+YlUv7Nu0y5qxsXTJRFcWV5YJy6pwaTsnn/PDlA=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[rock-chips.com,none];
	R_DKIM_ALLOW(-0.20)[rock-chips.com:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-274382-lists,devicetree=lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shawn.lin@rock-chips.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[rock-chips.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,rock-chips.com:dkim,rock-chips.com:email,rock-chips.com:mid]
X-Rspamd-Queue-Id: 0E89826BFF7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The mphy reset signal is used to reset the physical adapter. Resetting
other components while leaving the mphy unreset may occasionally prevent
the UFS controller from successfully linking up with the device.

This addresses an intermittent hardware bug where the UFS link fails to
establish under specific timing conditions with certain chips. While
difficult to reproduce initially, this issue was consistently observed in
downstream testing and requires explicit mphy reset control for full
stability.

Fixes: c75e5e010fef ("scsi: arm64: dts: rockchip: Add UFS support for RK3576 SoC")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v2:
- update the commit msg to better describe the issue and add fixes tag
  then send it as a separate patch.

 arch/arm64/boot/dts/rockchip/rk3576.dtsi | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
index 9c28769..9fa99be 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
@@ -2035,8 +2035,9 @@
 			pinctrl-0 = <&ufs_refclk &ufs_rstgpio>;
 			pinctrl-names = "default";
 			resets = <&cru SRST_A_UFS_BIU>, <&cru SRST_A_UFS_SYS>,
-				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>;
-			reset-names = "biu", "sys", "ufs", "grf";
+				 <&cru SRST_A_UFS>, <&cru SRST_P_UFS_GRF>,
+				 <&cru SRST_MPHY_INIT>;
+			reset-names = "biu", "sys", "ufs", "grf", "mphy";
 			reset-gpios = <&gpio4 RK_PD0 GPIO_ACTIVE_LOW>;
 			status = "disabled";
 		};
-- 
2.7.4


