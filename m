Return-Path: <devicetree+bounces-18860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 619847F8D98
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:05:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DF8ACB20F18
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AC202EAE1;
	Sat, 25 Nov 2023 19:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="GJRA/1D7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB08F3
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:47 -0800 (PST)
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-6b7f0170d7bso2772750b3a.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939147; x=1701543947; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qx9QA1qHqG0GAtg9pbqHFF4GYx+AxtRnDdtAZHISiVs=;
        b=GJRA/1D7N+eMUZa6h39jVdnhAw/FpcIZlxHbD6ZEifpemtiI7qXcODnXRvNlfwzLHK
         YSvFC2HLYMiAup+/ruqf2AkHMQ0ZxY7uFTo0zYQdltUYOBcFR6Rr8MplboyLK+4kpUHc
         k8IXMFuZ2LGu+giHFg/ukGr2SGR3NkwyfrPeFx581gAXHAWVJJhyh4GSeocFrfadBZvk
         fDilHi2oVG8HSAMgFbM6q2R/l5esVCEbWi6YZY2V4PcVOGdF57JGOEahtrW7jnyPyQ2q
         9RK/ih6q8n+OVAs/WARS5V2HI2xA04HyIm90iCdznQSafCfjTok7jPqx4v8RxOX7MkLR
         u8eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939147; x=1701543947;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qx9QA1qHqG0GAtg9pbqHFF4GYx+AxtRnDdtAZHISiVs=;
        b=LdOJmzofLQVn816G/UndyLdAnWXxF49ekBBZp9Y2RJWVdw7caAKcHmXahrYwPz+eo8
         JVr7ZaYRO/p65Unj0B90lWjkGy9plv2CamFI42x8y92lzAhEdoOQdfMG5Xpwhv1MbvH0
         XNJFfayl7Zllf9j5gVuoHlE7ACJYHmM23BSN/8leSvegJP8e/ja/PgeqihAksMsq93hG
         8rNKYvlMOs41/FNEIqsOu+1TV9nD5aZTOzyO1qDYjD+aMXU/tm4TkgQs3w7uODMFY/+0
         YizuJUGte6ZtxZijpjeHZoUEfAXv49emkgXF1xUYcyau9UePJ0KruTfo8lEHDuh7fxYl
         Pg9Q==
X-Gm-Message-State: AOJu0YxlzsZ/bUXyLcFmRYZ0izVzw9h+ZJeXr5Bey7VPooaGKegrKv8v
	mWCToZuz0vachUY4/Z5BGWmDFQ==
X-Google-Smtp-Source: AGHT+IGMr6ScCDfcCsInMnKQ2BThBRh4zgWD4WXoYM4YXwi74aUnXa8ZVwOyJcYknomWwVIj2Kalrg==
X-Received: by 2002:a05:6a00:22d2:b0:6cb:a434:b58f with SMTP id f18-20020a056a0022d200b006cba434b58fmr8768270pfj.33.1700939147097;
        Sat, 25 Nov 2023 11:05:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:46 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 06/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO 2.5G ETH
Date: Sun, 26 Nov 2023 00:35:18 +0530
Message-Id: <20231125190522.87607-7-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A-IO board has 2.5Gbps Ethernet via PCI2_0.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 845f90c302ca..7e838d76fa73 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -3,6 +3,8 @@
  * Copyright (c) 2023 Edgeble AI Technologies Pvt. Ltd.
  */
 
+#include <dt-bindings/gpio/gpio.h>
+
 / {
 	aliases {
 		serial2 = &uart2;
@@ -11,12 +13,25 @@ aliases {
 	chosen {
 		stdout-path = "serial2:1500000n8";
 	};
+
+	vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_pcie2x1l0";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		startup-delay-us = <5000>;
+		vin-supply = <&vcc_3v3_s3>;
+	};
 };
 
 &combphy0_ps {
 	status = "okay";
 };
 
+&combphy1_ps {
+	status = "okay";
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -33,7 +48,22 @@ hym8563: rtc@51 {
 	};
 };
 
+/* ETH */
+&pcie2x1l0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&pcie2_0_rst>;
+	reset-gpios = <&gpio4 RK_PA5 GPIO_ACTIVE_HIGH>; /* PCIE20_1_PERST_L */
+	vpcie3v3-supply = <&vcc3v3_pcie2x1l0>;
+	status = "okay";
+};
+
 &pinctrl {
+	pcie2 {
+		pcie2_0_rst: pcie2-0-rst {
+			rockchip,pins = <4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.25.1


