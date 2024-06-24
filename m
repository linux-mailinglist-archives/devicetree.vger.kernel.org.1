Return-Path: <devicetree+bounces-79252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3835D9147B3
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 12:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 729291C213D6
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 10:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 011B9136E0F;
	Mon, 24 Jun 2024 10:42:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E741369A3
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 10:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719225722; cv=none; b=OvSsdIQGUfdiQNQLQrzQPQtXGog32j6veKj/Cr+gdiFxHdp/tfrLwVDWyyJzC2OGUdPqyq20x3dVQPanSkDzQbVDLcgaX6uxP93cYEfd5EYpwOp05PZmGCc8/Tm8Xc/aOkPF0ZEtHS8KnZIPhsncHlWVdXPGLBwdCdfUO1+v+mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719225722; c=relaxed/simple;
	bh=E9LCP7C5rv644waCW4aV6L5OsMn+NC6NNrGxm0vJL1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HL63Xjf7t8x9uumxBXk7g/7asX/B6Xbx6i/Y75LuV1Pv0Y5JJeIATs2/7dnzZLap3/1yrYWT7dCETeKGsyQmwmj9vJAKFxh+eXo+tIO5OCJYWjRO3Y3l1MQeFC0nyFdsPtS3oU6mYuDecfjisY3lW9jD+pT1OKYrRPq3T/InJic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45OAdw5X009984;
	Mon, 24 Jun 2024 19:39:59 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v2 1/4] riscv: defconfig: enable "heartbeat" led trigger
Date: Mon, 24 Jun 2024 19:39:22 +0900
Message-ID: <20240624103925.946-1-naoki@milkv.io>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

following JH7110 based boards have a LED for heartbeat.

- Milk-V Mars
- Pine64 Star64
- StarFive VisionFive 2

This patch adds and enables related configuration for it.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>

Changes in v2:
- reword commit message to include other JH7110 based boards
---
 arch/riscv/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 3f1f055866af..5f5582d7d7fd 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -147,6 +147,7 @@ CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_MOTORCOMM_PHY=y
 CONFIG_CAN_RCAR_CANFD=m
+# CONFIG_INPUT_LEDS is not set
 CONFIG_INPUT_MOUSEDEV=y
 CONFIG_KEYBOARD_SUN4I_LRADC=m
 CONFIG_SERIAL_8250=y
@@ -246,6 +247,11 @@ CONFIG_MMC_DW=y
 CONFIG_MMC_DW_STARFIVE=y
 CONFIG_MMC_SDHI=y
 CONFIG_MMC_SUNXI=y
+CONFIG_NEW_LEDS=y
+CONFIG_LEDS_CLASS=y
+CONFIG_LEDS_GPIO=y
+CONFIG_LEDS_TRIGGERS=y
+CONFIG_LEDS_TRIGGER_HEARTBEAT=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
-- 
2.43.0


