Return-Path: <devicetree+bounces-168943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C98A94F41
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 12:14:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81D431892980
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 10:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8AF182638B8;
	Mon, 21 Apr 2025 10:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="K2sbUXtb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7D372638A2
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 10:13:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745230400; cv=none; b=rAnY/I00MnJS8brFhzBdetsGQV25VFBhb8jOxwa1JgaxkoxYmz2pu3usR6bumiMrOMtgidEJt95lLV2NORGkiy9GswxdXgCOAwUAPOyvjA1pltlxvxcAaIDtYB6J+9vzqw9Fi/EZdgEywAKQz6Cz50C6UzIxQIDLIZ/b20kfy74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745230400; c=relaxed/simple;
	bh=5XUtMoDRCkTRdh5mvmKCDd+dNP+k6uqdEMLM9UzaAPI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=LXvq5OJ2hEPkCIFRZrMe24aMB2qohGB4V+ZFCZYdRbr3jZMNlhjDhmtjvM+J4LqAG5qFMN9O3vauimbIe6ilCapHLB0M4JAgxszlDauDlCxXK2QEdYhW2/Jg9Hm1LCtVQQmIz2htRLOfifp5ofWCShgNx3Ocwt7pNa4RubW7Er4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=K2sbUXtb; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-227cf12df27so33005005ad.0
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 03:13:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1745230398; x=1745835198; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QpytMjpN9gDZuQ/F9dqqmXXp6n+OWf7Vs6AgeBOpoF8=;
        b=K2sbUXtbUh1cRDl8NZDmLiX91RIqGJNb+Bq0jP7fQ3XlCd2dz6GAD3K8SYRI7HnCAI
         qyIGyQAN/diBee4zge3BCcrEP4dGKX1lEDMfK6o45WsHdVC4pSQHumL0HQbM36JI9Q7f
         Bs0jK2ycNfd3MmEgVJu47QhZJorFX61S66Qvw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745230398; x=1745835198;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QpytMjpN9gDZuQ/F9dqqmXXp6n+OWf7Vs6AgeBOpoF8=;
        b=BQJBv1ynnnJfN2Qf0d0Xv3XKwXFqj9UjWNJz1jNridg8yJvFctOiOMvUyFe3Jn9cls
         a88CPyevqW8DOEDt8BoAhkGyw0Zf8RFO3pnptIY40F1DtNtCBWbGfz+YMgrdHXbnauee
         DoFFwBsQS7SeYzP9QOqflwgNCkw3L0WPNE0sAxRK3vkzrFWQQa8jeELUBylN5VjPOcEr
         SO1TSMPUVSLFpdMZa0LJQNuUINoQ6xk82dbxwo7rdYz4LbSINDly1uruDA9FcZFMR2BH
         OsTirR3BA7lyITSOmjE4M+5z84T2+FSgBVtApnGAaKOa9c7/qbSK2dZ2l94BiH1sujm3
         L00A==
X-Forwarded-Encrypted: i=1; AJvYcCV+6xnuDiZQC/3tB4Mzdl9V3NNBD/5flDbjcpZWPLtSPkBDdlzW/PeLtCJmV5jaZthPkRuHAgn5tG+s@vger.kernel.org
X-Gm-Message-State: AOJu0YwCTmLbDI1V2k6J8Jt3rW75y4N32TLIXoOHGUKZbnikJOwjEJZx
	prCYZ2XjS/VEAJusuMfC+y38J/96Tj63vRgF1urdk0xrSQcQyEidsT+V1hyzkw==
X-Gm-Gg: ASbGncswtgO/7K9kXA7StkrQvj/0a46RchKczrS05Nw4P7e7gMZ7c2QAiVVKQqDzjlK
	404qRcmMTWYVrul9aeeFYmtA6yJD6YBgq+YjCBz2TQQiBoV5CEw2/HB1/5yzx0KVjqhv1A6AuK8
	f66vzuu8Uh+krHO8ugC1nLDgiEUM2LAKMUeJoTVR0WZfwmsPL5GL+e5LvWS71SYdLQfAaH38bIH
	9M0SKoinMeX+W5lDbM5sCXmrsZXCzXnm4m7paCGCleCq+/IS79JSxNnSdrRmztpQos99NO2SR8o
	/GTgUtU1SY1BbWo9nfqats7RI2RnaH3HD6dF3tnZWB7EjPCM85PQdG8knuhWew+UiwZwKA==
