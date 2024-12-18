Return-Path: <devicetree+bounces-132083-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5579F5AF2
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 01:04:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BC8CB162674
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 00:04:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EED140E5F;
	Wed, 18 Dec 2024 00:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvUST9e4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F24BB14F9FB
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 00:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734480162; cv=none; b=p0XR5EqKBT2mIe2nfr8HQux/BLJRFL2Iv3tOCxL0j8uPbADL/UPZd2qOzp0oUg4RWzyDDQLkF57yZ2EZ+4QBFkU4c8O2frzycNKaz9OuA6758OSS+64Lq1tRWK4vHurkGxf2G5N250nEM2gJQvF6QE2vGEUtUSkliIYvgQfwNvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734480162; c=relaxed/simple;
	bh=/QwZG5NKGp6y1Ffp3J1rGnMNXyiFYyVMqC6USJJYIKk=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=F8/BTqaB/J5c3zWJ8ej2oSolOOhLdY+sP9a55VhuynnEoUMXfCviHp+FQ2701UYKIzc1YwHggAT+7F4dojpaDLAq8rZLFYhHw+YJYcNpolnqvISP6bKIi1ClnPzW8rBJqvO9GMOfPXYduZFrFX6o0tOdfO4U+Ydw/D5RHc1p8XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvUST9e4; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2164b662090so47398725ad.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 16:02:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734480160; x=1735084960; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t99gi7wKTizFuiwTq7PjwijgNkljtHLeLL3wkOetILI=;
        b=LvUST9e44nbXCHBjf2nbZfnznBRry6cnZDui7IEbxlZ5LeICXMU2do6usbJiLhPwfc
         F8YMX5+1PFSddZCCa1BvabXTVAjyS38rjqzxD+6oEoRDLLrh06RR2h/7kxEOaKQAVPfq
         zsMxbbU71qTnnFL8Q4cO9sJuHwbPHNOu8bAEegukbzF3S+uw939SmBPQ8LwsWYPgwfOY
         LNhkejGiqJo3DLEf5aqWn7iyhNgnCXK0JShccCGeghTCdu7AJ66ukoNzxFVKQu4urK8a
         qh/dMM2iGiu/CLfMGNmqeDC1PI2/WmC4AOogzKwcS+ggY499+CJWnwSLiLLwc8VL4K91
         l9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734480160; x=1735084960;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t99gi7wKTizFuiwTq7PjwijgNkljtHLeLL3wkOetILI=;
        b=AyOAFFsolMV/ZguTmn+fGijx6kUlc+r17O2HMmC2kMy+J4eQ6LVcgh5Ni37UcnyCY/
         C9KsFHTHjifNhjp/IXmcSsbtvikzP3xM3mJF6qBN/wAPc7A8YC+gorw4NTOUIsQGGjBX
         ET065qhU8n/+N1pFMpSbFWaqjBJ+YLeFrGpGxpOWUT7iWihPLAEJ42InjpFrszHQX5lI
         IzpvAwbq0ppMXOcky6G7+BthgBSv7cUmLAdoEy3ssMyIdjWyNR4ZdYOKVfUDNZW+/Fk1
         norEJnWAovpafkx8XZ3d4eMfsMHTbNPH/e/ECT8/Uy0OZaw/Z0xGrWNcE9EDS9Byi0vy
         0OKg==
X-Forwarded-Encrypted: i=1; AJvYcCWEQrS3QqRSPcP7rOkyJ9o6Im530wGSG1+vAklrI+Ak1nm0CTHTw6a00YHjjBAWG9upQL261FnBxeRp@vger.kernel.org
X-Gm-Message-State: AOJu0YxK7Hexe1zZkwF8sMU5Q1BUjZDVCR2qTsSmRrfOraafprXeyD0y
	uqOa3F5tC8qzz5w+3JzTtPJe8Wj3MY40UTVyQaLWazlUu8IqiH+Gkv68GA==
X-Gm-Gg: ASbGnct2YVbXADnr+mULOIgYcwyj4Su7Q0uETf+eKFqyJRQREVV/oQQVIl0X12ZolzC
	ihTnWD/flnb81WhAC7uP3gLcOHnMgoOddFct86zKFKGNdY3q0zciYWZQntvdtEnFRCIdQD1+2/C
	0s8hcIxxnUkHQdn2wuqavxT7qPBp6J80Eo5Ik9l4QGkEww7DKk6mvblNKgXC79WDT8/P8BLgBNP
	tXf9k2D75fBzpsBAj7F5AL9J39eb0UtwfaaBSQ7Pn1AiuqG6GAFokWrY5Mz4NzhHBdWiA==
X-Google-Smtp-Source: AGHT+IGeC6FgH3X6Be4rp6wQPskxuhh/LlFSfe4W1ii/eQE70jRdVxcaUGOa2QTgpUGoXlzRMIGdEA==
X-Received: by 2002:a17:902:d488:b0:212:996:3536 with SMTP id d9443c01a7336-218d6fca29amr10645515ad.10.1734480160259;
        Tue, 17 Dec 2024 16:02:40 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9c22:b0c6:8519:2b7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e50300sm65217505ad.164.2024.12.17.16.02.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 16:02:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] ARM: dts: imx: Use the correct mdio pattern
Date: Tue, 17 Dec 2024 21:02:32 -0300
Message-Id: <20241218000232.74643-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

mdio-gpio is not a valid pattern according to mdio-gpio.yaml.

Use the generic 'mdio' name to fix the following dt-schema warnings:

'mdio-gpio' does not match '^mdio(-(bus|external))?(@.+|-([0-9]+))?$'

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Fix the Subject.

 arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts      | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51-zii-scu2-mezz.dts | 2 +-
 arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi       | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts b/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
index 7cd17b43b4b2..06545a6052f7 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx51-zii-rdu1.dts
@@ -160,7 +160,7 @@ eeprom@0 {
 		};
 	};
 
-	mdio_gpio: mdio-gpio {
+	mdio_gpio: mdio {
 		compatible = "virtual,mdio-gpio";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_swmdio>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx51-zii-scu2-mezz.dts b/arch/arm/boot/dts/nxp/imx/imx51-zii-scu2-mezz.dts
index 625f9ac671ae..26eb7a9506e4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51-zii-scu2-mezz.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx51-zii-scu2-mezz.dts
@@ -37,7 +37,7 @@ usb_vbus: regulator-usb-vbus {
 		regulator-max-microvolt = <5000000>;
 	};
 
-	mdio_gpio: mdio-gpio {
+	mdio_gpio: mdio {
 		compatible = "virtual,mdio-gpio";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_swmdio>;
diff --git a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
index c1ae7c47b442..aa1adcc74019 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6q-bx50v3.dtsi
@@ -94,7 +94,7 @@ aliases {
 		mdio-gpio0 = &mdio0;
 	};
 
-	mdio0: mdio-gpio {
+	mdio0: mdio {
 		compatible = "virtual,mdio-gpio";
 		gpios = <&gpio2 5 GPIO_ACTIVE_HIGH>, /* mdc */
 			<&gpio2 7 GPIO_ACTIVE_HIGH>; /* mdio */
-- 
2.34.1


