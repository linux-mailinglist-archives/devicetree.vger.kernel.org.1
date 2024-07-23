Return-Path: <devicetree+bounces-87557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDC3939E54
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 11:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E057A1F23004
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 09:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC95814D44E;
	Tue, 23 Jul 2024 09:57:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="lMOyT6Sh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4672C14C5BD
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 09:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721728634; cv=none; b=LrIEdY0oyI2gWEwacmAaJp+sH2mS4wkcjhhU8LV07wPftfwuhQHPqtBYb266WC2sr+CCB4jHx6YF+u/tccO0iatQfdgOkzRl8E0/QFZpj3wjKJlWT589Tm5HjJS6TfBeMwBMaNCoxv3QDOjIxY0fYpXK4m66xEhkWDqur4DofBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721728634; c=relaxed/simple;
	bh=3hT7wdmOcOTNeFewjPFZrs1nK0GheTEQ/ofYbsvh8eE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=p8Ixoku/FUpqZcAHAe2+a2ziz+9XloQ4w28MFU9F4aRaAAKkRWiE+++LE0mBUdGOQq9+ZBD5WWHijF7vMV2iu3EnYvIl2/i1JNjomHcz+o4bWP2fdrOJx18Dc3oBn3WeVtVBfJbPVyfctfKZEjafpN+DCnTwqFMqWhnfIvWSQTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=lMOyT6Sh; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5ca9835db95so2771527eaf.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 02:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721728632; x=1722333432; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OzyMEsbjxgELLAU9H3JVgtxZaYvLlmk6+peydwG5PAI=;
        b=lMOyT6ShKA47tJT7xOmaoStkNX2P6wc6evD7WdT4eR6ii2xXpVit84oXNapP651Jb0
         5INRHK1On7k9wb1TuMa4tPAXNJrJxTX4eQWND0CNh/pDXx/w+LC3gxfpeB2EQMCKE1NT
         yPmYOLKSiltS2p83zvyyEOYUXFQsNLqiBZWtQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721728632; x=1722333432;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OzyMEsbjxgELLAU9H3JVgtxZaYvLlmk6+peydwG5PAI=;
        b=a4McUD2dsbMbRM762Us/P1G5FPRYz7PlEj1maAd74F9VQTklDB3W1pbibc4dnEMiR7
         +W19OSCo2zi6lVMfhp0mesUm7xUJ8T3caCVD2XYnu00KVdwxlu/QLJVUxGqJU5ifxWzP
         FMaeiXbYXJNrsu5sQ+UK6WyEvHz5tYE80aNgCC/KlG4SluQ43Otr9Psv1fEE1MR0qioL
         WxfsBhQ3W7p9aKDz+1GIoyXdrqQtf1sZJhYM5ho3KYqdoFNmrMxLC5EOgr+UxU2CN+Gs
         uRvFI4vIP4Gghjr7whuw4xaXNoFMTtBJ6Gr4C8VOSWBcWvtBWG7/8BtQPgyESlKbHV5m
         /Z5g==
X-Gm-Message-State: AOJu0YxYKAmdLoXko49YNy0aiW43M4OKavygSoWkMT8V3dsAJx+pmPbE
	+/cMTlt15Sd1zaFIBu3r7/qSIEUNitIkayeT+3EaoOMiM2t8N3jPzppRdZM8VKUWlCxFlvAtZnf
	37g==
X-Google-Smtp-Source: AGHT+IHDnnxHuI9E06J5YQVs42SxY8MGajBowmzWGUirw5K4mNGoo+X6VpjzSBMPCAM4HXho8gKsfg==
X-Received: by 2002:a05:6358:3392:b0:1aa:a01a:23dc with SMTP id e5c5f4694b2df-1acc5b1f268mr1130147855d.15.1721728632189;
        Tue, 23 Jul 2024 02:57:12 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (46.165.189.35.bc.googleusercontent.com. [35.189.165.46])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-79f0f546147sm5999975a12.82.2024.07.23.02.57.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jul 2024 02:57:11 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Tue, 23 Jul 2024 09:56:50 +0000
Subject: [PATCH] arm64: dts: mt8183: Add kukui-jacuzzi-cerise series boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240723-jacuzzi_dt-v1-1-3e994a2b5e24@chromium.org>
X-B4-Tracking: v=1; b=H4sIAGF+n2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDcyNj3azE5NKqqsz4lBJdA7PkFIOktBRTEyMjJaCGgqLUtMwKsGHRsbW
 1AJmNJk1cAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-a9570

Cerise is known as ASUS Chromebook CZ1.
Stern is known as ASUS Chromebook Flip CZ1.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 .../dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts   | 25 ++++++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi-cerise.dtsi  | 21 +++++++++++++
 .../dts/mediatek/mt8183-kukui-jacuzzi-stern.dts    | 35 ++++++++++++++++++++++
 3 files changed, 81 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts
new file mode 100644
index 000000000000..b4f4ed701253
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-cerise.dts
@@ -0,0 +1,25 @@
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
index 000000000000..087a0ef33e13
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
+		drive-strength = <MTK_DRIVE_6mA>;
+	};
+};
+
+&i2c2 {
+	i2c-scl-internal-delay-ns = <13200>;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts
new file mode 100644
index 000000000000..15e00feae3a9
--- /dev/null
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-stern.dts
@@ -0,0 +1,35 @@
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
+	compatible = "google,cerise-sku1", "google,cerise", "mediatek,mt8183";
+};
+
+&mt6358codec {
+	mediatek,dmic-mode = <0>; /* two-wire */
+};
+
+&touchscreen {
+	status = "okay";
+
+	compatible = "hid-over-i2c";
+	reg = <0x10>;
+	interrupt-parent = <&pio>;
+	interrupts = <155 IRQ_TYPE_LEVEL_LOW>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&touchscreen_pins>;
+
+	post-power-on-delay-ms = <10>;
+	hid-descr-addr = <0x0001>;
+};
+
+&qca_wifi {
+	qcom,ath10k-calibration-variant = "GO_STERN";
+};

---
base-commit: 66ebbdfdeb093e097399b1883390079cd4c3022b
change-id: 20240723-jacuzzi_dt-06cd0bfd5422

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


