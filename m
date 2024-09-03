Return-Path: <devicetree+bounces-99201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B313C969384
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 08:16:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 354461F2430F
	for <lists+devicetree@lfdr.de>; Tue,  3 Sep 2024 06:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 467AE1D2F46;
	Tue,  3 Sep 2024 06:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="Yzlyeotb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13A131D1745
	for <devicetree@vger.kernel.org>; Tue,  3 Sep 2024 06:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725344187; cv=none; b=RWEW0Ou0cQiJCd/HUggpVBQniDVyCunJMpcPsF5I/ses6R+w/Tm/BsWXaPc+xjROuLHVHjmGEx6BSZRYSNWewnuqD0FzhOc8eVtBEFlyn2qBUlK1gqsOr06TwDS8zkQTQG1nICih3+X2PiuAg6gtK+pCAGDYdJGfdLgvPIUImoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725344187; c=relaxed/simple;
	bh=sM0+HwfvDWKLKclY6tNm0Ys/k8PNI2BP/OfZFC+jCj8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ff97iDWZY7HAkadM9gixRSPJhczj5blerW9Aqbf+2x66WMZnStY5PNOansWVPTAn1aDe8bSqwvDIwA1CdrrToGYCPJx/Q9eLGMEuEG0Tr70g85vc4KscnSHB6/NZ0W5Xu7DAUCTZoPPYJP5bmsf0CiJ9x5LoGUnTRYStQe2rAWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=Yzlyeotb; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-70f6732a16dso2971988a34.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 23:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1725344184; x=1725948984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3veaRKgwQ7UVVK4AxVxHY1nVXvOhyCQeV9wnobkx2a4=;
        b=Yzlyeotb6TBsSBPM1DE9+S+YcggDXCPt+SUsoCYAlu4rqgsG4Ebk+e/I0rcCQlir+B
         WNRjigoi+Nnu2+QA4VGgGlww/I88AdsWsncb+fYe7CXnAh9DiydvkKjkzPDZ0jCZHjGm
         RbzNend8AzuuMt5nJ+uaSchduKyc1MEkyK2Tkn/TgbkshcRVa2rLtjWfjV4yA+Ta/tow
         J7JVlHtMTeT++tQOoVZe6vhCVS6h8aFzDQcOoGI4rm5+rZ1+5lPRhkFRdaEHSgBoYiKr
         ijW4tXjdLm30UEqIlpWBvaJeDQCJV5yoUCv2D0ceUHxn6vZBdnu7zUzfk19LYEvgabpy
         NODg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725344184; x=1725948984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3veaRKgwQ7UVVK4AxVxHY1nVXvOhyCQeV9wnobkx2a4=;
        b=LN1rqNUx2/u+VUJe2SCPqZEkaKarkKtg/vAtkOCj94NU/VWwDCHilAHJ0Rk3C2EbH4
         LfyJcrUb1Ofj0709Qf8fHrGgKAncchtDG1qk7f68JpLyNrwTSdliAnka6h5bA+/1yM7f
         H0zNBC1zZrAC/hFEH4DYGUSRCr0HkLNsqB96XCpGwcazYxeKryulkKyBGu+tj9WAt/nX
         C/EYI6ftM/HF+y0LZ/igF14N6y1hue0eXSxJe0VH5DEKxy0tssYmpKpQyfuPxJ0RJkds
         +raf4mVpAzEi35FgVK58bewa6OkYzhKx4vsKxkJKy+fuaia+W7UGNj9s94icF4BfFMyk
         zVgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUr6VEKjPj0TDeCUq6UPtGn4gQxrSWruM5idhhMhzwSaiGOAWaYVXZ0FtaeAPVym1uD01z+9WUL8lsS@vger.kernel.org
X-Gm-Message-State: AOJu0YyDRdItKHJJBIzlFiC8nzYyItfUMAoYdzZb/Jo6H21cdPEKQclu
	gQ5uywfD4e/uScSib6ZDi+UsVVo7ePLnJ6+hXz9QkjhoqwRKXvjOAY95x0+Kvzk=
X-Google-Smtp-Source: AGHT+IE0AUBWMknyTN5yeDBqmcCTCmcB/ricmSoqggWDZif4FjwOjvwRbMMPZfggNtmwl2M4uIEWHQ==
X-Received: by 2002:a05:6830:438c:b0:709:4d43:32cd with SMTP id 46e09a7af769-710aada2463mr1424722a34.10.1725344184107;
        Mon, 02 Sep 2024 23:16:24 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7d22e9be1efsm7151415a12.62.2024.09.02.23.16.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Sep 2024 23:16:23 -0700 (PDT)
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
Subject: [PATCH v2 2/2] arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks
Date: Tue,  3 Sep 2024 14:16:03 +0800
Message-Id: <20240903061603.3007289-3-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20240903061603.3007289-1-cengjianeng@huaqin.corp-partner.google.com>
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


