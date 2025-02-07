Return-Path: <devicetree+bounces-143933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1D5A2C389
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 14:28:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E4433ABDF5
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 13:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6BEC1F55EF;
	Fri,  7 Feb 2025 13:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b="eSpItwe0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88BA71F37AA
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 13:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738934908; cv=none; b=SmDganusj2IayVqNJmuh91Z1KeZc7ZPPgfUIBRAAj+7Bdo1A/WwiTH+yn0bMWPySouaEFaSt+BjTu04t+8pDoB1YaqJFSR9Hx3dzkUHSNVwQZ9Amukp8tuN6OAl+S0neDaItj+DPGbtZNWQ5DHmhuJZpea6SZQsTjpfg2VANN5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738934908; c=relaxed/simple;
	bh=ECqzfq7qoMuyq+r19JGd3UHmxyBzNK9DnZVYotYQS9U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=SAGzGTgi/XUHEjj2y2LfraHnOwO4VAJfgF8PJ+gTn38mnEzSIasXDGbMhNKqc0Og58qch8utiFbycfaC+XwL1qvyqu+TgW9/kvDp2s75L9dt3IeEDCJaTMFTXA0Wgz+p2q/EISisM3WaIu22cDG20azIKppQtx7l7YQVPurycZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=eSpItwe0; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=9elements.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-436249df846so14064105e9.3
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 05:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1738934904; x=1739539704; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ljes7wHzysMxiQ2RSq6rzU3Ys17WdodOahX8+S3+D3w=;
        b=eSpItwe09eAUKxzRKhb/GcB36ta32JjYHso7ePQnCOtqy9BUqygtda8eePxC9bXget
         lk0lwieuDLfXITfc3IPt/Njg1ywZY8LYOMOaBAGvaOS3ShYaIPYpCU+fLywaOb3crCJK
         /mePE0RuBCUfewVp8mxicik2o9OZfo7DfUj+8L2o/5yyvwVyisjIrH+wV6ICEdyg5G+2
         k6VvuziUyncnIQ5vI9esEk0/qhtS77OBaQW/jN/xYJaLrGb0/qaw8Dme9tkKGo0botHk
         NuUZIrv+EC4DDygeYoHrIfmLV4pinMCP2jQuIkhFWaxjMAy7EOwvdqtepAbnTeIiB7gf
         f3Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738934904; x=1739539704;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ljes7wHzysMxiQ2RSq6rzU3Ys17WdodOahX8+S3+D3w=;
        b=Lzg2plQhNOtJHwBHv8C6VrRgqgk7mBtxHNlgODiL54f5dH+JOYedTqtzL3xAugSNEA
         ckdWxfZqVWNMze+9+VpMgiD8C+v9JrWie4s7Lh6JIzzsv8GrMFG56MPeP0R2E7FNMjjp
         YSNDaS0kKw+goEVBGKQQoSO9fzxiWQ5AbCZJYbCQyZp50Y2bfJHER94orsBMixBNpIjy
         b49khciOkgOU9L71eSRTlN3Rq48J6GbGNW7A4tvLOaJxdsv06GB99QyBOViIsfJgNhHB
         iMIudMC668tWxOECAXnVf4txlg+VVeur0fPWSHwRaOfvvQ+sAqd8LcF3Vj67xya+dkZ4
         z7OA==
X-Forwarded-Encrypted: i=1; AJvYcCUtnkuEmigpiCfclxXaimokUCblcTMRn8MR7aa5PUwMGCC73HprqzrdNXhB4oyDdkAVOeeJIk4V1IpM@vger.kernel.org
X-Gm-Message-State: AOJu0YyxSll+s42G2bKR+Wa+ejUCBPAFrxi02EGTSeJuGk1wx+DHyuDN
	5AcFEtYyixkm/IXKcV8A4pKL2wsPXHlyItUh6as6TYBb6DjZp+DRkGLZW5penKg=
X-Gm-Gg: ASbGncuioje75fx8GMBQWLlaRjPuMTmMn2ScwTA/q5EJAkMELIgoKedyqGRh8j9pM21
	aInW7oOnuYgh8iWiV5G4j18nvbh4ilSvQwo5Wg+tZoxHUcoB3xzi6GTA0yFbpTf//D78zfBjFqQ
	XLVcNT8N0YaoR657vOtbIXJnG0+vm0H0DhGuc4bXCkrlJ8YtJQH1mKehSiuziD9UAom3lC7GQ/S
	3I3ZcW5bMKxXAKY7Vs/2gmSwO4JsLanjkmkKGjTUF21LhqNaYLyKdNBmq044gTOYExFBTDU0jII
	Oa66Gmcpu84Um9gdVChO+PTv9fCjbwwimi360fwmnvdCIcEypyNt0El8rPkBiUqSweAsO0PTfZ6
	ZFDZZakkjPiI=
X-Google-Smtp-Source: AGHT+IGB4XJKYpEGae7tPR5GuQ2osyg0LoIfkHVlKh5g+8ClsDOeUgh83BithY47hmF8ctYqNIpOjw==
X-Received: by 2002:a05:600c:4e55:b0:434:a7f1:6545 with SMTP id 5b1f17b1804b1-439249c384fmr25835735e9.27.1738934903804;
        Fri, 07 Feb 2025 05:28:23 -0800 (PST)
Received: from stroh80.lab.9e.network (ip-078-094-000-050.um19.pools.vodafone-ip.de. [78.94.0.50])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dc6b89ef5sm2641562f8f.31.2025.02.07.05.28.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 05:28:23 -0800 (PST)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Guenter Roeck <linux@roeck-us.net>,
	broonie@kernel.org,
	conor@kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: linux-hwmon@vger.kernel.org,
	Naresh Solanki <naresh.solanki@9elements.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] ARM: dts: aspeed: sbp1: Align regulator node with Infineon ir38060