X-Google-Smtp-Source: AGHT+IF6rGXrSzCpvaNGhX4xciML4WX1Qp+Xf99qU1svwwhGPd2mOXprUmL/S+UqQYoWzSfytulsaw==
X-Received: by 2002:a17:902:f644:b0:224:7a4:b31 with SMTP id d9443c01a7336-22c53e38f33mr139591965ad.6.1745230398086;
        Mon, 21 Apr 2025 03:13:18 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7633:f42a:d31d:3f9c])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22d78db8b04sm38985205ad.238.2025.04.21.03.13.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Apr 2025 03:13:17 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Benson Leung <bleung@chromium.org>,
	Tzung-Bi Shih <tzungbi@kernel.org>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	chrome-platform@lists.linux.dev,
	linux-input@vger.kernel.org,
	Douglas Anderson <dianders@chromium.org>,
	stable+noautosel@kernel.org
Subject: [PATCH v2 4/8] arm64: dts: mediatek: mt8186-steelix: Mark second source components for probing
Date: Mon, 21 Apr 2025 18:12:42 +0800
Message-ID: <20250421101248.426929-5-wenst@chromium.org>
X-Mailer: git-send-email 2.49.0.805.g082f7c87e0-goog
In-Reply-To: <20250421101248.426929-1-wenst@chromium.org>
References: <20250421101248.426929-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Steelix design has two possible trackpad component sources. Currently
they are all marked as available, along with having workarounds for
shared pinctrl muxing and GPIOs.

Instead, mark them all as "fail-needs-probe" and have the implementation
try to probe which one is present.

Also remove the shared resource workaround by moving the pinctrl entry
for the trackpad interrupt line back into the individual trackpad nodes.

Cc: <stable+noautosel@kernel.org> # Needs accompanying new driver to work
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../boot/dts/mediatek/mt8186-corsola-steelix.dtsi      |  7 +++++++
 .../mediatek/mt8186-corsola-tentacool-sku327683.dts    |  2 ++
 .../mediatek/mt8186-corsola-tentacruel-sku262148.dts   |  2 ++
 arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi       | 10 ++++------
 4 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
index e74e886a00cb..822a177e7c19 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-steelix.dtsi
@@ -123,8 +123,11 @@ trackpad@2c {
 		reg = <0x2c>;
 		hid-descr-addr = <0x20>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
+		status = "fail-needs-probe";
 	};
 };
 
@@ -197,3 +200,7 @@ pins-vreg-en {
 		};
 	};
 };
+
+&trackpad {
+	status = "fail-needs-probe";
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
index c3ae6f9616c8..4dbf2cb73a81 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacool-sku327683.dts
@@ -17,6 +17,8 @@ trackpad@15 {
 		compatible = "hid-over-i2c";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		hid-descr-addr = <0x0001>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
index 447b57b12b41..ee5bc2cd9e9f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262148.dts
@@ -19,6 +19,8 @@ trackpad@15 {
 		compatible = "hid-over-i2c";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		hid-descr-addr = <0x0001>;
 		vdd-supply = <&pp3300_s3>;
 		wakeup-source;
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index cebb134331fb..918f17385ba5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -390,19 +390,17 @@ &i2c1 {
 
 &i2c2 {
 	pinctrl-names = "default";
-	/*
-	 * Trackpad pin put here to work around second source components
-	 * sharing the pinmux in steelix designs.
-	 */
-	pinctrl-0 = <&i2c2_pins>, <&trackpad_pin>;
+	pinctrl-0 = <&i2c2_pins>;
 	clock-frequency = <400000>;
 	i2c-scl-internal-delay-ns = <10000>;
 	status = "okay";
 
-	trackpad@15 {
+	trackpad: trackpad@15 {
 		compatible = "elan,ekth3000";
 		reg = <0x15>;
 		interrupts-extended = <&pio 11 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&trackpad_pin>;
 		vcc-supply = <&pp3300_s3>;
 		wakeup-source;
 	};
-- 
2.49.0.805.g082f7c87e0-goog


