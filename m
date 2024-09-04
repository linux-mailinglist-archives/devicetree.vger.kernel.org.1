Return-Path: <devicetree+bounces-99847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A629696B587
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 10:53:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A396CB2A4DC
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 08:51:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90EA1CC88C;
	Wed,  4 Sep 2024 08:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="cgyRbqfI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB861CC8A8
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 08:50:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725439852; cv=none; b=R084/ycKxy3IX2t3HETrz8FS8Vr88uoeIFfLcomIJDzEXlX4aErtK7P5PM3niQyz/07+ilK+jhvuHno0UFJ+jgOAXm/qeJybdU8oD1GEALdQrNN8RU6XEOzF5gvSUv1r445tDVWGAth390bHXkUSEv9+BgAYSGdMNpZO5n78yv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725439852; c=relaxed/simple;
	bh=M0ff1sg+I4JXDIWzCV2WfkBh402UXR1cQY7Nh/6xSp8=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nH0ArAPgFU1GMbmny1F0lBq1+yaJpNlNlCEEVmFAESOj1drok6irROtEDjxPLnWpHPSSjGh+Dp7YdxNCkmHrzXWoz481l/4Ffk5qlUkoyxsJ5mlLeHj26CLml0ljiBI2IIwHmrOF3cpT2GfhaRVXwoWPZ1GE3JhzpWIZ54j6E7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=cgyRbqfI; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20570b42f24so30579295ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 01:50:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725439850; x=1726044650; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=N9TJFtAC8hmWP+UAAxJPRyusfukgj739mLXYWTa52wo=;
        b=cgyRbqfIk5p+ARmMyz8seu7N37z8zlePPrgfK63MmNXHGPgdZliDBJ6t5tL7yztm2G
         +a73IkfA221YtR52ETZMij+o2vuHVqbK6csM1uN2o8P6DnoZAe9Jwnu+Od4YWh9FdBna
         NN3sjZA9w7I7EzyzEp1oYDQEFUjZ/V3AzdBtw9CXpYSFDZ08vttjN2tQN3xKUrIvFbwW
         FIk2l63jwB+Z4lIiFINsHC2gtmSaFt8dl+NzOwVUBIGabhg4VBH5ZOEyLDKpxUpaL6JD
         dGWreaQRZ+sIkycms8zvIgI7KH8hvf3CltM0yQRE5lH4ZcT5G+UHFgbeYGKXe1MRiqTx
         kfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725439850; x=1726044650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N9TJFtAC8hmWP+UAAxJPRyusfukgj739mLXYWTa52wo=;
        b=QNuHfHdBSN6eh4DKnvZTj9/lY8yjTpnnuN09LOV1wc9flkhNDDcUvWEloIPHmnWZrw
         gUPtquOwN92Rm0oTR2dvQIaZ+qnuVbGAliX7lpUvQP84LdGq8/mW2nxMx/yufL1n4bhe
         26wSD8ENGZgqUXrc+ck2KVHnqb82dQFZgZffGwsem8vCYVOC9ykebj9XI/GnidvJ/QQH
         V74lDxhsWHRsKmLaTEnArMC3tR7uQsezgy/l5syGTtDkR9XLT1kLFfnLPTfPUVmiOQBV
         wJbvONAhZM4pVy4mozn2g15F+AVpD+7T+CkAY7IYDkloDLgK13dLCevrhdst3UIG9ZB6
         xQsA==
X-Forwarded-Encrypted: i=1; AJvYcCXA5m+mgVpguXltYRRZwgxeBiri5DQn0KJZnlx0aJZvztA4UPqmToYb3GCdRZV2lHzTK1VurqtSqdUl@vger.kernel.org
X-Gm-Message-State: AOJu0YwjgxjPvbxaYbokSdDuASkSHANi8/8FOE53ov973XlLcxCYRB/4
	d9ixdOD4TMLDqv3HESM/MhH2/zOJ0ckkLBku9tMQUFBYfvlyVmUiChgQDo85ig4=
