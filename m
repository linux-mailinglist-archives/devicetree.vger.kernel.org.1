Return-Path: <devicetree+bounces-75242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFD9906222
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 04:49:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A50D7283104
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 02:49:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26EF12AAE0;
	Thu, 13 Jun 2024 02:49:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC06179AF
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 02:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718246984; cv=none; b=TUxOUvkn7k6Eq8PPcX7LWoMGMXqlMBsgVAkAupLXbgU86dqAVk8X2wnMyv3IZJqk2t9PQPwSJ9rGTpIknrhkD3uFlp/93ZtDDMAMZwQqN23roCl3MyptEkQxlpzYFKgxBtrT+P44RSgiesFXDi5o59joG1oC4P8ekOOSOuB6GWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718246984; c=relaxed/simple;
	bh=7tzQ4acN1EKHhd2OzCx3NXi3oCcdbb0U6wXFk4SWBic=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e0jfUS6QwFmfN7njSFIF1jCE9efCPeucC92t077K372Yttt6BLo7rd58xfUPb+a9Ssg5kdw9ez1xu+IS9vr5+2RXatItdMVqY9gaa+Jy+Ld+JatDz7gImr0Bhijb0c+7HnVhhm7Gw7C8+n0/kATmY0gc43TfaGipIxFUii3wvC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io; spf=none smtp.mailfrom=milkv.io; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=milkv.io
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=milkv.io
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45D2n0mo000957;
	Thu, 13 Jun 2024 11:49:00 +0900
From: FUKAUMI Naoki <naoki@milkv.io>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@milkv.io>
Subject: [PATCH 1/2] riscv: defconfig: enable "heartbeat" led trigger
Date: Thu, 13 Jun 2024 11:48:25 +0900
Message-ID: <20240613024827.36512-1-naoki@milkv.io>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Milk-V Mars has a green LED for heartbeat. This patch adds and enables
related configuration for it.

Signed-off-by: FUKAUMI Naoki <naoki@milkv.io>
---
 arch/riscv/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 12dc8c73a8ac..dce53f36e68d 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -144,6 +144,7 @@ CONFIG_STMMAC_ETH=m
 CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_CAN_RCAR_CANFD=m
+# CONFIG_INPUT_LEDS is not set
 CONFIG_INPUT_MOUSEDEV=y
 CONFIG_KEYBOARD_SUN4I_LRADC=m
 CONFIG_SERIAL_8250=y
@@ -223,6 +224,11 @@ CONFIG_MMC_DW=y
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


