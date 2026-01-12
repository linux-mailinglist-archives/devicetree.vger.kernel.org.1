Return-Path: <devicetree+bounces-253718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E934D10D54
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 08:19:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10D0C3005499
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 07:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977BC32AACB;
	Mon, 12 Jan 2026 07:19:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Hm7r4mnZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m3296.qiye.163.com (mail-m3296.qiye.163.com [220.197.32.96])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB3A3090CC
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 07:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.32.96
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768202366; cv=none; b=JU4jKSsNxES8t26Ggy+EX6kVAMCNBfHt4uhyAJGrYFcFL/yIoM56TQ/l4HY8ht4fThE8E8BA3nHaO/7E8OWIepShO9ThiDWvEtW+Rw787nZEnb7uzXDmBCU1jTExfS6BpetFMwYttEU2tRjgcSwYdliJbzfkl1ad7g2JDoFIdZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768202366; c=relaxed/simple;
	bh=PyaEWVD3/Vfy55XXuYJJf+QgiUMMfuI0e6OHTKEOrpc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=ccIqi3PLVJXpcMdV/FcNMagdGQ1qp9nZ9AFhmQR6EGnEEX5Tbjw/5kd7IatkhtaphpLdwn3FlMdzclL4ymA2+Fo905sbvcnjJheLXuFCShxrqAJuXxThKKtSNG43+coYgeXsgl3aZCiUnSMfOW2xdqOWK684bqrDPFbUTHnxFjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Hm7r4mnZ; arc=none smtp.client-ip=220.197.32.96
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30449dd3c;
	Mon, 12 Jan 2026 11:49:56 +0800 (GMT+08:00)
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
Subject: [PATCH 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Mon, 12 Jan 2026 11:49:28 +0800
Message-Id: <1768189768-96333-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768189768-96333-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb0531eb009cckunm0fb8f84327b714
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ01DS1ZNGUIeH04fGkoZGU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Hm7r4mnZGsMHolJEGpjV6HVHHXu5WAJv5hGCjic0mXggjnTlhzRPdvJ5rZ73VcwOzbTgWxg8JV9dNh+T2EOlDc81vyFZztLq/tH5I33fQZ7Qy/ld7K9P8vTXIOHwpI9SkKJ11Q426keGV6/8SFg0d8z/s0OI1FpGoOg8R1XU3Ww=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=eGUBLzX9nH7916SqdKS42gC2wyBsTB0DYb8ntavVXOk=;
	h=date:mime-version:subject:message-id:from;
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Without cd-gpios, the sdmmc would not be detected, because during
runtime PM, the clock is gated which prevents the irq from issuing.

Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
---

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


