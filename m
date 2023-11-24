Return-Path: <devicetree+bounces-18536-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1537F7072
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:50:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42C46281695
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:50:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42D9A1772D;
	Fri, 24 Nov 2023 09:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P28ZUuDA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEA1E10E4
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:05 -0800 (PST)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a03a9009572so231052666b.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819404; x=1701424204; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TpyMkj9rIOxFufcTixULVIGcsYSV0aiDmd49Bw6R3/g=;
        b=P28ZUuDABaWgCVP8QMll4OdkFrI8nCp71hECCok2McoozZh8oTTolyYkhl3KejoGv9
         Mn00wiBZrCzHKtzvXXcX0Z8PofJTXFjuWb4B49XOvK6CH+5If5IKPQpcbhsAxhNZby0w
         Bbqch2DYmU60zNNAOPxllcsgFK5eA9TwDpbb7y22I4qPeVtaLwovVvEqLYBZ8h35KgWN
         5vtefFlouicLgKTrcvsCkhpuk3vgLrTeJqGgIVb4C6o54X0WeLaCKbCWcK+lTJMgRP3+
         st+3DqZcAxToajvvA2Lr3P+0fMLB2Ee4r5fI6f1EFdzbuR7esyaLu7d2MzC+BX1fqqIq
         6BBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819404; x=1701424204;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TpyMkj9rIOxFufcTixULVIGcsYSV0aiDmd49Bw6R3/g=;
        b=MyFA7LzSvf1GMXGoB3SKySiC5OSmBxl128FFDAa25Kw6TcT3sJgkhUGx5avAlSvSwR
         kbzR2QLfSKJ5OIeNxK5Vu7nG1HHOmgTWojNoss2D6tp2wHL5j6yzon01Y1UWjNXalO9H
         /7wvVJZ2XjlQ9CF6gMAnrT2YrcH1TOEEmES7zU4Q2V8neTquaqznUDoX2F43o4txL4TX
         OsaETRDfq6B/ZklYgvOiaUHoz3TOp9CdfloB8U4nCosZ2qQt1jbQmLZtLy3kyaDUFIwD
         YA/ulYRhid3zB0g8wj11tQrB+7t/ha4w5aQC2+q65DKiyxlMfnWV3DmRiufP93slP1aj
         9vpA==
X-Gm-Message-State: AOJu0YxuoNdeh9vp0IKr4wdUz9RuYdQml5Xa4PeruGFjvvDuiQFTN40h
	8163sixFKq4nqSKbSVfEcMB0QQ==
X-Google-Smtp-Source: AGHT+IE44CvRd7huP5K1kbKioWOYzZq53bZNxLqU10LfWLL1Nl2hIXqt10gjOxDR28df2LaDRVHVkg==
X-Received: by 2002:a17:907:2993:b0:a00:185a:a150 with SMTP id eu19-20020a170907299300b00a00185aa150mr1074654ejc.38.1700819404352;
        Fri, 24 Nov 2023 01:50:04 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id t27-20020a1709063e5b00b009fd727116b4sm1839941eji.129.2023.11.24.01.50.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:03 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Nishanth Menon <nm@ti.com>,
	Santosh Shilimkar <ssantosh@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] ARM: dts: ti: keystone: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:49:59 +0100
Message-Id: <20231124095000.58487-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/ti/keystone/keystone-k2e-netcp.dtsi  | 6 +++---
 arch/arm/boot/dts/ti/keystone/keystone-k2g-evm.dts     | 2 +-
 arch/arm/boot/dts/ti/keystone/keystone-k2g-netcp.dtsi  | 6 +++---
 arch/arm/boot/dts/ti/keystone/keystone-k2hk-evm.dts    | 2 +-
 arch/arm/boot/dts/ti/keystone/keystone-k2hk-netcp.dtsi | 6 +++---
 arch/arm/boot/dts/ti/keystone/keystone-k2l-netcp.dtsi  | 6 +++---
 6 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2e-netcp.dtsi b/arch/arm/boot/dts/ti/keystone/keystone-k2e-netcp.dtsi
