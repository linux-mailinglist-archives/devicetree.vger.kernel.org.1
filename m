Return-Path: <devicetree+bounces-137881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E76FA0AF44
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 07:20:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC523188798F
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 06:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D329B2327B1;
	Mon, 13 Jan 2025 06:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GUyD7FB3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032EF23278A;
	Mon, 13 Jan 2025 06:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736749133; cv=none; b=ABinMdIvoa+1qeumsl++ALpSSQJwDNNSYKg+qbkhjsXvY5JKGvf86NM7qJH6b36LsQw33/fsMtVasZbXiai7hSl2US6Fvf4aZ2X7OI/IiQJ7UEqWJUUhs4ZqHb7kaV4ilp0Rx1YvcQYaGrnD9MaXZh/uz+wH3lZ7zIahmHS9CAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736749133; c=relaxed/simple;
	bh=+9P1SAFUTyPeHDsem7TQlwq42JcEr9R7g9tjaiPQiIs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tlteWFY/JWQug7UWDG3lcxSZLgnDELjudUxM0F3A8LRMMDP0rTVaL3SkofvVlq/ytKb0hyu9Yt97cFyKxYn12suhgQyiR2mRP0TLiNYnawbQjTwM4rVBhl0ccoGgpJGTbI94n2XScAUhe3+5olrLhNZh6f3dYdrnumkERSvdodA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GUyD7FB3; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21661be2c2dso63088045ad.1;
        Sun, 12 Jan 2025 22:18:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736749131; x=1737353931; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UXMYkhj5IZ9Mb+wHyrW48mIfsHQ1A9AFKPYuWPrAkpY=;
        b=GUyD7FB3uQtlpT/BAPyMC13xtvPDImTx+YHLxrCiN4ZsU17aaHkygZYLtruDXyDpId
         SrYMOwQK+6qt7TbEAu9qzyb5jL7BZDXxBS8tyBl9YyW88HHL7mPmGHbrkFoDdwMgjZXE
         vYWIU0v2k98HtgOoEIRffPnKQPQFAk8FoeLFhfmw1vy3heTAPLkR7LjlKO4SRpGCQe4P
         /Lz5iE3C0qbJQGJThGX+pdkpVVDuvWGNtM4BJQz6o70BQYANACSKzwX61tN/dwgjGJbl
         XO/XRVK5X3YoLzRkVsyQT0DZSjdxOKPqltPZypmGEvqG6QlAGbPyfn8uU/Pczg30YbXt
         fTww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736749131; x=1737353931;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UXMYkhj5IZ9Mb+wHyrW48mIfsHQ1A9AFKPYuWPrAkpY=;
        b=HPseslSxTD39sokaJsSxlNFsWl6C0cxyXM5FebmcRqqm7Y4T/MVkWkYFXomNzgp3lc
         ojQdbJ5RZCu3IJKd/FLKrN5YC+1pcBAIYtAlJADRD4NV7V8W1YkahrHnez4K7knbxwtN
         gbIqItiaNVzS8lJNp8bc4ld0gLxPh19IVdALX0Q/Ni3O/f1Tdr1YXyLX8cNojeh3wnm8
         Jok6dXWK/48JQPc0CGrayRZdlaatDmyEI20sjnig90nTB0Tmf/lSuZsGrwrzIgujZr8w
         hynuJ2vFWjpoGu3Nn+ne+7OqTjB9okQW66jbHhWvuaKg32ojiRn0lK0m+gU4/PTO53q/
         1FHQ==
X-Forwarded-Encrypted: i=1; AJvYcCVj+XzL2woHEWqOskmrynGJg3coVuEQv5BlFT4vhu9tvvs7wRtslwIpEFA9J+RxIjIzSOEkuAs2o+2tLTg=@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwt6qlrBfl4dqXjFsFODq2UV2DUxUGICRQRM5zmKhF63gt4y/2
	ZH2G8lkW9f0q8UVcQt53RKUTt4Za79gOLpCCgYBPM7d63ZEeUDPZ
X-Gm-Gg: ASbGnct4aICnBatLkIeCeU1t4ytI2kskgjHoLXTLlZpq6mT2DRhp8ff6I6owfC7mRNE
	AytDy1e3f+u/C3y84K/GPxQMcWO5T5DrkodxlBs19Whi8CORZCKYClKVdi170w8b7X9TnNm8WqX
	g9M9djWNM+HMsT4CPPE4jCtB/brj12AWkCuLtel40F/Rr4OUc0ENMfLT1vlPvB/x87YL0MpPGvu
	NBJUaf1M5OvhNYAJNSfMFdy7sNwNzBodAz5DnOnbs68f7hESs+hXS9ZlP43hbCriVXTD2RVoTNO
	H+GcJSfFAhqk5CArA+LWgjRVa7rKViH5hA==
