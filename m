Return-Path: <devicetree+bounces-80754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D798991A5C1
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:55:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 824091F21D34
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:55:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14AAC14C58E;
	Thu, 27 Jun 2024 11:55:54 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76E9A4500C
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:55:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489354; cv=none; b=uJnrjQPYAPduL5yHvvSrqts0zBLIec8IsATaRZwYW9dOywHFbukPhxYK3ifmpIP2ZhtY8ysePSoQ+2h+ULVXvK3ZYIV7NFJMz9P/e2lcit5BXqKMWZo4THIhkDEGTZzRAdfQ3cRart/BF7yo10SUnXah4qRaxyOcKzVzRRcH9+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489354; c=relaxed/simple;
	bh=E9LCP7C5rv644waCW4aV6L5OsMn+NC6NNrGxm0vJL1Q=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=B+UcwnPtbGn6zGeO/8GyTkKlCvaR+F8vFHplZe3MJEEn/VD5M829JENQMwSb8Rd3ajnotTTrAJKc+yh9WKK+jXsiCoxHa6nWuJUx1Rgo++vI8ceAwT17s43H4HaqJR5P79QOVEgnXA+O0cxQ2HlmpKeu2BEFWv1idSABTgjA8aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45RBr0rZ021179;
	Thu, 27 Jun 2024 20:53:01 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH v3 1/4] riscv: defconfig: enable "heartbeat" led trigger
Date: Thu, 27 Jun 2024 20:52:33 +0900
Message-ID: <20240627115236.618-1-naoki@milkv.io>
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


