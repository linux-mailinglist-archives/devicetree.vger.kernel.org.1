Return-Path: <devicetree+bounces-138339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E6899A100C3
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 07:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F02361630EE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 06:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D93E235C04;
	Tue, 14 Jan 2025 06:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V6Uw2GfS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58FE8230276;
	Tue, 14 Jan 2025 06:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736835308; cv=none; b=Uv9vg2K+gfB9GEkcXBB8Iocy/9cek0qEsWT92jmYWcl6yN8+t9VS/fhvvI8Y6/RHgXfGLSypa9jb5fL6JfOKXwpHOJL/59MUnDsiSllGyoqOSnTI4BgWx3leBWyoVvuFGujyCLuqUADvo/wgTaW+zRkbmAOtrsF2gd1lMpTzpn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736835308; c=relaxed/simple;
	bh=lbOKlY5AnxmP5unErxDp8hen0opmaKpQ0vRsSWRl/Ao=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=L8lYIGZKtIPayv7tWtcQIo2trlZnMEZtA/J5NlzVfwqI6bL1VNC0FrVkaU1sJUkwvcq6VM9b7fh63vgzOaiUOth6Cz72VdqJOiCt/gFcP4zbgKOHMa98KeaxnarxE1lNjC2sSadYIy1CQdh+Z3HeBunoaDHPWH9BtARS2SvyQjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V6Uw2GfS; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-2164b1f05caso89048865ad.3;
        Mon, 13 Jan 2025 22:15:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736835306; x=1737440106; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9+9ADON0/68ayYIfEfVGSHZvOGdkI3057JB+jrkbu/4=;
        b=V6Uw2GfSwkuyOQApHMLOzE+NNYQ/htG+Ijt016t7KMTuGaG0JQ+Y2oRah34ttnuVUM
         hFrdz7xouhtoxZcPEEc0lt3dCTCrYFLzjtLGelvlgs5z6RDCen0i9rAUQ+FPZQOoCW1D
         +aYTCkf9PUSb01vwIn7PsjLEMEctqIk/OEVoGafUU1/wFXefbvTiMSHt4x/K49lUb2OQ
         7hyAHjf0tQY82uGt47r6HZSXKy5w2w0YtH1pBvvU/korTRhAvL6QemjryeFg4VmuYQV0
         dE0aNGBzN2NZt5boAhlkef7J8NIuTimAPQIe/HyOq2W8Xv29322qwCLDBnW0UTjc6DvE
         n5cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736835306; x=1737440106;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9+9ADON0/68ayYIfEfVGSHZvOGdkI3057JB+jrkbu/4=;
        b=epN+hqCDjIBH/7rvy2eAo5SPaHV2h6F7Qg0WChg1ARP8rQKnTJoqCYE4YPG3lds8oN
         V+CkBxnF9QduAqlafe2yJXOmJVgldwLmsFWahjdSlM1X2yMQpKs/JSCsV7ElfEv8QPA2
         8IrUHftmq/Tnjjy8OlFud+RvJrfiyUTlCWCxHaPt0ibcYLIJjPa9Eu2qcPLUpFrT0C3Y
         Plh7BrrZJGnEZP0OGv/LCvltrlPafXaj4tOLfAqltnCE2tn9YcrsawwrusNWtSCLAoiv
         qgERDaqUEV/s1Acorx8pG2z8ra9LINfLm/IKuEQoPrOe6arQmh0plpcDAS8Itx6oC90Z
         aGzg==
X-Forwarded-Encrypted: i=1; AJvYcCWanK4V2UYU8iA3gefnFGrihO5RwCZvhg0ASNT/G45U9zMx1WRCO2GKA+QmVXk2NFrm7CnsrB23UPsthJw=@vger.kernel.org
X-Gm-Message-State: AOJu0Yxob6iWuWhYrtAatITD/OwjadFsQJMXT2l+SAKedSkxpUEglLPf
	bHWLnFHEUPa0k3Nt7pBhpSpS8GmQuQGCWkImgkfpo7A851PZ8WIyx8Lktw==
