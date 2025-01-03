Return-Path: <devicetree+bounces-135219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3483AA0027A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 02:44:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AB6B27A1B65
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 01:44:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3CE11494C9;
	Fri,  3 Jan 2025 01:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lC4NyR/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A95200A0;
	Fri,  3 Jan 2025 01:44:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735868690; cv=none; b=FfNCcGImSUQ+TPy+jZEt6DQUuOgze9fFC0Ccq3y/cpIdq8xyKtx4UQhUU8GIRkBwl6jZ4uDG8/x/qvqiNTEMf6a8BuHMKksPWxWD/dbFU7IVYm08n34TGN2PqSVpkcFtqE78OuqrC5NQPrAXOmMgUpRGKikR6NpVdVKKOogsjXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735868690; c=relaxed/simple;
	bh=EWxIpZVzkObHrj3L3XnSjp1bXarY9ieZwL9MOGdfNcQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=abRBozQkM1RlNheaftYB038wQ0ryPOArmJf0oVYk0JhVW1b2c28rFh5qVvr0kH3nh15zKRCcMEgNCxdhw001bkpIxsP7PtbASvE5lUeQDZYnYHw+EstejmE+83tdjCw0uk7/q7gmTQq7A8nO850S7YNJPTLogKetIgdoznADIUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lC4NyR/T; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2ef28f07dbaso12915488a91.2;
        Thu, 02 Jan 2025 17:44:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735868688; x=1736473488; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k2Cl0qLA6Zse6X1mOHGAIPpGxF7+VgglAz9fd0zm31c=;
        b=lC4NyR/TeACLfFz0U8IdboLishUpXQ+iLQW1PS5+I/6kpZcj6ZxF+1o9APmAMFIpRw
         JrFcXngw1qehGZVq5TQubRiQ7ZIfvNMAsmVDT7PzrZZ2kb2ol7z2omzoLJY/qC1w5+10
         2xfUvWa+hgNHsI+AqUDXEYqRoT+4QHsCesu2fOsC24n1QBFVoFs/tQtyPrUIq5Kp1ARn
         rXY/2Sn5nH8a+wmP4o8m3Uq3rGrogZZsj/C+OyjAxFiaJxMppyxEP3vMlPptGtWSUw0d
         0WKk+bjCrTX7/4kNEF6sxb9p5dnDpTSpNDWVIihwpkexOR77MUNoSK1BnHjZ/d0BRYdM
         JfCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735868688; x=1736473488;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k2Cl0qLA6Zse6X1mOHGAIPpGxF7+VgglAz9fd0zm31c=;
        b=B7k11KZhKYAwTHyq0mvtozD/ko7yZ2uf/dTNzLiDjnzo1mPEkWY7zx13ur5h4cxoct
         dDH+SvO6v+0B90fzC00eEu/u/425haiTbvYJ2VA5fuvOh2Sw2l4T7/BqTbF/Qn+CEG/4
         LQG1RPnSTvw+sTKQGc+9RVqzzdjTxvm7vxWH9g/ztjve1gMrxBGQuDr57lRXlidhBdBA
         taxJAly2JrurF8VSjRXRLGZ3cq7HacaYfhxptwqrOeAd/1xhoTtYPcIRqiAgc60XNWYD
         FkKekC7P0TcUvVQcOda/ieMHCq7q9w/tSsJEwWbaWGgBAAHez0oBvyRObKOetkH/6p+E
         0pUw==
X-Forwarded-Encrypted: i=1; AJvYcCUaYWKUGPq9unKODrEPI822BVCRIsVyHQBOY1JUg0EbYTjzGMjAhdd71SWSZsA+MGfR8iAbSEs6j6/pjdY=@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8hABVdverhxBYIwa6ruqL3FxiSyCTIXmlwzjapnbtam5G9NWf
	C97VgAvDvI4KNwB8KImpiV6mCdTPv8o1tiRI/8kMrPwaW4as3psDfDhHZg==
