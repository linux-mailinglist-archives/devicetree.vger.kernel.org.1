Return-Path: <devicetree+bounces-5900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 770217B849D
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 18:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id E789F1F229E5
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 16:11:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232421BDD5;
	Wed,  4 Oct 2023 16:11:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC571BDCF
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 16:11:06 +0000 (UTC)
Received: from relay8-d.mail.gandi.net (relay8-d.mail.gandi.net [IPv6:2001:4b98:dc4:8::228])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CC89109;
	Wed,  4 Oct 2023 09:11:02 -0700 (PDT)
Received: by mail.gandi.net (Postfix) with ESMTPSA id C756B1BF207;
	Wed,  4 Oct 2023 16:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1696435861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xelqXHCBbR0Afr1R7OtV1jiWI/pXI1JW1EUAz/IsmrY=;
	b=JpC0P08glaozT8Oq04At1NJCGr8LOReO617bSKDlLrnXivT/T/RQTxBL6EYRZiztaCuGNa
	eNsVNnyPw1RF/qraF/lQBkW26RBiqyqwndM0jwekhdCtAAqa4LoBn+MO+LIM5La6Jlj/Kg
	fmRpuXzL3c51620ez6yqLKZgdH8f36e1dAYmbQS65RDSGvzlItDEUN2B8TkDaqDdk9dAK1
	SKDiejEZqDmxPrZuc0GOuVBzuMBBbJGHWxkuidxYNlxmqW3QFFnDY++VDe1Sm5Dx+DCYg2
	OtMgjyaJcgyPCXmGiKXDkwPqmuDA1TNx6CdjlmpOdHtPqUhXzcKstiFPJ9d1+w==
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Paul Burton <paulburton@kernel.org>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	linux-mips@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Vladimir  Kondratiev <vladimir.kondratiev@intel.com>,
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	=?UTF-8?q?Th=C3=A9o=20Lebrun?= <theo.lebrun@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: [PATCH 09/11] MIPS: mobileye: Add EPM5 device tree
Date: Wed,  4 Oct 2023 18:10:36 +0200
Message-Id: <20231004161038.2818327-10-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231004161038.2818327-1-gregory.clement@bootlin.com>
References: <20231004161038.2818327-1-gregory.clement@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: gregory.clement@bootlin.com
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a device tree for the Mobileye EPM5 evaluation board.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 arch/mips/boot/dts/mobileye/Makefile       |  2 ++
 arch/mips/boot/dts/mobileye/eyeq5-epm5.dts | 24 ++++++++++++++++++++++
 2 files changed, 26 insertions(+)
 create mode 100644 arch/mips/boot/dts/mobileye/eyeq5-epm5.dts

diff --git a/arch/mips/boot/dts/mobileye/Makefile b/arch/mips/boot/dts/mobileye/Makefile
index 99c4124fd4c0..539b2e1f4e07 100644
--- a/arch/mips/boot/dts/mobileye/Makefile
+++ b/arch/mips/boot/dts/mobileye/Makefile
@@ -1,4 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # Copyright 2023 Mobileye Vision Technologies Ltd.
 
+dtb-$(CONFIG_SOC_EYEQ5)		+= eyeq5-epm5.dtb
+
 obj-$(CONFIG_BUILTIN_DTB)	+= $(addsuffix .o, $(dtb-y))
diff --git a/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts b/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts
new file mode 100644
index 000000000000..ca03115a2858
--- /dev/null
+++ b/arch/mips/boot/dts/mobileye/eyeq5-epm5.dts
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+/*
+ * Copyright 2023 Mobileye Vision Technologies Ltd.
+ */
+
+/dts-v1/;
+
+#include "eyeq5.dtsi"
+
+/ {
+	compatible = "mobileye,eyeq5-epm5", "mobileye,eyeq5";
+	model = "Mobile EyeQ5 MP5 Evaluation board";
+
+	chosen {
+		bootargs = "cca=5 earlycon console=ttyAMA2 ddr32_alias=0x40000000";
+		stdout-path = "serial2:115200n8";
+	};
+
+	memory@0 {
+		device_type = "memory";
+		reg = <0x8 0x00000000 0x0 0x80000000>;
+	};
+};
+
-- 
2.40.1