X-Google-Smtp-Source: AGHT+IFigaJwgK7Z0NX1dvC/nKexlb3PogVsWIi3IglxLkUsghZrWcqjcsFlHJl2DP1Q0iXvPWIhFg==
X-Received: by 2002:a05:6a20:6a25:b0:1e7:6f82:321f with SMTP id adf61e73a8af0-1e88d10749amr27730415637.17.1736749131204;
        Sun, 12 Jan 2025 22:18:51 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-a318e8ecacfsm6279705a12.38.2025.01.12.22.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 22:18:50 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Mon, 13 Jan 2025 14:16:23 +0800
Subject: [PATCH v2] ARM: dts: aspeed: catalina: Update DTS to support
 multiple PDB board sources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-potin-catalina-dts-update-20250102-v2-1-1725117fe7a9@gmail.com>
X-B4-Tracking: v=1; b=H4sIALavhGcC/42Nyw6CMBBFf4V07Zi2PBRX/odhMX0Ik0BL2ko0h
 H+3kuja5bm5OWdl0QaykV2KlQW7UCTvMshDwfSArrdAJjOTXNZccAmzT+RAY8KRHIJJER6zwWT
 hd2lFpXiDlTIKWRbNwd7puUduXeaBYvLhtTcX8Vm/+vIf/SJAgOLqhLUsdducr/2ENB61n1i3b
 dsbWGRFVdQAAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736749128; l=6860;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=+9P1SAFUTyPeHDsem7TQlwq42JcEr9R7g9tjaiPQiIs=;
 b=q7cGmq9jtHu+sNoOLc89cs/9abzrthQEj0V4PmdvhAoWoyNT0lNHWSLu3QYfxAkuzcEU+acMA
 7Tg1EZrRPQwBE6NOoGguYQPQg0a5TPmzZ+TijEtlbwyFcTemAXAhs20
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=

This patch updates the Catalina device tree to support different sources
of PDB boards.

Changes for Main source PDB board
- Thermal Sensor Monitoring:
  - Added IOB NIC nodes (TMP421) for thermal sensor monitoring.
  - Added FIO remote thermal node (TMP75) for thermal sensor monitoring.
- Fan Monitoring and Control:
  - Add fan p12V power sensor node (MP5990) for sensor monitoring.
  - Add fan controllers (MAX31790) for fan control and tach monitoring.

Changes for 2nd source PDB board
- Fan Monitoring and Control:
  - Added 2nd source fan controllers (NCT7363) for fan duty control and
    tach monitoring.
- Power Monitoring:
  - Added 2nd source HSC nodes (XDP710) for power sensor monitoring.
- Address Conflicts:
  - Removed all ina238 nodes due to address conflicts. Moved the driver
    probe for ina238 to userspace.

Changes for PDB brick board
- Power Monitoring:
  - Add delta brick nodes for power sensor monitoring.

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Updating the Catalina DTS to support multiple PDB board sources.
---
Changes in v2:
- Add delta_brick nodes to support PDB brick board
- Link to v1: https://lore.kernel.org/r/20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com
---
 .../dts/aspeed/aspeed-bmc-facebook-catalina.dts    | 170 ++++++++++++++++++---
 1 file changed, 147 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
