Return-Path: <devicetree+bounces-132078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 260DB9F5A9C
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 00:44:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E77F81890580
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 23:44:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B46951F8F10;
	Tue, 17 Dec 2024 23:44:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nBDcfsCi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3539C1E489
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 23:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734479051; cv=none; b=tl4IUaiFJgJJAWMKOE7TZhTLIkhHwNG6VyBn+Qc1b3NZy8AuAfFe5cTbMokfeGPcvvhxTqVth3aF+C/P4RgfEVvARs0U6NsHrccxOwt5+GQf9sQdvkPOK8C7c08uytfTXQ2rjL9jfFYEbgeNVmvlAfx5dCh29dXOjxRHwe5i+N8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734479051; c=relaxed/simple;
	bh=dRLARNIVgHqkgzddzQc1N8nfsoXPdZ9tNKmHh7e8T6g=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=oZukfnRiEiOJ7sUqQIpRowx6BfNE6gxeoVsh449OFScqUIm8BI5mBDyKAhowTwUtPVCVTKzhf0TkjB0KdGLRKveJgmuQj/TqlUPw2dsTPqnC20I9DpkxWdPQqFt2qJKZdQC90NTyZs0Up/IUnCmcS+f9nVg/4v+bDxiTuAtu2i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nBDcfsCi; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2162c0f6a39so1956815ad.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 15:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734479049; x=1735083849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UVhjLtK52HqccD+5q+IAAIu0zKotPYRO7A4TSqMJjIE=;
        b=nBDcfsCisbHP57dRoWcmK/Y9UYcerF0cLKGJSuldQfVokCTDnsw25/M+kksrm7HLjB
         09k1vO8KsconpM+Yy+J284ZGDsTo4NdS07vJOy2QbNVD1TVNYHUtLbVAiSkEDwPLnoPZ
         r09ndCsv33y6RCgH8YEUDjwJVKkVTA3K9RE/5m8Hy8UKFqGJeS20imdPh/PcdG9xeze8
         InVtPl80NBkamM2Fm+WOrXVg21BD4Q+EUkjMiQNQaC1l0r5RodhizgxiPxxOIiWZwc/t
         WrY4OkaRIezMVOqS76mAsa6Z0j6kHizZC2t+PuBarstySfRGyXm+yoDbailMDm8gtZ5B
         qB2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734479049; x=1735083849;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UVhjLtK52HqccD+5q+IAAIu0zKotPYRO7A4TSqMJjIE=;
        b=vgrqjBtYDNBpCLpxhrQ54W1gFU7NuculUsSwXDcMhOwM3OhMGg4U9K9ohCGC2FbWKE
         sU1JlBjXJCoE+A+K2HmeBKoEjdYvrScDE9XxqnE6D7Y4pdMw1/9VHqQ2qjuSgD4nle0t
         wjrVZutX//IB1r0ycCGNTCWMIYMrPq0L5ItEvPDaqdrxSDeMjrO2py+/Qtiv6QqoEwe6
         TxN+cY+dd0NqyBPxRcRytEiba9cYx/YQWRkZJKKvswYy6Sul02cz3csNXa72B/AKuYEd
         b7wAmAPiI0dFbGIRa0sx4mkNv0IyeHIKP/9zIRV4uYI+/+B3jq8b15OkBiriK3jEXtKN
         +G8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuy3wtUHgwvzrEDAg7dralBoLsk2MAMaWmFyZIees7GUouv0immO+AZeHFlCxVXJZdDzSKkOLlwkbu@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+gnYTWt1uvSum6933sLq+YsX7ot8y1TU4xLT7wMRfZc2RIlHI
	mdQU7e7kTY45Dcwoqt8vVyZTToRKDaa6gtqHEL2H0LpTa4fXc4V3
X-Gm-Gg: ASbGncsMuGOQbwJwT99p6wEX5wC1eBMZlQuzLM1mbLGhJxtvyIs4avlj2Bu/4MfjOQo
	GwxlKMkEzMBbsc2HeoVYSkSFdi/Ek/WK8Db8GtcylfUiPqoxw32PPBDrRkq0PEcUa1CwZLUaH9x
	aXfxL5T60nF/Lo26PT8EfkX5u+nbiGOMh1rp6QsPoRj7mruIy7HGKvQmElTAPKf84DPH3IwaO6i
	VcE+hZ9tiEl6BP2RihvUmH2rPP1DCqd/UxTbbTetCs/vtRjoev6BiZNjtsCiieLgzTuag==
X-Google-Smtp-Source: AGHT+IEOORShiG8XXoYl2/Cqm8zfdvBzPJZnXZxkuNnjr6iPaes5DNRpLHtKXXX/KVEXVIFuLKigLw==
X-Received: by 2002:a17:902:f646:b0:216:1079:82bb with SMTP id d9443c01a7336-218c9262ef5mr94735665ad.19.1734479049436;
        Tue, 17 Dec 2024 15:44:09 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:9c22:b0c6:8519:2b7])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1e720fbsm64746865ad.269.2024.12.17.15.44.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 15:44:08 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] ARM: dts: imx: 
Date: Tue, 17 Dec 2024 20:43:51 -0300
Message-Id: <20241217234351.71130-1-festevam@gmail.com>
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


