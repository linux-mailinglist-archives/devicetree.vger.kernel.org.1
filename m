Return-Path: <devicetree+bounces-66008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 265488C0E81
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 12:50:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8FED91F22D77
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2024 10:50:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB96514D290;
	Thu,  9 May 2024 10:48:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tPr4wsQB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A7F14C593
	for <devicetree@vger.kernel.org>; Thu,  9 May 2024 10:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715251731; cv=none; b=oEIW/KFx0H8+XYMOqFo/8d3Okljy/k7+lQUxh1Y4fzhILZ4b8d2FFioiemcVg58K8NMA612WUblLjAAMOCfjmI6NtjHzXtdoC2xgXoghxESlPmmtov55ni1WxsZg6DX3hTWq5T7X5l9r0cvpyHNBBSEtPxHkxkWI7Raah2uX5MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715251731; c=relaxed/simple;
	bh=aPzqlco7XsixPyzCXTVco8ktdIB66kEc2nTRRwiR/3s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kh5AusA8m2qU4yu//BGOkhViggWhKZTjnqhMjLpLWnmZz4XhTydeqaff5BYcPp/lQkcZWKdWYB2vgWhUoVLZQSW/7XAyrwRTitiZIJUotz+8Cc8ttq9JliqNUtEO4GpErgvo/kl1gtVRe1QS9vd2S7lliuzV0juwnBYzW1dJYzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tPr4wsQB; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-a599af16934so180292966b.1
        for <devicetree@vger.kernel.org>; Thu, 09 May 2024 03:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1715251728; x=1715856528; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fIdN4MR8ysP0CcOVaWDr/atwyhcItV6HcCM2wmXc11Y=;
        b=tPr4wsQBcT81EcrXaBXOhKKqo67opPo1RxZPOa3OrZ7/CgAxrY+RI0pvn2D60Isx/u
         NExw2AOojCBmQ5jCEOdTCKmil4vS+449YM/ouqIaYtoJlMO7dh1EoBCjUATvi8xad20d
         QALNs0hpmdoEw6KiBPpLtfkFnh7yphrMB9dj1RtJL/FgVVmt9bJlWgcKK+S8QqtDRqFa
         3QuaFxuwPvSOApADpU5Y7aHSZEDEq0S5Xyi5n5xX6BP7IpS5nuZ5KXDF7TlhaYijtm2I
         Z5ST5DmyqFD7GobXm4X0m2gixyOy4j7Ia1O7WkKuh4u4cuQNVgZ/oVMSCNt+Gy0Z2pzJ
         jUvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715251728; x=1715856528;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fIdN4MR8ysP0CcOVaWDr/atwyhcItV6HcCM2wmXc11Y=;
        b=w46BhMv/GOA3o+ZeTpwffxFWkoOkqHsc7SA/Y8MklAuUBodMQN6vdEd/iyR6f1leAK
         bvV497v65iT983On8MnWiVTGeaeUaUH1AVwNQTA8W11jAoPkRh6z4GoS7E4XNTqzJaMy
         iA0gKArb+G6ZYIbFSotrcG5DBulm9a6vNHfstu8stxR/+cAPELHYuSOYCbNmwLa6W0F3
         J1WI5uoXKx78GoDaAKmjJTr7BCaRDT/vuXRi1X1fxI0Ww48hjtoILLvAZkRqLWY3uJvl
         nGGKB0YeUKBYCi0//FShKUJRqKNt9q4PlZ7CuSWqYS9MiOvjbreuZoz0TjISbojxTMaR
         eTig==
X-Forwarded-Encrypted: i=1; AJvYcCWlgchjJfA/ryEatoTXyuds+zUAlJ3toKq/Vn5Ozena9f6JpWNlgEPAWaB0WLRA2+PMmpDiDGiJb7pR8U4flQ3cfAhz7ytubx35Vw==
X-Gm-Message-State: AOJu0Yz4esyzv1Gi5w6GeslaQMFqLCnrV4XwFjSjndSPXyAq0lopIRA8
	d7Yhg+1nbXg4aXJMAZ8rs/GkvZls3UB5pZhk6XhPpsYcK0x7KcGdK1oX5rBHyyI=
