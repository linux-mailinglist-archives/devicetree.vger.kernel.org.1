Return-Path: <devicetree+bounces-37054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 527E284393E
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:40:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D1243B263F7
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81ED45D8F7;
	Wed, 31 Jan 2024 08:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="l3L0xY+0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35315D72B
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 08:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706690451; cv=none; b=ai9AhQJIq//G6S6x9KKDyj6J6ByGC20NTLmAvFJYLxy5mQkOsq3yuqrAt6T1pogmWQ1HIAED7VePHGf5WLZW8DRR0Pq2zykZJuYm8zSAn0Ly1XvdYKMUcvOqsC1ipjxkP4OHo9ytdtn8hGwFNoTr362fNQs9qqfRxa0rWPDCavQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706690451; c=relaxed/simple;
	bh=0N7Vv617AZpS/lhgQ1jLWXz9N9LwcNRliNpAe3N+rPI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=If+iMHPGnWX74msgUFJVzeKANWHD8C0nROlNZkF0Oj2+lBCjQdd4LxprpKlEj7jofXmVwVra+8tbDC2OsRbb2BAJvw7AntpKmYy9p+0qWMybS6v/FjK5DOQlW8eM54uzlBbjkvEEjkZqO7v16foK4+d0bBGk053zYeu4yA8B1/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=l3L0xY+0; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-3bda741ad7dso4072467b6e.1
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 00:40:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1706690449; x=1707295249; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TxqUCZUmsP7DgZniUm0/38xJfKfkBwtdPc5aQ25lcnU=;
        b=l3L0xY+0IqBB9tw5snD2MssywSjV7o6XAIzK8Vc+4zN+VZdAkGMXUuf2sF7TIFGGaM
         BfTcgcX4fR9vPmnIcU6BxcsFzw9mdI3v5FqxBiNgk6TzlTxDW13UPYUhyqCYROMbqVoL
         dw6xD41PjObUIQq2ygdfjPrWvuyxzYuXlWrcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706690449; x=1707295249;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TxqUCZUmsP7DgZniUm0/38xJfKfkBwtdPc5aQ25lcnU=;
        b=ha+/0+WoSGQM/fX22Sn9kS5PBs5WBh1QWiycMM9Vq8F2tXk3FVx4rwfwn1pF5hbjuS
         6u1wxupCxqLpfG5s5PdDmJVzNLgMDGGxXZNgIscYkeR4XCnD5tL7ha8QrU317u1+RuEG
         5DGNWXKriu2/vFDHef2nZSq8cW5E4oLxXHuVYZXx8wm3XSWz3Zt4B8+RxbrDgJLLaLu5
         JphvECUushgdqOlw4KjNX1VZdHmHI2NHPRMaD/ShorHfuMJZFzaAzNJ9vyAS07SOgGPk
         T5U92ZYPSQxE9/hOZexoqCt1cjTzoDWAMIycXPkU7lnYndr8RWSOdP6G09iNzq4pJ3tt
         I8tw==
X-Gm-Message-State: AOJu0YyfrlJSCw3UDMoIihpmxiEyi/IxtpDJXfZhS6fyZ9jlGrHiXqjG
	u9wahkDf66zbusbCDFhJOCzRp0IzG5auKi9aF2Dn302u9epurpvUxeerIbio9w==
X-Google-Smtp-Source: AGHT+IH8zjEWpqXVJCV30f8ffZPJow/hwX+WfjPUWbBYzdz2Cck6xeNQQO9eY44+yWg7fTKY2uKYoA==
X-Received: by 2002:a05:6808:bd4:b0:3be:453d:7654 with SMTP id o20-20020a0568080bd400b003be453d7654mr1106395oik.48.1706690448802;
        Wed, 31 Jan 2024 00:40:48 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:74d3:dadd:270b:194a])
        by smtp.gmail.com with ESMTPSA id k1-20020aa788c1000000b006de3ffa19f4sm3343454pff.0.2024.01.31.00.40.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jan 2024 00:40:48 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH] arm64: dts: mediatek: mt8183-pico6: Fix wake-on-X event node names
Date: Wed, 31 Jan 2024 16:40:41 +0800
Message-ID: <20240131084043.3970576-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The wake-on-bt and wake-on-wlan nodes don't have a button- or event-
prefix that the gpio-keys binding requires.

Fix up the node names to satisfy the binding. While at it, also fix up
the GPIO overriding structure for the wake-on-wlan node. Instead of
referencing the gpio-keys node and then open coding the node, add a
label for the event node, and use that to reference and override the
GPIO settings.

Fixes: 055ef10ccdd4 ("arm64: dts: mt8183: Add jacuzzi pico/pico6 board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts      | 8 +++-----
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi            | 2 +-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
index 6a7ae616512d..0d5a11c93c68 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi-pico6.dts
@@ -17,7 +17,7 @@ bt_wakeup: bt-wakeup {
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_pins_wakeup>;
 
-		wobt {
+		event-wobt {
 			label = "Wake on BT";
 			gpios = <&pio 42 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_WAKEUP>;
@@ -47,10 +47,8 @@ trackpad@2c {
 	};
 };
 
-&wifi_wakeup {
-	wowlan {
-		gpios = <&pio 113 GPIO_ACTIVE_LOW>;
-	};
+&wifi_wakeup_event {
+	gpios = <&pio 113 GPIO_ACTIVE_LOW>;
 };
 
 &wifi_pwrseq {
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index a241bb70cd76..89932984889d 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -142,7 +142,7 @@ wifi_wakeup: wifi-wakeup {
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_pins_wakeup>;
 
-		button-wowlan {
+		wifi_wakeup_event: event-wowlan {
 			label = "Wake on WiFi";
 			gpios = <&pio 113 GPIO_ACTIVE_HIGH>;
 			linux,code = <KEY_WAKEUP>;
-- 
2.43.0.429.g432eaa2c6b-goog


