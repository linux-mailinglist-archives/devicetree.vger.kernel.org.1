Return-Path: <devicetree+bounces-48739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E298733DC
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 11:19:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 812A42871B1
	for <lists+devicetree@lfdr.de>; Wed,  6 Mar 2024 10:19:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8ED7A605B1;
	Wed,  6 Mar 2024 10:17:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="Rxx7UCOb";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="W/Rm+8ri"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA2B5FDA1;
	Wed,  6 Mar 2024 10:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709720273; cv=none; b=hFSrEFNIsCvPbtuIMbCsD6CzzEDeiXc1wfgV0foWA1Asfqvgofp6cUX32GjwzhG0qzgfHsBudAUNhkEFgOcZlnTrx4fsmhZIw2YDOZN+QK6ek+PC21OY6uaholERqFDaHgXAuU2TaRbaWQDercgOjk+6mV0ugmmuM/00OmWIBTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709720273; c=relaxed/simple;
	bh=DHS/nemJ4aUBiC6JY86wQETDj6124pEWt5O7iOY2W5k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=u3rGG44h0dG7YWVT+ITAOIp9HfaLWKD5A3ZMwjs5ecv8sH+AYhOR9q+VueoPsjjVc/jlDadLdXqjzxR2RnjFppscfju12W5rwt4cr48rR4lBKzPUTo89I6mBQnO/Xwpx0oto/TFRoqxcex1pyu5tZcNjYXeJoz1j52mnFyt+sOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=Rxx7UCOb; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=W/Rm+8ri reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1709720271; x=1741256271;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=BQHn5cMhACeKzP4WjQoGsW0iJFib1tQeq8/rY6dbVNs=;
  b=Rxx7UCObU+r3W2vShLZVRS1PJyAI7OQCEzz1YCx+9X37UuVjI603nhPA
   rbyIqr6UTAZKPH3EVnbqFwIQkxMGVixVVzYTE/Uc9v0iuMmJMj2rSjKyW
   Hg+aKTnBa4GDt+nx2vtGbuRlE3zCjajEvwOWMw8ssj95RxHvsgAsf4ety
   in/eN5CSpPqaDNEYysWDkbeKvYUH1jbJAdyWiuW4vYaQVRZWowhRZ23hP
   YFSJEAKytTU/JhNZRfqA3zp94AH+Sx6g2U61OpBTd2tXPPZshOPnZIOOe
   w5VlpAgy769dQety2hiD9qFVIm8ym2xgzPNp0SyW4uE7x4EGSWiz9AK56
   A==;
X-IronPort-AV: E=Sophos;i="6.06,208,1705359600"; 
   d="scan'208";a="35760944"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 06 Mar 2024 11:17:50 +0100
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 3A03716FFD7;
	Wed,  6 Mar 2024 11:17:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1709720266; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding:in-reply-to:references;
	bh=BQHn5cMhACeKzP4WjQoGsW0iJFib1tQeq8/rY6dbVNs=;
	b=W/Rm+8ri6ogmIreodRdN33aw/V9mbNfIpdf7R2INzcis8fj/c7CNBmrc27Ue0Lko8Hvp+O
	cupE9Qzu89YfXBFzcl18ET/vJ+OyQgnugeBPEbV1coQzEg1KdtHMAJZxrxqy/o0mph/f6W
	brX00EfQXtjDEyMJZAXhpA8hG4VtNgvBEEGcsk0tqntYeUFcJFdHIy8tWh/CNLsKxDe3h+
	cEKuJ1ZytdUggu0SMduiwnrOdIz02UewOcgcmtUqeoEPyE3W0Gkn2Gu0EcJ3dUk1cSRckQ
	Eue+SH7F6u0W7a2eldCtBp9mn2yvlQoN1Bi5zFTZm/0XoDVF8nH5LmdC/9hbIA==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Sandor Yu <Sandor.yu@nxp.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com
Subject: [PATCH v15 8/8] arm64: dts: imx8mq: tqma8mq-mba8mx: Enable HDMI support
Date: Wed,  6 Mar 2024 11:16:25 +0100
Message-Id: <20240306101625.795732-9-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
References: <20240306101625.795732-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Add HDMI connector and connect it to MHDP output. Enable peripherals
for HDMI output.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 .../dts/freescale/imx8mq-tqma8mq-mba8mx.dts   | 20 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/mba8mx.dtsi     | 11 ++++++++++
 2 files changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
index 0165f3a259853..406c8229097cb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-tqma8mq-mba8mx.dts
@@ -53,6 +53,10 @@ &btn2 {
 	gpios = <&gpio3 17 GPIO_ACTIVE_LOW>;
 };
 
+&dcss {
+	status = "okay";
+};
+
 &gpio_leds {
 	led3 {
 		label = "led3";
@@ -60,6 +64,14 @@ led3 {
 	};
 };
 
+&hdmi_connector {
+	port {
+		hdmi_connector_in: endpoint {
+			remote-endpoint = <&mhdp_out>;
+		};
+	};
+};
+
 &i2c1 {
 	expander2: gpio@25 {
 		compatible = "nxp,pca9555";
@@ -91,6 +103,14 @@ &led2 {
 	gpios = <&gpio3 16 GPIO_ACTIVE_HIGH>;
 };
 
+&mhdp {
+	status = "okay";
+};
+
+&mhdp_out {
+	remote-endpoint = <&hdmi_connector_in>;
+};
+
 /* PCIe slot on X36 */
 &pcie0 {
 	reset-gpio = <&expander0 14 GPIO_ACTIVE_LOW>;
diff --git a/arch/arm64/boot/dts/freescale/mba8mx.dtsi b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
index 427467df42bfa..9fe262a41b398 100644
--- a/arch/arm64/boot/dts/freescale/mba8mx.dtsi
+++ b/arch/arm64/boot/dts/freescale/mba8mx.dtsi
@@ -89,6 +89,17 @@ gpio_delays: gpio-delays {
 		gpio-line-names = "LVDS_BRIDGE_EN_1V8";
 	};
 
+	hdmi_connector: connector {
+		compatible = "hdmi-connector";
+		label = "X11";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+			};
+		};
+	};
+
 	panel: panel-lvds {
 		/*
 		 * Display is not fixed, so compatible has to be added from
-- 
2.34.1


