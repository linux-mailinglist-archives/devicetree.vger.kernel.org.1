Return-Path: <devicetree+bounces-168765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F4FA94462
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 18:08:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 786EF175C0E
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 16:08:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 773531DE2DF;
	Sat, 19 Apr 2025 16:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="G2st2Wq8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DC801D54C2
	for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 16:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745078882; cv=none; b=D7RrlwU7JPkmlrKW4E+2WpxE8rK7dj6jSudi1h4xFwV3biwtPqekI93mOrI6nA55GiO/7xy8xlu98iD3cym9mv1WkM5pLpp6jNW3EoGJcCaZDqmbxZnvOGc47z3xSjclHA7rXwTk+gPTzNDr0GUB3UGJn+HfyQR5od/ALLNGCM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745078882; c=relaxed/simple;
	bh=itlZfMiORUrDbh2i8HEMz92GLdhKMZH3i4NgvMs2yfE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qc8yugjz7nEBD7ICluEmMUwX8d8XsXxFYw0ZG057mNTCIYmS2V3N+xYox14PuwjpscxrRp5DOwiNjp+khEBs5aHK8k11W1DMFD9Ti8HGvZMf1BEpG1WElTd4f8fmW4ssdO+7x11zuJp4NNz9Of4orZQnbeW9gsqFjnA2eSJjLlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=G2st2Wq8; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-39d83782ef6so2635836f8f.0
        for <devicetree@vger.kernel.org>; Sat, 19 Apr 2025 09:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745078879; x=1745683679; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cuSitV2YuumtHVL/ZIXcZnkk69oD+TSaZQMjbMoWuyY=;
        b=G2st2Wq838F9/SVTDyfKdE+qXZrJyzok9RCEI/7FA1UMsFcky4aDW94IzoG8N4lvJL
         HThvoe4k+zO32KA6QGo83y+BsAUFiyeqHAdYIR4vE7+zSTRYnjbl+N9SU20ge6oebxh1
         bEP7RlMjEgII4K9rOp5rI9pAslIFwxSYvaYXams+YZD8+XsyODRq3R3NvsI9uqP8v+Cy
         nWejEA+eoenmIsS7PgaM7czPcm5y6A0ed4tW6OBTNkdOSmefKdQ5k4IuVqSvtkCyBYFU
         rRIiEzB1iNGcngFP9CyJfoVHSGX0NvdCWa7Wz/aJUOLJULyArIR+ZKRc3Vqol4Mh/JV5
         vZbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745078879; x=1745683679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cuSitV2YuumtHVL/ZIXcZnkk69oD+TSaZQMjbMoWuyY=;
        b=G7eDQYNdcAcRtvrU25HZF0KGrw+fKiISIoyXCMgsE0iihLJXE5PX70fCX34dbJ6bpj
         091ngiOPLIN5PGs6RLvhubxEOu1vE3OFqAvNhqKPaDfCcHLeZ7BaUeUV4SF1635HWryr
         6TRctk9mVuf6Uty/PnHXYZrEtN85VCb3mfW3layv0ekRdBSnhCwZujPFIsQgUIB6bwx8
         +0GvPGuJ+UUy9HDS6joBxsB0aZNFNGO8lgWWz0j/BuUEA3uuQwuBrWlwLtcIGsNPKiFx
         shvDBtnZsBEynCUZDtB2lJ//DObvAukkEKIMZ0qv+tUkSEPc56fBcOozuFyG/7olWqa9
         24LA==
X-Forwarded-Encrypted: i=1; AJvYcCVUmLSh+Pj5h0cuUjwDM/lVyyRT8iSO0Qh4BEr7+zmHxd88hziUlNqx8r9mN4Kh1OBa/Oi1FboUuXS3@vger.kernel.org
X-Gm-Message-State: AOJu0YzD36pUfIfT2VumxXNom4pz0DzpiZamIGONoMZ8E4CxJ7JKWcKc
	zhgxLgd9nI9x7bln8fC/N+0zW9ID8D9xF1EuC036eivliAejS7Zc
