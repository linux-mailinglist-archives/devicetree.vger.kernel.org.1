Return-Path: <devicetree+bounces-18814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C357F8BCE
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 06A8CB211BB
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:41:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DCF824218;
	Sat, 25 Nov 2023 14:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="SXzDnDQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8074C6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:56 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2858f58ed3cso1153676a91.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:40:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700923256; x=1701528056; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WiWiAkdokMCbWDAO7LHRzcKx4s1zIRVN4htgSNI19S0=;
        b=SXzDnDQlOHsnUKe2sm0QJ/ObMXni/K2lVHiPgvoUnd9sYB8YpPP4QveviC8ZlF+QiN
         syvBTVks6pHhOGJdbNwqBo0gR0hEe3CdllEgbiF34YkGV2Qe/TjAq9BStm9Lsy0MgcYz
         QN4gS74GoFo6HLCc+Z1WpzFjdQsW4Z9ZzLaPM14YEiYzi4AvXOuP9A0VScHsjlNhuHil
         YOaH222TJOMekJu0T6LudNA/6rEqfJB4sBG0njGplZ0BM6QdfCQc4OaTJUUaTQYRy5XO
         VTIE/2GdEq0EchOmtC7ttBSac/i97OjWaA0fW0+qp03ObssNPilx5k2ML7wkmEfwOyRe
         BMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700923256; x=1701528056;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WiWiAkdokMCbWDAO7LHRzcKx4s1zIRVN4htgSNI19S0=;
        b=b2yvEKwsVKjBqKl3L/nsfoV5pdBK68PfMHg4Ciw+1poBdFDUCoOAeQ/JR8Ay1sYc/k
         xKsZtkJGaQUoWP6pMZH2I3a5BXpWcAuhpbEMRNs4eqLWC/InLQ66KOFdX7r8nRiZKahB
         Tf7XQxZ1YynTsq13qSlMmhvHs7W6MiU5oV+sODazx8RMpU4PK4YHYsrIRBUw92cLF1PL
         DIMkCu5zEESnoUkUz9mpk5Kw1C51B+SkTI99MjNVcZfSc3imJHNtYv/83JKNHjstH/ku
         SVzG2HTZ/SNz4vbDqo9UHSVBluXr9v2lXLHO6CDw4E9vq9KfhxXg5Jo1NE5+tJGfe49a
         lAUQ==
X-Gm-Message-State: AOJu0YzSz6/ptSAjccbAUyuJ1QCFUi3qJxpdkalRbebz770nIqAtd8U+
	w2hNWmklnkUb2BxT3bUdq752Jg==
X-Google-Smtp-Source: AGHT+IHWEex2FGS7az9RQq5AKcMfJhSJIdyZsreQ9X02NhZ1wTViWvta8bDzuzp8qJ0IRahGYHoiZA==
X-Received: by 2002:a17:90b:1a8d:b0:280:c9a1:861e with SMTP id ng13-20020a17090b1a8d00b00280c9a1861emr7085666pjb.13.1700923256390;
        Sat, 25 Nov 2023 06:40:56 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id h15-20020a17090aea8f00b002802d264240sm4817998pjz.29.2023.11.25.06.40.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:40:56 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 10/10] arm64: dts: rockchip: Add LED_GREEN for edgeble-neu6a
Date: Sat, 25 Nov 2023 20:10:12 +0530
Message-Id: <20231125144012.58668-11-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125144012.58668-1-jagan@edgeble.ai>
References: <20231125144012.58668-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A, NCM6B SoM has Green LED on the module.

Enable them with heartbeat function.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../rockchip/rk3588-edgeble-neu6a-common.dtsi | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
index 961a80014686..003887fbf996 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-common.dtsi
@@ -3,11 +3,27 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+
 / {
 	aliases {
 		mmc0 = &sdhci;
 	};
 
+	gpio-leds {
+		compatible = "gpio-leds";
+
+		led_user: led-0 {
+			gpios = <&gpio0 RK_PC2 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_GREEN>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_user_en>;
+		};
+	};
+
 	vcc12v_dcin: vcc12v-dcin-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc12v_dcin";
@@ -110,6 +126,14 @@ regulator-state-mem {
 	};
 };
 
+&pinctrl {
+	leds {
+		led_user_en: led_user_en {
+			rockchip,pins = <0 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sdhci {
 	bus-width = <8>;
 	no-sdio;
-- 
2.25.1


