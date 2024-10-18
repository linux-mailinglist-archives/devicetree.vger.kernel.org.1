Return-Path: <devicetree+bounces-112912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F07359A3DC3
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 14:03:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AB1F283172
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 12:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58F3417ADF0;
	Fri, 18 Oct 2024 12:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="nLKi+J+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98ACE555
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 12:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729252998; cv=none; b=O1Wg45DWqngnwVas+jKps17BlL4JcIY1bW6qArNtmPdgNuYHJBtEaQGa2Q54Y15UCsLtdoAeDZ4mdzmHIS8IlhehuLD8XUZEykYm9K10dgR9qOx9FNikKf2hyjoSQ3TogSRieezMgY75BzHHxXdeGJ52Eq/0PKuJ6qI2LIGg7Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729252998; c=relaxed/simple;
	bh=8Klwv7FKRpCBVZDGms6vZqbLr10aymsVwSzujYvPBP4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ThzMrW1K2ldwz9Wod71Jp6tOgmIv/FVeiwnNeMQsC4grXlWDpMHga7bDZfXEkBmt/2pZe+o5xIUOzxkt3TKNnrRsZGXT18tN4Ew/ah3n34O9xRDWkrKI+VOAG61y28C0Dn2YxAiilQ17cwowdpZBKymv2HLgNyeLJT/CA7XzwXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=nLKi+J+X; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-71e625b00bcso1534398b3a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 05:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729252996; x=1729857796; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKGlVab4i7DHl/ffkFGpIlho3hvAo5V5WFM3UhTHe/o=;
        b=nLKi+J+XytYXQKwQPMDRY/OROdVY0NpnDNyFu6wd+ll/qIWnYk9lmAF9zsTRIC3DVQ
         r/QORbpsqN6tsl2hKq5JwZidILsLYkpRFySID8XQtSkZleLQ8R9oZznwInCVggbgFoQM
         LQi6IOjPgeWBdSC28udfIK4f3i9TSRiGpu8jw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729252996; x=1729857796;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pKGlVab4i7DHl/ffkFGpIlho3hvAo5V5WFM3UhTHe/o=;
        b=Dqt/1F3STz/ANt52QZADrzE0mxi0bJGP73hbZ969KKBw4bCeDzhbRrgtdMUS054602
         nyVPltS89x5z/ux9wDAfPkXGJOkZYP8bezmfpf2YgfkuaOG/QbDtZVhcMkHeH4QbUMsy
         363toeUkIQAmvSmpXR5BCinLTKwXbJwk62xhH7Bl6jYKx4E8hFRHGSzJqRjRZUG12sbP
         YCB7s0yqG0kBsjXjX1Vfch6X75kCI8g6cbRTdYoOGHmx53rNazsZRMMhhGejy874G59S
         01Sx5jBOqBUPav1HbAnlpXBhVgksIUhlT/OnrkwQiy9rlQTS1w0+h1WRynC0nzK+baq4
         upKQ==
X-Gm-Message-State: AOJu0YybaLicv2HrereuEDSqjNERdWwOTaov9MFJBJzBXdsw6kOwJsVG
	ZsuPk0Qtwmza9190AegEa0U9W4T3Jkv1CNRrsvGPGtLW3wi+dYZCCJysxrcdxpPZgQTXf30WgZo
	=
X-Google-Smtp-Source: AGHT+IEMoyV6BqxdhGrDIRhbQDdZfec7fHmtNYn4YW1cd/EZHjfSnxgL4d4cV9mzhYNOQP54WR2zaw==
X-Received: by 2002:a05:6a00:cc4:b0:71e:3b8:666b with SMTP id d2e1a72fcca58-71ea325b489mr2897763b3a.15.1729252995698;
        Fri, 18 Oct 2024 05:03:15 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (176.220.194.35.bc.googleusercontent.com. [35.194.220.176])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea34ae672sm1274014b3a.204.2024.10.18.05.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 05:03:15 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Fri, 18 Oct 2024 12:03:05 +0000
Subject: [PATCH 2/2] arm64: dts: mediatek: mt8183: Switch to Elan
 touchscreen driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241018-post-reset-v1-2-5aadb7550037@chromium.org>
References: <20241018-post-reset-v1-0-5aadb7550037@chromium.org>
In-Reply-To: <20241018-post-reset-v1-0-5aadb7550037@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Benjamin Tissoires <bentiss@kernel.org>, 
 Hans de Goede <hdegoede@redhat.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

After commit 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to
i2c-hid-of"), the i2c-hid-of driver used by some mt8183 devices resets
the touchscreen without having enough post-reset delay. This makes those
touchscreen fail to get probed.

Switch to Elan touchscreen driver, which has enough post-reset delay.

Fixes: 2be404486c05 ("HID: i2c-hid-of: Add reset GPIO support to i2c-hid-of")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts     | 10 +++-------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts     |  9 ++-------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts     |  9 ++-------
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts     |  9 ++-------
 4 files changed, 9 insertions(+), 28 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
index ebe6e161354c414d91859494ec9295db75a3baf9..b98a3530511e576347a4ed291d37d45dd42fec97 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-damu.dts
@@ -14,14 +14,10 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
-
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
+	vccio-supply = <&pp1800_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
index 2dc64cc539f815b9848b8243e5b487f22d605a6d..9fb329626a82034e44fb5fbd2d0ad9675c0a5afa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku1.dts
@@ -27,14 +27,9 @@ &cros_ec_pwm {
 };
 
 &touchscreen {
-	status = "okay";
-
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
+	compatible = "elan,ekth6a12nay";
 
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 &qca_wifi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
index 53e996f9c605dc36df03d4b0051a91e19fefb38d..6d547361fc4f9d2ab1f9b048af443495c9bed323 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku6.dts
@@ -14,14 +14,9 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
-
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
index d7db621383c6b823af08ca07e0794758d062e211..39ab09ce28aa2ed4335d5279a965f23a8458688e 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-fennel-sku7.dts
@@ -14,14 +14,9 @@ / {
 };
 
 &touchscreen {
-	status = "okay";
+	compatible = "elan,ekth6a12nay";
 
-	compatible = "hid-over-i2c";
-	reg = <0x10>;
-	interrupts-extended = <&pio 155 IRQ_TYPE_LEVEL_LOW>;
-
-	post-power-on-delay-ms = <10>;
-	hid-descr-addr = <0x0001>;
+	vcc33-supply = <&pp3300_alw>;
 };
 
 

-- 
2.47.0.rc1.288.g06298d1525-goog


