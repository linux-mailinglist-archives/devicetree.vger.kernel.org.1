Return-Path: <devicetree+bounces-124565-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FC99D9485
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 10:31:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2E1C4B29B1C
	for <lists+devicetree@lfdr.de>; Tue, 26 Nov 2024 09:23:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22FDF1D5AA9;
	Tue, 26 Nov 2024 09:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ghPR0LO2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57F8A1D54C0
	for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 09:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732612889; cv=none; b=pkN7XOBbxKoysq3Nw2F+4Uk5jxwR/fR/rj85+pmPWqB5tzQKm7tjlFrZZHypE9xang1zEVR9K1KHyaPIwTdoHK3LINTCd/LU+KTmvliX5nSqT3qADZYZLVh5lSy+ydYE9p3MVw+a8Pu76kXZT/oSivq1TrhitZMEv1Gr0VJrxDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732612889; c=relaxed/simple;
	bh=pvmXne3/GLaL56C23pmxfpzVcVguFUnVL4SSDyD6KWQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RuUWj8NJEPjfC1Sfoqcjr8hb0bNXFle352fzPYuMI2U3XPJtNyuwb4P6XbFFLj7TDKSr7Pee5K1rI5Dc8U+zC1hlN3VrT01m1wxgfzGkWUejTaAZSBsVICV2o95yadb39yNk+hYv4PuBggUDvrIXgiwpKB4MAE8VgtYJL8p35qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ghPR0LO2; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-382378f359dso3877151f8f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Nov 2024 01:21:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732612886; x=1733217686; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E4M5g4cOSJdZAIQtrKw1Bn/YMzw7ikJ/cpvkoOSwCx8=;
        b=ghPR0LO2pC6YkkfzaTqUNsLDZUcp9bERyEyb9YOZEMdOiWVbT9ZUFiF4YmBxMB+D0h
         Oub/hGH9PTI18stx8oUicM9Zv//kTIHFTaJtBABe/I3aRfGmPoLTemuM3YvtiS+7KenF
         4etSN6/T1d+xHmpNRl2gQ2wJflLDShKIhTM8DEsq3IEBl+VW2rNNIJ6/mP5pXZ7lH5k3
         lWbWjKdZZaU3XAhS2/3vObsoLDHHN/fZ+64m0/8cHOgfGUhrCaE+r/ZFB9lpkc6CP6c0
         OGv6geeuXZTSrY93GlZvKwdyTt3Hn4StKrUnGsFGMOsPjmoCujOlRkDXis81DAb8yqy0
         s1TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732612886; x=1733217686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E4M5g4cOSJdZAIQtrKw1Bn/YMzw7ikJ/cpvkoOSwCx8=;
        b=B8bPQMW8A4l7QMaDpnkIWyRtekGp3KDW+E/KPB13ggFvj4XlqcG0WQJw2JP0PYTh8x
         QfBb7sKoenoX4rAjvWJBSsP3MQuLQN8LDVzvwjscSLMIu0WVA15Gxi7/XAx1DrYIUDaR
         DqHbCqOw9q+CDh4FCDQiYyaWHTEqyqzDKtZ/CscBTkKe3L+WKWFTnEyFQYMLEvkFugpj
         mHkWR7MuQNN+bBEJ9N/GD1odOZONKj9XWM3uJrjfI5J6GUpBOzuKU+SRvrKMKh0OX1AJ
         b/H7kC4jx0eF0cNIPS2JZC1r4DDF14uM6rlbpSAkufOJrmeJTD+7EAbquYVCEH7A81+S
         7kag==
X-Forwarded-Encrypted: i=1; AJvYcCUgzqbUM4SgNVZkvW4L7DyPPk4ZJt4nVaK/3uOjFsTpnhi0QrKYNvMunJHFecOg7ZVI9+m0F/CIRpoX@vger.kernel.org
X-Gm-Message-State: AOJu0YzuOetsvbZWpGMmOz0gw8tXTn7CI5vOcLoA9WGWvqd8xqlv29jS
	CSbfL29jtVTUpa2Bs9hIjp8y39PWbFjtrEZrx2rxjwUTmsoSnJRxm7EvUwwUVUM=
