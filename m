Return-Path: <devicetree+bounces-206446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CBEB2C533
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 446D2624354
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF153341AD6;
	Tue, 19 Aug 2025 13:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F9LfaG0w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02185340D9A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:16:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609387; cv=none; b=aJhV7V+UG9H0PxTXyM1uPuTMhj/TCu9vF2quOpTSIzZu1Sv/3PJWfGnLPUw/rS7tXnv/+aIs7zMdsxa917JYK8Zv3plmUr7ik/5dZ/QbuhcPy6W630ldw5b4sVdijXQX6V+/W4TXQkQeK18yXatbq4HP4cPfRc+9rClM7loWtos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609387; c=relaxed/simple;
	bh=FlJ31Q4r8DtWEP1JWYKS9HEZuRwP5fOwwXXSziAxGiw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LKai5VkzUw4cOyAm9fN6jI5kZJi8MkESv+73GUYoMJh5et1bYDw/mKMfGIuOXGkCpkEmU3hvUVoF3+cQRMZQEhY1Q+/tjITNlW8coGRbPdUHW0Z6UPitbkCtM0aj+4F4On/6vcd0iasa+bV7hreOaeYEspYzNf35xr2lSS2fLNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F9LfaG0w; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-afcb731ca55so71893466b.0
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609383; x=1756214183; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WAyUsYNwkYrgmyUPFJBgMUOEuaiMdUtsvQFJPoQdWaM=;
        b=F9LfaG0w0vsm2D//Wfq3ELbR4tEE+9O+wEY4cdy0e3nKsMdBIpB5uztGYSue7yTkgQ
         VmFxGWwGf6sQcRd4Pp/r/zXared4QSaDyoEYnBc4IJFZTbsnhezudFJyULA2iewctR5L
         WChtNjeQrMecHIArOx1ds81Uzz133D1qDvElVdFw9+Xozw+lC7cFN7wtuH3a9mpb1xyO
         HNgdVapuUUjYm+wq4iMeF3J2Ndb+OjExTQzWTB8nuhv0Bz7KXbtMHUtgGTtVX5Li8pAf
         zI1J8RA1URyAjvOjQB7sIKY7vr/7md5NOri3Z+Ae7brxkn6/dFXa4qNRQhLKdWiO++ZK
         xt5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609383; x=1756214183;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WAyUsYNwkYrgmyUPFJBgMUOEuaiMdUtsvQFJPoQdWaM=;
        b=bYmepyoErJPbHwNRlUuyPb8z2x5JliAWfbSnPwejNDnCeFblJHvNsS7daM4d8LMFRw
         MsRkEw3hUeu05U//RLo2q19KBuJxSzhaYzUfn/aJJJcLN7W5nw7wLodOn1Cen8vkCBrb
         yjzSs8OLuSKfZRqoxmG/yZ3KyHO8kEZp8hHVaGsujrkGAARl+yuwSVlTLzUIRBx/1Gtp
         hqhhLPgO5Nr7VcJZQxDzXoAuiYWBNRlYLQNZgGLGbV1xin3nPKzT6FvajgQq76FgJiBz
         8FAhD8/NMhZodhBm5ZaZL4z9zggUl+SsZrFwAbJUZKFtVw5VGZPNmueOqXqFYFeeGYT/
         /NcQ==
X-Forwarded-Encrypted: i=1; AJvYcCX+lVcqhSWnyAfiRabAJ7Knz54u9P4PVnSOr5kiBuDDapr0+N4wjIGld0KwhW3jz+wYnWF4lfNKIY3C@vger.kernel.org
X-Gm-Message-State: AOJu0YyX07yYdaZYv0OvQ/HZhb2RW4WC2X4QLwt2fOiGR2flzqxb44L8
	sXeXLnbxhsyALo+IXurHeUeXNwg49u0pD5gfvxHju4C56UlK2jyagSyoMWEl1vWk7uE=
X-Gm-Gg: ASbGncsjU/qVJM7MLEvhPL1uMzLZXmacVutVqUzgbLOGGM03vkXBQRXy2nG8tRTTIoj
	LUfsxfj/gj0Xa0cU3SMYUWzZLNIWsL5D1dkU9zRTdmJ753em3gRL8YIziTfw34STgaPu80ouQuY
	hXvdUKxX1xMlY5VMk3VO5nYpdRt2GFsbTEUPXoAJ3F93kxELjbF4nThML/JZ7U9D8c+3acBXTKe
	efo8b/fP5w+4qn8HR7WdHRdMtZ+DehxLN+CbhLTlKY/Nu1/968kGnAdWM3O+Uq9CsVyYU4yFSSk
	xG+9NUs7zMci3nxGcNNJ92/Yny/Pu8ojtsc0GPMyFvTd8QZNnKP/LLGAtfKkwpZE7oMKgK4oXD9
	vjTgrlT0mgYDwOLK5/5SMGRqHwmA+u0uFaw==
