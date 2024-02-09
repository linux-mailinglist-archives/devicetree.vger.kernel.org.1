Return-Path: <devicetree+bounces-40040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B67A484F0B1
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 08:24:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7339C289DE6
	for <lists+devicetree@lfdr.de>; Fri,  9 Feb 2024 07:24:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20D83657DE;
	Fri,  9 Feb 2024 07:23:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="fsD86tUD"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-226.siemens.flowmailer.net (mta-64-226.siemens.flowmailer.net [185.136.64.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68627657AB
	for <devicetree@vger.kernel.org>; Fri,  9 Feb 2024 07:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.136.64.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707463415; cv=none; b=lO4rSzqBgQPrXSmyhOEBUY5YQonVuJftlaiOiWU07Oz23m5uH5rAidqm5LsKjDBtm/KEDn0US/qEMaJc9IGm/5o7EdZTXHCG1zt4GRq/A9vVKyj+qt+eGS2jVP1p8n0dcPvPRcw8IoRzF+XNhGX66P0kqGpx5dzBkhxIf9f/hKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707463415; c=relaxed/simple;
	bh=+VQ0OzGI7s60jod0Wom+quriTvmt944wujZN471+ZaA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Dmyf9QbVlM/IwDVsdMqOc5C6As+YRP6Ntfxn3vD1A6Q4cZjkWC9cKrp6MRlCQrfSy9BbY2DjO/n6SUcL3jQlpWSGw6Ujxxe84kD6wNWhFIB4TZZcM+L+b2ka0W3il4ry2WSNmviEFyduhhyr4cWkjWaoyYuiQSXvNJEXozfj4lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com; dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b=fsD86tUD; arc=none smtp.client-ip=185.136.64.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-226.siemens.flowmailer.net with ESMTPSA id 20240209072325cbcc0c6ecd547a9994
        for <devicetree@vger.kernel.org>;
        Fri, 09 Feb 2024 08:23:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=w/nlbIkb6uT5wbQnDjnaa8ve7N7J59uojOGnpzPy6dU=;
 b=fsD86tUDi20zmqLiHPY0OqNhku7MrQ9fIXxQOvihqaaa6ljp7+IUgvgP1ca/5OoHbBZb9Q
 1XFiG+UkDM0D9LbFOKrYkLfUdBweMj2yLgqvzerl7NY1YcsZGfj0G3/VfLikBzc0pLnhInsP
 iaAUM0CROxL+BgxBn7FLOdW0uXvOc=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>
Subject: [PATCH v3 6/7] arm64: dts: ti: iot2050: Annotate LED nodes
Date: Fri,  9 Feb 2024 08:23:20 +0100
Message-Id: <331f8756483e3f896a3e50e069b3e2c0fae7a8ac.1707463401.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1707463401.git.jan.kiszka@siemens.com>
References: <cover.1707463401.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Jan Kiszka <jan.kiszka@siemens.com>

Add function and color properties and use the common scheme for the node
name. We can't change the user-visible labels, though, due to existing
userspace relying on the current format.

Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
---
 .../boot/dts/ti/k3-am65-iot2050-common.dtsi   | 33 +++++++++++++++----
 1 file changed, 26 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
index bffc9e251289..caaf6862ae1d 100644
--- a/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am65-iot2050-common.dtsi
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Copyright (c) Siemens AG, 2018-2021
+ * Copyright (c) Siemens AG, 2018-2024
  *
  * Authors:
  *   Le Jin <le.jin@siemens.com>
@@ -9,6 +9,7 @@
  * Common bits of the IOT2050 Basic and Advanced variants, PG1 and PG2
  */
 
+#include <dt-bindings/leds/common.h>
 #include <dt-bindings/phy/phy.h>
 #include <dt-bindings/net/ti-dp83867.h>
 
@@ -88,28 +89,46 @@ leds {
 		pinctrl-names = "default";
 		pinctrl-0 = <&leds_pins_default>;
 
-		status-led-red {
+		led-0 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_STATUS;
+			label = "status-led-red";
 			gpios = <&wkup_gpio0 32 GPIO_ACTIVE_HIGH>;
 			panic-indicator;
 		};
 
-		status-led-green {
+		led-1 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_STATUS;
+			label = "status-led-green";
 			gpios = <&wkup_gpio0 24 GPIO_ACTIVE_HIGH>;
 		};
 
-		user-led1-red {
+		led-2 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_INDICATOR;
+			label = "user-led1-red";
 			gpios = <&pcal9535_3 14 GPIO_ACTIVE_HIGH>;
 		};
 
-		user-led1-green {
+		led-3 {
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_INDICATOR;
+			label = "user-led1-green";
 			gpios = <&pcal9535_2 15 GPIO_ACTIVE_HIGH>;
 		};
 
-		user-led2-red {
+		led-4 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_INDICATOR;
+			label = "user-led2-red";
 			gpios = <&wkup_gpio0 17 GPIO_ACTIVE_HIGH>;
 		};
 
-		user-led2-green {
+		led-5 {
+			color = <LED_COLOR_ID_RED>;
+			function = LED_FUNCTION_INDICATOR;
+			label = "user-led2-green";
 			gpios = <&wkup_gpio0 22 GPIO_ACTIVE_HIGH>;
 		};
 	};
-- 
2.35.3


