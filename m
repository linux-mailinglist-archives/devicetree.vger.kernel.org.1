Return-Path: <devicetree+bounces-170130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 145D3A99DC7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 03:09:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 582B09219E4
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 01:09:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9336619048A;
	Thu, 24 Apr 2025 01:09:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="MFETbsVt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1F0157A48
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745456947; cv=none; b=m9XOQdLAUFEhns1mUdnEZp37Bj0YfOOfHG5Q86208wO/kdQWdz5BHUin9SbRmPk02FXiulKRB9Ut0TLuKKwnt4GQ/3X8Vad7H4qSAz6Ln+QuVSldhj6jRxoLEmH8NnXR/JFzN0v/rC5uv1WFLBjm+oHtERY0+nFMOi3pmHAc/jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745456947; c=relaxed/simple;
	bh=uuNLGpTRAO+RBgEAMx5vyeidGWoNQgCmU/bCySsCK5I=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=L3S23Nddf6SiTydZy3TSbeRMDYgQOfA88zhMGu5yTO69XusPqzYq9dT/Zblox162NituwyJ1XtKsMTIMBSa62GfDQq+KgbjGZlchDTnWblvyqoh6XUonbOsjHSW5h6ZQrolXWbAe2mUcE3HMQAXdN0/aHEdJEeqCVTdm7M3h1ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=MFETbsVt; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-736aa9d0f2aso536103b3a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 18:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1745456944; x=1746061744; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Aq9rpX5klPKvqz6lh37i13ygiOMZNtD76tOAiUPx3eo=;
        b=MFETbsVtu484bFkLbexrse8tHpAioxmp537KdwxWvaH2tgSYdBRWkkrw9nQz3do57w
         oKYIOEjHXDl1MwnK7nic5htFh5d5b+Wps+Oapmbq5jix37aWyOxiJ3c09OUyUGVTpkRe
         ToTx5iHLsP3H5lqGjCu7H8yU947tlR+ANjIndYj9bql2I+lyPEgUVCKSfaehXuVk7y8J
         xrOCbyraOR54B5TWuSqb1vq9qCVYjOJVBd2OTG3H6sg2ss82MhPYV8m+8Fp4FLdjrtC+
         5VIrXsPeo9XY4OeuX6qaZS29lutE9RQYpjdWCBgcjLy+xRtnhrelj0Yy3sq7o9Sf3tsJ
         Av4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745456944; x=1746061744;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Aq9rpX5klPKvqz6lh37i13ygiOMZNtD76tOAiUPx3eo=;
        b=dmARghd/THDIp2sl5ryJLOv9StCk8you4A8cC1ZtNOiyfNGXDB1D6g8PCgvCKSHumO
         GmDCCxAwPB1Rm5KjekPSXRkCSlkzE6D78AGaxBjYUlQ0REk6gzQbT395iDt1dDGRiv9l
         Y1e/N04jq3BBOXAs3icnyaOAqJy6jloOytd/mHHywzgyCYJX4HZhDWDd60WBspDTGCae
         8oZ7djE3npoin+gdIEIEntM2NjCq59qFq+DOtxw/zhTCImVqO2D00pgSCO+jeoKBZemH
         0PKZMM1w8io2mRNcAt/y89LBR1FV2VbD1lQtPqknVVul13oNIJ+0a3ua5afbxzb6HTpb
         MkJQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsBZ3p+o6O/2ZqUuadEtEK/bq7pfac0UM85WVFuE3WCa/usR+qcgvOZxjpcjyeIo4rO6obhjyqN5Qi@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4SsqMjDM77F9qQ968N0SH2o7BTsBND0t7T7IfXD/s15HRpP03
	X7pLSGWb/PZyZufxhrEYA4nb6nLh9XDAxPpfZF7rwG2nTNiWPkXn23mx2bdAN0g=
X-Gm-Gg: ASbGncsmCv4BvJC13RBaseJ2pl+W34cXlIp5WwRhIZkE797UfyGcGvVTt/wYp9z4IFA
	IQO3fakGpT7//VUEwXRwkrxYmNnYfYaMOO9CuFJmB1iFPO/oozNrriL/tQ9nDBR3+12l0W+4cYT
	2Gx1F7WOEuAIlWgLhQYr8sDoVcheRb0SBCpG5f2Ui5FQLRJxO2g40EjFkwr3eRC/IbyyHkVmJtl
	xE9krl1daYnM7N4kHdOm3Vvmmegid+D6UoVSmgmvn78EQ5Lla4mQEryM6omqMqkEMNlcXlTYOkR
	u9aRGKXMqCCn2VpM3pFcFA41i7Y45xe4S/coLvaw1JqZzfdE6hY9XZaujbQVjMTqf0U0F657Lzo
	=
