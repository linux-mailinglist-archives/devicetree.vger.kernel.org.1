Return-Path: <devicetree+bounces-24187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9BB80E538
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 550132822A9
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8063817983;
	Tue, 12 Dec 2023 07:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Djqrb1M6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com [IPv6:2607:f8b0:4864:20::52a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A62F11F;
	Mon, 11 Dec 2023 23:54:27 -0800 (PST)
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5c21e185df5so4466541a12.1;
        Mon, 11 Dec 2023 23:54:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367666; x=1702972466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZR87eIuDn9C0HsT6AC1CHUaEI+JGnco8C87tfDzAy1Q=;
        b=Djqrb1M6Plqw+TpH4E3GjvtDloKEkXCerliNIBhAthMt4nXv2czV6mlpetZThvaVpZ
         1vOjnLfyjUHXHY694YWgY2AKJggYu6txyR6qjl+s1GmWoJ4+J/KH4ShaMakSiSrefwvZ
         VMyyV7PNnubGuotjJ6UUtGyyqY6H+qwoPwWorwc82mtdaMAjosTtOVyBN8rlqQk+1s9b
         SpuR5FPJbEZtoe0l06UbIpEFej5FjTacKC6b4+wMl3az0Y65lkVJe6LRted/h+ucj8Cv
         7Y59Shq82J/5CXQ3XgMRWq3wmTa0S18CIrvyEsHags7D9eUPHyDDvc1OkA2HgsImncXD
         lfOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367666; x=1702972466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZR87eIuDn9C0HsT6AC1CHUaEI+JGnco8C87tfDzAy1Q=;
        b=fdiE3Et/MqDxp07+DULhB9q8axNOtsWjdri0dg3HlAdvrncJChhyHeID3Q3NBn1n7O
         G0P2bLyjHmkvEq6AmJRQitqXL1G2yFo2llmuFSedG5Ygg7jwe2jhDrFrhpdgAenqMtYx
         BN/TDda6Y8m5r0lPKZNxqebL7R0vSfu1MqIaYNlQHOxAw5qTvRUTE0ce7z1lMDnkh7pQ
         3A753asnjT/8Tcd78OQRCcg3KUbNZP3g50to/LKayszeBNesWDdibXL93VIQLm/JPFhJ
         0Dkfe4/7p4elb14TW5wXoHAJ1lutp6M0A75LE31wKhsWCKluqz6bpJadbvvmrWJKtsXd
         W2gQ==
X-Gm-Message-State: AOJu0YwLHKhyeJ5+TAcj6KAFpNSBHpDNy/HU3KmKBgNT2D7boZ8PVMq3
	RMlN0M0wz9JQ/eI1Y2obiSuyN8Z7jFY=
X-Google-Smtp-Source: AGHT+IFfyvBm3LnqNo7atzJ1xVUp4Yr9OqqLlbZGbP/nazODJ02yLWDVkfZj65sI030MwL8J6JU4fQ==
X-Received: by 2002:a05:6a20:3d08:b0:18f:97c:9766 with SMTP id y8-20020a056a203d0800b0018f097c9766mr8171271pzi.78.1702367666749;
        Mon, 11 Dec 2023 23:54:26 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:26 -0800 (PST)
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
Subject: [PATCH 08/11] ARM: dts: aspeed: minerva: add fan rpm controller
Date: Tue, 12 Dec 2023 15:51:57 +0800
Message-Id: <20231212075200.983536-9-yangchen.openbmc@gmail.com>
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

Add fan rpm controller max31790 on all bus of FCB.

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 .../aspeed/aspeed-bmc-facebook-minerva.dts    | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index f4cb5ef72310..c7445c819baf 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -158,6 +158,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		imux17: i2c@1 {
@@ -169,6 +176,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		imux18: i2c@2 {
@@ -180,6 +194,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		imux19: i2c@3 {
@@ -191,6 +212,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		imux20: i2c@4 {
@@ -202,6 +230,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 
 		imux21: i2c@5 {
@@ -213,6 +248,13 @@ eeprom@50 {
 				compatible = "atmel,24c128";
 				reg = <0x50>;
 			};
+
+			pwm@5e{
+				compatible = "max31790";
+				reg = <0x5e>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
 		};
 	};
 };
-- 
2.34.1