X-Google-Smtp-Source: AGHT+IGicKFJYlSBqndrUCzc72c9FauFKrC2A7g5lsSNLNB3PYbxEyMtEg/eIuHm3Z90cDguU2Hd0A==
X-Received: by 2002:a05:6402:5215:b0:617:be23:1111 with SMTP id 4fb4d7f45d1cf-61a7e782ac9mr1067731a12.7.1755609383348;
        Tue, 19 Aug 2025 06:16:23 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a755ff4f1sm1779671a12.19.2025.08.19.06.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:16:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: renesas: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:16:20 +0200
Message-ID: <20250819131619.86396-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5392; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=FlJ31Q4r8DtWEP1JWYKS9HEZuRwP5fOwwXXSziAxGiw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHkjDm3kaqBkQYubub/eePmSOb+rw2NpsfmNb
 Iltt+bgNYyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5IwAKCRDBN2bmhouD
 159fD/9oOreHQKUT23cIrD6stunETQgDTwYGUX+YY/clIG0HB4WEcjo+SvL/HYWJ0h21wPGx9jA
 LnOb+zyKYNw2t5B9vMAijjBmrTa74n6hBKdRiE+jpdQiwRIiRAto4tI8/U4wB+ZW+l7PYWN8RPD
 0TbwPuGnVu+gHGzUEMfQxo6E0NIvDysGnYS5L5F+zENATNM9TFCR+O0NC8MHlbu8mkoCCdGfkoM
 kBWxIU+uIeq1FoklPf1wxBddVrHCalam1bFUUOvoGtUJGOx50ZWHhOyE9WJs0HDKQLeR6STlxlx
 deQS0g8grQk3Fo1DE3Hp8bJXlcDNPhUmMYr/eZe7nbQrLxOPmi/wRel2B7yMsRWoGtIv/kmmTWt
 3CoCmSEDq9C7s+8BAyekU2vjbcCIz2O0bN7B7qTA5+ijyv9S0GfP1DMIWVaorXItGlT6fuT58j6
 CJa+XSaPT22dotHPo5N5DfrEPy1z2NFoQGCluRf0du6i5PEvAWSTQtg3HOjJZ8Oow8AHf0U0o67
 R2CUR7aj5wBrlQAkS8KG1pOD1JooQmkM9sJqxzFWieB9d9BGnRTv03Nm68cDmETwQhvwY9BM1s8
 P2riWvMzD8HjDLh9TyzZz7GnGFe0Jc7PRnAueI/NwZEtO+H/nP71aa+MIm94LSDqQu9Z8CcUpXb SiX+miFwMl7IEbQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/renesas/r9a09g056.dtsi       | 16 ++++++++--------
 .../boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts  |  2 +-
 arch/arm64/boot/dts/renesas/r9a09g057.dtsi       | 16 ++++++++--------
 .../boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts  |  2 +-
 .../boot/dts/renesas/r9a09g057h48-kakip.dts      |  2 +-
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
index 10d3b9727ea5..50a3d42d192c 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
@@ -735,10 +735,10 @@ eth0: ethernet@15c30000 {
 					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
 					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
 					  "tx-queue-2", "tx-queue-3";
-			clocks =  <&cpg CPG_MOD 0xbd>, <&cpg CPG_MOD 0xbc>,
-				  <&cpg CPG_CORE R9A09G056_GBETH_0_CLK_PTP_REF_I>,
-				  <&cpg CPG_MOD 0xb8>, <&cpg CPG_MOD 0xb9>,
-				  <&cpg CPG_MOD 0xba>, <&cpg CPG_MOD 0xbb>;
+			clocks = <&cpg CPG_MOD 0xbd>, <&cpg CPG_MOD 0xbc>,
+				 <&cpg CPG_CORE R9A09G056_GBETH_0_CLK_PTP_REF_I>,
+				 <&cpg CPG_MOD 0xb8>, <&cpg CPG_MOD 0xb9>,
+				 <&cpg CPG_MOD 0xba>, <&cpg CPG_MOD 0xbb>;
 			clock-names = "stmmaceth", "pclk", "ptp_ref",
 				      "tx", "rx", "tx-180", "rx-180";
 			resets = <&cpg 0xb0>;
@@ -836,10 +836,10 @@ eth1: ethernet@15c40000 {
 					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
 					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
 					  "tx-queue-2", "tx-queue-3";
-			clocks =  <&cpg CPG_MOD 0xc3>, <&cpg CPG_MOD 0xc2>,
-				  <&cpg CPG_CORE R9A09G056_GBETH_1_CLK_PTP_REF_I>,
-				  <&cpg CPG_MOD 0xbe>, <&cpg CPG_MOD 0xbf>,
-				  <&cpg CPG_MOD 0xc0>, <&cpg CPG_MOD 0xc1>;
+			clocks = <&cpg CPG_MOD 0xc3>, <&cpg CPG_MOD 0xc2>,
+				 <&cpg CPG_CORE R9A09G056_GBETH_1_CLK_PTP_REF_I>,
+				 <&cpg CPG_MOD 0xbe>, <&cpg CPG_MOD 0xbf>,
+				 <&cpg CPG_MOD 0xc0>, <&cpg CPG_MOD 0xc1>;
 			clock-names = "stmmaceth", "pclk", "ptp_ref",
 				      "tx", "rx", "tx-180", "rx-180";
 			resets = <&cpg 0xb1>;
diff --git a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
index 03aeea781186..066e66b5d51a 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g056n48-rzv2n-evk.dts
@@ -334,7 +334,7 @@ sd1-dat-cmd {
 
 	usb20_pins: usb20 {
 		ovc {
-			pinmux =  <RZV2N_PORT_PINMUX(9, 6, 14)>; /* OVC */
+			pinmux = <RZV2N_PORT_PINMUX(9, 6, 14)>; /* OVC */
 		};
 
 		vbus {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
index 6d0c6449b9ff..e66f5654f2ab 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
+++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
@@ -1083,10 +1083,10 @@ eth0: ethernet@15c30000 {
 					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
 					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
 					  "tx-queue-2", "tx-queue-3";
-			clocks =  <&cpg CPG_MOD 0xbd>, <&cpg CPG_MOD 0xbc>,
-				  <&cpg CPG_CORE R9A09G057_GBETH_0_CLK_PTP_REF_I>,
-				  <&cpg CPG_MOD 0xb8>, <&cpg CPG_MOD 0xb9>,
-				  <&cpg CPG_MOD 0xba>, <&cpg CPG_MOD 0xbb>;
+			clocks = <&cpg CPG_MOD 0xbd>, <&cpg CPG_MOD 0xbc>,
+				 <&cpg CPG_CORE R9A09G057_GBETH_0_CLK_PTP_REF_I>,
+				 <&cpg CPG_MOD 0xb8>, <&cpg CPG_MOD 0xb9>,
+				 <&cpg CPG_MOD 0xba>, <&cpg CPG_MOD 0xbb>;
 			clock-names = "stmmaceth", "pclk", "ptp_ref",
 				      "tx", "rx", "tx-180", "rx-180";
 			resets = <&cpg 0xb0>;
@@ -1184,10 +1184,10 @@ eth1: ethernet@15c40000 {
 					  "rx-queue-0", "rx-queue-1", "rx-queue-2",
 					  "rx-queue-3", "tx-queue-0", "tx-queue-1",
 					  "tx-queue-2", "tx-queue-3";
-			clocks =  <&cpg CPG_MOD 0xc3>, <&cpg CPG_MOD 0xc2>,
-				  <&cpg CPG_CORE R9A09G057_GBETH_1_CLK_PTP_REF_I>,
-				  <&cpg CPG_MOD 0xbe>, <&cpg CPG_MOD 0xbf>,
-				  <&cpg CPG_MOD 0xc0>, <&cpg CPG_MOD 0xc1>;
+			clocks = <&cpg CPG_MOD 0xc3>, <&cpg CPG_MOD 0xc2>,
+				 <&cpg CPG_CORE R9A09G057_GBETH_1_CLK_PTP_REF_I>,
+				 <&cpg CPG_MOD 0xbe>, <&cpg CPG_MOD 0xbf>,
+				 <&cpg CPG_MOD 0xc0>, <&cpg CPG_MOD 0xc1>;
 			clock-names = "stmmaceth", "pclk", "ptp_ref",
 				      "tx", "rx", "tx-180", "rx-180";
 			resets = <&cpg 0xb1>;
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
index 5c3f4e471e3d..5c06bce3d5b4 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h44-rzv2h-evk.dts
@@ -353,7 +353,7 @@ sd1_cd {
 
 	usb20_pins: usb20 {
 		ovc {
-			pinmux =  <RZV2H_PORT_PINMUX(9, 6, 14)>; /* OVC */
+			pinmux = <RZV2H_PORT_PINMUX(9, 6, 14)>; /* OVC */
 		};
 
 		vbus {
diff --git a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
index f6f2cb7d2d25..adf3ab8aef2b 100644
--- a/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
+++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
@@ -84,7 +84,7 @@ &ostm7 {
 
 &pinctrl {
 	scif_pins: scif {
-		pins =  "SCIF_RXD", "SCIF_TXD";
+		pins = "SCIF_RXD", "SCIF_TXD";
 	};
 
 	sd0-pwr-en-hog {
-- 
2.48.1


