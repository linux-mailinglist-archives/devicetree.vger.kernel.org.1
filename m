Return-Path: <devicetree+bounces-254226-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA1BD1623B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:20:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99BAA302D5F6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:19:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A51E265629;
	Tue, 13 Jan 2026 01:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b="Q74C/XOO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-m15573.qiye.163.com (mail-m15573.qiye.163.com [101.71.155.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4D01163
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=101.71.155.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267158; cv=none; b=SBAnJE1di8UDHJ18nx/hf9pD6FC36T9M4U1iMhCXLu6C3lWGlViNZNiWnITGYVUVOri2WsJ6KlVj+7fq3EEkm66yDW6S4wY+eu2Nf6CGndfFnwIBzBT+1UdwFPvZsKCKdi++5e8H8lRVBRexFhfGj1/DP2lt8myF/smkiON9BXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267158; c=relaxed/simple;
	bh=mt/AM06Ui4IPTwUSPStdj55lBEKh093/uV+AgqjTQf8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=U0NGyEQOVaUwaCfrOCr7okvWkRjQl23MVIf1c5dyS8YfeMH7LOMBgiCYG2QzTzQBGcKHNWMIijfroPmdHJ0WcU1Upb1FgwXZt+dA5X0Tdf2+fcyxIXFq/H2Kf4Fai6Pzy1ZHw0daU7QTRMPJj+KmjJ4xHOtGxap5U84pu46NoHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com; spf=pass smtp.mailfrom=rock-chips.com; dkim=pass (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.b=Q74C/XOO; arc=none smtp.client-ip=101.71.155.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rock-chips.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rock-chips.com
Received: from localhost.localdomain (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 306510fb1;
	Tue, 13 Jan 2026 09:19:05 +0800 (GMT+08:00)
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
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add cd-gpios for sdmmc of RK3576 EVB1
Date: Tue, 13 Jan 2026 09:18:25 +0800
Message-Id: <1768267105-127385-4-git-send-email-shawn.lin@rock-chips.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
X-HM-Tid: 0a9bb4ef615109cckunm57b018bc3402c2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0sdTVZCHUsaGB5JHx1KGU1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Q74C/XOONnprv6wr6p5dRe76LXZ0NIDLBBly3xDjYKtWyLjuo/MjoV/6Q/ljtC688FNlnEoCaZTcdMnS19hZdgWFB2HniLPtG3VPcu7qBpp4x2zT3azF1Qr59x7ZdJsVN8z8U2qvqx0ZEyNtuiwzHgX8q0z5d+SELvHjRaqG7sQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=56SohpNp2iK/sZm5LHqxotiHIR5mQLGYqQGhcLPF8G4=;
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


