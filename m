Return-Path: <devicetree+bounces-230351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DB244C01A73
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:10:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E17963B0B5B
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 13:59:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D70C32C933;
	Thu, 23 Oct 2025 13:58:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="jPwUFSeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A552B32B997
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:58:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227922; cv=none; b=LiwkhH1zS4cVeZELJp3oKj1GsnjF79hNee7diOH5RCo/NCVD7jBP1pc9mY7bUo51i19nrSY+ujJkEHUYyzYC0U+uUCXfCTQhH1vEI9lVshSrPxbma6tnH6ShFKs4jDAaNOngLwR3jz+zRyd3zsK+4CdKAQ2DWG2igSR6yJa1pEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227922; c=relaxed/simple;
	bh=50hw/72TpRU+0O/DF7+aRtgAC5bIC3qKK0GLCIJ0bWY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vl+KrfJeQ+pjts6eZ+104qBlTAN2Uhz8Vugf8I6zVE0g40RkBmik+rcgOkNEF41GnK9w34jeaH+3TwEvv2tRar7ZqJOTw3AO+36Jq0/78MLrPI43jrS/A3fHW1n3oNkqmQEj/FaKplMGkmp0ybbli6giNELHhf+kemZQKBSkx7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=jPwUFSeg; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-afcb7ae6ed0so197311066b.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1761227919; x=1761832719; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EDOk3wzJ/Csdlnb+sDEwzVll8zo5EaNbS49j4wNtazc=;
        b=jPwUFSegNA5zL2D0GbNPVyGJVe5ioYTQn6Gb66hqPUcR24NIenJE3WyW+y0WmCbicr
         GNMwqksrzBLZDyhC5Zp/XFiC3X5I1M+DOHjAehpuHTNqH3awHZEFTMKYKz9UCXNAiayI
         nWJRMT5Ou4R9ICg20A/Gcrz4JVr5s4YKgXyT8Lk8kncrXkfmciT6InsvRvrWm3YckICB
         5Ep8Im8wdDFr5oB1tyIWTBVkFexPo8rRSzZ/wqaXXsGjSY11Ggenu8OroN3waldp58wv
         Rx0GmGLmSBVBM8JsUUijJOpEHPJb9eSDA8Ka5h7uzsXVo0sxUfoJQQiZ9xPHfaOUREZq
         UeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227919; x=1761832719;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EDOk3wzJ/Csdlnb+sDEwzVll8zo5EaNbS49j4wNtazc=;
        b=m4GFB0hfLp08yJc0V+vJ52tHhH7lOq/5rXBx9dQ0MdarRzvBrfNwVp1mZ7XFsqemf0
         TDLADGyChdW+rNnBzehmvTntU+0WMrNoSjRDGj2j7XOwbI26nwYkp3NrkN01S1vqn+Vc
         m4S5Qf7iGV9WAD2qx+WIOqjmTJkcrfertgYGJW2MpbaPI7E/XO6hacGobVBcqmSWzv0f
         swZy9Jrw/cmvCvFIxJ3KpgL4qWeyHUXNaX1jZf1bl1cveoXM/sRGuoKMZOi8bV+wCXvm
         FadRC0xPA/n4GCOOzEDAnv+F1NhEaeg9UfCIKzMx3QfMhZcWlcGo8tIZjMgUkWOcK554
         RWCg==
X-Forwarded-Encrypted: i=1; AJvYcCWTIiwvflMCBcvqvKf0z99eUpY4TPQItuIqLhAR2Djj85TqlxmBbAy1KQ93CUh5KMiaRHDnBYPlEZff@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0ssdOK0kCTYdmDQzJtvQZaeD63UiGtKRnCcVHA/EftNHdmnU/
	X3mx1N5loEerFCLytPeRg67goZ0m1o2JE+OW7a9FOjj7jVaWK1BkRzKnalwjQhQU4co=