X-Google-Smtp-Source: AGHT+IGuM9dS4OkrJRAfjuFyD89ThoUdcbjVnP6TJauvDY7trZRsNgC13Aek8wGWYTLVpQLXds9H5g==
X-Received: by 2002:a17:903:230a:b0:203:a13a:c49e with SMTP id d9443c01a7336-20699acb7bfmr53299925ad.1.1725439850302;
        Wed, 04 Sep 2024 01:50:50 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-206aea38ddcsm9533555ad.132.2024.09.04.01.50.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Sep 2024 01:50:49 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com,
	hsinyi@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v3 2/2] arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks
Date: Wed,  4 Sep 2024 16:50:37 +0800
Message-Id: <20240904085037.2133607-1-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MT8186 ponyta, known as huaqin custom lable, is a
MT8186 based laptop. It is based on the "corsola" design.
It includes LTE, touchpad combinations.

Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes in v2:
- PATCH 2/2: Modify the dtb name without rev2.
- Link to v1:https://lore.kernel.org/all/20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com/

---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 24 ++++++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 27 ++++++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 44 +++++++++++++++++++
 4 files changed, 97 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 8fd7b2bb7a15..50b5cf04d3ae 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -58,6 +58,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-pumpkin.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393216.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393217.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393218.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-ponyta-sku0.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-ponyta-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-rusty-sku196608.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131072.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-steelix-sku131073.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
new file mode 100644
index 000000000000..87e8368189d9
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-ponyta.dtsi"
+
+/ {
+	model = "Google Ponyta sku0/unprovisioned board";
+	compatible = "google,ponyta-sku0", "google,ponyta-sku2147483647",
+		     "google,ponyta", "mediatek,mt8186";
+};
+
+&i2c2 {
+	touchpad@2c {
+		compatible = "hid-over-i2c";
+		reg = <0x2c>;
+		hid-descr-addr = <0x20>;
+		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
new file mode 100644
index 000000000000..203ee109bbf7
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
@@ -0,0 +1,27 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-ponyta.dtsi"
+
+/ {
+	model = "Google Ponyta sku1 board";
+	compatible = "google,ponyta-sku1", "google,ponyta", "mediatek,mt8186";
+};
+
+&i2c2 {
+	touchpad@15 {
+		compatible = "elan,ekth3000";
+		reg = <0x15>;
+		interrupt-parent = <&pio>;
+		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
+		vcc-supply = <&pp3300_s3>;
+		wakeup-source;
+	};
+};
+
+&usb_c1 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi
new file mode 100644
index 000000000000..59594022331e
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-steelix.dtsi"
+
+&keyboard_controller {
+	function-row-physmap = <
+		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
+		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
+		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
+		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
+		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
+		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
+		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
+		MATRIX_KEY(0x00, 0x04, 0)	/* T8 */
+		MATRIX_KEY(0x00, 0x01, 0)	/* T9 */
+		MATRIX_KEY(0x02, 0x09, 0)	/* T10 */
+		MATRIX_KEY(0x01, 0x09, 0)	/* T11 */
+		MATRIX_KEY(0x01, 0x05, 0)	/* T12 */
+	>;
+
+	linux,keymap = <
+		CROS_STD_MAIN_KEYMAP
+		MATRIX_KEY(0x00, 0x02, KEY_BACK)
+		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
+		MATRIX_KEY(0x02, 0x02, KEY_ZOOM)
+		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
+		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
+		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
+		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
+		MATRIX_KEY(0x00, 0x04, KEY_PLAYPAUSE)
+		MATRIX_KEY(0x00, 0x01, KEY_MICMUTE)
+		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
+		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
+		MATRIX_KEY(0x01, 0x05, KEY_VOLUMEUP)
+	>;
+};
+
+&mt6366codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
-- 
2.34.1


