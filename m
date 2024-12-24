Return-Path: <devicetree+bounces-133734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 492609FBAB2
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 09:50:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5A0B416661C
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 08:49:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56CB51940A1;
	Tue, 24 Dec 2024 08:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="OTxjXIKS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A093F1917F0
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 08:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735030130; cv=none; b=U9G1lon4f3TMNwle527X6KrPct7gPRKmvQ5F9bJq4iwMghZVXtXagp8SKQYFTgYhlesGkqYtcBUyMstVwYa8eJEI/xANGj2Fk8h6M/3Ljq/nTekKYxncC5/6+egASk6V/HWhcoOoExVBOcbO+n6Pf4D7pnzUuKfHV8yNtr1iGF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735030130; c=relaxed/simple;
	bh=KlQQY71dlLo/7kROWIImbFTn/HrSwt3ETnVL1O72xfc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=geqI3tOzabU5OG85EcaCVrmPiU5lPUAIxpNrjfQ/UzrEiDoOjJDB7byjd2LyAV2X66tqfrtEQvkjvz8rJrfG7aQXf3CYaTsV7yHgO9SV+WO9XUGLyUhQwWU3bz/I6klOkpLI3gcYGH1oBAp0o5kCTZ/lPUGsZOmX+UlsDWNVblM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=OTxjXIKS; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-21649a7bcdcso49992035ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 00:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1735030128; x=1735634928; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PPDkySt8SMBgbwI9GqZ74rsS7zUg5mbUT5R3oUQV3Ts=;
        b=OTxjXIKSCw3jne9AECoNHlUa6RTK1TLaEHnvXaCU+BJ5VzeqStXdedkBxzfZszbjU3
         QuQTmrZyNDd4cVB1Lqgj8f9pvHaZDVxx5XBN0c6jMfgyec/lyEtd/ldO6oadzTW2iiVo
         OPCoAdddxlU5VS/p0I0v1c64ATBhhgbllEBvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735030128; x=1735634928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PPDkySt8SMBgbwI9GqZ74rsS7zUg5mbUT5R3oUQV3Ts=;
        b=Mg8IzkbBEKXwAXJMIctItK/+iIqWLwDYJs8n42mt1EFMGdO4ixICmiDRMKEnpU+cO+
         Li2Sa99h80PzmkstWk6BdifMlDGmTmVSMuScB2PgQ6F4SuDRldenBbq4wfzO7iHI5J+h
         WgSDCvEIgh/Ok6uE2ofwUidACZE3uyifb2dz4I6C7YzqGiLsfNXHImZRCx/aX9P4l3cw
         o0ogE+jvmmWEI1RBT4IVJcdv2ZvpUmxatyoaFN7rvFB6IQLlWfERZHY07ctOf8QupeaC
         +wubv4nxRjg1YqhbvYdOxIpLahDSBv5LYmEh92b9GrDSxj6sf8cmY80bFWPS96emOgYi
         xUSA==
X-Forwarded-Encrypted: i=1; AJvYcCUK142R8HfEP3iwxjRG0Vah5mqaxbAhtPuJa6uyul5DdgIZrz3HLdF4ojUtSpDwt6FjotyrOl0tOJKY@vger.kernel.org
X-Gm-Message-State: AOJu0YyyI4epTculvmCi3U7f57pVehUaehzHpg1wFcsZ1bWkKIu+B4Ht
	4QkaWwKdxcWWo3nANn6FP4BuMhzphUjP/SnaaoOJCJKoC5H2H/RlldAw+fZdhQ==
