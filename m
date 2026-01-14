Return-Path: <devicetree+bounces-254790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A165D1C2EE
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 04:03:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 452B930049CB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 446FF2BCF43;
	Wed, 14 Jan 2026 03:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="TtkmPHHn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m19731107.qiye.163.com (mail-m19731107.qiye.163.com [220.197.31.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4124518B0F
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 03:03:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.107
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768359790; cv=none; b=QEH1QdUpXntwJeVNVVP+bMcGjclToGZKcBYtjxV59umbwcLauygQDehnjjenritsfSdN44fIlYmcb19N3/Ho3pwoJAgB3UkU+Rr/DjT863iUdlfBgENh4jJNiybYeE/MR+qDdSjYLi4sPLau6hpAeqtRSRK0v/u2aOl6553S+NU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768359790; c=relaxed/simple;
	bh=LDK+9NUY8y4Psp9RS6gOQpke5VwF9dsUH2Z6MASVHqY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=HUgFHbmztHtsNEhbnlnsvmxzCUb1Y8zAwxs3d2DddtF6+JD8ffIM47atbYvAkbOdf+7YZxKwjw3yaboMvpY1RZWYdegsoPgOrlsIlu8unJZd7dogI9TL7rYvD6hsxS/Dg8bqxXv9q0Y1GjxpFG1p+EoBNWESRqsI42shzt3S0cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=TtkmPHHn; arc=none smtp.client-ip=220.197.31.107
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308c2b3f2;
	Wed, 14 Jan 2026 09:47:26 +0800 (GMT+08:00)
From: Shawn Lin <shawn.lin@rock-chips.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Marco Schirrmeister <mschirrmeister@gmail.com>,
	John Clark <inindev@gmail.com>,
	Tianling Shen <cnsztl@gmail.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Shawn Lin <shawn.lin@rock-chips.com>
Subject: [PATCH v3 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Wed, 14 Jan 2026 09:46:54 +0800
Message-Id: <1768355214-198361-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768355214-198361-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bba2fb1c709cckunmdcf78111428428
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR1IHlZKGRhLHklPQk1OSkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TtkmPHHnHMZ4s1H8rTixX3PpxfIunRdAYtGiCRqwp5FEbd3r5iJD0jtMUeb2XXGO68xWaDWb5zAEDyd/zeSsXQEVYB0dE4JxyEZqJ/xqueibvl6Hoy0Zlwm/Z+c9MsCN06zNdAbLFABcbCfUaDU2L3z7JKh+u2o90KU1pgaLTfY=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=InKQePmcX/j9l0HAXLBjN5cQb6WCehstA9IdFLhiYmc=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Without cd-gpios, the sdmmc would not be detected, because during
runtime PM, the clock is gated which prevents the irq from issuing.

Fixes: f135a1a07352 ("arm64: dts: rockchip: Add rk3576 evb1 board")
Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

Changes in v3: None
Changes in v2:
- add fixes tag

 arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
index 0789733..b583cec 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dts
@@ -958,6 +958,7 @@
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA7 GPIO_ACTIVE_LOW>;
 	disable-wp;
 	max-frequency = <200000000>;
 	no-sdio;
-- 
2.7.4