Date: Fri,  7 Feb 2025 18:58:04 +0530
Message-ID: <20250207132806.3113268-2-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250207132806.3113268-1-naresh.solanki@9elements.com>
References: <20250207132806.3113268-1-naresh.solanki@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The PMBus driver expects a regulator node, which was missing in the
board's device tree. This was corrected in the latest device binding
update for ir38060.yaml.

Update the board's DT binding accordingly to align with the fixed
device binding and ensure proper regulator support.

Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
Changes in V2:
1. Update commit message
---
 .../boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts   | 124 +++++++++++-------
 1 file changed, 80 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
index 8d98be3d5f2e..34f3d773a775 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-sbp1.dts
@@ -1838,13 +1838,17 @@ i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pvcore_nic2: ir38263-pvcore-nic2@40 {
+			ir38263_pvcore_nic2: ir38263-pvcore-nic2@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "pvcore_nic2";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					pvcore_nic2: vout {
+						regulator-name = "pvcore_nic2";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -1853,13 +1857,17 @@ i2c@3 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pvcore_nic1: ir38263-pvcore-nic1@40 {
+			ir38263_pvcore_nic1: ir38263-pvcore-nic1@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "pvcore_nic1";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					pvcore_nic1: vout {
+						regulator-name = "pvcore_nic1";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -1874,13 +1882,17 @@ i2c@5 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			p3v3_nic: ir38263-p3v3-nic@40 {
+			ir38263_p3v3_nic: ir38263-p3v3-nic@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "p3v3_nic";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					p3v3_nic: vout {
+						regulator-name = "p3v3_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -1889,13 +1901,17 @@ i2c@6 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			p1v2_nic: ir38263-p1v2-nic@40 {
+			ir38263_p1v2_nic: ir38263-p1v2-nic@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "p1v2_nic";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					p1v2_nic: vout {
+						regulator-name = "p1v2_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -1904,13 +1920,17 @@ i2c@7 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			p1v8_nic: ir38263-p1v8-nic@40 {
+			ir38263_p1v8_nic: ir38263-p1v8-nic@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "p1v8_nic";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					p1v8_nic: vout {
+						regulator-name = "p1v8_nic";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 	};
@@ -2070,13 +2090,17 @@ i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			p1v05_pch_aux: ir38263-p1v05-pch-aux@40 {
+			ir38263_p1v05_pch_aux: ir38263-p1v05-pch-aux@40 {
 				compatible = "infineon,ir38263";
 				reg = <0x40>;
 
-				regulator-name = "p1v05_pch_aux";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					p1v05_pch_aux: vout {
+						regulator-name = "p1v05_pch_aux";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -2085,13 +2109,17 @@ i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			p1v8_pch_aux: ir38060-p1v8-pch-aux@40 {
+			ir38060_p1v8_pch_aux: ir38060-p1v8-pch-aux@40 {
 				compatible = "infineon,ir38060";
 				reg = <0x40>;
 
-				regulator-name = "p1v8_pch_aux";
-				regulator-enable-ramp-delay = <2000>;
-				vin-supply = <&p12v>;
+				regulators {
+					p1v8_pch_aux: vout {
+						regulator-name = "p1v8_pch_aux";
+						regulator-enable-ramp-delay = <2000>;
+						vin-supply = <&p12v>;
+					};
+				};
 			};
 		};
 
@@ -3596,34 +3624,42 @@ i2c@1 {
 		reg = <1>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-		p5v_aux: ir38263-p5v-aux@40 {
+		ir38263_p5v_aux: ir38263-p5v-aux@40 {
 			compatible = "infineon,ir38263";
 			reg = <0x40>;
 
-			regulator-name = "p5v_aux";
-			regulator-enable-ramp-delay = <2000>;
-			vin-supply = <&p12v>;
-			vbus-supply = <&p3v3_bmc_aux>;
-			regulator-always-on;
-			regulator-boot-on;
+			regulators {
+				p5v_aux: vout {
+					regulator-name = "p5v_aux";
+					regulator-enable-ramp-delay = <2000>;
+					vin-supply = <&p12v>;
+					vbus-supply = <&p3v3_bmc_aux>;
+					regulator-always-on;
+					regulator-boot-on;
+				};
+			};
 		};
 	};
 	i2c@2 {
 		reg = <2>;
 		#address-cells = <1>;
 		#size-cells = <0>;
-		p3v3_aux: ir38263-p3v3-aux@40 {
+		ir38263_p3v3_aux: ir38263-p3v3-aux@40 {
 			compatible = "infineon,ir38263";
 			reg = <0x40>;
 
-			vin-supply = <&p12v>;
-			regulator-name = "p3v3_aux";
-			/*
-			 * 2msec for regulator + 18msec for board capacitance
-			 * Note: Every IC has a PTC which slowly charges the bypass
-			 * cap.
-			 */
-			regulator-enable-ramp-delay = <200000>;
+			regulators {
+				p3v3_aux: vout {
+					regulator-name = "p3v3_aux";
+					/*
+					 * 2msec for regulator + 18msec for board capacitance
+					 * Note: Every IC has a PTC which slowly charges the bypass
+					 * cap.
+					 */
+					vin-supply = <&p12v>;
+					regulator-enable-ramp-delay = <200000>;
+				};
+			};
 		};
 	};
 	i2c@3 {
-- 
2.42.0


