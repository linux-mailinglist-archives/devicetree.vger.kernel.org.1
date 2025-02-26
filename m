Return-Path: <devicetree+bounces-151422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C6AA45C2D
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:52:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4571F189105A
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4711B24E00E;
	Wed, 26 Feb 2025 10:52:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp134-86.sina.com.cn (smtp134-86.sina.com.cn [180.149.134.86])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB4A320E70A
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 10:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=180.149.134.86
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740567149; cv=none; b=G2VVyydKtJg+8vphYlO3vk6OsHK2u9nT60tSysDm0WYLCS30PptdQkf6nvMLM3KjofvH0RnHD9KoC+OV/UY8m+4no3rBAXZunmOXDT78uYSbDYVFdsCAIyHH9fDjW75SArlwOmgccLY8y35pW1adpccQBWUeU7OOalhyr7eeKAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740567149; c=relaxed/simple;
	bh=+FNZDPJJFiAJ9t2iAERYG9oZjAiS0JZDwNejk2fx/lk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=TpQCM0sYgr5zouUBiYsG0/ptJJxRC9gcBt+Bfsw377uimcU1RtCjhsepLOTM65pdl1inj53nBGyRbvAwl7Xf/7qZditDsjxwZetXVpWLGCXp2uKsoTEgCa8rP80uVlGQtBV1XT/e3XxbKfrTxmYEHt/HHYY1nVCXV/5rYTEjn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com; spf=pass smtp.mailfrom=everest-semi.com; arc=none smtp.client-ip=180.149.134.86
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=everest-semi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=everest-semi.com
Received: from unknown (HELO zy-virtual-machine.localdomain)([180.159.108.137])
	by sina.net (10.185.250.30) with ESMTP
	id 67BEF1CF00003A73; Wed, 26 Feb 2025 18:49:55 +0800 (CST)
X-Sender: zhangyi@everest-semi.com
X-Auth-ID: zhangyi@everest-semi.com
Authentication-Results: sina.net;
	 spf=none smtp.mailfrom=zhangyi@everest-semi.com;
	 dkim=none header.i=none;
	 dmarc=none action=none header.from=zhangyi@everest-semi.com
X-SMAIL-MID: 8E84643D83234D9A98BABE86AB6658B3
X-SMAIL-UIID: 8E84643D83234D9A98BABE86AB6658B3-20250226-184955
From: Zhang Yi <zhangyi@everest-semi.com>
To: alsa-devel@alsa-project.org,
	broonie@kernel.org,
	devicetree@vger.kernel.org
Cc: tiwai@suse.com,
	amadeuszx.slawinski@linux.intel.com,
	yangxiaohua@everest-semi.com,
	zhuning@everest-semi.com,
	zhangyi@everest-semi.com
Subject: [PATCH 2/2] ASoC: dt-bindings: Add Everest ES8389 audio CODEC
Date: Wed, 26 Feb 2025 18:49:49 +0800
Message-Id: <20250226104949.16303-3-zhangyi@everest-semi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250226104949.16303-1-zhangyi@everest-semi.com>
References: <20250226104949.16303-1-zhangyi@everest-semi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Add device tree binding documentation for Everest ES8389

Signed-off-by: Zhang Yi <zhangyi@everest-semi.com>
---
 .../bindings/sound/everest,es8389.txt         | 68 +++++++++++++++++++
 1 file changed, 68 insertions(+)
 create mode 100755 Documentation/devicetree/bindings/sound/everest,es8389.txt

diff --git a/Documentation/devicetree/bindings/sound/everest,es8389.txt b/Documentation/devicetree/bindings/sound/everest,es8389.txt
new file mode 100755
index 000000000000..a65222f984da
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/everest,es8389.txt
@@ -0,0 +1,68 @@
+ES8389 audio CODEC
+
+This device supports I2C only.
+
+Required properties:
+
+- compatible : "everest,es8389"
+
+- reg : The I2C address of the device.
+ It depends on The Voltage level on Chip Address Pin(AD1 = PIN11,AD0 = PIN1)
+
+- "#sound-dai-cells"
+
+Optional properties:
+
+- everest,adc-slot:
+ This property is used to set the slots of recording data when multiple codecs
+ are connected in PTDM mode. please do not set this property if you are setting
+ STDM mode.
+ minimum: 0x00
+ maximum: 0x07
+ default: 0x00
+
+- everest,dac-slot:
+ This property is used to set the slots of playing data when multiple codecs
+ are connected in TDM mode.
+ minimum: 0x00
+ maximum: 0x07
+ default: 0x00
+
+- prefix_name:
+ To set the prefix_name of kcontorls and dapm.
+
+- everest,dmic-enabled
+ The property selects the PDM interface of ES8389
+
+Example for single codec:
+
+ es8389: es8389@10 {
+                compatible = "everest,es8389";
+                status = "okay";
+                reg = <0x10>;
+                everest,adc-slot = [00];
+                everest,dac-slot = [00];
+                prefix_name = "es8389_0";
+                #sound-dai-cells = <0>;
+        };
+
+Example for multiple codecs:
+ es8389_0: es8389@10 {
+                compatible = "everest,es8389";
+                status = "okay";
+                reg = <0x10>;
+                everest,adc-slot = [00];
+                everest,dac-slot = [00];
+                prefix_name = "es8389_0";
+                #sound-dai-cells = <0>;
+        };
+es8389_1: es8389@11 {
+                compatible = "everest,es8389";
+                status = "okay";
+                reg = <0x11>;
+                everest,adc-slot = [01];
+                everest,dac-slot = [01];
+                prefix_name = "es8389_1";
+                clock-names = "mclk";
+                #sound-dai-cells = <0>;
+        };
-- 
2.17.1


