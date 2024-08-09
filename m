Return-Path: <devicetree+bounces-92424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 003BA94D1B8
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 15:58:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB13A28451C
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2024 13:58:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B22195980;
	Fri,  9 Aug 2024 13:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=utexas.edu header.i=@utexas.edu header.b="m0JAHFal"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB466146D6A
	for <devicetree@vger.kernel.org>; Fri,  9 Aug 2024 13:58:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723211910; cv=none; b=BR/hrBnEY5u6PvSMeg0fzTSMyOPYartgPgchqLLouNncnlsj5c7TiLDkioXw0hf31Td0ElnAANscCesWJbIhsGf4nD9eTGXsq04k1tw4Ezd+LOx1X4mEbTxPwLfdqgxXhLWowASlNW5kFAEWhLyOEeuVybTxYMISKwu8ysc3GmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723211910; c=relaxed/simple;
	bh=MVIfln3Z+zvYYQz9jOUHrPhHIC8YpceZV2gN7q6dj/U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=kAnIROAjIpQ1WemjGW40M/M+7DPyr6jC4u4xvloassacQ79xt0CSX27aC+oXo3Lp98A0Y6h/uSI19NcDax4ujQJ8EQCZrRALAGATkblc9KGkRLfqQbAe+gFAXV0+DSvaOBdxqgh17PyqGa5KBxfhv2HYiLLPzG/kZYBHYs9pLt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=utexas.edu; spf=pass smtp.mailfrom=utexas.edu; dkim=pass (2048-bit key) header.d=utexas.edu header.i=@utexas.edu header.b=m0JAHFal; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=utexas.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=utexas.edu
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-260e6dfc701so1381652fac.3
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2024 06:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=utexas.edu; s=google; t=1723211908; x=1723816708; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bv+LnZmWIQXzJV1hc1KEjtrX5OHdF1ATbROCbkW1Hj4=;
        b=m0JAHFal+lXlnsP3CLsy90UC2xtNGSBh+YbvFWYsNJ72TLydIw7BT5mhprTwS8Kfsi
         874/5N8KOhRIiOO4E9ih45CBEpmT480QETpkf7zNQjWKHQP/hTygYJ/Nm5BD/H6fIqMC
         GQj6lBOGneofGZfcLiNgB/KCtubGPojOmBCnSGerrfuhlhK7eUHZVjH4Bilq041AwvSV
         rOjeRfn+SbQCvGQZ3b51sarQSQRkQ6puLvuftz835cCHTaQCoOIXT1EAdnsUgqmz9xPs
         ZnJpta1JjfstCvdlmNEdVPls9BhW89HfBhUNiHL6E5VTcyB4kJFUWzwYjQ7jrL5jQMW6
         XaBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723211908; x=1723816708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bv+LnZmWIQXzJV1hc1KEjtrX5OHdF1ATbROCbkW1Hj4=;
        b=bwwE1j9/30xy/CCNq6dnS5uYLH69km+1Y1YR2aPQxDBujLsrupVPEGw1m4HdqlRbJA
         WC0ltBbgqUHG35vvfezyVda7I1ynCXFP/6RN73+i4PReam97aRNJe5ttOWwEmndV41wW
         OWapz0nB7LZQps/bm8+kuvS5Y4eaWUQ7hVjbwb8QiupDTUrnoA7gMDlv+PpmKUz+cwdw
         ZNeVcoRiJc5bzsRzPs3ZBiTC5XDLmzpRXniQpwJVwOj5CkQUW4w4bF6pGSIyVlInpwIa
         /VeTUiOGVRPeWjSBprnseXKpZrUFw3mYtKAQlUQFOrbfzfQXKP92lFz/p/Oe2UYnkQHy
         I21w==
X-Forwarded-Encrypted: i=1; AJvYcCWZTzVAtKC+m7f7bx9eX/h3T19521hQCIQd/53oeBewhOgRqPHijh/4MnZ3xu4SErHpIRanHht50kmJKqoLIBi9DAIYrC+TLb2N1A==
X-Gm-Message-State: AOJu0YxFFuiFVx55RxDaJF/A/v/XzgDPc1zsha+vdcFU/JjMeavLu+Qe
	O2I/zJb84oRH+CtwLmk+2L6gpcRbcLlwa6cvJBnOBYALtPLKF7tZyZufgRK8eXE=
X-Google-Smtp-Source: AGHT+IHyurHKq3ZZ7uOCVLaQ/a61K8VNmkGFOaAN1YpgvEASyNUBqDR4WWDZVAQTbSu5YtVe4UHOIg==
X-Received: by 2002:a05:6871:3a25:b0:261:1be0:b5b9 with SMTP id 586e51a60fabf-26c6291fc7fmr1875417fac.0.1723211907949;
        Fri, 09 Aug 2024 06:58:27 -0700 (PDT)
Received: from localhost.localdomain ([2600:381:6610:1ad2:1d6a:366:5acb:d5b0])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2689a438db3sm5265734fac.32.2024.08.09.06.58.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2024 06:58:27 -0700 (PDT)
From: Logan Bristol <logan.bristol@utexas.edu>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Nishanth Menon <nm@ti.com>
Cc: Josua Mayer <josua@solid-run.com>,
	Matt McKee <mmckee@phytec.com>,
	Wadim Egorov <w.egorov@phytec.de>,
	linux@ew.tq-group.com,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Logan Bristol <logan.bristol@utexas.edu>
