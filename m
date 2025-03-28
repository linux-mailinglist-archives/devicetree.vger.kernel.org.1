Return-Path: <devicetree+bounces-161666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DBAD7A74DEC
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 16:33:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BA1B3A50D0
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 15:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5EF71B5EA4;
	Fri, 28 Mar 2025 15:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="FBLp8wLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF4013D62B
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 15:33:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743175998; cv=none; b=VEqVVYXiRTHbqKl0TR5DM9RY/jCAb32oaFsejecqSJCY+Al2URsIIvlIbIOFt3C4YDwfAZglmrmBiYaeyd7j4p/oVDRsfjYoH3j4ZX5PUQw5tV6hqaK2jsMdz7h3Ie8EgzwpL1V6BgJcEj++MKThb0MVlA4EvPnbNEW6tfF3tkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743175998; c=relaxed/simple;
	bh=MIE9wNI/13LxKW7US9kJqxNDUZG5JEOvFHUfIUiX7mw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J1VIEW6dJ89ioFrsGRJ8bJoN7B0Tba+Hs7DxvpA+sfZJcvgtKJBwrMBlGqCwykXzawhHHy4CnPs6JP8OL/F/QYOxgq3qvMUez7raHJhi5dM9DFm3VcJYQWfJ/MDib0RSKP15e3atg0eyOqA2fG79Zybi7A3sb4zDZToyrl0AfP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=FBLp8wLx; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=oj5WGSunY1n7r+sNYUGA2xlgGU0mdO1RJmpk0FnS/Sk=; b=FBLp8w
	Lxwbq2VAnOE4sCCavp48TLS8f9PEa5C3XqlTKUMI6aqdhSnCY8oXxmthn4WY7Xe2
	C2IcdB3pB3T4SSaNsmFdmgGMIh/JU8ux+ukx/OIaPPXn1z+R5zD8rqjtC67vE38t
	Aua4zbCuB5Ss4gI8LlxYEgYvTXNrAYyiUUy1F0PSpVLJuB4yjAjrHp6N5cU2u7kF
	bOQHWBGO/Hdt5EtSQqTj+D5212PRnLozi875SDL+89LfWVTkx/VCig78kWZHBMkL
	7MWlPIWolI+JtVnnye65MY0ssE8aXkoUHP5dwe7qQwY0pEilZmbRIJ45NMLAQhAq
	mdDHQgVgoZ1ZRm/w==
Received: (qmail 299053 invoked from network); 28 Mar 2025 16:33:11 +0100
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 28 Mar 2025 16:33:11 +0100
X-UD-Smtp-Session: l3s3148p1@8ry6yWgx11ZtKjE8
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 5/5] ARM: dts: renesas: r9a06g032-rzn1d400-db: describe keys
Date: Fri, 28 Mar 2025 16:31:38 +0100
Message-ID: <20250328153134.2881-12-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250328153134.2881-7-wsa+renesas@sang-engineering.com>
References: <20250328153134.2881-7-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The keys are connected to the I2C GPIO extender which has the interrupt
pin not connected. So, we need to poll.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 .../dts/renesas/r9a06g032-rzn1d400-db.dts     | 63 +++++++++++++++++++
 1 file changed, 63 insertions(+)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
index ccd47f0181b4..54be87d387f7 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
+++ b/arch/arm/boot/dts/renesas/r9a06g032-rzn1d400-db.dts
@@ -9,6 +9,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/input/input.h>
 #include <dt-bindings/pinctrl/rzn1-pinctrl.h>
 #include <dt-bindings/net/pcs-rzn1-miic.h>
 
@@ -26,6 +27,68 @@ aliases {
 		serial0 = &uart0;
 	};
 
+	keyboard {
+		compatible = "gpio-keys-polled";
+		poll-interval = <100>;
+
+		switch-1 {
+			linux,code = <KEY_1>;
+			label = "SW1-1";
+			debounce-interval = <20>;
+			gpios = <&pca9698 8 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-2 {
+			linux,code = <KEY_2>;
+			label = "SW1-2";
+			debounce-interval = <20>;
+			gpios = <&pca9698 9 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-3 {
+			linux,code = <KEY_3>;
+			label = "SW1-3";
+			debounce-interval = <20>;
+			gpios = <&pca9698 10 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-4 {
+			linux,code = <KEY_4>;
+			label = "SW1-4";
+			debounce-interval = <20>;
+			gpios = <&pca9698 11 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-5 {
+			linux,code = <KEY_5>;
+			label = "SW1-5";
+			debounce-interval = <20>;
+			gpios = <&pca9698 12 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-6 {
+			linux,code = <KEY_6>;
+			label = "SW1-6";
+			debounce-interval = <20>;
+			gpios = <&pca9698 13 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-7 {
+			linux,code = <KEY_7>;
+			label = "SW1-7";
+			debounce-interval = <20>;
+			gpios = <&pca9698 14 GPIO_ACTIVE_LOW>;
+		};
+
+		switch-8 {
+			linux,code = <KEY_8>;
+			label = "SW1-8";
+			debounce-interval = <20>;
+			gpios = <&pca9698 15 GPIO_ACTIVE_LOW>;
+		};
+
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
-- 
2.47.2


