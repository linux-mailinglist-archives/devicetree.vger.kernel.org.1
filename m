Return-Path: <devicetree+bounces-215485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CE51B518D6
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 16:06:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 711C81884D94
	for <lists+devicetree@lfdr.de>; Wed, 10 Sep 2025 14:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586FD32BF24;
	Wed, 10 Sep 2025 14:03:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EFSce7eS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C389A32A814
	for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 14:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513019; cv=none; b=TDBAkD0zw1Tnj7s9J81dqza1tDn6wzS5PLWSGRyZRYyITZGRVRD3BRg/lQqF09V0m9zXKKEuz9bvPm4EHuXos/zXAtI2HZOmzQ0kSzJT0k1m0xxj06SC7tKXx0O/sa0xqmOt7ULFWAPMbQQe++5q0deWvRYmy+BXqwT8SDrQo18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513019; c=relaxed/simple;
	bh=jqmkr1CKyO8Kzo8l85xpMLlf222rza5Yy5Zgh4ZGlAg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jKWX9wJ1tDwyuH1Q6Us5V3uahTjk5yiRc8F7cfri6tBWGNFstLXVc7MjgOKBLquBgGcYjWbUR7DRmZlO4dtK0lv1wC8VCYM8JDtibbIAL/oi/jyKsZSlte2qVc/eEYJmHtybATAfTGnELrMBi9peQ73A9MKnJuYF7qikWGLB7XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EFSce7eS; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45ded619608so17832665e9.3
        for <devicetree@vger.kernel.org>; Wed, 10 Sep 2025 07:03:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757513015; x=1758117815; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Vgkpc23fN6nK/odOpcRYynIEnb9BnHAmEaecrAACIc=;
        b=EFSce7eSqx6zfpQ6wOPPxU0GZPZuUGvklkiNZK5NNA9YO8/+1mzj01VrdZ07Bb3uah
         3ipxS+odXPlddvUj3/uW4EY//fonsuTiqsiK3sFFa0qxQ+FHQE9LdWp+qWyz/N/MiSMu
         hoSI6eEjANt14Jyh9H993e5CEzYiTT1oftGwAZhZHuQe30rpLRaPkdA8xI+TzyfxOzOl
         Nk+hT0pnL4Tuqii0S6uC6bv26OuXz1brzukHzW4BUQAOVxfgy6fbVa39KMCnX9Ek5CxN
         hulbFwQjehWfnAxV/zm3/QeQ3U3Tvl4g2ENMb0AYS0iPxOGI3qnqwqkln1RiIfM0cPmV
         1n3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757513015; x=1758117815;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Vgkpc23fN6nK/odOpcRYynIEnb9BnHAmEaecrAACIc=;
        b=d+KzqM4YSaUHTvbDAl5spPPZWMfceR3jaEOnwMam0Z/PWN/00B5RM+FbpE0wyCCpde
         +BMQhtOYjbyKM3TBeqMY/5heIEsNCy73Gf64ANkk2YmzTmCslPP20Ljq2nn0GaFxcf72
         4dko9HQaRd2UB+FIKH/1PqHDtwmqqBCRKfe1x+5c8RrQ+k1wAoY2gIIqMs25HBUCPZuS
         DU2FyA/g0myjE2b5MTJ3c2vurImE7rINvKMZlVtRKFuJvjXQ4clwVNyeNXa/wj/CPKpk
         rSQNbEeWgBlAZ+Z6SqntAHOd28eBOpYds2cAZ54eKhIEQQHkBQBdR3+86q3DMQ7k1p6f
         XOFA==
X-Forwarded-Encrypted: i=1; AJvYcCVlZ0cO/G3AEtvUf3rhhUq/CxLy+K0JfvszmHYdpjTmA4OaXQEMkWBEzZC/BfStR2U/wyN6JpFGC/bp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8rYpTrv/RHc30qDpfZYvBPCJ0H8psHsgvBnh0ZD+RwxUK3ODT
	csf0DOweoSG9+NAZxcTzB9tcIar1/+JzRF+3/b2G8hnMmH9aPOFsh9PVduND9UbASl4=
X-Gm-Gg: ASbGncs1H6Q1mw87VLBgXMWy9FG+qzVu0dZ374fv4fh3jqQWIigUs5ZpvjIZagdtMl/
	/Tb9ZMXNUiLPxTopBkQk+R4u87H8Gl16Q7P1kj+qYKgir57QwT2AxkyMDtxlyW4Xv67UJS0YhHP
	5hrvIowqGJXtH9tpN4WssyJDdd5jXIxa4nW9v7NAkQeOMCUXP+ujMj0g7aLD8sg7fDmHKrYY81P
	s7kOi94ptmWlgKkYFXsMj6yRjMwQwkPtvqC62fohYizC/QyibxNa6ipM8MUtLvtApTuWpnLC4SF
	VQifw1MbyC1PeWxmecH20fzToepcPA8fEA9RHzUdVkAwE3PmbeNykYyme9EgCC1WTkAMJSwYKWw
	cpAaBKh1eTpGPr+Dl5SZ9HHpzBgdP/lLpu7MYAfu5BEaLnGNRiBXG
X-Google-Smtp-Source: AGHT+IHnE7nzywVvSHlmb2zbeRqa3AQllCmLxwfyN9Q2qj8wPtYZa4cnGeIFXnAXsV38qH1n0GUl8A==
X-Received: by 2002:a05:600c:3ba0:b0:45b:8adf:cf2b with SMTP id 5b1f17b1804b1-45dfb641d03mr9711805e9.21.1757513015047;
        Wed, 10 Sep 2025 07:03:35 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.139])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45df804bce3sm29523875e9.0.2025.09.10.07.03.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Sep 2025 07:03:34 -0700 (PDT)
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
Subject: [PATCH v6 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Wed, 10 Sep 2025 17:03:05 +0300
Message-ID: <20250910140305.541961-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250910140305.541961-1-claudiu.beznea.uj@bp.renesas.com>
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