X-Google-Smtp-Source: AGHT+IHzxyO5fKOhzl1H1hoKpa6CXJoOBaKE4zW9xgfQNDPQNYWH/OVRT8MGIP39ltU081+X08S3Vg==
X-Received: by 2002:a17:906:1b08:b0:a59:c9b1:cb68 with SMTP id a640c23a62f3a-a59fb94a628mr352359966b.7.1715251728286;
        Thu, 09 May 2024 03:48:48 -0700 (PDT)
Received: from krzk-bin.. ([178.197.206.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5a17894d85sm60195966b.72.2024.05.09.03.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 03:48:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 4/5] ARM: dts: imx: drop redundant 'u-boot,panel-name' property
Date: Thu,  9 May 2024 12:48:37 +0200
Message-ID: <20240509104838.216773-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
References: <20240509104838.216773-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Panel timing bindings do not allow 'u-boot,panel-name' and there seems
to be no users of it: neither Linux kernel drivers, nor U-boot as of
v2024.07-rc2.  Reported by dtbs_check:

  imx6qp-tx6qp-8037.dtb: display-timings: timing-et0700: 'u-boot,panel-name' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lcd.dtsi  | 5 -----
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lvds.dtsi | 4 ----
 2 files changed, 9 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lcd.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lcd.dtsi
index 7ae495bdc48f..ded241a39906 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lcd.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lcd.dtsi
@@ -127,7 +127,6 @@ timing-vga {
 			};
 
 			timing-etv570 {
-				u-boot,panel-name = "edt,et057090dhu";
 				clock-frequency = <25200000>;
 				hactive = <640>;
 				vactive = <480>;
@@ -144,7 +143,6 @@ timing-etv570 {
 			};
 
 			timing-et0350 {
-				u-boot,panel-name = "edt,et0350g0dh6";
 				clock-frequency = <6413760>;
 				hactive = <320>;
 				vactive = <240>;
@@ -161,7 +159,6 @@ timing-et0350 {
 			};
 
 			timing-et0430 {
-				u-boot,panel-name = "edt,et0430g0dh6";
 				clock-frequency = <9009000>;
 				hactive = <480>;
 				vactive = <272>;
@@ -194,7 +191,6 @@ timing-et0500 {
 			};
 
 			timing-et0700 { /* same as ET0500 */
-				u-boot,panel-name = "edt,etm0700g0dh6";
 				clock-frequency = <33264000>;
 				hactive = <800>;
 				vactive = <480>;
@@ -227,7 +223,6 @@ timing-etq570 {
 			};
 
 			timing-comtft { /* same as ET0700 but with inverted pixel clock */
-				u-boot,panel-name = "edt,etm0700g0edh6";
 				clock-frequency = <33264000>;
 				hactive = <800>;
 				vactive = <480>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lvds.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lvds.dtsi
index dfbdbb87aec4..4eb53d5677a6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lvds.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6-lvds.dtsi
@@ -128,7 +128,6 @@ lvds0_out: endpoint {
 
 		display-timings {
 			timing-hsd100pxn1 {
-				u-boot,panel-name = "hannstar,hsd100pxn1";
 				clock-frequency = <65000000>;
 				hactive = <1024>;
 				vactive = <768>;
@@ -159,7 +158,6 @@ timing-vga {
 			};
 
 			timing-nl12880bc20 {
-				u-boot,panel-name = "nlt,nl12880bc20-spwg-24";
 				clock-frequency = <71000000>;
 				hactive = <1280>;
 				vactive = <800>;
@@ -176,7 +174,6 @@ timing-nl12880bc20 {
 			};
 
 			timing-et0700 {
-				u-boot,panel-name = "edt,etm0700g0dh6";
 				clock-frequency = <33264000>;
 				hactive = <800>;
 				vactive = <480>;
@@ -193,7 +190,6 @@ timing-et0700 {
 			};
 
 			timing-etv570 {
-				u-boot,panel-name = "edt,et057090dhu";
 				clock-frequency = <25200000>;
 				hactive = <640>;
 				vactive = <480>;
-- 
2.43.0


