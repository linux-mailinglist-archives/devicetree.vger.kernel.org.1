Return-Path: <devicetree+bounces-178645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BED10ABCC05
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 02:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4ECB617F1D4
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 00:33:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55532254854;
	Tue, 20 May 2025 00:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XI2jkouI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA363FC08
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 00:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747701230; cv=none; b=blwL8OBfKIiy0OkHgtYWB14TNBYSgx6T13Rc6SgXKrMKuj/5zaTNEZwGLnLP60sVirdFdGJ6DcHzlLxH41clMcZaNOEbJQD+lTQOH539dXceC/AjC0txjN3Pi12TBHQmqjXJ6r5yHD6avr4rsFeA02oJX5gKhHsJjWMGEeY43og=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747701230; c=relaxed/simple;
	bh=1yEsmt1H9YZIILqUa145MjQANAabwP7hI8VSiWbS3so=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CubTPH6gogEmCLg8YTJ8tl0IZjW84l9ZCSCVRV3wJ34UGhp/Pl74b6qL0xDnbXG6CTlH10wqXdHUpB9GRVHusDSt17c+qve1XPD4lttHn2V5jZM/BAmXT+JjZoQ/wmB25+m0UTFyhpyPQI+yI4AwuAwk1WNaJJkizNhdqOsWvXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XI2jkouI; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6f8b27c2d7bso47452036d6.1
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 17:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747701227; x=1748306027; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RbXVz7THxq41XXbX+Ta6DxAbOFx6IEkJ0j7aR8P3qfo=;
        b=XI2jkouIsxqisSh2OB4axw0nk1kAGoZv/XGEElzHRM94qjjTkR85L5eTeL0hhu7fla
         OaZ03CHoPhjlVyjz/N4fDU3h15mUIpG6x8M2qpoH3/OnoIndPpr/82vvDwnusKrYB4gH
         RrvscC6PnjJjLKd2kUVCzi3w3NDx0WbNIqTTWdbn0S8PKKRKPDrn0mIHkFzKUiNOpaRM
         pO9GH0j9U0oqr7v11NSFca2h4546KRU4sacz+ue+n/SHa477agK3oAtqzrHple8C/VHa
         2yPh7TSECHwEWDVT7n+XTaHgoqASPUfR/63w5R8RnvThlHSmNf0ngVtZuIymg+ScHOCb
         PQBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747701227; x=1748306027;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RbXVz7THxq41XXbX+Ta6DxAbOFx6IEkJ0j7aR8P3qfo=;
        b=e4qA3vMjzjbs4Z6NbAgUfa+urczdFIVI21F8Moi2yiM3I/Lq3osGCzudXhuWVghb2w
         +7M0ZPbQvoPY96otDnbrWwsx9orv7DLzMdt33ydgD+/7fAm73IydbCo5OGwUEmConWmh
         ekfL9TP4fbgWr8vZ81/7s63TS4mLrWrEwZzksEAwvhAXVtHiEEOT4rf6xI5NS71as+FN
         Bles1FDisSXgRW3tm32opdxqkJsyBsISzXTcIIds4NBE5NIg+uWJ95i3HBtX+3shyM7e
         oaniE0BObIdnAGihj9PmqbkBbmSJJMEr7EKY0Tiz5ammiSHCrVQO4hzjab+bOGVXWjij
         JvEA==
X-Forwarded-Encrypted: i=1; AJvYcCVgPWevxQ+yjS2vyVE1uNuqjBvDNGbzzyJh87RuZ8HuCNw0LGYwkSCYtDZgK/U7cj6dfcr35zJGnMPS@vger.kernel.org
X-Gm-Message-State: AOJu0YwsivjKOLcXFmyowxN5V2kQrVhlBPtzgx5FMSv3wtMjmbG4k5KQ
	EcANnyscs9efYJSMVb2c7yiqMu8oMI7xJ+KoIncUGv9OJm4GyspA9wGC
X-Gm-Gg: ASbGnctsfQv6lKf5M9McC4LC4b/tyejXublu/63VHxDkCplwIFcy0pEpB0mRQqt/sT8
	hxpRJpBNDdrLbbk1K2+buyKEfuxhI+TLAVIRJoZA0a+2Gq/2afh1W+b2v0L/CdwhAu9mDJXV74y
	L/XWlOEvbfB5rMKGdzrTRCP0XEYWQ4K62agx5kngyeY/pn3sI8lM0wS9J/2oOGqsA0QZzLtjwoQ
	tfvBChmhkmoynpjnhUNmODzfB+eV1j8xKtb4WQF/wBHv5/uwLfEE/CVlulQGwm9/R617FVjVUNv
	ceMP8hCpj9N04XyHeYi12A0JKYAt2O8ScaTo7yG9u7E0k80ePUoyaoNkbwYUw+Y=