index bff73a0ed10b..5c88a90903b8 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2e-netcp.dtsi
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2e-netcp.dtsi
@@ -36,9 +36,9 @@ queue-pools {
 		qpend {
 			qpend-0 {
 				qrange = <658 8>;
-				interrupts =<0 40 0xf04 0 41 0xf04 0 42 0xf04
-					     0 43 0xf04 0 44 0xf04 0 45 0xf04
-					     0 46 0xf04 0 47 0xf04>;
+				interrupts = <0 40 0xf04 0 41 0xf04 0 42 0xf04
+					      0 43 0xf04 0 44 0xf04 0 45 0xf04
+					      0 46 0xf04 0 47 0xf04>;
 			};
 			qpend-1 {
 				qrange = <528 16>;
diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2g-evm.dts b/arch/arm/boot/dts/ti/keystone/keystone-k2g-evm.dts
index 7bfc80f1af26..f0ddbbcdc972 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2g-evm.dts
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2g-evm.dts
@@ -9,7 +9,7 @@
 #include "keystone-k2g.dtsi"
 
 / {
-	compatible =  "ti,k2g-evm", "ti,k2g", "ti,keystone";
+	compatible = "ti,k2g-evm", "ti,k2g", "ti,keystone";
 	model = "Texas Instruments K2G General Purpose EVM";
 
 	memory@800000000 {
diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2g-netcp.dtsi b/arch/arm/boot/dts/ti/keystone/keystone-k2g-netcp.dtsi
index f6306933ff42..7109ca031617 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2g-netcp.dtsi
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2g-netcp.dtsi
@@ -37,9 +37,9 @@ queue-pools {
 		qpend {
 			qpend-0 {
 				qrange = <77 8>;
-				interrupts =<0 308 0xf04 0 309 0xf04 0 310 0xf04
-					     0 311 0xf04 0 312 0xf04 0 313 0xf04
-					     0 314 0xf04 0 315 0xf04>;
+				interrupts = <0 308 0xf04 0 309 0xf04 0 310 0xf04
+					      0 311 0xf04 0 312 0xf04 0 313 0xf04
+					      0 314 0xf04 0 315 0xf04>;
 				qalloc-by-id;
 			};
 		};
diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2hk-evm.dts b/arch/arm/boot/dts/ti/keystone/keystone-k2hk-evm.dts
index 206df8a8d9dd..8dfb54295027 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2hk-evm.dts
@@ -10,7 +10,7 @@
 #include "keystone-k2hk.dtsi"
 
 / {
-	compatible =  "ti,k2hk-evm", "ti,k2hk", "ti,keystone";
+	compatible = "ti,k2hk-evm", "ti,k2hk", "ti,keystone";
 	model = "Texas Instruments Keystone 2 Kepler/Hawking EVM";
 
 	reserved-memory {
diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2hk-netcp.dtsi b/arch/arm/boot/dts/ti/keystone/keystone-k2hk-netcp.dtsi
index 8a421c65f920..c2ee775eab6a 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2hk-netcp.dtsi
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2hk-netcp.dtsi
@@ -49,9 +49,9 @@ queue-pools {
 		qpend {
 			qpend-0 {
 				qrange = <658 8>;
-				interrupts =<0 40 0xf04 0 41 0xf04 0 42 0xf04
-					     0 43 0xf04 0 44 0xf04 0 45 0xf04
-					     0 46 0xf04 0 47 0xf04>;
+				interrupts = <0 40 0xf04 0 41 0xf04 0 42 0xf04
+					      0 43 0xf04 0 44 0xf04 0 45 0xf04
+					      0 46 0xf04 0 47 0xf04>;
 			};
 			qpend-1 {
 				qrange = <8704 16>;
diff --git a/arch/arm/boot/dts/ti/keystone/keystone-k2l-netcp.dtsi b/arch/arm/boot/dts/ti/keystone/keystone-k2l-netcp.dtsi
index 5ec6680a533d..1afebd7458c1 100644
--- a/arch/arm/boot/dts/ti/keystone/keystone-k2l-netcp.dtsi
+++ b/arch/arm/boot/dts/ti/keystone/keystone-k2l-netcp.dtsi
@@ -36,9 +36,9 @@ queue-pools {
 		qpend {
 			qpend-0 {
 				qrange = <658 8>;
-				interrupts =<0 40 0xf04 0 41 0xf04 0 42 0xf04
-					     0 43 0xf04 0 44 0xf04 0 45 0xf04
-					     0 46 0xf04 0 47 0xf04>;
+				interrupts = <0 40 0xf04 0 41 0xf04 0 42 0xf04
+					      0 43 0xf04 0 44 0xf04 0 45 0xf04
+					      0 46 0xf04 0 47 0xf04>;
 			};
 			qpend-1 {
 				qrange = <528 16>;
-- 
2.34.1