X-Gm-Gg: ASbGncvL/6nn2EZxtcfQ2a5Hacvp9YraEIjka/FnCiXFKMLLkXf51EcPEVK5JnEkdG7
	mVuVXRTZkKf9Cy/Y7KVoxuQ0Q2VRNkislYIsH7b/ah8TB0lQ6Oo/alKBFg3s8gBOzcX37sMuKVu
	YkZfJoGKdE66p4npLo7BOJ+O8T8kQo3bve2RkOQEIDAxcONQEAA/x7/h+pi0V1+WUybcAB0AdH3
	Onu2Lr3ys/GtWTyUei8rnofsia+Tb8ZdeyoMyitGNTTUk/CZmCglwfECMqOFNh9zTBbGq1fE44=
X-Google-Smtp-Source: AGHT+IFAk6Uxvk5ehKLFgDIpV9hJBhJETnQ7nKluyJfT+5cxYx74NrTmY8yPYKw+PXWYOutAzJ3Z4Q==
X-Received: by 2002:a05:6a21:3987:b0:1e1:ccfb:240 with SMTP id adf61e73a8af0-1e5e081d78cmr26108020637.41.1735030127983;
        Tue, 24 Dec 2024 00:48:47 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:a4dc:753e:e6ca:9a68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad8dbaa6sm9203156b3a.91.2024.12.24.00.48.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 00:48:47 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 2/2] arm64: dts: mediatek: mt8192: Drop Chromebook variants that never shipped
Date: Tue, 24 Dec 2024 16:48:38 +0800
Message-ID: <20241224084839.2904335-2-wenst@chromium.org>
X-Mailer: git-send-email 2.47.1.613.gc27f4b7a9f-goog
In-Reply-To: <20241224084839.2904335-1-wenst@chromium.org>
References: <20241224084839.2904335-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Hayato rev5 sku2 and Spherion rev4 variants were designed in
anticipation of shortages of the headphone codec. This never happened.
As far as our records show: the variants were never produced or
shipped, and no such devices were deployed to any lab.

Drop them.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>

---
Changes since v1:
- Also drop their entries from the Makefile
---
 arch/arm64/boot/dts/mediatek/Makefile         |  2 -
 .../mt8192-asurada-hayato-r5-sku2.dts         | 65 ----------------
 .../mediatek/mt8192-asurada-spherion-r4.dts   | 78 -------------------
 3 files changed, 145 deletions(-)
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts
 delete mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts

diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dts/mediatek/Makefile
index 8d638976a2af..7b1fc9839935 100644
--- a/arch/arm64/boot/dts/mediatek/Makefile
+++ b/arch/arm64/boot/dts/mediatek/Makefile
@@ -84,9 +84,7 @@ dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku5.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku6.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8188-geralt-ciri-sku7.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-asurada-hayato-r1.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-asurada-hayato-r5-sku2.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-asurada-spherion-r0.dtb
-dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-asurada-spherion-r4.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8192-evb.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-dojo-r1.dtb
 dtb-$(CONFIG_ARCH_MEDIATEK) += mt8195-cherry-tomato-r1.dtb
diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts b/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts
deleted file mode 100644
index cd86ad9ba28a..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r5-sku2.dts
+++ /dev/null
@@ -1,65 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2022 Google LLC
- */
-/dts-v1/;
-#include "mt8192-asurada.dtsi"
-
-/ {
-	model = "Google Hayato rev5";
-	chassis-type = "convertible";
-	compatible = "google,hayato-rev5-sku2", "google,hayato-sku2",
-		     "google,hayato", "mediatek,mt8192";
-};
-
-&keyboard_controller {
-	function-row-physmap = <
-		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
-		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
-		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
-		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
-		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
-		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
-		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
-		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
-		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
-		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
-	>;
-	linux,keymap = <
-		MATRIX_KEY(0x00, 0x02, KEY_BACK)
-		MATRIX_KEY(0x03, 0x02, KEY_FORWARD)
-		MATRIX_KEY(0x02, 0x02, KEY_REFRESH)
-		MATRIX_KEY(0x01, 0x02, KEY_FULL_SCREEN)
-		MATRIX_KEY(0x03, 0x04, KEY_SCALE)
-		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
-		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
-		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
-		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
-		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
-
-		CROS_STD_MAIN_KEYMAP
-	>;
-};
-
-&rt5682 {
-	compatible = "realtek,rt5682s";
-};
-
-&sound {
-	compatible = "mediatek,mt8192_mt6359_rt1015p_rt5682s";
-
-	speaker-codecs {
-		sound-dai = <&rt1015p>;
-	};
-
-	headset-codec {
-		sound-dai = <&rt5682 0>;
-	};
-};
-
-&touchscreen {
-	compatible = "hid-over-i2c";
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
-	vdd-supply = <&pp3300_u>;
-};
diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts b/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts
deleted file mode 100644
index 5e9e598bab90..000000000000
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-r4.dts
+++ /dev/null
@@ -1,78 +0,0 @@
-// SPDX-License-Identifier: (GPL-2.0 OR MIT)
-/*
- * Copyright 2022 Google LLC
- */
-/dts-v1/;
-#include "mt8192-asurada.dtsi"
-#include <dt-bindings/leds/common.h>
-
-/ {
-	model = "Google Spherion (rev4)";
-	chassis-type = "laptop";
-	compatible = "google,spherion-rev4", "google,spherion",
-		     "mediatek,mt8192";
-
-	pwmleds {
-		compatible = "pwm-leds";
-
-		led {
-			function = LED_FUNCTION_KBD_BACKLIGHT;
-			color = <LED_COLOR_ID_WHITE>;
-			pwms = <&cros_ec_pwm 0>;
-			max-brightness = <1023>;
-		};
-	};
-};
-
-&cros_ec_pwm {
-	status = "okay";
-};
-
-&keyboard_controller {
-	function-row-physmap = <
-		MATRIX_KEY(0x00, 0x02, 0)	/* T1 */
-		MATRIX_KEY(0x03, 0x02, 0)	/* T2 */
-		MATRIX_KEY(0x02, 0x02, 0)	/* T3 */
-		MATRIX_KEY(0x01, 0x02, 0)	/* T4 */
-		MATRIX_KEY(0x03, 0x04, 0)	/* T5 */
-		MATRIX_KEY(0x02, 0x04, 0)	/* T6 */
-		MATRIX_KEY(0x01, 0x04, 0)	/* T7 */
-		MATRIX_KEY(0x02, 0x09, 0)	/* T8 */
-		MATRIX_KEY(0x01, 0x09, 0)	/* T9 */
-		MATRIX_KEY(0x00, 0x04, 0)	/* T10 */
-	>;
-	linux,keymap = <
-		MATRIX_KEY(0x00, 0x02, KEY_BACK)
-		MATRIX_KEY(0x03, 0x02, KEY_REFRESH)
-		MATRIX_KEY(0x02, 0x02, KEY_FULL_SCREEN)
-		MATRIX_KEY(0x01, 0x02, KEY_SCALE)
-		MATRIX_KEY(0x03, 0x04, KEY_SYSRQ)
-		MATRIX_KEY(0x02, 0x04, KEY_BRIGHTNESSDOWN)
-		MATRIX_KEY(0x01, 0x04, KEY_BRIGHTNESSUP)
-		MATRIX_KEY(0x02, 0x09, KEY_MUTE)
-		MATRIX_KEY(0x01, 0x09, KEY_VOLUMEDOWN)
-		MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
-
-		CROS_STD_MAIN_KEYMAP
-	>;
-};
-
-&rt5682 {
-	compatible = "realtek,rt5682s";
-};
-
-&sound {
-	compatible = "mediatek,mt8192_mt6359_rt1015p_rt5682s";
-
-	speaker-codecs {
-		sound-dai = <&rt1015p>;
-	};
-
-	headset-codec {
-		sound-dai = <&rt5682 0>;
-	};
-};
-
-&touchscreen {
-	compatible = "elan,ekth3500";
-};
-- 
2.47.1.613.gc27f4b7a9f-goog