Subject: [PATCH v2] arm64: dts: ti: k3-am64* Disable ethernet by default at SoC level
Date: Fri,  9 Aug 2024 08:57:53 -0500
Message-ID: <20240809135753.1186-1-logan.bristol@utexas.edu>
X-Mailer: git-send-email 2.46.0.windows.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

External interfaces should be disabled at the SoC DTSI level, since
the node is incomplete. Disable Ethernet switch and ports in SoC DTSI 
and enable them in the board DTS. If the board DTS includes a SoM DTSI 
that completes the node description, enable the Ethernet switch and ports 
in SoM DTSI.

Reflect this change in SoM DTSIs by removing ethernet port disable.

Signed-off-by: Logan Bristol <logan.bristol@utexas.edu>
---
Changes since v1:
- Enabled cpsw3g and cpsw_port1 in SoM DTSI instead of board DTS
if board DTS included SoM DTSI
---
 arch/arm64/boot/dts/ti/k3-am64-main.dtsi               | 3 +++
 arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi        | 6 ++----
 arch/arm64/boot/dts/ti/k3-am642-evm.dts                | 3 +++
 arch/arm64/boot/dts/ti/k3-am642-sk.dts                 | 3 +++
 arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi            | 6 ++----
 arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts | 6 ++----
 6 files changed, 15 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
index f8370dd03350..69c5af58b727 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-main.dtsi
@@ -677,6 +677,7 @@ cpsw3g: ethernet@8000000 {
 		assigned-clock-parents = <&k3_clks 13 9>;
 		clock-names = "fck";
 		power-domains = <&k3_pds 13 TI_SCI_PD_EXCLUSIVE>;
+		status = "disabled";
 
 		dmas = <&main_pktdma 0xC500 15>,
 		       <&main_pktdma 0xC501 15>,
@@ -701,6 +702,7 @@ cpsw_port1: port@1 {
 				phys = <&phy_gmii_sel 1>;
 				mac-address = [00 00 00 00 00 00];
 				ti,syscon-efuse = <&main_conf 0x200>;
+				status = "disabled";
 			};
 
 			cpsw_port2: port@2 {
@@ -709,6 +711,7 @@ cpsw_port2: port@2 {
 				label = "port2";
 				phys = <&phy_gmii_sel 2>;
 				mac-address = [00 00 00 00 00 00];
+				status = "disabled";
 			};
 		};
 
diff --git a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
index ea7c58fb67e2..6bece2fb4e95 100644
--- a/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am64-phycore-som.dtsi
@@ -185,6 +185,7 @@ AM64X_IOPAD(0x0278, PIN_INPUT, 7)	/* (C19) EXTINTn.GPIO1_70 */
 &cpsw3g {
 	pinctrl-names = "default";
 	pinctrl-0 = <&cpsw_rgmii1_pins_default>;
+	status = "okay";
 };
 
 &cpsw3g_mdio {
@@ -208,10 +209,7 @@ cpsw3g_phy1: ethernet-phy@1 {
 &cpsw_port1 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy1>;
-};
-
-&cpsw_port2 {
-	status = "disabled";
+	status = "okay";
 };
 
 &mailbox0_cluster2 {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-evm.dts b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
index 6bb1ad2e56ec..82da21bd9aea 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-evm.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-evm.dts
@@ -616,17 +616,20 @@ &cpsw3g {
 	bootph-all;
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins_default>, <&rgmii2_pins_default>;
+	status = "okay";
 };
 
 &cpsw_port1 {
 	bootph-all;
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy0>;
+	status = "okay";
 };
 
 &cpsw_port2 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy3>;
+	status = "okay";
 };
 
 &cpsw3g_mdio {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sk.dts b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
index 44ecbcf1c844..86369525259c 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-sk.dts
@@ -527,16 +527,19 @@ &usb0 {
 &cpsw3g {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_pins_default>, <&rgmii2_pins_default>;
+	status = "okay";
 };
 
 &cpsw_port1 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy0>;
+	status = "okay";
 };
 
 &cpsw_port2 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy1>;
+	status = "okay";
 };
 
 &cpsw3g_mdio {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi b/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
index c19d0b8bbf0f..a5cec9a07510 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am642-sr-som.dtsi
@@ -177,6 +177,7 @@ vdd_mmc0: regulator-vdd-mmc0 {
 &cpsw3g {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmii1_default_pins>;
+	status = "okay";
 };
 
 &cpsw3g_mdio {
@@ -210,10 +211,7 @@ ethernet_phy0: ethernet-phy@0 {
 &cpsw_port1 {
 	phy-mode = "rgmii-id";
 	phy-handle = <&ethernet_phy0>;
-};
-
-&cpsw_port2 {
-	status = "disabled";
+	status = "okay";
 };
 
 &icssg1_mdio {
diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
index c40ad67cee01..8d7a0283c391 100644
--- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
+++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
@@ -119,15 +119,13 @@ reg_sd: regulator-sd {
 &cpsw3g {
 	pinctrl-names = "default";
 	pinctrl-0 = <&cpsw_pins>;
+	status = "okay";
 };
 
 &cpsw_port1 {
 	phy-mode = "rgmii-rxid";
 	phy-handle = <&cpsw3g_phy0>;
-};
-
-&cpsw_port2 {
-	status = "disabled";
+	status = "okay";
 };
 
 &cpsw3g_mdio {
-- 
2.34.1


