Return-Path: <devicetree+bounces-26574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D769816F90
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:06:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B285B1C23E7D
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:06:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1B03D556;
	Mon, 18 Dec 2023 12:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="MwleVS89"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A85B33D544
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1702904109; x=1734440109;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=FUvfz8pXuv4S3nEyPlU9Lesurxw9nSkYEmdYOQ09Uo4=;
  b=MwleVS89aAjycD/aePD0/nFIstbboa6GTUxDh9TEjmyru0eHanGkz/uD
   SJiwighGy7DDB6bfveyn2cTjlqdYnqvQpInN0WfrQBdjhbOWA/KhdHP/e
   k5XKt1U0lctBLQaouRhqQT/TGtYcPTo+1bPepYUMjy3iRYll68yPGappX
   WtvaKXuHCePDMS76lJhQb7e9sHOxWnNzq5Q8O0cFS8ZIn87g/rbj3eS+W
   u7p4/fwairz8i0pCKN0iOZ4Sf3doVp78YjXnjxcfFKFZfnkKj4bK6GHET
   mg6vXUWe8id97kqqO/WbCyunwddNnw6fv2kLI9ZwW1L4aDo79w4dtXrJK
   A==;
X-IronPort-AV: E=Sophos;i="6.04,285,1695679200"; 
   d="scan'208";a="34562697"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 18 Dec 2023 13:55:00 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 41A2B28008E;
	Mon, 18 Dec 2023 13:55:00 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	NXP Linux Team <linux-imx@nxp.com>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 06/23] ARM: dts: imx7-mba7: Mark gpio-buttons as wakeup-source
Date: Mon, 18 Dec 2023 13:54:42 +0100
Message-Id: <20231218125459.2769733-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
References: <20231218125459.2769733-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

I2C expander is capable of generating an IRQ during powersave, so the
attached buttons can be used for waking up the system.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
index 2aef830cf1f2..bc5d2e4f0eb1 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-mba7.dtsi
@@ -32,11 +32,18 @@ chosen {
 	gpio_buttons: gpio-keys {
 		compatible = "gpio-keys";
 
+		/*
+		 * NOTE: These buttons are attached to a GPIO-expander.
+		 * Enabling wakeup-source, enables wakeup on all inputs.
+		 * If PE_GPIO[3..6] are used as inputs, they cause a
+		 * wakeup as well.
+		 */
 		button-0 {
 			/* #SWITCH_A */
 			label = "S11";
 			linux,code = <KEY_1>;
 			gpios = <&pca9555 13 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button-1 {
@@ -44,6 +51,7 @@ button-1 {
 			label = "S12";
 			linux,code = <KEY_2>;
 			gpios = <&pca9555 14 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 
 		button-2 {
@@ -51,6 +59,7 @@ button-2 {
 			label = "S13";
 			linux,code = <KEY_3>;
 			gpios = <&pca9555 15 GPIO_ACTIVE_LOW>;
+			wakeup-source;
 		};
 	};
 
-- 
2.34.1


