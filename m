Return-Path: <devicetree+bounces-221333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A13EBB9E8DB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 12:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E4A3D3820C6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:05:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0499D2EC0A6;
	Thu, 25 Sep 2025 10:04:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="HQ8X46xz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 517BF2EBBAA
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 10:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758794655; cv=none; b=cC1zzRtLJoX/LjsYaf8yHJJ0FtD99avg7e3iSuSjzW1cCc+D/nIvzSgjy4BIH2U0gtflFOExWZxPhbkSlZd8W8UcQoR2ztM6P/w6m/mqg/2ksxB1XcLWB229Abo9TDXoJ4wrisqnX7NR46b1IFFRJvgkZPNNGt41btsPoePW9bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758794655; c=relaxed/simple;
	bh=XpFBJey+ByIazsodLfpMhNdQ/WoR4c/GvaYbI6wtGhA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Q/oIQr3pRAnxBRtEZBGyEy8lo+67y9ciwWe9utjwAS0O+H6SG9oyieov1Yvij7QAYczm9fWrPdvC3kUMdvypqv+rL5DgLK/JLK3APfdkqlsOiDNTc9ey2q2haLtOOx3cVMW26hRIqns5gQ9IjeEaTqrBTbODYhp19D5zRu6mtG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=HQ8X46xz; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-3ece0e4c5faso794568f8f.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 03:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1758794651; x=1759399451; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=w6PpEMiRGTWSEM77dtjFizoMhXPMleLOSmUBWuk2Lec=;
        b=HQ8X46xznXUqJ1lKecX4eHIKWJALQ1fwUNmBqa822JxZhQ2F2E/F1Pz29rvNsaYX9U
         ahcuniN97uLLf3GhD2YrYf1e9qKql5j/cIdH83us3GFL/+eiqmdSuAhH5myFIzZQJdze
         3dsSG2WG9xkp+p7UPbNpk6dX02OLhGxOjOtBJrYtx6F44gnhfDp/TLBR/5tTVOWiWb1R
         TGC0PI975OfDlMYkMF0BHuRjykNRCCODVt+MuFFx8trbjClZCUv50Dag0VPkcvyOTIeg
         kLUOyUHJ6FOm/0lHza00L4M+601oMc4M+6S7qaNBDCtk3cR8j/KmnDeitnFFDI6fwlbo
         0kFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758794652; x=1759399452;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w6PpEMiRGTWSEM77dtjFizoMhXPMleLOSmUBWuk2Lec=;
        b=L7nP56E8AYsLv27G8BIS7i62Vtyo4Xb3HB/iSC13tgl7kTEjynY0pXxJohCMnGe1Hn
         tCyE/f8IU2h/J1IADYikzUymJ+ug3rN7FQYHNoSzwsgzkTz/UkbxMJBco/LWVRu1X8wi
         q/jqvnkZeadThUho+r3ThhsDmGsztTZ7jVUXnOurw28wj8HGK6EIvdS/KS7xhr2QoWmo
         5RxKmlMi6XxdktKzfCB0Bogk7JQ0yeMRgnp3ZAhIk8A3V+5oQWWv97riMnp8jhSV3EDh
         tIVZHKEUXFjKxodRAebmcPJEW0RNLb+V6357BkYYDtWRPxjqCm0dAtKD19CRV8ZihFok
         jIBA==
X-Forwarded-Encrypted: i=1; AJvYcCUBOyAgHZMUwVUptO8TIN7H7t0CzL70sZedNMJVVmVCrl2cVoayifi8JW836x1/CBzkN4t3oQ3lSkjd@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8L89IXGcTNLW0iToSCmm9xWh4a1muauUuF7DrJdl2No1Re8qn
	njAYAk/7adxjYBANY7Df18oHQelUPFaz3z4PX0EzgB20Bv4s+HWfrU+lj5oMy+EP9Po=
X-Gm-Gg: ASbGncuDLQY7V0PEqPnbU85CSYI12EjdTbPvXQeKllM87+wm85c05Ue746qzRp0KUSU
	YsdppqrMUEJHwCJbUE7MhovZt0/dMT/nbTvMqoiLnGZIi5r7nKzhcP+3OxQc4vbs4OJRsoEGK89
	4MKQolm5B3VSdCRAMcZTiCW/diAxZChOiUQmqAIKoBdym02/OVcymuLzrrC3CS+1gMqxWRaG8C4
	y0xR4wDC608KAmmfDdtMU/VYLS3Ajq5ODCVlU4fLbyJJpIVlOuJniaXH9MjGAX2nhPr2yg2eoyt
	obbOoEHXkzzhzGS5/7NucvlT0zEVbywhr2HSteb795TBhlivbnkYIOeq1GFSuzJ1qQNmQPHvfux
	PAz2qqY0sVNO8m0a3P0U4p0WsbVKRf+vgoF5w9fKIlzI9Kb7TWpZ0
X-Google-Smtp-Source: AGHT+IFuvYevjM7vQzCnTge/GrcBdvmEa0etUZbryGQtO8C2Khk/jcVZo4763k4ceZ8z+zJy80YYMw==
X-Received: by 2002:a05:6000:2dc9:b0:3e0:2a95:dc90 with SMTP id ffacd0b85a97d-40e47ee195dmr2667700f8f.35.1758794651152;
        Thu, 25 Sep 2025 03:04:11 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fb72fb6b7sm2501122f8f.2.2025.09.25.03.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 03:04:10 -0700 (PDT)
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
Subject: [PATCH v7 7/7] arm64: dts: renesas: rzg3s-smarc: Enable USB support
Date: Thu, 25 Sep 2025 13:03:02 +0300
Message-ID: <20250925100302.3508038-8-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
References: <20250925100302.3508038-1-claudiu.beznea.uj@bp.renesas.com>
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