X-Gm-Gg: ASbGncu36W6j1WTaGpmOydBOiRc5mqCtG62/sBSOyfBAqXNd9toH2QqaxjRIPFqYEPI
	JXd/tdVz0/x+QWVHjXCnUGQcydmxPMxNnOia2v2w044SL0cudo11oK7FYuGqBfFHhvKxPkmcUJr
	XLgQeISIiEU42akRUA+OhQ+YOkE+o/rnZs4Uk/cNyd/srAPIW2P79v/EXGOP6Ww7YqjhlMj5Da7
	zoWU8apCEWgUytwcWyjJaDzzPpLl1DDfpvO5yTmVaYzgQAr0x7RB6yFSQuk1jK5AM1w/Txqrzb9
	y6Bj73vQfOmaO9iM7O5CbN09blo4E4yrvA==
X-Google-Smtp-Source: AGHT+IE+4fM40xvU28AzvOJIq0548U2gC/Q8aDCSFhqHoK9P+D4GoUQlU1aKGPee55+jqzqjHIgWuQ==
X-Received: by 2002:a17:90b:5244:b0:2ee:f440:53ed with SMTP id 98e67ed59e1d1-2f452ed6a0dmr61484494a91.31.1735868688516;
        Thu, 02 Jan 2025 17:44:48 -0800 (PST)
Received: from localhost.localdomain (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dca02f8asm234551495ad.279.2025.01.02.17.44.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 17:44:48 -0800 (PST)
From: Potin Lai <potin.lai.pt@gmail.com>
Date: Fri, 03 Jan 2025 09:42:31 +0800
Subject: [PATCH] ARM: dts: aspeed: catalina: update catalina dts file
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-potin-catalina-dts-update-20250102-v1-1-b0b7a523c968@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIZAd2cC/z2NQQrDIBAAvxL23AUVW0i+EnJY47ZZCCpqQyH49
 0oOOQ4MMycUzsIFpuGEzIcUiaGDfgywbhQ+jOI7g1HmqbQymGKVgCtV2iUQ+lrwmzxVxlsZtXX
 qRdZ5R9BDKfNbftdkXlr7A1Frn790AAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Patrick Williams <patrick@stwcx.xyz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Cosmo Chou <cosmo.chou@quantatw.com>, Potin Lai <potin.lai@quantatw.com>, 
 Potin Lai <potin.lai.pt@gmail.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735868686; l=5772;
 i=potin.lai.pt@gmail.com; s=20240724; h=from:subject:message-id;
 bh=EWxIpZVzkObHrj3L3XnSjp1bXarY9ieZwL9MOGdfNcQ=;
 b=xLRs8zCBojbAOqgKdmTqa8vcJFMyCMitfwkdSmBkpFbK3jD0OBzbcb/9meKzqok8jfEm2f9Wa
 ILsB5P38XJWAMc9AP5VGhAC2QxyTvQ5tYWHwFeC/7JfPlT0FD4DTMHG
X-Developer-Key: i=potin.lai.pt@gmail.com; a=ed25519;
 pk=6Z4H4V4fJwLteH/WzIXSsx6TkuY5FOcBBP+4OflJ5gM=

Update device nodes list below for driver binding.

- Add IOB NIC thermal nodes (TMP421)
  - 24-001f, 26-001f, 36-001f, 38-001f
- Add FIO Remote thermal node (TMP75)
  - 23-001f
- Add Power sensor node (MP5990)
  - 16-0022
- Add main source fan controllers (MAX31790)
  - 18-0021, 18-0027
- Add 2nd source fan controllers (NCT7363)
  - 18-0001, 18-0002
- Add 2nd source HSC nodes (XDP710)
  - 20-0013, 20-001c
- Remove all ina238 nodes, move to userspace
  - 16-0041, 16-0042, 16-0044, 17-0041, 17-0043

Signed-off-by: Potin Lai <potin.lai.pt@gmail.com>
---
Updating the catalina system device nodes in dts file.
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


