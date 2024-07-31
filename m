Return-Path: <devicetree+bounces-89794-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B2D942C53
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 12:47:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 269AC1C21B20
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 10:47:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5711AD3EB;
	Wed, 31 Jul 2024 10:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jynOKyG9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBC911AC43E
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 10:47:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722422854; cv=none; b=SApVoj02ZB6NScS53aVhw7mn3RyKTWxFGOt3CdCRYaxTt01kXOQQfdRIaMkaWMJkj8N4YNJJkhYTQ8rIode7Abq+5+/RAPSbQjkIlogmgGfQUf+RRf1Qs6K9GPXQ5HRyG4jdkDYkkn0ckOo5nXLqeMwCicoBgynQQRLQW26uMCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722422854; c=relaxed/simple;
	bh=IxGvo+cSyjTZl2rtEnhI56YHROn++/NI5FMgxZjNMBE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gLbK3dqM/vwR2IEYRNoaiarTdIp+Hm1v9XU6WjSwUk6aVqeXy3hG33dY1G00YvocmMMOiu49gJRKblc8Skbi32FE+bpQTUWfX87DsdTRUbtlUGTjCztZ9Ck3OHSmzoS9Ir57QxWEDWuM9h1s9cVa0ZmFjsax6eyZ+fahbzHJnxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jynOKyG9; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7093f6adc4aso2035090a34.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722422852; x=1723027652; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MEQr2Dd1qiYbytxX7TJlBlAQtD8h05Mk/ovq2ZyI5Tc=;
        b=jynOKyG9u2Vw2ymZB4f5sFnLCj8Xtqo6b5J+hghDnQZ7BDooAWUfd3WWKDZ/Mfl3D8
         ifjxv/N6psCVNP1M4jLk1yfxbbALQHIvxz/Bk28gqXuN0u613cABELn7zSO/Vw5l4CSx
         9Y7D1p/JDL3pyGkOC0ww/ozRXfXWbKmbZosos=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722422852; x=1723027652;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MEQr2Dd1qiYbytxX7TJlBlAQtD8h05Mk/ovq2ZyI5Tc=;
        b=YxsIDTyPMQTWNybZKlhi91HHqn0zJb6CnikXUIDSKgjAPjvO3AjKJIsrS5dn7XhpiV
         WXaGh+rw3fTC1WFSi+dF/u1v+dZvGxlgY17hjLAKao2ON3zDhnLgqNNRduC+Wjl9slWT
         1CDZ/8CtukdMKY+U7SWK5SFv8NXGfmVnV7bUZLTpUBjd9yGLNVx1XdL5sQax5o693dXL
         XgzSYPGoPBV5i6pkv7WwRq599QGcO0KRFdr3cBpQBYThw9Ww+tbJJ6YUWQfUNBPAcxXx
         4G7FQvo/gB+0iE8MDMoSoZZ6ttXMk+ClspgmqGZe1GxniG832226gmSNoOJJ5QD8xBwK
         2bLg==
X-Gm-Message-State: AOJu0YylwdjAIKtZDrmpy/SZ+IspnygGefpF9yIdDD3dRs39zu5OFnOW
	K+2HZJhsihe62JJCkHBSiZWmfgC0YBP6OX3Sncmm5lHimXuBRhlPDcp2gv/Xpw==
X-Google-Smtp-Source: AGHT+IF+eN+336dq52MziH8dsqFM+I0C8HVxBShL7oDo4ecojL/kUKyLptwk7xM+0upLN5bwQhnwLQ==
X-Received: by 2002:a05:6870:f116:b0:260:f99a:ba39 with SMTP id 586e51a60fabf-267d4a1a368mr17504290fac.0.1722422851864;
        Wed, 31 Jul 2024 03:47:31 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (46.165.189.35.bc.googleusercontent.com. [35.189.165.46])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7a9fa5a0bcesm8788400a12.89.2024.07.31.03.47.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 03:47:31 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 31 Jul 2024 10:47:25 +0000
Subject: [PATCH v3 1/2] arm64: dts: mt8183: Add kukui-jacuzzi-cerise series
 boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240731-jacuzzi_dt-v3-1-1c4314e8962f@chromium.org>
