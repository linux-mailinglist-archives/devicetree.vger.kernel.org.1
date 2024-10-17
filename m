Return-Path: <devicetree+bounces-112378-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F2359A1EBA
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 11:44:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 148B8B23FF2
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 09:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AAC81DBB3A;
	Thu, 17 Oct 2024 09:42:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fRb5TCW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AB701DBB03
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 09:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729158179; cv=none; b=HDzAmvS4yiGkf0nTs30YZAhdHoVQWKCs+10rPqz+r92CFxU3PBI6bVSv8PABKabQOmQV0XmmT8Hy+uAP2iaX7QQQM9Sr2WWe/GMLQZmnnLfzlT99/eygNyU9XPS7HbSrXwVXYBE2wlBARLoy3sc8RWRVm9wpd7E17DlcpXRaVQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729158179; c=relaxed/simple;
	bh=V9z/vaLUXaKLZjuP3iq+CpCGEU1lqT/fL6h6m6KfjHU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=hLbxsJNab1RTV7MS2JDWxzXVm1kL9DI5Yt1rUnK3UaTOonWdrgUcK2/NJXgutGNN78kaBuoaGrA0XRgm0vpkmaDJdYChGuwgX7m1wjQFACfqRbSVEDii1TiPIAvBchLQPGsFsoq9xMPTws+CNQZDwWYXn935gjDV4GwuMz4QNvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fRb5TCW/; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-20c6f492d2dso9211435ad.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 02:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729158175; x=1729762975; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bgdGGrdxh1yrmxMi7ELq+GCDozx5PI/JXUv/P9EgGw8=;
        b=fRb5TCW/VnGDn0mcjyahteJ5ckrR25E9/rHVYpgAR5dSpZrnW+dZfhwXjIr1gViVcX
         XOlzzPcT8V+z+sPK3+QbyKMdcqfOkHNjlIih31F2sOu7AZFG+CvG8PKu9CJ12hRqDPiH
         nxKUgeg2oAnwttqJ1rdEP8EemqJXop7h9JOHk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729158175; x=1729762975;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bgdGGrdxh1yrmxMi7ELq+GCDozx5PI/JXUv/P9EgGw8=;
        b=umAZnwG2ggWdQBHKrbCbhvcnjaCds+eLyZLHhm7Wn8s1BTpUqaY0ae6gmulkA5uHKd
         KoRNgbGgHQDH+DV6e9cOqaMJfazXWZGZh8Tz2q3I1ByhcSL4LJhNHLMS+wGZb/OLbn9b
         lsIz6SK2gVPNfF/VS46iInnAY4C49DFJiE21bGVWMIe8cnH8mlVyEkIjJkuCmA7GYj0G
         bNAkekpuGlKZ4Ce6yPjctHYtHq0M+A8dluMuvtOuh16br8tp5ido9QPEDvcP0CsHAK9j
         NznJKkXQQPn/tgf7kcOTxtISRFnYCaNZ8CnMN/+TCxpz8KAnNwCxliSjM9AlyUkGf4BS
         eSvw==
X-Forwarded-Encrypted: i=1; AJvYcCVPTubsap0Pv406wdjgA7rd7xRxQ6bEGLUBsej9kuS20Ly754R9ckcgO5EvTpXF7PWs98qlbR9QSQli@vger.kernel.org
X-Gm-Message-State: AOJu0YzhxxazGaQlMU3wPDQzAbmLUgt3SJ4pHc4CdPehYU7OYIV7CCq+
	/0GM19Te0dPlHCUFZyhtiFHD/M2/aNs3YfrHColB/SwSouKl1NFIiD5ny8AymQ==
X-Google-Smtp-Source: AGHT+IHVU8qRS0FvlAaYy1P680aH2xlYaVBdegJzFVdyqHN/XTuDFiVaYaam7IEGx7XhiQ/wL2kUcA==
X-Received: by 2002:a17:902:e80d:b0:206:c486:4c4c with SMTP id d9443c01a7336-20cbb2abe0dmr282504325ad.57.1729158174895;
        Thu, 17 Oct 2024 02:42:54 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:fabb:a7ab:3d7:9aaa])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d17f87ccasm40638655ad.62.2024.10.17.02.42.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 02:42:54 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Wolfram Sang <wsa@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	chrome-platform@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	Johan Hovold <johan@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	linux-i2c@vger.kernel.org
Subject: [PATCH v9 7/7] arm64: dts: mediatek: mt8173-elm-hana: Mark touchscreens and trackpads as fail
Date: Thu, 17 Oct 2024 17:34:42 +0800
Message-ID: <20241017094222.1014936-8-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
In-Reply-To: <20241017094222.1014936-1-wenst@chromium.org>
References: <20241017094222.1014936-1-wenst@chromium.org>
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

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
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
index e03474702cad..d9abd68da369 100644
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
@@ -56,6 +61,7 @@ trackpad2: trackpad@2c {
 		/* post-power-on-delay-ms = <100>; */
 		vdd-supply = <&mt6397_vgp6_reg>;
 		wakeup-source;
+		status = "fail-needs-probe";
 	};
 };
 
@@ -80,3 +86,11 @@ pins_wp {
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
2.47.0.rc1.288.g06298d1525-goog