X-Gm-Gg: ASbGncsjzzvdpkuUDXzXByP6L5hwzsLaoF12w1x9pAwCxhLxTsj4LSZhBpfLLxQq0YZ
	N0A3K30x1J0BiNGAOwfkNbuOWQvZF3AZnG+GWSajZ7D0E73y133YmEMaC2CpIbPJtAdlCc+Sqrp
	H52KnY/I97zOFLVs0MQz3B92nAbYsi/WQl6OeePlyEytURpIJMZZO9AMMm3YEoG1nyyp3qb3FO1
	yyt+AyRPzru/jgQzFeTrsWVLMtMqxzcWS0PJrzNDwJjvVBbcFCWVrsQrXOJPwqcr0fDqS7ifZsM
	zGZ0grgKtOAYE4Yew/uWIZAAAYWikHbqhmFCyqb1WgAwdeCDdzfCWpLR+Z3v9Yz4J8EP4+WZRMn
	YqKCzoE7IYiGxh+hABpPvQXIjwdSmFBO10qdIQLcPOg3oOK3Co/LjtAJ+rgdv8eXTFAUgNPh/H9
	5WCFy8XCX9mzcWlbhkDAY7ueVdzHBxpe2iglnwKC+t
X-Google-Smtp-Source: AGHT+IFBx3dgJXH4lEpxnlJJFwOwoH+u/MOZe+M6OK+FLRB/x3UWGEvHv5qUZS/pYvr0WhrpOqUmSg==
X-Received: by 2002:a17:907:3d9e:b0:b3e:3c1c:d301 with SMTP id a640c23a62f3a-b64769cb8cfmr2888032566b.61.1761227918932;
        Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.151])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d511f8634sm226114066b.29.2025.10.23.06.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 06:58:38 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	p.zabel@pengutronix.de,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	yoshihiro.shimoda.uh@renesas.com,
	biju.das.jz@bp.renesas.com
Cc: claudiu.beznea@tuxon.dev,
	linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Subject: [PATCH v8 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Thu, 23 Oct 2025 16:58:10 +0300
Message-ID: <20251023135810.1688415-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
References: <20251023135810.1688415-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable USB support (host, device, USB PHYs).

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v8:
- none

Changes in v7:
- none

Changes in v6:
- collected tags

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- collected tags

Changes in v2:
- this was patch 15/16 in v1:
- dropped sysc enablement as it is now done in SoC dtsi file

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 57 ++++++++++++++++++++
 1 file changed, 57 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 5e044a4d0234..5586dd43c4d5 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -92,6 +92,20 @@ &audio_clk2 {
 	clock-frequency = <12288000>;
 };
 
+&ehci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ehci1 {
+	status = "okay";
+};
+
+&hsusb {
+	dr_mode = "otg";
+	status = "okay";
+};
+
 &i2c0 {
 	status = "okay";
 
@@ -132,6 +146,15 @@ power-monitor@44 {
 	};
 };
 
+&ohci0 {
+	dr_mode = "otg";
+	status = "okay";
+};
+
+&ohci1 {
+	status = "okay";
+};
+
 &pinctrl {
 	audio_clock_pins: audio-clock {
 		pins = "AUDIO_CLK1", "AUDIO_CLK2";
@@ -207,6 +230,27 @@ ssi3_pins: ssi3 {
 			 <RZG2L_PORT_PINMUX(18, 4, 8)>, /* TXD */
 			 <RZG2L_PORT_PINMUX(18, 5, 8)>; /* RXD */
 	};
+
+	usb0_pins: usb0 {
+		peri {
+			pinmux = <RZG2L_PORT_PINMUX(5, 0, 1)>, /* VBUS */
+				 <RZG2L_PORT_PINMUX(5, 2, 1)>; /* OVC */
+		};
+
+		otg {
+			pinmux = <RZG2L_PORT_PINMUX(5, 3, 1)>; /* OTG_ID */
+			bias-pull-up;
+		};
+	};
+
+	usb1_pins: usb1 {
+		pinmux = <RZG2L_PORT_PINMUX(5, 4, 5)>, /* OVC */
+			 <RZG2L_PORT_PINMUX(6, 0, 1)>; /* VBUS */
+	};
+};
+
+&phyrst {
+	status = "okay";
 };
 
 &scif0 {
@@ -242,3 +286,16 @@ &ssi3 {
 	pinctrl-0 = <&ssi3_pins>, <&audio_clock_pins>;
 	status = "okay";
 };
+
+&usb2_phy0 {
+	pinctrl-0 = <&usb0_pins>;
+	pinctrl-names = "default";
+	vbus-supply = <&usb0_vbus_otg>;
+	status = "okay";
+};
+
+&usb2_phy1 {
+	pinctrl-0 = <&usb1_pins>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.43.0


