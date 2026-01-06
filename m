Return-Path: <devicetree+bounces-252114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEF7CFB18A
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 22:37:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 37D363005E86
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 21:31:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220522FFF8C;
	Tue,  6 Jan 2026 21:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jL0mkEce"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE99D224B15;
	Tue,  6 Jan 2026 21:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767735118; cv=none; b=uCXE97ivUvZrtLOEotAdHtKvfii7nFYwHqVywsQibOS5PLQ66npUTBX0cnU4zfUNoxqG6/kPcaljRkwbwlENM6QCk3zvgzg7tCwBYzXmFeMQhVksyS0y+lU9P5NsAG0WwnONrW9VXCr8Lu8h8UnphOHeyCdx2yEZ2XhzPBrAGEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767735118; c=relaxed/simple;
	bh=c0S+UPILWQZ/bfTmY0vB12LguAXEd/SuBL+v3igeD1U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=G+EYG1qR7AJfBNiKF6s05+RqUvWsrUpWWiYQiFlxFzhZO0o7B54HJ+e1eNebmbQlWWQKPnslSzs05U2bbUe3WGoyWLlnTRwxRLj0T3+lHIR23G1KBsjcRPHIR93a/BDbK+magaBJmf+WprbR35gSlIAGSj8Q33uCO9OPtrnZCEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jL0mkEce; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5C3B4C116C6;
	Tue,  6 Jan 2026 21:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767735117;
	bh=c0S+UPILWQZ/bfTmY0vB12LguAXEd/SuBL+v3igeD1U=;
	h=From:To:Cc:Subject:Date:From;
	b=jL0mkEceaEmkQMi7RsnupTDbuwGDxnHWFEKBV4+1cihn6nHCd/hFhNNB1wWCV9Ms4
	 P9jdDj+Wd8VqHCbvQC70qQtN87CwUjSn5VBRysgkS3WD6zj1DvVLO0V/Lcgw6pSbEP
	 7WOfcUjN4vzFaG+RAs3lt5z5OUHopp0yTgnmQ6a91LATBLhEpOpjSiREDn5/pjsm/U
	 xwNjsv+xwgWse8vlOQq1uY5ssLSoyUApBxTrcuVzs5NYxrW44qFLBQXME/MA5qBua5
	 DkO+SWgfJshZc36iavjQOJCw9cBWHO3EBrrQyyBwfgoLj6UngEpB3WZ3vgxOqjULUy
	 8UvbOFtZN+znQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Eddie James <eajames@linux.ibm.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: aspeed: ibm: Use non-deprecated AT25 properties
Date: Tue,  6 Jan 2026 15:31:51 -0600
Message-ID: <20260106213153.2766411-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The at25,* properties have been deprecated since 2012. These platforms
weren't upstream until 2020 and 2023, so it should be safe to switch
over to the "new" properties and just drop the deprecated ones.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../dts/aspeed/aspeed-bmc-ibm-everest.dts     | 128 +++++++++---------
 .../arm/boot/dts/aspeed/ibm-power10-dual.dtsi |  64 ++++-----
 .../arm/boot/dts/aspeed/ibm-power10-quad.dtsi |  64 ++++-----
 3 files changed, 128 insertions(+), 128 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
index 5a0975d52492..561633d31039 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-ibm-everest.dts
@@ -2806,13 +2806,13 @@ cfam4_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -2823,13 +2823,13 @@ cfam4_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -2840,13 +2840,13 @@ cfam4_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -2857,13 +2857,13 @@ cfam4_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
@@ -3181,13 +3181,13 @@ cfam5_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3198,13 +3198,13 @@ cfam5_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3215,13 +3215,13 @@ cfam5_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3232,13 +3232,13 @@ cfam5_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
@@ -3556,13 +3556,13 @@ cfam6_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3573,13 +3573,13 @@ cfam6_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3590,13 +3590,13 @@ cfam6_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3607,13 +3607,13 @@ cfam6_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
@@ -3931,13 +3931,13 @@ cfam7_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3948,13 +3948,13 @@ cfam7_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3965,13 +3965,13 @@ cfam7_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -3982,13 +3982,13 @@ cfam7_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
diff --git a/arch/arm/boot/dts/aspeed/ibm-power10-dual.dtsi b/arch/arm/boot/dts/aspeed/ibm-power10-dual.dtsi
index 06fac236773f..79eaf442c5bf 100644
--- a/arch/arm/boot/dts/aspeed/ibm-power10-dual.dtsi
+++ b/arch/arm/boot/dts/aspeed/ibm-power10-dual.dtsi
@@ -88,13 +88,13 @@ cfam0_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -105,13 +105,13 @@ cfam0_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -122,13 +122,13 @@ cfam0_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -139,13 +139,13 @@ cfam0_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
@@ -257,13 +257,13 @@ cfam1_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -274,13 +274,13 @@ cfam1_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -291,13 +291,13 @@ cfam1_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -308,13 +308,13 @@ cfam1_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
diff --git a/arch/arm/boot/dts/aspeed/ibm-power10-quad.dtsi b/arch/arm/boot/dts/aspeed/ibm-power10-quad.dtsi
index 9501f66d0030..a54be7d0af0b 100644
--- a/arch/arm/boot/dts/aspeed/ibm-power10-quad.dtsi
+++ b/arch/arm/boot/dts/aspeed/ibm-power10-quad.dtsi
@@ -739,13 +739,13 @@ cfam2_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -756,13 +756,13 @@ cfam2_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -773,13 +773,13 @@ cfam2_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -790,13 +790,13 @@ cfam2_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
@@ -1114,13 +1114,13 @@ cfam3_spi0: spi@0 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -1131,13 +1131,13 @@ cfam3_spi1: spi@20 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -1148,13 +1148,13 @@ cfam3_spi2: spi@40 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 
@@ -1165,13 +1165,13 @@ cfam3_spi3: spi@60 {
 				#size-cells = <0>;
 
 				eeprom@0 {
-					at25,byte-len = <0x80000>;
-					at25,addr-mode = <4>;
-					at25,page-size = <256>;
-
 					compatible = "atmel,at25";
 					reg = <0>;
 					spi-max-frequency = <1000000>;
+
+					address-width = <24>;
+					pagesize = <256>;
+					size = <0x80000>;
 				};
 			};
 		};
-- 
2.51.0


