Return-Path: <devicetree+bounces-24186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A56DC80E537
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5B95D1F218BF
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 882511774E;
	Tue, 12 Dec 2023 07:54:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mcNAmg6P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DF0111;
	Mon, 11 Dec 2023 23:54:24 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-5c68b5cf14bso2857758a12.0;
        Mon, 11 Dec 2023 23:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367664; x=1702972464; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6CxPkHqq/wIZgg9po5jZpP4pYsbg0yHu6jwPoFMsG+o=;
        b=mcNAmg6PvbwYUQudpio/nkBKGf6Bn+jSrTSjA6370U8haYTKy5O2BnPv1DD8KVM3YN
         3wdSsX+Zwrg8KaLA9VPMhQcovXQ02/hCNN2Ti+qlX6HO/5x3Oa1+7OvxX78whJgplqj5
         pgC/DCCXsxFAtDdyYkrxBky0um58Pb3QIV/cblT8mL8CPjiYcmLOsJotumNW8RqVemah
         KvKDzlucNiwAXSifwMbb07sYv64vOu+r3bns1E2Ne32+wYyvad6GV9LO/Ctpkvo/j9RL
         A2sAj1lrb6+tmohx5YC2f/jUMHAcAktrQByyc+THQr4uUQoUez+LMBlX36MdGREuWiVV
         Mmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367664; x=1702972464;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6CxPkHqq/wIZgg9po5jZpP4pYsbg0yHu6jwPoFMsG+o=;
        b=d6KuOePlRqA+nvskAEV2zH2FN7Yl0jj8XkRhr5E3SYa6d5BBEWeRUcuNGRyT/MKwF8
         P7hWQKKAGJOhF07yMkZxXEPwwmN9aOjnHtcyu7KenPp1iylnfmbzIYmivubBSsAi+gY9
         6IBFtMSc48tQM8I9qGpTsM0FFOoOcm3bolrpHU3ljcePVm0DX4yOB9B4kQRblh+nyZzC
         jbN2uD2smjwMGcIsCY8QvqfkaxWRs+wJeF0z5PijIi6PjyQkR2txIkZGzJmNpzazBSW2
         IWS3nTU7tluNB7tlU62EHUU3VCNN1Mhckg3CJCNelnTiwTJ7dPj69g3afNbIhrAuMM/H
         ateg==
X-Gm-Message-State: AOJu0YwuZIIkhaastn8CBB7B/mTfGthJYkxx6j3XqjmJe2DWA9qVJ6R1
	w4LAzg6RXhaDknIlF6Yya+4=
X-Google-Smtp-Source: AGHT+IFi4xuDx0PvSb/d3AgUnK4w3nM3LRouAPjCbYv0D1Jskx3o4X4NAUyzv6KHPzZQShn1BJPXxw==
X-Received: by 2002:a17:90b:118d:b0:28a:2fd5:be04 with SMTP id gk13-20020a17090b118d00b0028a2fd5be04mr2365085pjb.96.1702367664023;
        Mon, 11 Dec 2023 23:54:24 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:23 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 07/11] ARM: dts: aspeed: minerva: add bus labels and aliases
Date: Tue, 12 Dec 2023 15:51:56 +0800
Message-Id: <20231212075200.983536-8-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add bus labels and aliases for the fan control board.

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-minerva.dts    | 22 ++++++++++++++-----
 1 file changed, 16 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index f2a48033ac5c..f4cb5ef72310 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -12,6 +12,16 @@ / {
 
 	aliases {
 		serial5 = &uart5;
+		/*
+		 * PCA9548 (2-0077) provides 8 channels connecting to
+		 * 6 pcs of FCB (Fan Controller Board).
+		 */
+		i2c16 = &imux16;
+		i2c17 = &imux17;
+		i2c18 = &imux18;
+		i2c19 = &imux19;
+		i2c20 = &imux20;
+		i2c21 = &imux21;
 	};
 
 	chosen {
@@ -139,7 +149,7 @@ i2c-mux@77 {
 		#size-cells = <0>;
 		i2c-mux-idle-disconnect;
 
-		i2c@0 {
+		imux16: i2c@0 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <0>;
@@ -150,7 +160,7 @@ eeprom@50 {
 			};
 		};
 
-		i2c@1 {
+		imux17: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
@@ -161,7 +171,7 @@ eeprom@50 {
 			};
 		};
 
-		i2c@2 {
+		imux18: i2c@2 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <2>;
@@ -172,7 +182,7 @@ eeprom@50 {
 			};
 		};
 
-		i2c@3 {
+		imux19: i2c@3 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <3>;
@@ -183,7 +193,7 @@ eeprom@50 {
 			};
 		};
 
-		i2c@4 {
+		imux20: i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
@@ -194,7 +204,7 @@ eeprom@50 {
 			};
 		};
 
-		i2c@5 {
+		imux21: i2c@5 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <5>;
-- 
2.34.1


