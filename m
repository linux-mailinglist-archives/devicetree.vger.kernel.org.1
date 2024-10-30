Return-Path: <devicetree+bounces-117298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 045979B5CE3
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2799E1C20BB0
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:24:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CDFF1E2303;
	Wed, 30 Oct 2024 07:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Y7h3vNuZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF0DE1E22E3
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:22:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730272982; cv=none; b=dU5YUAPbDEksaP8xcdKFhgf6UlbQNK6iUBZV37AfvB6UFY80z+fvVlU905FiBMgtgQQe2x5NxDsAkWB65x9trvRVwwxJELfK0JA7PIPrFwkAgzeODifZ7geQrPekY9EF5Fw5n/KDS0JqqnkKfWAgyzJeRZmcHv/FSLPrTAZA9Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730272982; c=relaxed/simple;
	bh=7aq1M3psoX/kZO+uRauBs3Wo3o81OrpD0OG3KsRwDH0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aIFgMNNxu5zd4L+jRNFFlOHQi1YgBswKLgAObdLz/r4zIkIQ5KcsGHWeG9ezSlvcoJhyDrgCP74bTCBAWGhq0KM7rNtbrr/7eKfSHx5sbqmKvsDi5zBds28SZ9d92mwtvHgwz9IRjVRCmLX77O9tJrovEMKUF5ihJmbG5t1eB30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Y7h3vNuZ; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-656d8b346d2so4313475a12.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730272979; x=1730877779; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qmJoXxC+Nj2No0J4gz+NFYN6UA8etQPYIirl1nYh9sw=;
        b=Y7h3vNuZUMYIdZFYvZCWxEi63L4V4QAQXNo3MWP4/JCciBkZMSsYCAz+0t5GtXLQA0
         FX20AjL90RRjYH+dlAAbUGBbnbtKUtqkSdX5UlrREwgoYlj8GlbEQGvdneOe7qQd6kas
         DmV+5k9TXlhPVG+zrNyGg8Z6AcEgclbZij4yE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730272979; x=1730877779;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qmJoXxC+Nj2No0J4gz+NFYN6UA8etQPYIirl1nYh9sw=;
        b=myinbZY6E0qzZq2dvFG9v/ZGUijVMrPUKZrXF8gH6Sa2i6T4HRbgKgcFGhk3qZSM9R
         SszzezQOPfmcWqhnOigHHhiKwTRarbLq+ZlzzYUFHkm5GYEgz8BV5Niprn9mHFh4EiJg
         v/XcyXgl3pDSS++dsOhi12/8FUoIOn7+PnCcpAip+5OTgZsL+m0HNFMtsmsk30SBUMoq
         2+4quje0YCIvdkKvOb/G+sI/ltuYugPt4rjuts9SI7fkz+Wts2ilPIDVzuv0q4NWaG8f
         F++u6HKLEMcCx0087gR/7N7RBVa8ZoC8kF5PBqtw54sKN3enTr+iFGvClNDIVlTfYpvq
         Emug==
X-Forwarded-Encrypted: i=1; AJvYcCWU15tsiy3tfg4PEWg7qZ7DAvwR4sr72d4zoEZhoTiqRIpxBySYY/mdJNw0Rb6v1FbKZFfxg6cOG7Tf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+mjzHjJqHjUCuaalr5HwijOLrC1vAhDtJyTsvftIAiTmp3FfG
	h5OopF5KhYGrI6yO4qxMzb4jp+dyYI9MQUwySROlZhCjCpSeyN03hURnXwwGQQ==
X-Google-Smtp-Source: AGHT+IFSxHaU+3aFl8XTDiP0cVXDw2kQMTvcGtMvQxzwOF2PNEaI4ueW/fIpKEk8aXN65gsJMZV+Zg==
X-Received: by 2002:a05:6a21:32a8:b0:1d9:278a:9ab with SMTP id adf61e73a8af0-1d9a84b8d1cmr25165541637.35.1730272979191;
        Wed, 30 Oct 2024 00:22:59 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:d1f3:aa64:657f:d8a8])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-210bc02e67esm76641445ad.186.2024.10.30.00.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:22:58 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org,
	stable+noautosel@kernel.org
Subject: [PATCH v10 7/7] arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads as fail
Date: Wed, 30 Oct 2024 15:22:28 +0800
Message-ID: <20241030072229.1013235-8-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241030072229.1013235-1-wenst@chromium.org>
References: <20241030072229.1013235-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Instead of having them all available, mark them all as "fail-needs-probe"
and have the implementation try to probe which one is present.

Also remove the shared resource workaround by moving the pinctrl entry
for the trackpad interrupt line back into the individual trackpad nodes.

Cc: <stable+noautosel@kernel.org> # Needs accompanying new driver to work
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
---
Changes since v9:
- Picked up Doug's reviewed-by

Changes since v8:
none

Changes since v7:
- Mark touchscreen@40 as "fail-needs-probe" as well

Changes since v6:
none

Changes since v5:
none

Changes since v4:
- Rebased

Changes since v3:
- Also remove second source workaround, i.e. move the interrupt line
  pinctrl entry from the i2c node back to the components.

Changes since v2:
- Drop class from status
---
 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi | 14 ++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi      |  4 ++--
 2 files changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
index ae0379fd42a9..dfc5c2f0ddef 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
@@ -14,6 +14,7 @@ touchscreen2: touchscreen@34 {
 		compatible = "melfas,mip4_ts";
 		reg = <0x34>;
 		interrupts-extended = <&pio 88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe";
 	};
 
 	/*
@@ -26,6 +27,7 @@ touchscreen3: touchscreen@20 {
 		reg = <0x20>;
 		hid-descr-addr = <0x0020>;
 		interrupts-extended = <&pio 88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe";
 	};
 
 	/* Lenovo Ideapad C330 uses G2Touch touchscreen as a 2nd source touchscreen */
@@ -35,6 +37,7 @@ touchscreen@40 {
 		hid-descr-addr = <0x0001>;
 		interrupt-parent = <&pio>;
 		interrupts = <88 IRQ_TYPE_LEVEL_LOW>;
+		status = "fail-needs-probe";
 	};
 };
 
@@ -47,6 +50,8 @@ &i2c4 {
 	trackpad2: trackpad@2c {
 		compatible = "hid-over-i2c";
 		interrupts-extended = <&pio 117 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_irq>;
 		reg = <0x2c>;
 		hid-descr-addr = <0x0020>;
 		/*
@@ -58,6 +63,7 @@ trackpad2: trackpad@2c {
 		 */
 		vdd-supply = <&mt6397_vgp6_reg>;
 		wakeup-source;
+		status = "fail-needs-probe";
 	};
 };
 
@@ -82,3 +88,11 @@ pins_wp {
 		};
 	};
 };
+
+&touchscreen {
+	status = "fail-needs-probe";
+};
+
+&trackpad {
+	status = "fail-needs-probe";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
index b4d85147b77b..eee64461421f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
@@ -358,12 +358,12 @@ touchscreen: touchscreen@10 {
 &i2c4 {
 	clock-frequency = <400000>;
 	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&trackpad_irq>;
 
 	trackpad: trackpad@15 {
 		compatible = "elan,ekth3000";
 		interrupts-extended = <&pio 117 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_irq>;
 		reg = <0x15>;
 		vcc-supply = <&mt6397_vgp6_reg>;
 		wakeup-source;
-- 
2.47.0.163.g1226f6d8fa-goog


