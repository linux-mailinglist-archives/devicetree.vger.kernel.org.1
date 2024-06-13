Return-Path: <devicetree+bounces-75224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 72080906057
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 03:19:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B911283331
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 01:19:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14EFB8F68;
	Thu, 13 Jun 2024 01:19:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 315D8C144
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 01:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=160.16.200.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718241547; cv=none; b=r/otTsrWtLJpfjOqroKRifUSi62ncy8IZ6cMky2WFsJYHw3d5l0O9PTpivrHomI265wLAtw/jmTxXi1rLOX3nhwh57MA6FYfny6L6I/YMFL5ENo8IECIBnfjEwaiFsilv29Te7pjjlNjagTGLokHvDcnKSHjHhV5o+JXhT08+zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718241547; c=relaxed/simple;
	bh=NNkmIj+H394WZMwwMqsoLGGFYv9GXufqbEJUeNHxWSQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=bopXHdxg/yaggz89GGP8vTSFZLCBGxBImGOmJ0c85cXGjQ3mAMgK3RwHfPHSXGOfzOiCRJVcbhxybcGSiKsq1MJj2+1ZkbTV5UXH8UNrWqvWYPPylDFCBpMJfTIU+hENJCdhyvceWQO9HY1QZowHAFiBG+WWKbi+5gGMIjP7p1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com; spf=none smtp.mailfrom=hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com; arc=none smtp.client-ip=160.16.200.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com
Received: from secure.fukaumi.org ([10.0.0.2])
	by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 45D0wZvp000731;
	Thu, 13 Jun 2024 09:58:35 +0900
From: FUKAUMI Naoki <naoki@hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com>
To: kernel@esmil.dk
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        FUKAUMI Naoki <naoki@hdr-nlb9-41371129e8304c29.elb.us-east-1.amazonaws.com>
Subject: [PATCH 1/2] riscv: defconfig: enable "heartbeat" led trigger
Date: Thu, 13 Jun 2024 09:58:15 +0900
Message-ID: <20240613005817.1485-1-naoki@milkv.com>
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

Signed-off-by: FUKAUMI Naoki <naoki@milkv.com>
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