X-Gm-Gg: ASbGnctZ65uOUddWMHu9aolx5EnuE3GeXUrFnHnnUZekYxuFztRXtiapyxJV84lB8nT
	XFef9U2FbpogZmT71CrIl1JsSkwYC9CC1Er5JKF1VxkmPcC17huZ0xOrbXtsi8vxLDA2L9pl7hp
	72lIwk1sZmawUntxZbDgAeDPF+ecBsJJFfawu44AsJvEaQDU0EKbw8kvcZVvk20+9y4EIVa5ICU
	I/hJzmJVlrc1f8rMVg8/mSBGWfgk5PJs9uSxyNccgGTdQUIRH4ZH3cj5d1A4VdR6zsxER9UBmBR
	eLQKjgEi8dufFFM/wmmq1XWEm3TYTbrFbA==
X-Google-Smtp-Source: AGHT+IEyP70V5BBHMys71/WsXOS/rY0o9WW3Q+/v6dsdado13jARyxFY0TuAdoBRAxFx2Ha6CPRa3g==
X-Received: by 2002:a05:6a20:244d:b0:1d9:fbc:457c with SMTP id adf61e73a8af0-1e88d0a4771mr20947524637.36.1736835305592;
        Mon, 13 Jan 2025 22:15:05 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72d4065c3b4sm6796218b3a.112.2025.01.13.22.15.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 22:15:05 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Tue, 14 Jan 2025 14:12:46 +0800
Subject: [PATCH v3] ARM: dts: aspeed: catalina: Update DTS to support
 multiple PDB board sources
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250114-potin-catalina-dts-update-20250102-v3-1-14981744b2fe@gmail.com>
X-B4-Tracking: v=1; b=H4sIAF0AhmcC/43NTQqDMBCG4auUrJuSiX+1q96jdDGJUQfUiElDi
 3j3RqHFpct3GJ5vZs5MZBy7nWY2mUCO7BAjOZ+YbnFoDKcqNpNCZgKE5KP1NHCNHjsakFfe8dd
 YoTf8/1JCqkSOqaoUsgiNk6npvY08nrFbct5On20zwHr98ckRPgAHroQqMJOJLvPrvemRuou2P
 Vv5IHckHCNlJKGQGUBRmwLLPbksyxdpc/gjJwEAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736835302; l=6499;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=lbOKlY5AnxmP5unErxDp8hen0opmaKpQ0vRsSWRl/Ao=;
 b=IAKC+rhHag+WcW2qKa8cX5x57+SOcI0rbFTphPzuFoDlRzL/KC5ugdzDPn5IPheQLvlXqyVd7
 ZcoCBLS4rpCCT3HUb2ZTb1dF5f2KsU+QtX5VOG6L0RGza74k9vOZ/91
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

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Updating the Catalina DTS to support multiple PDB board sources.
---
Changes in v3:
- Remove delta_brick nodes due to compatible string not supported
- Link to v2: https://lore.kernel.org/r/20250113-potin-catalina-dts-update-20250102-v2-1-1725117fe7a9@gmail.com

Changes in v2:
- Add delta_brick nodes to support PDB brick board
- Link to v1: https://lore.kernel.org/r/20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com
---
 .../dts/aspeed/aspeed-bmc-facebook-catalina.dts    | 149 +++++++++++++++++----
 1 file changed, 126 insertions(+), 23 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-catalina.dts
index 3822bb3c9243..23583665ba12 100644
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
@@ -464,40 +488,105 @@ i2c1mux0ch0: i2c@0 {
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
@@ -509,6 +598,14 @@ i2c1mux0ch4: i2c@4 {
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
@@ -580,6 +677,12 @@ temperature-sensor@4b {
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