X-Google-Smtp-Source: AGHT+IHFQY1+2cHuBhaCqwc3xNOJK59hPsW6mDND3wgAt5FBwMxUMYgW1wg3wXcQzZhM93m455B9eA==
X-Received: by 2002:a05:6a00:8c7:b0:73b:ef0a:f9dc with SMTP id d2e1a72fcca58-73e243c63c0mr1070192b3a.4.1745456944553;
        Wed, 23 Apr 2025 18:09:04 -0700 (PDT)
Received: from zjn.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25941d65sm236071b3a.63.2025.04.23.18.09.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 18:09:04 -0700 (PDT)
From: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
To: sam@ravnborg.org,
	neil.armstrong@linaro.org,
	daniel@ffwll.ch,
	dianders@google.com,
	hsinyi@google.com,
	angelogioacchino.delregno@collabora.com,
	matthias.bgg@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	knoxchiou@google.com
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
Subject: [PATCH v11 2/2] arm64: dts: mediatek: Add MT8186 Ponyta Chromebooks
Date: Thu, 24 Apr 2025 09:08:50 +0800
Message-Id: <20250424010850.994288-3-cengjianeng@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250424010850.994288-1-cengjianeng@huaqin.corp-partner.google.com>
References: <20250424010850.994288-1-cengjianeng@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

MT8186 ponyta, known as huaqin custom label, is a
MT8186 based laptop. It is based on the "corsola" design.
It includes LTE, touchpad combinations.

Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Jianeng Ceng <cengjianeng@huaqin.corp-partner.google.com>
---
Changes since v10:
- No change.

Changes in v9:
- PATCH 2/2: Add sound model to fix the warning.
- Link to v8:https://lore.kernel.org/all/20240914063122.1622196-3-cengjianeng@huaqin.corp-partner.google.com/

Changes in v8:
- PATCH 2/2: Change the commit about ponyta.
- Link to v7:https://lore.kernel.org/all/20240913031505.372868-3-cengjianeng@huaqin.corp-partner.google.com/

Changes in v7:
- PATCH 2/2: Remove prototype sku.
- PATCH 2/2: Disable the other trackpad to enable one of them.
- Link to v5:https://lore.kernel.org/all/20240909023148.1677936-3-cengjianeng@huaqin.corp-partner.google.com/

Changes in v6:
- No change.

Changes in v5:
- PATCH 2/2: Remove sku2147483647.
- Link to v4:https://lore.kernel.org/all/20240906085739.1322676-3-cengjianeng@huaqin.corp-partner.google.com/

Chage since v3:
- No change.

Changes in v2:
- PATCH 2/2: Modify the dtb name without rev2.
- Link to v1:https://lore.kernel.org/all/20240902125502.1844374-1-cengjianeng@huaqin.corp-partner.google.com/

---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 +
 .../mediatek/mt8186-corsola-ponyta-sku0.dts   | 18 +++++++
 .../mediatek/mt8186-corsola-ponyta-sku1.dts   | 22 +++++++++
 .../dts/mediatek/mt8186-corsola-ponyta.dtsi   | 49 +++++++++++++++++++
 4 files changed, 91 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
 create mode 100644 arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 58484e830063..3aa06476c6c0 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -64,6 +64,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-chinchou-sku16.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393216.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393217.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-magneton-sku393218.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-ponyta-sku0.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-ponyta-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-rusty-sku196608.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-starmie-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8186-corsola-starmie-sku1.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
new file mode 100644
index 000000000000..986498af4c70
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku0.dts
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2023 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8186-corsola-ponyta.dtsi"
+
+/ {
+	model = "Google Ponyta sku0 board";
+	compatible = "google,ponyta-sku0", "google,ponyta", "mediatek,mt8186";
+};
+
+&i2c2 {
+	trackpad@15 {
+		status = "disabled";
+	};
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
new file mode 100644
index 000000000000..ff5eea0ddeb4
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta-sku1.dts
@@ -0,0 +1,22 @@
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
+	trackpad@2c {
+		status = "disabled";
+	};
+};
+
+&usb_c1 {
+	status = "disabled";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi
new file mode 100644
index 000000000000..0abf69077089
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-ponyta.dtsi
@@ -0,0 +1,49 @@
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
+
+&sound {
+	model = "mt8186_rt1019_rt5682s";
+};
+
-- 
2.34.1