X-Google-Smtp-Source: AGHT+IH+LrGl+9iriixlunBHdb8EDuPa+Xmcz/4PNR+ptbaVlBb8JaCluI67fVY/vS/voEGoISSI+Q==
X-Received: by 2002:a05:6214:20ab:b0:6e4:4274:aaf8 with SMTP id 6a1803df08f44-6f8b2d08d6emr225004136d6.17.1747701227458;
        Mon, 19 May 2025 17:33:47 -0700 (PDT)
Received: from localhost.localdomain ([216.237.233.165])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f8b08ac4c7sm63479556d6.45.2025.05.19.17.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 May 2025 17:33:46 -0700 (PDT)
From: John Clark <inindev@gmail.com>
To: heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: nicolas.frattaroli@collabora.com,
	detlev.casanova@collabora.com,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	John Clark <inindev@gmail.com>
Subject: [PATCH 1/1] arm64: dts: rockchip: Use standard PHY reset properties for RK3576 ArmSoM Sige5
Date: Mon, 19 May 2025 20:33:32 -0400
Message-Id: <20250520003332.163124-2-inindev@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250520003332.163124-1-inindev@gmail.com>
References: <20250520003332.163124-1-inindev@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Replace deprecated snps,reset-gpio, snps,reset-active-low, and
snps,reset-delays-us in gmac0 and gmac1 nodes with standard reset-gpios,
reset-assert-us, and reset-deassert-us in rgmii_phy0 and rgmii_phy1 nodes.
Add pinctrl properties to PHY nodes and define gmac0_rst and gmac1_rst in
pinctrl node. Reorder phy-handle for consistency.

Signed-off-by: John Clark <inindev@gmail.com>
---
 .../boot/dts/rockchip/rk3576-armsom-sige5.dts | 35 +++++++++++--------
 1 file changed, 21 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index b09e789c75c4..34e51cd71eac 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -218,30 +218,20 @@ &cpu_l0 {
 &gmac0 {
 	phy-mode = "rgmii-id";
 	clock_in_out = "output";
-
-	snps,reset-gpio = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 20000 100000>;
-
+	phy-handle = <&rgmii_phy0>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&eth0m0_miim
 		     &eth0m0_tx_bus2
 		     &eth0m0_rx_bus2
 		     &eth0m0_rgmii_clk
 		     &eth0m0_rgmii_bus>;
-
-	phy-handle = <&rgmii_phy0>;
 	status = "okay";
 };
 
 &gmac1 {
 	phy-mode = "rgmii-id";
 	clock_in_out = "output";
-
-	snps,reset-gpio = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
-	snps,reset-active-low;
-	snps,reset-delays-us = <0 20000 100000>;
-
+	phy-handle = <&rgmii_phy1>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&eth1m0_miim
 		     &eth1m0_tx_bus2
@@ -249,8 +239,6 @@ &eth1m0_rx_bus2
 		     &eth1m0_rgmii_clk
 		     &eth1m0_rgmii_bus
 		     &ethm0_clk1_25m_out>;
-
-	phy-handle = <&rgmii_phy1>;
 	status = "okay";
 };
 
@@ -680,6 +668,11 @@ rgmii_phy0: phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x1>;
 		clocks = <&cru REFCLKO25M_GMAC0_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gmac0_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -688,6 +681,11 @@ rgmii_phy1: phy@1 {
 		compatible = "ethernet-phy-ieee802.3-c22";
 		reg = <0x1>;
 		clocks = <&cru REFCLKO25M_GMAC1_OUT>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&gmac1_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
 	};
 };
 
@@ -700,6 +698,15 @@ &pcie0 {
 };
 
 &pinctrl {
+	gmac {
+		gmac0_rst: gmac0-rst {
+			rockchip,pins = <2 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		gmac1_rst: gmac1-rst {
+			rockchip,pins = <3 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	headphone {
 		hp_det: hp-det {
 			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_up>;
-- 
2.39.5


