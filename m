Return-Path: <devicetree+bounces-56062-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 009CC897922
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 21:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9EA841F20EF5
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 19:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF6BD15530C;
	Wed,  3 Apr 2024 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZJ5Dg43g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF341401C
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 19:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712173233; cv=none; b=oMOp/Eq+H6LeGrtopf++1YYy0acImsHvVfLibwVmh6pVnmlj59Li17Bv8Anl3C6qrUiMQ9+rTdbVH5BUO9ssRwGlPnHa7PgsTJg93fWUHswGZk3VVd4LNiWY6XE53kk6DeGtRngun6dr7AtQA0ClYFhUKLngH6jA/8z0yFshy4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712173233; c=relaxed/simple;
	bh=1K2xGCyv5Pefhe6y1ALvh5+VNVYmYqZa5jFzQ8acTqY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GodSoI/QUnJ0LKMks+7/rw0RVPO+SFmLb4Ytyv8N9FEJA8aKxxExEwTlxYcetEdtWHLZQiDd7475EVLbxh79lTq5A8cn+73THbKOx+K+gHs0fW17fD3UAsUlZxhRH85u/TW3XFnNLfJ+Yt0/lxYe6YfXqkcZmpd894cMaKV0NaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZJ5Dg43g; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6e6ca65edc9so48543b3a.0
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 12:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712173232; x=1712778032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=llk6w1xbo36FK8NAXpID9r5q7rIZNKw4AgxcdG1LUYk=;
        b=ZJ5Dg43gE9fefUOAee8o3hY7AlibghdQ2N9WCRmPqiunDAazfXaF5iYJ0vMWg50M9E
         0FKL/tYTrAsLec16gHRpWdPnQlMrff/nVv90LMNhPcqHrCODmcT9QSogSxiCX8HvpBXK
         p2TsAVsEdArPG/Qv1EIs9s6dDU/bsTly9RBSv88OY6YVYye4VYLh/ytM73tbbrTRnquT
         Jav2Xt6qCVfSOoHT8qrdLe0yq5fh645Z7//v4Idc1iCKPnCZ+PuqfgfN5ywrYLccs28m
         q6w0yYotS4YBeKNEKV9KxeH3CbjGbZ3d2JhDUdKcrX2sK9o6z2AuYIyjzRc3KbcEsZhA
         Rq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712173232; x=1712778032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=llk6w1xbo36FK8NAXpID9r5q7rIZNKw4AgxcdG1LUYk=;
        b=KYdRq+x2XFggzXZC/VZSs/v0kFIPumTzDIQjAQRPBN6PhrZVghF15nfwVxADBn5qPw
         sXcL8cO6C2rM4UDVgIAhQfx8jfvz9kohG1Q4VFk4l8cCJhcQ8HgURBgvxogyA3KF2sBb
         x8hcqRQstxil3tb1O5FiijzLSdwFL8DlspUYOUrgENpqBRnph79yR5fdEKdd6Gf8f41c
         idJ/jmrnnCYufizbfBvsiqSOqLQlHUovd0FKbWqngKJTUB2vHC//aejmVCeKO6ZxMDYu
         VuLbvtr6XdvJ6P8MlqjpL3GZenBynuRZLLuROn6Sxd5KFLMU32TWUJha/6OeRgjplAtg
         CTbw==
X-Forwarded-Encrypted: i=1; AJvYcCWjPSg9rh/VTrMWPbncCHcS/6Quj7VUMHw5xUU57m61rnPyjO3CTpyEg4NQ2Ia2mMnmbIH8j+xeuCytEe59psbLoyeTxcIs/n7J1g==
X-Gm-Message-State: AOJu0YyT3euZqasLKjS38n1Gn/iF0Z3KdMFwg+jrXVGNkcnP/kfpJNti
	QepP0dvvSdaw4EGDyf6g3bYaIB039H9e3EdcR1IeohkhiYNV7c4R
X-Google-Smtp-Source: AGHT+IFgad29zvZFg3yiSxmNaPCYsISHqm3u/OfMRBqAg7EzGILB3Dh3Mb9TXUvyqtQiltkIlmsQYA==
X-Received: by 2002:a05:6a21:9993:b0:1a3:6f51:378a with SMTP id ve19-20020a056a21999300b001a36f51378amr646146pzb.5.1712173231649;
        Wed, 03 Apr 2024 12:40:31 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:dbdb:4185:2ffc:f19b])
        by smtp.gmail.com with ESMTPSA id gh9-20020a056a00638900b006e6857da474sm12574740pfb.178.2024.04.03.12.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 12:40:30 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] arm64: dts: imx8m/qxp: Pass the tcpci compatible
Date: Wed,  3 Apr 2024 16:40:19 -0300
Message-Id: <20240403194019.453253-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

Per nxp,ptn5110.yaml, also pass the fallback "tcpci" compatible
to fix the following dt-schema warning:

 usb-typec@50: compatible: ['nxp,ptn5110'] is too short
	from schema $id: http://devicetree.org/schemas/usb/nxp,ptn5110.yaml#

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi               | 2 +-
 arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts         | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts     | 2 +-
 arch/arm64/boot/dts/freescale/imx8qxp-mek.dts               | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
index 888070b8b287..90d1901df2b1 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dtsi
@@ -395,7 +395,7 @@ adv7535_out: endpoint {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec1>;
 		reg = <0x50>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
index 690da24a4335..9e0259ddf4bc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dtsi
@@ -244,7 +244,7 @@ adv7535_out: endpoint {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec1>;
 		reg = <0x50>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
index a08057410bde..e5d3901f2913 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mp-beacon-kit.dts
@@ -340,7 +340,7 @@ pcieclk: clock-generator@68 {
 &i2c3 {
 	/* Connected to USB Hub */
 	usb-typec@52 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x52>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
index 366693f31992..e92b5d5a66b5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-hummingboard-pulse.dts
@@ -42,7 +42,7 @@ &i2c2 {
 	status = "okay";
 
 	typec_ptn5100: usb-typec@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x50>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
index 8055a2c23035..b268ba7a0e12 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-devkit.dts
@@ -429,7 +429,7 @@ ldo7_reg: LDO7 {
 	};
 
 	typec_ptn5100: usb-typec@52 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		reg = <0x52>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
diff --git a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
index 8360bb851ac0..83d298c2bfd3 100644
--- a/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
+++ b/arch/arm64/boot/dts/freescale/imx8qxp-mek.dts
@@ -149,7 +149,7 @@ light-sensor@44 {
 	};
 
 	ptn5110: tcpc@50 {
-		compatible = "nxp,ptn5110";
+		compatible = "nxp,ptn5110", "tcpci";
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_typec>;
 		reg = <0x50>;
-- 
2.34.1