X-Gm-Gg: ASbGncsrPveMZRH6Efn7x2bhlofrqpcw+vi1Wpwaqh/m7pPkEwU3fzvyumfmNHYWAdf
	MndIaM9e5bUbaU7ZilzgoeOfjyX49i9LZqIu4cB46LHqkaRTQuf+yXzvDRWMy5FeZfNu8MPArzL
	ToA/DoJX4iu7nZD44R4S0xPx3wmY0I8oGFhzpvSzoZN/0K1K9B2V4ZWmV53XkgmgA1Ns+bFmoXP
	Mzghqbtn+S29JrBb1Jcd0su58A1d66uhJ/HBtSFOshpCw9EIYRNBUE5/W3eLXmeikqSkJvsDLCG
	qqQ=
X-Google-Smtp-Source: AGHT+IFFCuS7xBS3otNkuGr2IzoMyH/CTvsuJMT+O34OiuKVD91ks7D0BrVopsaLaBF4QZUasDuXXQ==
X-Received: by 2002:a05:6000:18ac:b0:37c:d1bc:2666 with SMTP id ffacd0b85a97d-38260b502dcmr12951812f8f.4.1732612885919;
        Tue, 26 Nov 2024 01:21:25 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc3a47sm13027694f8f.73.2024.11.26.01.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Nov 2024 01:21:25 -0800 (PST)
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
	gregkh@linuxfoundation.org,
	yoshihiro.shimoda.uh@renesas.com,
	christophe.jaillet@wanadoo.fr
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-usb@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 12/15] arm64: dts: renesas: Add #renesas,sysc-signal-cells to system controller node
Date: Tue, 26 Nov 2024 11:20:47 +0200
Message-Id: <20241126092050.1825607-13-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241126092050.1825607-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The system controller on RZ/G3S can provide control access to its signals.
To enable this, add the #renesas,sysc-signal-cells DT property. Consumers
can use the renesas,sysc-signal DT property to reference the specific SYSC
signal that needs to be controlled.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none; this patch is new


 arch/arm64/boot/dts/renesas/r9a07g043.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a07g044.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a07g054.dtsi | 3 ++-
 arch/arm64/boot/dts/renesas/r9a08g045.dtsi | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
index 593c66b27ad1..2ebb951e6a39 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g043.dtsi
@@ -585,8 +585,9 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g043-sysc";
+			compatible = "renesas,r9a07g043-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
index 6b1c77cd8261..9dd229cbf288 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g044.dtsi
@@ -877,7 +877,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g044-sysc";
+			compatible = "renesas,r9a07g044-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -885,6 +885,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
index 01f59914dd09..31550b8c3143 100644
--- a/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a07g054.dtsi
@@ -884,7 +884,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a07g054-sysc";
+			compatible = "renesas,r9a07g054-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
@@ -892,6 +892,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
diff --git a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
index be8a0a768c65..169561386f35 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a08g045.dtsi
@@ -198,7 +198,7 @@ cpg: clock-controller@11010000 {
 		};
 
 		sysc: system-controller@11020000 {
-			compatible = "renesas,r9a08g045-sysc";
+			compatible = "renesas,r9a08g045-sysc", "syscon";
 			reg = <0 0x11020000 0 0x10000>;
 			interrupts = <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
@@ -206,6 +206,7 @@ sysc: system-controller@11020000 {
 				     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-names = "lpm_int", "ca55stbydone_int",
 					  "cm33stbyr_int", "ca55_deny";
+			#renesas,sysc-signal-cells = <2>;
 			status = "disabled";
 		};
 
-- 
2.39.2


