Return-Path: <devicetree+bounces-266681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOI+MnUpl2mXvQIAu9opvQ
	(envelope-from <devicetree+bounces-266681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:17:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D6A16005E
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 16:17:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 058DA30011AA
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 15:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D6803342530;
	Thu, 19 Feb 2026 15:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EBWw++Bp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D21342526
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 15:12:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771513937; cv=none; b=YYmpL95SOW84rRfpyACROg5a1eOfCD+VvpZbGEUD4erekpe0lnl1EspWG9OxFBQmDlSGP7kAtjcKLvs2v74VNwUwhd9KzkfTSwsu+uzAWQQSKCTJOY+P6mY3yHqUzxFEAtv7JCEeueL+90WWWvuNmKdAuVf4fw2qO31Ky1yF3iQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771513937; c=relaxed/simple;
	bh=CeNu8Fa1DZ16bxXhqAjJAegnprffQJr48pviGYoxRl8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=gNP3Fp1oUyao3Weazfo69DK/3IuSXUILMJqRZXXLPlv9WlmdjoN36/dMUsbVwYv191hJBDNdx8NjKdZ19wqE58kVC1P1PyUy2UhIf8D7YrbBW3DkyOaJbyPVuVcmGALGL4cQNna4ojzqrdGNmbaJ0LQHT6Y6QSGi/DoFoAWnv9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EBWw++Bp; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-48334ee0aeaso8344535e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 07:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771513934; x=1772118734; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=UGfmTjjQx0R3K/qzXuIjVo3qjY4VwIiKp8L6tm+HmGo=;
        b=EBWw++BpsW3HQiCxO/RuXQw+2kpBWq8SFKWiYJonBUqfhxYM0FIkUjGCqL8d8ued2L
         icZZfu74czmUVKSCV4gFpr2avxS7ZF+133FKRLVM6DmU87aq4A5Dfqm6yiMkAu+oRiwO
         b/Wolngv7f6qtecliWY/bo5GDacfOfLBUjH6a34z/GMNhpNf7nlz2IWX4HBK5ci3Kr94
         hPdybQXcjiQrD4L2XqGSHEagFaAEdkHRoMSc6mK/12fRELThnaJbSBnfpDwFDbGrGjTO
         4cDCfZ8/mmMXhTC1lIOPig2QLmIN+N8JIaY/MTXx3duiNrtESuGn9wMoskcORSLuOTVF
         CLRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771513934; x=1772118734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UGfmTjjQx0R3K/qzXuIjVo3qjY4VwIiKp8L6tm+HmGo=;
        b=uoaV8glr2y7xx0E4UGZfxva5kWon3UAt46gDk2aW+sWgUzePFA9NVL41rwMTiUJZlq
         m/atIHuauWWec4J+++aCLkQTMsyOWOKwur01YwjDV1qB0VgdxJrH3by8da8QRjMRGfIz
         Z5yZzfUHE836nZt2ahVUPi1lSgtoBEVWtTlmpQF3VpYcSuqkbaOC+LNrikxlP1Uzn9nF
         sH45WM46MHUAXbv8JtQm3DrgrSaDL69HhEjK4P64WnHxwkaAeZpqQvRfrBNodQ2+TQwv
         LasYc0CIagm+EbZiodI+BIGNOlUUKpy7aCnf2p+nmfERVFsQZXEwqjn9iI8KcG14Mh0o
         Z2mw==
X-Forwarded-Encrypted: i=1; AJvYcCWq8vm+l7OVjgqC6h4ek3yJxHuH5sSPxtvx26luSYZBoNSQ+vIeGaYDvwdHACV999yS+GB3c48cHK+M@vger.kernel.org
X-Gm-Message-State: AOJu0YwO4iKuZ7yvOdV2CXU2HsHB452Oqm8hutidOi7bAMdFMlTpvdyi
	xxD0aajVDBiyqUas+uS8sIGMn/HcHCtcdwQWaYu4Qi1ETedun6xUBqNF
X-Gm-Gg: AZuq6aI2ctZtIn8gFnWDR6FC9a4MdY7mBFMeTwt46oYLIYcXh44hMEwaM7icHFaoiif
	fVZfs1upFtMsPz1CGNgEksa7YeaKLASXTSibUdiBa7yuvZOlMtniUXiWTlqjEYgmwhu5zB90Nl0
	Ooya/2GSq+wyViQvN6bZBlSAY6WNUbHU7AuYf3A00N3yCWxndQL8/S9X3p5XaipHH7A+CRraSRh
	68mT8vg+Qn1EmysSu0EBdIds6J1BLR+3sMIRx1s513sdNWxJL1KdPLcKU8Y+0rGt2TA0QlFFfUR
	8joCpIfnk6q5ybCRL7bhA5aIYoR1jXsVmK9g6yQorWsfV2xHOdSNC9Bl2+XdFrD2vSjurHmiE7u
	M4LX1M3UP7EtqhdjhdIx4zyu67lhxQm7TaMwgfUCX5YsuTXLv3kUn89F2g/RC8Rlr7KJKUPfV44
	BqymLK5F3G0FtJA047/PKFZhEtqHv6evhs2S04S6+bHOCD6gKPQSnh4qvwoMK5tT9gXFaseHqnD
	FaHovVHEeB6SlNSufF7VSc1YGLW
X-Received: by 2002:a05:600c:35cd:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-48398aefd55mr90529135e9.36.1771513934048;
        Thu, 19 Feb 2026 07:12:14 -0800 (PST)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4839f990384sm33002245e9.5.2026.02.19.07.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 07:12:13 -0800 (PST)
From: max.oss.09@gmail.com
To: Francesco Dolcini <francesco.dolcini@toradex.com>
Cc: Max Krummenacher <max.krummenacher@toradex.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Frank Li <Frank.Li@nxp.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "ARM: dts: imx: move nand related property under nand@0"
Date: Thu, 19 Feb 2026 16:11:49 +0100
Message-ID: <20260219151157.2549198-1-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[toradex.com,kernel.org,gmail.com,nxp.com,pengutronix.de,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-266681-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_NO_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maxoss09@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.3:email,0.0.0.1:email,0.0.0.0:email,toradex.com:email]
X-Rspamd-Queue-Id: E4D6A16005E
X-Rspamd-Action: no action

From: Max Krummenacher <max.krummenacher@toradex.com>

This reverts commit 8124b4a4a96b57d6cc3705a9df9623c52baa047b.

The change introduced a regression: at least Colibri iMX6ULL and
Colibri iMX7 no longer boot with that commit applied, while they boot
again after reverting it.

Although this has only been verified on these two modules, the issue
is expected to affect all device trees using the gpmi-nand driver.

[    0.876938] Creating 5 MTD partitions on "gpmi-nand":
[    0.876974] 0x000000000000-0x000000080000 : "mx7-bcb"
[    0.879860] 0x000000080000-0x000000200000 : "u-boot1"
[    0.884761] 0x000000200000-0x000000380000 : "u-boot2"
[    0.886993] 0x000000380000-0x000000400000 : "u-boot-env"
[    0.894686] 0x000000400000-0x000020000000 : "ubi"
[    0.899054] gpmi-nand 33002000.nand-controller: driver registered.
...
[    0.960443] ubi0: default fastmap pool size: 200
[    0.960476] ubi0: default fastmap WL pool size: 100
[    0.960500] ubi0: attaching mtd4
[    1.636355] ubi0 error: scan_peb: bad image sequence number 1588722158 in PEB 4060, expected 1574791632
...
[    1.649889] ubi0 error: ubi_attach_mtd_dev: failed to attach mtd4, error -22
[    1.650029] UBI error: cannot attach mtd4
...
[    1.670262] Kernel panic - not syncing: VFS: Unable to mount root fs on unknown-block(0,253)

Fixes: 8124b4a4a96b ("ARM: dts: imx: move nand related property under nand@0")
Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi      |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi         |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi |  6 +-----
 .../boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi      |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi           |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts            |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi          |  6 +-----
 .../boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi  |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi          |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi       | 12 ++++--------
 .../boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi   | 12 ++++--------
 arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts     |  6 +-----
 arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi          |  8 ++------
 15 files changed, 22 insertions(+), 82 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
index f452764fae00..547fb141ec0c 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6-logicpd-som.dtsi
@@ -36,12 +36,8 @@ &clks {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c3 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
index 58ecdb87c6d4..9975b6ee433d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-icore.dtsi
@@ -172,12 +172,8 @@ eth_phy: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
index 6f3becd33a5b..aa9a442852f4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-pfla02.dtsi
@@ -102,12 +102,8 @@ ethphy: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
index f2140dd8525f..85e278eb2016 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-phytec-phycore-som.dtsi
@@ -73,12 +73,8 @@ ethphy: ethernet-phy@3 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "disabled";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c3 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
index 131a3428ddb8..c93dbc595ef6 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-skov-cpu.dtsi
@@ -260,14 +260,10 @@ fixed-link {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	#address-cells = <1>;
 	#size-cells = <0>;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c3 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
index d29adfef5fdb..57297d6521cf 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi
@@ -252,13 +252,9 @@ etnphy: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	fsl,no-blockmark-swap;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts b/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
index 40d530c1dc29..2a6bb5ff808a 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts
@@ -133,12 +133,8 @@ ethphy1: ethernet-phy@1 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
index 776f6f78ee46..e34c8cbe36ae 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi
@@ -101,12 +101,8 @@ ethphy0: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "disabled";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
index 27e4d2aec137..a3ea1b208462 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-phytec-phycore-som.dtsi
@@ -63,12 +63,8 @@ ethphy1: ethernet-phy@1 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "disabled";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
index dc53f9286ffe..1992dfb53b45 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi
@@ -296,13 +296,9 @@ &fec2 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	fsl,no-blockmark-swap;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &i2c2 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
index eaed2cbf0c82..ec3c1e7301f4 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-colibri.dtsi
@@ -160,15 +160,11 @@ &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
 	fsl,use-minimum-ecc;
+	nand-on-flash-bbt;
+	nand-ecc-mode = "hw";
+	nand-ecc-strength = <8>;
+	nand-ecc-step-size = <512>;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-		nand-ecc-mode = "hw";
-		nand-ecc-strength = <8>;
-		nand-ecc-step-size = <512>;
-	};
 };
 
 /* I2C3_SDA/SCL on SODIMM 194/196 (e.g. RTC on carrier board) */
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
index 3dfd43b32055..43518bf07602 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea.dtsi
@@ -43,15 +43,11 @@ ethphy0: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-ecc-mode = "hw";
+	nand-ecc-strength = <0>;
+	nand-ecc-step-size = <0>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-ecc-mode = "hw";
-		nand-ecc-strength = <0>;
-		nand-ecc-step-size = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &iomuxc {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi b/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
index fc298f57bfff..83b9de17cee2 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi
@@ -60,12 +60,8 @@ ethphy0: ethernet-phy@0 {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "disabled";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &uart1 {
diff --git a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
index 8ec18eae98a4..2d9f495660c9 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts
@@ -25,12 +25,8 @@ usdhc2_pwrseq: usdhc2-pwrseq {
 &gpmi {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
+	nand-on-flash-bbt;
 	status = "okay";
-
-	nand@0 {
-		reg = <0>;
-		nand-on-flash-bbt;
-	};
 };
 
 &snvs_poweroff {
diff --git a/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi b/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
index a41dc4edfc0d..8666dcd7fe97 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx7-colibri.dtsi
@@ -375,14 +375,10 @@ &gpio7 {
 /* NAND on such SKUs */
 &gpmi {
 	fsl,use-minimum-ecc;
+	nand-ecc-mode = "hw";
+	nand-on-flash-bbt;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_gpmi_nand>;
-
-	nand@0 {
-		reg = <0>;
-		nand-ecc-mode = "hw";
-		nand-on-flash-bbt;
-	};
 };
 
 /* On-module Power I2C */
-- 
2.42.0