References: <20240731-jacuzzi_dt-v3-0-1c4314e8962f@chromium.org>
In-Reply-To: <20240731-jacuzzi_dt-v3-0-1c4314e8962f@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Sean Wang <sean.wang@mediatek.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-a9570

Cerise is known as ASUS Chromebook CZ1.
Stern is known as ASUS Chromebook Flip CZ1.

They are almost identical. The only difference is that Cerise is a
clamshell device without touchscreen and Stern is a convertible device.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/Makefile              |  4 +++
 .../mediatek/mt8183-kukui-jacuzzi-cerise-rev3.dts  | 26 +++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts   | 26 +++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi-cerise.dtsi  | 21 ++++++++++++++++
 .../mediatek/mt8183-kukui-jacuzzi-stern-rev3.dts   | 29 ++++++++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi-stern.dts    | 29 ++++++++++++++++++++++
 6 files changed, 135 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 8fd7b2bb7a15..17fbe495e4ee 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -28,6 +28,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-elm-hana-rev7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8173-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-burnet.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-cerise.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-cerise-rev3.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-cozmo.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-damu.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-fennel-sku1.dtb
@@ -42,6 +44,8 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-makomo-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-pico.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-pico6.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-stern.dtb
+dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-stern-rev3.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku0.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-jacuzzi-willow-sku1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8183-kukui-kakadu.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise-rev3.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise-rev3.dts
new file mode 100644
index 000000000000..c511dd1cc171
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise-rev3.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-cerise.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-rt1015p.dtsi"
+
+/ {
+	model = "Google cerise board";
+	chassis-type = "laptop";
+	compatible = "google,cerise-rev3-sku0", "google,cerise", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
+&touchscreen {
+	status = "disabled";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_CERISE";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts
new file mode 100644
index 000000000000..12b97dcaa74a
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts
@@ -0,0 +1,26 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-cerise.dtsi"
+#include "mt8183-kukui-audio-da7219-rt1015p.dtsi"
+
+/ {
+	model = "Google cerise board";
+	chassis-type = "laptop";
+	compatible = "google,cerise-sku0", "google,cerise", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <1>; /* one-wire */
+};
+
+&touchscreen {
+	status = "disabled";
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_CERISE";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dtsi
new file mode 100644
index 000000000000..0cd30b3421ba
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dtsi
@@ -0,0 +1,21 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi.dtsi"
+
+&cpu_thermal {
+	sustainable-power = <4500>; /* milliwatts */
+};
+
+&mmc1_pins_uhs {
+	pins-clk {
+		drive-strength = <6>;
+	};
+};
+
+&i2c2 {
+	i2c-scl-internal-delay-ns = <13200>;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern-rev3.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern-rev3.dts
new file mode 100644
index 000000000000..19e09da1d166
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern-rev3.dts
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-cerise.dtsi"
+#include "mt8183-kukui-audio-ts3a227e-rt1015p.dtsi"
+
+/ {
+	model = "Google stern board";
+	chassis-type = "convertible";
+	compatible = "google,cerise-rev3-sku1", "google,cerise", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <0>; /* two-wire */
+};
+
+&touchscreen {
+	compatible = "hid-over-i2c";
+
+	post-power-on-delay-ms = <10>;
+	hid-descr-addr = <0x0001>;
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_STERN";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts
new file mode 100644
index 000000000000..72de05ffea86
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts
@@ -0,0 +1,29 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2021 Google LLC
+ */
+
+/dts-v1/;
+#include "mt8183-kukui-jacuzzi-cerise.dtsi"
+#include "mt8183-kukui-audio-da7219-rt1015p.dtsi"
+
+/ {
+	model = "Google stern board";
+	chassis-type = "convertible";
+	compatible = "google,cerise-sku1", "google,cerise", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <0>; /* two-wire */
+};
+
+&touchscreen {
+	compatible = "hid-over-i2c";
+
+	post-power-on-delay-ms = <10>;
+	hid-descr-addr = <0x0001>;
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_STERN";
+};

-- 
2.46.0.rc1.232.g9752f9e123-goog