index 3822bb3c9243..49230e6a749e 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
@@ -190,6 +190,12 @@ i2c0mux0ch0: i2c@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			// IOB0 NIC0 TEMP
+			temperature-sensor@1f {
+				compatible = "ti,tmp421";
+				reg = <0x1f>;
+			};
 		};
 		i2c0mux0ch1: i2c@1 {
 			#address-cells = <1>;
@@ -200,6 +206,12 @@ i2c0mux0ch2: i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
+
+			// IOB0 NIC1 TEMP
+			temperature-sensor@1f {
+				compatible = "ti,tmp421";
+				reg = <0x1f>;
+			};
 		};
 		i2c0mux0ch3: i2c@3 {
 			#address-cells = <1>;
@@ -361,6 +373,12 @@ i2c0mux3ch0: i2c@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
+
+			// IOB1 NIC0 TEMP
+			temperature-sensor@1f {
+				compatible = "ti,tmp421";
+				reg = <0x1f>;
+			};
 		};
 		i2c0mux3ch1: i2c@1 {
 			#address-cells = <1>;
@@ -371,6 +389,12 @@ i2c0mux3ch2: i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
+
+			// IOB1 NIC1 TEMP
+			temperature-sensor@1f {
+				compatible = "ti,tmp421";
+				reg = <0x1f>;
+			};
 		};
 		i2c0mux3ch3: i2c@3 {
 			#address-cells = <1>;
@@ -464,51 +488,145 @@ i2c1mux0ch0: i2c@0 {
 			#size-cells = <0>;
 			reg = <0x0>;
 
-			power-sensor@41 {
-				compatible = "ti,ina238";
-				reg = <0x41>;
-				shunt-resistor = <500>;
-			};
-			power-sensor@42 {
-				compatible = "ti,ina238";
-				reg = <0x42>;
-				shunt-resistor = <500>;
-			};
-			power-sensor@44 {
-				compatible = "ti,ina238";
-				reg = <0x44>;
-				shunt-resistor = <500>;
+			power-sensor@22 {
+				compatible = "mps,mp5990";
+				reg = <0x22>;
 			};
 		};
 		i2c1mux0ch1: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x1>;
-
-			power-sensor@41 {
-				compatible = "ti,ina238";
-				reg = <0x41>;
-			};
-			power-sensor@43 {
-				compatible = "ti,ina238";
-				reg = <0x43>;
-			};
 		};
 		i2c1mux0ch2: i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x2>;
+
+			hwmon0: hwmon@1 {
+				compatible = "nuvoton,nct7363";
+				reg = <0x01>;
+				#pwm-cells = <2>;
+
+				fan-9 {
+					pwms = <&hwmon0 0 40000>;
+					tach-ch = /bits/ 8 <0x09>;
+				};
+				fan-11 {
+					pwms = <&hwmon0 0 40000>;
+					tach-ch = /bits/ 8 <0x0b>;
+				};
+				fan-10 {
+					pwms = <&hwmon0 4 40000>;
+					tach-ch = /bits/ 8 <0x0a>;
+				};
+				fan-13 {
+					pwms = <&hwmon0 4 40000>;
+					tach-ch = /bits/ 8 <0x0d>;
+				};
+				fan-15 {
+					pwms = <&hwmon0 6 40000>;
+					tach-ch = /bits/ 8 <0x0f>;
+				};
+				fan-1 {
+					pwms = <&hwmon0 6 40000>;
+					tach-ch = /bits/ 8 <0x01>;
+				};
+				fan-0 {
+					pwms = <&hwmon0 10 40000>;
+					tach-ch = /bits/ 8 <0x00>;
+				};
+				fan-3 {
+					pwms = <&hwmon0 10 40000>;
+					tach-ch = /bits/ 8 <0x03>;
+				};
+			};
+			hwmon1: hwmon@2 {
+				compatible = "nuvoton,nct7363";
+				reg = <0x02>;
+				#pwm-cells = <2>;
+
+				fan-9 {
+					pwms = <&hwmon1 0 40000>;
+					tach-ch = /bits/ 8 <0x09>;
+				};
+				fan-11 {
+					pwms = <&hwmon1 0 40000>;
+					tach-ch = /bits/ 8 <0x0b>;
+				};
+				fan-10 {
+					pwms = <&hwmon1 4 40000>;
+					tach-ch = /bits/ 8 <0x0a>;
+				};
+				fan-13 {
+					pwms = <&hwmon1 4 40000>;
+					tach-ch = /bits/ 8 <0x0d>;
+				};
+				fan-15 {
+					pwms = <&hwmon1 6 40000>;
+					tach-ch = /bits/ 8 <0x0f>;
+				};
+				fan-1 {
+					pwms = <&hwmon1 6 40000>;
+					tach-ch = /bits/ 8 <0x01>;
+				};
+				fan-0 {
+					pwms = <&hwmon1 10 40000>;
+					tach-ch = /bits/ 8 <0x00>;
+				};
+				fan-3 {
+					pwms = <&hwmon1 10 40000>;
+					tach-ch = /bits/ 8 <0x03>;
+				};
+			};
+			pwm@21{
+				compatible = "maxim,max31790";
+				reg = <0x21>;
+			};
+			pwm@27{
+				compatible = "maxim,max31790";
+				reg = <0x27>;
+			};
 		};
 		i2c1mux0ch3: i2c@3 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x3>;
+
+			delta_brick@63 {
+				compatible = "pmbus";
+				reg = <0x63>;
+			};
+			delta_brick@64 {
+				compatible = "pmbus";
+				reg = <0x64>;
+			};
+			delta_brick@65 {
+				compatible = "pmbus";
+				reg = <0x65>;
+			};
+			delta_brick@66 {
+				compatible = "pmbus";
+				reg = <0x66>;
+			};
+			delta_brick@67 {
+				compatible = "pmbus";
+				reg = <0x67>;
+			};
 		};
 		i2c1mux0ch4: i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0x4>;
 
+			power-monitor@13 {
+				compatible = "infineon,xdp710";
+				reg = <0x13>;
+			};
+			power-monitor@1c {
+				compatible = "infineon,xdp710";
+				reg = <0x1c>;
+			};
 			power-monitor@42 {
 				compatible = "lltc,ltc4287";
 				reg = <0x42>;
@@ -580,6 +698,12 @@ temperature-sensor@4b {
 				compatible = "ti,tmp75";
 				reg = <0x4b>;
 			};
+
+			// FIO REMOTE TEMP SENSOR
+			temperature-sensor@4f {
+				compatible = "ti,tmp75";
+				reg = <0x4f>;
+			};
 		};
 	};
 };

---
base-commit: becaccc292bfbd12df81148746043c5221e49da8
change-id: 20250102-potin-catalina-dts-update-20250102-914b06a4bdba

Best regards,
-- 
Potin Lai <potin.lai.pt@gmail.com>


