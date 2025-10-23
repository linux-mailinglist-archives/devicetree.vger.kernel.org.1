Return-Path: <devicetree+bounces-230548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F3752C0386A
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 23:24:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A5483B38FC
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 21:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D051E2C15BB;
	Thu, 23 Oct 2025 21:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e/k8Ld/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0332D24AC
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 21:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761254624; cv=none; b=npI7Sy0yWgLVBOsMJuP8lIzS5NVQ7oF+gxDz5880CtFafK/asVeDrVi7KxN4r0WejG5kBKBBdvU5ykzDaNwmTkVL6NzXUz3H1pdcd2Bu/lgjT7C/oI08kFyB8Q2I3HwhRMkpWrL6/ML+qZ039ROw8pUQuQk3p77vfY/gveNmM9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761254624; c=relaxed/simple;
	bh=b7ftMXztmPiXn3Lm2lKkQ4uqvmXty9CYVaot2trxCVg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=AYtTPnN8tEk2yWMSGWLICqM8Cl9z3ieFECCOKXdanqvBn/v8bYo+IIHPf9O4q4hvktCchX4ov1h4uYnDxYW3AZKX7NaysI4YqUASKe06Zm+8+TSqFVbimQWyU5LQ+axITHwZVn3lXpY9/MUqvjWYkaa/3LW4DJb7NrZX+69sGmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e/k8Ld/D; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-290ab379d48so12881095ad.2
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 14:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761254622; x=1761859422; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2cKvN8vI2wqRAmx/29tE2NEormg2Ex4xdSESzpSEv/Y=;
        b=e/k8Ld/DfLltHavQJu/ATLkIc9QBDPy+DekbbOc8rJIQcgco5P/ahB8o24DIXhGc7+
         oRrKw6VB4GMgWPHfqQpuKzBExwyEsXgnDPhFPPRpS6kdpaSyhTHwN8wMbd7hpf2k+aVK
         tVw3J6FgE9xwiL3UCtxkcoMWZARmstXmSiPFgvkmzB2gxSQY76PeRksyOF/Hi80eTVSq
         kLjA4lneXRd+P7XRBxKzxgxLylrHUOIZEQqlFrr8VzSA6dXEDpp6PciLo0/hlDm3myFw
         q6lKEHFzzQHEOK3838FliUaYRabVKCJLPHe2V4AuQiy9Aune9CNM3QPRa9bUARtFbIj4
         ytpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761254622; x=1761859422;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2cKvN8vI2wqRAmx/29tE2NEormg2Ex4xdSESzpSEv/Y=;
        b=ABE1njC9zYD8zSXVdCIdm9de62EzXbH9uJ3yIPb9uN79xblHkxUyi9CX2f643DKhlX
         dbR6qeYeZBJih3AQx9omEExU8jKbtBDDHsYDYZEEmY8Dy+wXm5hD+L9Qf+uhM4szxjCN
         z0QgYMMoxg7pDCX12dmQgZDwHn+oEuZXc+sEe7g9pyI40BGxDBiGl7SDDxJ9D7BShYc1
         UoHBmIIJCQRQGarRo3WD2HHnopyVSxmu3FYhPMeecU4eT8F21G0TNUeKUyJ/NKSppqCf
         POdaMhK9y2Ybvs7bHp9pgEe3RsX9fruJHQr0jBAkdP/iZb5L1oW+VjtPHNId2q6FW9SB
         gH2g==
X-Forwarded-Encrypted: i=1; AJvYcCWniv6uZw71J60gD1BJL27+uDfcKs7utRoD80ZZWcoFUAAzNp0StCJF9hkY8aHUYLJrmsrtFHQ/a8NH@vger.kernel.org
X-Gm-Message-State: AOJu0YysyG1V1iZ5PPrJpwG2f320GbWucVHNYCh7Gy5WY4EjsSpHbPon
	u7wniK5/VVvcmcFoLE+mmJcHeVjw79AXc64LIPeqIuLOMyaViljCpYrx