X-Gm-Gg: ASbGncs56YRJkJA36JZWKPNqQpwWx6C13ZKxbhrvNG2VcBwrtIrMVFN147M13UDDceE
	+Q5BWOBD3NLjOaWMZL7Fd8sdzU+KtiFpE71LkKinkzn40FXgQxFJfGy3xSkYSa5Y4UK9jZ3+bE1
	BleA9r/ScT2Yjf96g8CyM3r0Xg3vwhbElOsGAW0h+XDBz09SIcGBfxPdZapVUJ7T5y7nUkEciXG
	x3QUlFCSu0eYhBzS1MP8NZFmTrSmEgu7XYHVgHBh12DwLcEldTIl9rqdMFaA8iEOxMqbtcV2AAU
	BVTdWiws2pwEAQfkrIBmcVwUUmswYTTmyrpEWSXFl5w+VCvlDu1/m6Y1XakqWLmAbd88Yusvsm3
	mKvePqTNC0+NUy1kZwSA23atrqXWcit7PmCdxKBKH4gK3BAGe90QdZhhz0bpT5jiasnrLnDxVI1
	U=
X-Google-Smtp-Source: AGHT+IHAPN9N64rdCZ+4Ferq3InaWnzLIdPCLXl/1Ga5fibN8lrQi8XSSi/NSOcGDYUSoS8vjr2zdw==
X-Received: by 2002:a5d:6da8:0:b0:38d:dc03:a3d6 with SMTP id ffacd0b85a97d-39ef89b5d1emr6024998f8f.4.1745078878880;
        Sat, 19 Apr 2025 09:07:58 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4406d5acce9sm66571445e9.13.2025.04.19.09.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Apr 2025 09:07:58 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [RFC] arm64: dts: allwinner: a64: Add overlay for Realtek
Date: Sat, 19 Apr 2025 17:07:46 +0100
Message-ID: <20250419160751.678827-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add overlay for the Pine64 Realtek rtl8723bs WiFi
module that works on the Pine64/64+/SoPine devices.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>

I've looked at overlays for other vendors, such as available
for some of the Rockchip devices, and I believe I have this
mostly correct but would like some feedback both on if I have
everything needed for Allwinner devices, but also what's needed
to be able to use a single overlay across more than one device.

This is dependent on the following [1] patch series.

Peter

[1] https://lore.kernel.org/linux-devicetree/20250419160051.677485-3-pbrobinson@gmail.com/t/#u

---
 arch/arm64/boot/dts/allwinner/Makefile        |  6 ++++
 .../allwinner/sun50i-a64-pine64-realtek.dtso  | 30 +++++++++++++++++++
 2 files changed, 36 insertions(+)
 create mode 100644 arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-realtek.dtso

diff --git a/arch/arm64/boot/dts/allwinner/Makefile b/arch/arm64/boot/dts/allwinner/Makefile
index 00bed412ee31..be991f8d8110 100644
--- a/arch/arm64/boot/dts/allwinner/Makefile
+++ b/arch/arm64/boot/dts/allwinner/Makefile
@@ -8,6 +8,7 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-olinuxino-emmc.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-orangepi-win.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-lts.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-plus.dtb sun50i-a64-pine64.dtb
+dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pine64-realtek.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinebook.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.0.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-a64-pinephone-1.1.dtb
@@ -52,3 +53,8 @@ dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-2024.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-h.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-plus.dtb
 dtb-$(CONFIG_ARCH_SUNXI) += sun50i-h700-anbernic-rg35xx-sp.dtb
+
+# Overlays
+sun50i-a64-pine64-realtek-dtbs      := sun50i-a64-pine64.dtb sun50i-a64-pine64-realtek.dtbo
+sun50i-a64-pine64-lts-realtek-dtbs  := sun50i-a64-pine64-lts.dtb sun50i-a64-pine64-realtek.dtbo
+sun50i-a64-pine64-plus-realtek-dtbs := sun50i-a64-pine64-plus.dtb sun50i-a64-pine64-realtek.dtbo
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-realtek.dtso b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-realtek.dtso
new file mode 100644
index 000000000000..51b57a46e23f
--- /dev/null
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64-realtek.dtso
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+// Copyright (c) 2025 Peter Robinson
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+
+&mmc1 {
+	status = "okay";
+
+	rtl8723bs: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&r_pio>;
+		interrupts = <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 */
+		interrupt-names = "host-wake";
+	};
+};
+
+&uart1 {
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		enable-gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+		host-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+	};
+};
-- 
2.49.0


