Return-Path: <devicetree+bounces-210479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF14FB3BA07
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 13:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8FF846863CA
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 11:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 199302C08B2;
	Fri, 29 Aug 2025 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AWOjbiR+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6668F2BE032
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 11:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756467512; cv=none; b=HYrVIlYfok9eTUA+q38/sa41bi5nWHy75vs/SCskiYVKvgTIgB+oGCCqBCuItUUferct4IevZdzyOT7K4xMk4yS66XMQ8GAgVe2axaSN8V9gEMp7cusdSXD0HdNym5FTBtK12LwoBxMe9WGlKmY57rqbA3JPppUKaNiY+QADYVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756467512; c=relaxed/simple;
	bh=w3ISpHSvbmWlfV4wdRFzO3I+b7YoNB6xdQpU/uUb0I4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DWIHW4t1ANhRhjUb9KzC9xTm3EaBnU5tkjD8F6kGkuPgCHQorXaTS/km+MIdy968EfeJ/IFvEP2EQEK76svQQBdwh4tXYoFhrXuCHHjR9OZmVglu2KAS7s0awEe8o6u721Xlov8grO/A2pmfI8A7j71jDHrVIRDnBB5rjn8CAjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AWOjbiR+; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3d0dd9c9381so460636f8f.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 04:38:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756467510; x=1757072310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WalOz8RKKxxgzpgOrvxEvhq9BVJ+Sxe5eWkisRQONQU=;
        b=AWOjbiR+/l9CK+lOsuHly1bcy07EH/Q3zSLySxjdmtxtrU32vCbYduw1+D9KMkMaye
         EABRrs90/+zadmnKKuumF8gXEuBbR2qLq/9gCyCU6cdgYcyeQiEThuKcB8hqIJwNLC29
         lZPb2UlKOlFVZd8T+VC0baGuQvhPKcUcxcd673hqkdXfflo5MpXkJc2uHl4JFuvjotlU
         zybyehfx0i/+b0xkFwKxI0S9bjmndTarFoJ7dvRhwaj4uUdX0pVhDmSpMIJ4WfhKh89v
         r0IXrJjZBkHLgHTgO4IsDrpfB8KskI9XTKuQYnvSh85f8hI7DkgY3WNn6/yVF5x8203h
         +K5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756467510; x=1757072310;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WalOz8RKKxxgzpgOrvxEvhq9BVJ+Sxe5eWkisRQONQU=;
        b=jF7YDj+VDIq4MfR7NTr+3fRPPs5lDBNIuOftexXAhRfqPs3GIHF5Jlwinx1rlPYNTd
         PnDw6BxR9++8PUqijJgCVSOWp+N5U0aV5EI8gRCg/6FrJoIVJjjlBEBotUuQKLqR+3vd
         +4iGqJfIWIX2GnJJEZgPrQ9shfmmDnOSbetxCT6KFUiRnOE1zHWO0IBL4fMMhh+JKsc8
         1OyBo3LoWhsnIEBM+lWJUTsV/qVul4/nm8cPZGtePj6mK1aofPPhiujhov8AeLypS9pt
         RxSQyeWmiGSNI9zXojCh/dfNs5zvx5Kc2t9uH8WTBxO6G4OpuYh0Dc5sWRuvgaJQfC3J
         9VWA==
X-Forwarded-Encrypted: i=1; AJvYcCVrZA7xq5gwnpzqErikm9Q7HZyWfQSDq98yKXp0JM6SgjczZHQL2AWlSC0FiK96MlJixO2Byl5zEJun@vger.kernel.org
X-Gm-Message-State: AOJu0YwaZsmA2uqOoDIgZc6ZmRT3UiUK2Cgn5Arl+RygvU8QDBFCluvr
	TzBnVqXs3xAgHr6qqr7aTmGbCPvHA4/QperHMTyBTd9obycq1Qg8xYjK
X-Gm-Gg: ASbGnctbVS+jaYW8mHERO8JDA8pgmA3zSsn0WzVmnkccJ1XEPT1j6W5HLn4Sj1br48u
	lGDmmeZIg0nrbXpOQwhv/JDx1cFynHpfi0ypBZ2FOCLUBAwpsUe+odwvMRX5x6CsanpyH1MFCOh
	OwIMzhWAzC18K8AFQLwmKOFXWUqZlKN3VoWeUubuZyF6EnIfKUtjBbl4XiXh2QjFZN8pKWWgaK3
	29eAA6PBgFUIeMfRa7J6H1oEeJOEZge+C5Yw5O9UWkx0wGNSeLu+H+kmBT8NAew51PgPhvc3R94
	4nVCYdOzwOVsvFVCcdDH2eoAxdVcenBqLXj6YnkM1JNkug0X5gNC7pGJI79I2IkEDi0kkiAi709
	5xmDYqVvW2T9OaY9ReDos6/ALkCvI8kWLEp+OtqqYaB+J3pp2d/WvNtbfysgqCZEEHyeiEMnagg
	o6aRHtic3eDdniZL8LXk4hqTh5H3KBs1ZBMuTjl1VuxU+kl9wWv5AFaXyZoBNulVc=
X-Google-Smtp-Source: AGHT+IFz5++0a2Ytw2U05mb8xEeZQEb3Km/PeFew6jY1NCh0K74stclFlzmeU6Bnti9FVxL5VY+dlQ==
X-Received: by 2002:a05:6000:4184:b0:3cc:19d3:8d78 with SMTP id ffacd0b85a97d-3cc19d39431mr7708668f8f.7.1756467509533;
        Fri, 29 Aug 2025 04:38:29 -0700 (PDT)
Received: from cypher.home.roving-it.com (7.9.7.f.b.1.3.0.b.8.f.0.9.e.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:e9:f8b:31b:f797])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3d0c344f6e3sm1874327f8f.35.2025.08.29.04.38.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Aug 2025 04:38:28 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Diederik de Haas <didi.debian@cknow.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v2] arm64: dts: rockchip: Further describe the WiFi for the Pinephone Pro
Date: Fri, 29 Aug 2025 12:38:24 +0100
Message-ID: <20250829113826.2029755-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Update the wake-up pin and associated interupt details for the
Pinephone Pro WiFi module. Details obtained from the published
PinephonePro-Schematic-V1.0-20211127.pdf page 19.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
v2:
- Update commit
- Drop alias

 .../boot/dts/rockchip/rk3399-pinephone-pro.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 6f97e57f36f55..24e4365a2e588 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -689,6 +689,12 @@ vcc1v8_codec_en: vcc1v8-codec-en {
 		};
 	};
 
+	wifi {
+		wifi_host_wake_l: wifi-host-wake-l {
+			rockchip,pins = <4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	wireless-bluetooth {
 		bt_wake_pin: bt-wake-pin {
 			rockchip,pins = <2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
@@ -715,7 +721,19 @@ &sdio0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
 	sd-uhs-sdr104;
+	#address-cells = <1>;
+	#size-cells = <0>;
 	status = "okay";
+
+	brcmf: wifi@1 {
+		reg = <1>;
+		compatible = "brcm,bcm4329-fmac";
+		interrupt-parent = <&gpio4>;
+		interrupts = <RK_PD0 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "host-wake";
+		pinctrl-names = "default";
+		pinctrl-0 = <&wifi_host_wake_l>;
+	};
 };
 
 &pwm0 {
-- 
2.51.0


