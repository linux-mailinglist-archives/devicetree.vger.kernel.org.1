Return-Path: <devicetree+bounces-117279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E14E9B5C34
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:03:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6A73B21F64
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E491E0DB8;
	Wed, 30 Oct 2024 07:02:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="jSDHncvM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 712461E00A6
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271759; cv=none; b=s31L88U6lFOWqpu6mwoaYYCnZsFzVYbUx6KnNAWGWKAvdppOiURN8sF1/ynFOXVM48yg2xSjMSiVz2z16FOxipUymxMnGLAulTIZDWoAmUI7aMt5vR4dKjd41C1gURMEAG3D5yqcpjSraj/5sJzm60nxpXTDB8asQ2Q1rLMr14w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271759; c=relaxed/simple;
	bh=rTCt2wTAlVnLiAKVA+zZLqsLFleae4+yewzhmiLwef8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KjbgmWZ+FWaa977/7RpBLbMkgB5Nq47w351+68iPpAJioEBZeT7GprkGyrvtmkl7h3xcwMWpzjkYT15mzGb++emjrPES++D7I2XMbbJybzLqU6za6JQOArnMXBCUYpHYiMkt2CWsOVBhfWl9JVG4AAQaiPGirDgyiS8z8xFG9FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=jSDHncvM; arc=none smtp.client-ip=209.85.215.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-7ea9739647bso4513551a12.0
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730271757; x=1730876557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lij+PC1fLvJixrLcoV9Z1Urjyzf4HaJGb+O+EycfkvQ=;
        b=jSDHncvMUYkzvTDO1VfqEP2w3cHI86Ca7SUwWZF3+ylQqpizrgq9UksgzufQfiSg4p
         RBTMn3VKpMXWzZ03zcSheklrZkpNKBYBZxrnvunGkE0u54tZak4g+RSS+LKctOu7yocR
         3gLajpno3i/a+VC6gUxnSCZVv7nq+eRD/z9IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730271757; x=1730876557;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lij+PC1fLvJixrLcoV9Z1Urjyzf4HaJGb+O+EycfkvQ=;
        b=tJ/AecjgYXHaRy1gZav9cJJh7LeSarWmLiMRj9aaAncXib16kj2yehH75i738TjH0r
         THSalHwr4thLXYpLmh5Iwz769NeMYFYJzvvzYVhMUsTFAxSyj0pR757SapdH8OucOZJY
         lpIListFihbTC1s0Ru+9aDfNvhfSk0d8EohSrkurtGAVMaQ2/MkNJjzCHECu4wM0dAOB
         WXRjOOmCMoxA2grRcvAyjU1L5GY7KSpJRzUQ58exvmQyvGN1T3095k4WiBlDuU7r0IFW
         DRyOjP5Hj7mlA3DF15gMKSSSiNGmcTaoDfDFDEDW7hyTMaRd1nh8mW4dI2F1InFiYti1
         v63A==
X-Forwarded-Encrypted: i=1; AJvYcCXngob7/HjwBe+o0qVSxmLm0Tucnv1CmUQRnftyxT9zFWaCy9FWI+iSCQrTeUtJF6DG5IEXfXrBFeuS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg3199JJpMjfFu1Rp6fCtN71jvRFDv6jdLZ87aP76d6gbhlbMj
	PnGLndpHX2DTYHK6peeeOWfGve5dDSmNU5wWF+gbPn/l7bNI1IpZOrBA3uYXvg==
X-Google-Smtp-Source: AGHT+IEMIHQ8npyjfU/99fAX2NsP9PaKHpba5mfPSOR0IqSW7YKOpbx3Zp8jaGt7KFeqZbuG5u4Y4w==
X-Received: by 2002:a05:6a20:e605:b0:1d9:69cb:9f90 with SMTP id adf61e73a8af0-1d9a83d10bdmr20483336637.19.1730271756808;
        Wed, 30 Oct 2024 00:02:36 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:d1f3:aa64:657f:d8a8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057931a94sm8635848b3a.68.2024.10.30.00.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:02:36 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: mediatek: mt8183-kukui: Drop bogus fixed regulators
Date: Wed, 30 Oct 2024 15:02:23 +0800
Message-ID: <20241030070224.1006331-5-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241030070224.1006331-1-wenst@chromium.org>
References: <20241030070224.1006331-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

A couple of the fixed regulators in the Kukui dtsi do not actually
exist in the hardware design; they are simply power rails connected
together with 0 ohm bridges.

Drop them and assign their upstream supplies to their consumers instead.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../dts/mediatek/mt8183-kukui-katsu-sku32.dts |  2 +-
 .../dts/mediatek/mt8183-kukui-katsu-sku38.dts |  2 +-
 .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 25 ++-----------------
 3 files changed, 4 insertions(+), 25 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
index 05361008e8ac..2b5a8d1f900e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku32.dts
@@ -23,7 +23,7 @@ touchscreen1: touchscreen@5d {
 		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 
 		reset-gpios = <&pio 156 GPIO_ACTIVE_LOW>;
-		vdd-supply = <&lcd_pp3300>;
+		vdd-supply = <&pp3300_alw>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
index cf008ed82878..75fadf2c7059 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-katsu-sku38.dts
@@ -23,7 +23,7 @@ touchscreen1: touchscreen@5d {
 		interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
 
 		reset-gpios = <&pio 156 GPIO_ACTIVE_LOW>;
-		vdd-supply = <&lcd_pp3300>;
+		vdd-supply = <&pp3300_alw>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index e9e6253141c6..0cf50b1f59c8 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -52,27 +52,6 @@ it6505_pp18_reg: regulator0 {
 		vin-supply = <&pp1800_alw>;
 	};
 
-	lcd_pp3300: regulator1 {
-		compatible = "regulator-fixed";
-		regulator-name = "lcd_pp3300";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
-	mmc1_fixed_power: regulator3 {
-		compatible = "regulator-fixed";
-		regulator-name = "mmc1_power";
-		vin-supply = <&pp3300_alw>;
-	};
-
-	mmc1_fixed_io: regulator4 {
-		compatible = "regulator-fixed";
-		regulator-name = "mmc1_io";
-		vin-supply = <&pp1800_alw>;
-	};
-
 	pp1800_alw: regulator5 {
 		compatible = "regulator-fixed";
 		regulator-name = "pp1800_alw";
@@ -373,8 +352,8 @@ &mmc1 {
 	pinctrl-names = "default", "state_uhs";
 	pinctrl-0 = <&mmc1_pins_default>;
 	pinctrl-1 = <&mmc1_pins_uhs>;
-	vmmc-supply = <&mmc1_fixed_power>;
-	vqmmc-supply = <&mmc1_fixed_io>;
+	vmmc-supply = <&pp3300_alw>;
+	vqmmc-supply = <&pp1800_alw>;
 	mmc-pwrseq = <&wifi_pwrseq>;
 	bus-width = <4>;
 	max-frequency = <200000000>;
-- 
2.47.0.163.g1226f6d8fa-goog