X-Gm-Gg: ASbGncsDu8UyVNZteeeNPy/OjhEuWFNwisA3DLQbSvq0b6o5TvU9zxPyTSczNssbeuf
	AnT+JGw2VeDiEzD1/22i9/YfateRpIiFTzpG0MXkYhiPVdDrOmrG1OwWmsE5gM5h+z3Z0B3A8sn
	GNI21Vtxy18k/rJouWfMzD9ujPt53bcCgFQuIf9SLbql2fyNMMVCFrYRnhcguSrdWR//apaj8qa
	qddCPVMR1HGNhNe88MZ9IVECaSBWl9XInOas4VG1K9jCHEJYjNi78Z+CxoanoRpsV56e8aHwlxk
	T9SMEuxwWjXkhzm4JTGuUuL8zU+V1C/WOOv6CgP3rK/kksnSrUR5shxh53X0+KB5+SQFYOSq/im
	g1rcMO8Ejey83cqk87bnMKBcONwePZ7B962xW6INyp6lAN+dXP86FU6hnmQjVNcZH/oB95+C5XU
	qOp/KwexFiUWhzXyf9bzw=
X-Google-Smtp-Source: AGHT+IHLpRymwxlIY49ur7/eBpA0+xSc6MFYG9nQg0/RBKGpI1hkFbbBfk37IK7CSagsTjoNI9nX2w==
X-Received: by 2002:a17:902:ef4c:b0:290:7803:9e8 with SMTP id d9443c01a7336-290cb659d58mr328809585ad.48.1761254622394;
        Thu, 23 Oct 2025 14:23:42 -0700 (PDT)
Received: from iku.. ([2401:4900:1c06:ef2:36b5:9454:6fa:e888])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2946dda7949sm34306965ad.3.2025.10.23.14.23.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Oct 2025 14:23:41 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 3/3] arm64: dts: renesas: r9a09g057h44-rzv2h-evk: Enable DU and DSI
Date: Thu, 23 Oct 2025 22:23:14 +0100
Message-ID: <20251023212314.679303-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20251023212314.679303-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Enable DU, DSI and adv7535 HDMI encoder on RZ/V2H Evaluation Kit.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../dts/renesas/r9a09g057h44-rzv2h-evk.dts    | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
index 5c06bce3d5b4..3e314f397541 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
@@ -34,6 +34,17 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	hdmi-out {
+		compatible = "hdmi-connector";
+		type = "d";
+
+		port {
+			hdmi_con_out: endpoint {
+				remote-endpoint = <&adv7535_out>;
+			};
+		};
+	};
+
 	memory@48000000 {
 		device_type = "memory";
 		/* first 128MB is reserved for secure area. */
@@ -90,12 +101,36 @@ x6: x6-clock {
 		#clock-cells = <0>;
 		clock-frequency = <32768>;
 	};
+
+	/* 12MHz crystal for ADV7535 */
+	y1: y1-clock {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <12000000>;
+	};
 };
 
 &audio_extal_clk {
 	clock-frequency = <22579200>;
 };
 
+&du {
+	status = "okay";
+};
+
+&dsi {
+	status = "okay";
+
+	ports {
+		port@1 {
+			dsi_out: endpoint {
+				data-lanes = <1 2 3 4>;
+				remote-endpoint = <&adv7535_in>;
+			};
+		};
+	};
+};
+
 &ehci0 {
 	dr_mode = "otg";
 	status = "okay";
@@ -161,6 +196,42 @@ &i2c3 {
 	clock-frequency = <400000>;
 
 	status = "okay";
+
+	adv7535: hdmi@3d {
+		compatible = "adi,adv7535";
+		reg = <0x3d>, <0x3f>, <0x3c>, <0x38>;
+		reg-names = "main", "edid", "cec", "packet";
+		interrupt-parent = <&pinctrl>;
+		interrupts = <RZV2H_GPIO(7, 1) IRQ_TYPE_EDGE_FALLING>;
+		clocks = <&y1>;
+		clock-names = "cec";
+		avdd-supply = <&reg_1p8v>;
+		dvdd-supply = <&reg_1p8v>;
+		pvdd-supply = <&reg_1p8v>;
+		a2vdd-supply = <&reg_1p8v>;
+		v3p3-supply = <&reg_3p3v>;
+		v1p2-supply = <&reg_1p8v>;
+		adi,dsi-lanes = <4>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+				adv7535_in: endpoint {
+					remote-endpoint = <&dsi_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+				adv7535_out: endpoint {
+					remote-endpoint = <&hdmi_con_out>;
+				};
+			};
+		};
+	};
 };
 
 &i2c6 {
-- 
2.43.0


