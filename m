Return-Path: <devicetree+bounces-259180-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4NsrNhD1dGnI/QAAu9opvQ
	(envelope-from <devicetree+bounces-259180-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:36:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 435D07E21E
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 17:36:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 685FC30087BA
	for <lists+devicetree@lfdr.de>; Sat, 24 Jan 2026 16:36:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE8E2517B9;
	Sat, 24 Jan 2026 16:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Qx64dh2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD3D22459C6
	for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 16:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769272580; cv=none; b=fGUhc1awtKcu72sMNeDNCQ22bD6tK1UcJXW0HUlZspFusXYxK5Bmul9aqN/BvGzWbCuQvkRV8O+X6XQy3Rp8EfGFZ29JoI9vP6iKsojBh6T6BVXDJphlylrpf6nCg+tt1avHfh117wwZyURrn0xb9PTG0HRR8Q5PmZkOObALLAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769272580; c=relaxed/simple;
	bh=iHtGDYtOxr8tS3SepN5RyHEb8OP8PvoGueEQpKdOTz8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AgzheuTApgl3LzonOdikg2DzPc8LyYwrLcDvhVWTRFpet67aHCkk8qVp9cWhaj3Q3G5cITyFcdGhni9U8PhjhtrX4F1HPKlTbLxsNctgl0XPSqGhPY2E/nO/o4XiJ387zgubVS7M//Oqmc7jxtuXeG1Bw+78VhwOYngMBeSuM9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Qx64dh2Z; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-2a743050256so21904115ad.3
        for <devicetree@vger.kernel.org>; Sat, 24 Jan 2026 08:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769272578; x=1769877378; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zuI/R50Wdcwx6KxKTASaO5ixcmo8VN+zl7gMypAg/WA=;
        b=Qx64dh2ZfC1wwdYX1GpcZ9u65lQQaGWeEvdVj0qlpLGxyD+xESdyhmCu4bDO/crOF/
         q4ggsmhPuhaSDF+l4jVbqFxuC/kSJRVFN9r2291miPWuEi/1YsHJCHBG2e19wWqk8HX1
         i7IU+SBrE/YcG1uZ9ehdgUlaW9gViVcmmXALV1SExy/v221kpTsf5ubFLh9ndkgOkK6x
         zR09B8KCT60KQpXyuM8dD9tV0tpdPvoRTlw5iV++Vq+HmBUoAPSM/n0wKxoiQZ7cYoxX
         qyTcaz0EOeGo0CKeI0b/7jz4azNFZZyOw/heNqyULLorzuOrTNLnxXP3+JOn05nOkOvF
         OQSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769272578; x=1769877378;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zuI/R50Wdcwx6KxKTASaO5ixcmo8VN+zl7gMypAg/WA=;
        b=c6mdq4J7+mWeSq2YkD/wSAEshGt/I7vKSa3PKTFeNYbjoGIl8H2yUAIKg1IQ1AjrLS
         E/gd9yCRzdB6tkjsaoeZ8g9pwquuGIFW4eQwjL1yptmqUdu+DUWxvGMsFXlmL1rpeTFk
         sKKT8XIGzAJiiWhTvtHCVinnF0/Aj0bTkPEzPIE9+Y0gfd1d5eI1iw+f/dqpf3xImg3d
         5JrQ3vZ6FwHePqYUmOBQCGRPebuOiP7J3BOs8CluZyOGT5opI87W33eVh5zA6rj7ZJme
         nNWzp8hyJCRoxDt8MQZdlJxOCZFgrqGIogQuT4vL6ELgEmsYXDIn1JNvx1grfZ72l8VG
         xyBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVEzkQUsTmqgefR9wWf2CnusLl/Z/mAbwMPa0s8f2bhHoUR9LjyUXpL7qTFZJvHR4SPPkqCts+EeDaW@vger.kernel.org
X-Gm-Message-State: AOJu0YxOe8OmcoYNKmrTx/ZA2u/spR0lLeOip69QJfJLvQqG1T5kdi2j
	PrBhLzZ5U46vuzJQabKuDIXEZfHWTGyq6DevIn4Xt1O0UMYN245hyjWcl/JZyw==
X-Gm-Gg: AZuq6aI5xL38nsalltEn2Cm7P5L0NHe/D5GRCJWMixiXYlcJlmf/H5Yz3MHbZVPYUdl
	hO6B9wfJnS3dICU2w3O2F3GiSrCzaQKxt1HphayTTqgMA0dqfVFUopT0ZgLbiZwAi9jEr64HFI2
	LGxPzAW7Yu2+45GajmOp3UZQtiF58BGFHaOiGEekZCpA7ZfacZiIEZk4pvLOZrpfLibn4HbPfp+
	1lCbK208elME/s11da+gA8SC/Sa3ublL0jba88Pka+odvv6hbCvG9IF0P5VaCMonmU02jln12/c
	yJUiqMDm/hZ44h4s7cgy06V7XHX+OY6QHOutzIRv/PrvuQLjfgBmXaY9FC8lW+vFJt9wuHLVD5L
	IptcogAJpexZ6c7Nn5bDbIyTyNvaHFxiWlZ5/JcAeKg6DhnCxxwg7CX65ecwP93EpKHb6oB2upB
	PejwXRweR4NviOF2t57feB0qKkeNtR6IuO6fL0xtQ8RL/8cwe4vbeA5No=
X-Received: by 2002:a17:902:e54e:b0:2a0:d5bf:b271 with SMTP id d9443c01a7336-2a7fe625e4amr63347525ad.32.1769272577428;
        Sat, 24 Jan 2026 08:36:17 -0800 (PST)
Received: from wig-Precision-3660.. (125-227-154-99.hinet-ip.hinet.net. [125.227.154.99])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802fdd0c9sm49900895ad.95.2026.01.24.08.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 24 Jan 2026 08:36:16 -0800 (PST)
From: Wig Cheng <onlywig@gmail.com>
To: geert+renesas@glider.be,
	magnus.damm@gmail.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	zaq14760@gmail.com,
	Wig Cheng <onlywig@gmail.com>
Subject: [PATCH] arm64: dts: renesas: Add pixpaper display overlay for RZ/V2H Kakip board
Date: Sun, 25 Jan 2026 00:36:11 +0800
Message-ID: <20260124163611.3279104-1-onlywig@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-259180-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[glider.be,gmail.com];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[onlywig@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 435D07E21E
X-Rspamd-Action: no action

Add device tree overlay to support the MayQueen PixPaper e-paper display
on the Renesas RZ/V2H EVK (KAKIP board). The display is connected via
SPI0 interface and uses GPIO pins for reset, busy, and DC control.

The overlay configures:
    - RSPI0 pinmux for SPI communication (MOSI, MISO, CLK, CE0)
    - PixPaper display device with proper GPIO assignments
    - SPI frequency set to 1MHz for stable operation

This enables support for the Open-EP Community pixpaper-213-c module on
the RZ/V2H platform.

Signed-off-by: Wig Cheng <onlywig@gmail.com>
---
 arch/arm64/boot/dts/renesas/Makefile          |  3 ++
 .../renesas/r9a09g057h48-kakip-pixpaper.dtso  | 40 +++++++++++++++++++
 2 files changed, 43 insertions(+)
 create mode 100644 arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 1fab1b50f20e..d4dfb7fd973b 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -202,6 +202,9 @@ dtb-$(CONFIG_ARCH_R9A09G057) += rzv2-evk-cn15-sd.dtbo
 r9a09g057h44-rzv2h-evk-cn15-sd-dtbs := r9a09g057h44-rzv2h-evk.dtb rzv2-evk-cn15-sd.dtbo
 dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h44-rzv2h-evk-cn15-sd.dtb
 dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h48-kakip.dtb
+dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h48-kakip-pixpaper.dtbo
+r9a09g057h48-kakip-pixpaper-dtbs := r9a09g057h48-kakip.dtb r9a09g057h48-kakip-pixpaper.dtbo
+dtb-$(CONFIG_ARCH_R9A09G057) += r9a09g057h48-kakip-pixpaper.dtb
 
 dtb-$(CONFIG_ARCH_R9A09G077) += r9a09g077m44-rzt2h-evk.dtb
 
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso
new file mode 100644
index 000000000000..e36cfc9227f4
--- /dev/null
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip-pixpaper.dtso
@@ -0,0 +1,40 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Device Tree Overlay for Mayqueen (Open-EP Community) pixpaper display
+ * support on Renesas RZ/V2H platform (KAKIP board).
+ *
+ * Copyright (C) 2026 Wig Cheng <onlywig@gmail.com>
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+
+&pinctrl {
+	rspi0_pins: rspi0 {
+		pinmux = <RZV2H_PORT_PINMUX(9, 0, 1)>, /* SPI0 MOSI */
+			 <RZV2H_PORT_PINMUX(9, 1, 1)>, /* SPI0 MISO */
+			 <RZV2H_PORT_PINMUX(9, 2, 1)>, /* SPI0 CLK */
+			 <RZV2H_PORT_PINMUX(9, 3, 1)>; /* SPI0 CE0 */
+	};
+};
+
+&rspi0 {
+	pinctrl-0 = <&rspi0_pins>;
+	pinctrl-names = "default";
+	#address-cells = <1>;
+	#size-cells = <0>;
+	status = "okay";
+
+	display0: display@0 {
+		compatible = "mayqueen,pixpaper";
+		reg = <0>;
+		spi-max-frequency = <1000000>;
+		reset-gpios = <&pinctrl RZV2H_GPIO(A, 7) GPIO_ACTIVE_HIGH>;
+		busy-gpios = <&pinctrl RZV2H_GPIO(B, 3) GPIO_ACTIVE_HIGH>;
+		dc-gpios = <&pinctrl RZV2H_GPIO(7, 4) GPIO_ACTIVE_HIGH>;
+	};
+};
-- 
2.43.0


