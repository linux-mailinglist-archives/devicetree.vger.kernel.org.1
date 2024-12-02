Return-Path: <devicetree+bounces-126004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ABC99DFEA5
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 11:18:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 83C9FB2AA57
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 10:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C134C1FC11A;
	Mon,  2 Dec 2024 10:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="O4JbVMfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EB761FC109
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 10:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733134328; cv=none; b=uEHsg49RRABd0SkwE35YACsO89HhfgKFmqYgfcEVs6p6aukmpD0ICeK8N2Vb/qCnHtaWR1D6zf+c8slC9vgpXPVMs2l0uiip5cWFkDcnTIp3Y4cO4pIBbUOpKtHfFL/+TNb76vtRfrFd1CDc786WueDkSE0jnMbbjhg2CbJWtJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733134328; c=relaxed/simple;
	bh=1Yk2xE+4LvLgWaCrE+PAUJ3/KYCQQt2CuK4BT5+wpoI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IRcQOEBn68bC3q4JrcS9+rNsYUBwvmN+fKftJK9ExkoPNIw+ae1p19lvTpX6G9MWAWHBqbp1pN4hktLBvneXVWjPoizIJpyn/UgdmmtSrGCRwouR9zNn58fQEnvi+GWxbFbCMzaoMHAbxZne88V/y0ZIyMGDfOP5qlCvBLVCA3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=O4JbVMfr; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-434aabd688fso24804635e9.3
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 02:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1733134323; x=1733739123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YQPjFrGxUzPXgGYDSfzbk9xwSYIQ5wTw0sR1TTLwdZg=;
        b=O4JbVMfrCRYZz2JSdCoI1cpArB8KS5TWynkm2vaFCGkKxfmRnrjyeNy1DV3bCJmxmy
         eMEnh/3TRIiwSihdUQrpCguh82204AdFscimZ97UnbjCRA9Gtkmh7XDvXOUAMZlDgUzb
         1Xor3YKxY4qsNt7Fy6qioH8jnqNqBAWtL1nUY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733134323; x=1733739123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YQPjFrGxUzPXgGYDSfzbk9xwSYIQ5wTw0sR1TTLwdZg=;
        b=upIfSx26rJNN1euQmtGYa57m1h5Vu5esVPhEDT6PmqrEVz/3R+wSv3YJ29tIgFnI2E
         3zInGm1zF6owE1yks306L6HcR9+gbjyjKCfDxSQ9JlZdC17vcuXaXSdeUn7nX1iGdCSl
         IpUyj28axSGZO4+YtS74n5b8CzQWPtjS0I4HU+9ULk5pFOpzlyufSggaFUCD9xT1smfT
         crWBq3xd6ngNHVwpfj/J6xakpLdSUBVRD7HKZDg4/C9aocSIr0F9ym5v2tHL6XYFfduW
         wvO1gLVThXEKO84BwbaDT3IBQjG6CpOddS2/DUhMDqeerdet/tWm5sKwaG8NDlgiZY50
         ptlA==
X-Gm-Message-State: AOJu0Yx2EfYhs3YLyX8JjnyywC7T0j9ZTMGvRMHmZekixakDvMdZJXOP
	b3CkPbqqhTAAeqNbOElvdOaBnR4C8uDgjnDULF+Lv6retn1w8yZp+wE8uKBQp/B5261nFUU6prT
	N
X-Gm-Gg: ASbGncsia2B5IKsxK2pqL4uhEWrlpUWLERKDe3bKVuGW6lJQKU1aLjVg2pgKvYUozaT
	1HpiiN3229WF0wj0DbSLKPukNd9GBEUaSubEBDEjpXSndMEmckiuZHPMQ80IxOCzNcaFr8+SIdq
	IN3FjmldTLPo0m7Q4iZRXwSxWPxOzfJWd0biw9dK2JNi5frnfeXph98UFBsf0ndyEGxifQHyF/M
	uGCw20HRcD/DT4wEQ/H11AQSI+TXSB0yQUFsPiNn0u4z3Ttzi8GBZBycqbS3M3IGccLKuuil4pk
	w3UiBFWECS0hzlziFXNOV0nUkNg/fKbD5dlCJz5kmIpsPM4=
X-Google-Smtp-Source: AGHT+IG4GMzTCNAiDXoQ6IfMdGYliGKIimtD8bjQyryGARkZpxz5JZzdvAJtPu8GPuKep9KHnrEIyw==
X-Received: by 2002:a05:600c:b87:b0:434:a1e7:27b0 with SMTP id 5b1f17b1804b1-434a9dc3d08mr194372895e9.11.1733134323371;
        Mon, 02 Dec 2024 02:12:03 -0800 (PST)
Received: from P-NTS-Evian.home (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa763c50sm177341885e9.12.2024.12.02.02.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 02:12:03 -0800 (PST)
From: Romain Naour <romain.naour@smile.fr>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-omap@vger.kernel.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	kristo@kernel.org,
	vigneshr@ti.com,
	nm@ti.com,
	Romain Naour <romain.naour@skf.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>
Subject: [PATCHv2] arm64: dts: ti: k3-j721e-beagleboneai64: Enable ACSPCIE output for PCIe1
Date: Mon,  2 Dec 2024 11:11:40 +0100
Message-ID: <20241202101140.48778-1-romain.naour@smile.fr>
X-Mailer: git-send-email 2.45.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Romain Naour <romain.naour@skf.com>

Unlike the SK-TDA4VM (k3-j721e-sk) board, there is no clock generator
(CDCI6214RGET) on the BeagleBone AI-64 (k3-j721e-beagleboneai64) to
provide PCIe refclk signal to PCIe Endponts. So the ACSPCIE module must
provide refclk through PCIe_REFCLK pins.

Use the new "ti,syscon-acspcie-proxy-ctrl" property to enable ACSPCIE
module's PAD IO Buffers.

Reuse the compatible "ti,j784s4-acspcie-proxy-ctrl" since the ACSPCIE
buffer and its functionality is the same across all K3 SoCs.

Cc: Siddharth Vadapalli <s-vadapalli@ti.com>
Signed-off-by: Romain Naour <romain.naour@skf.com>
---
With this patch, we can remove "HACK: Sierra: Drive clock out" patch
applied on vendor kernel for BeagleBone AI-64:
https://openbeagle.org/beagleboard/linux/-/commit/ad65d7ef675966cdbc5d75f2bd545fad1914ba9b

v2:
 - use generic style comments
 - use "syscon" as generic node name for "acspcie0_proxy_ctrl" node
 - Keep the compatible "ti,j784s4-acspcie-proxy-ctrl" since the
   ACSPCIE buffer and its functionality is the same across all K3 SoCs.
   (Siddharth Vadapalli)

   "The compatible "ti,j784s4-acspcie-pcie-ctrl" should be reused for
   J721E and all other K3 SoCs.
   For example, see:
   https://lore.kernel.org/r/20240402105708.4114146-1-s-vadapalli@ti.com/
   which introduced "ti,am62p-cpsw-mac-efuse" compatible.

   The same compatible is reused across all K3 SoCs:
   https://lore.kernel.org/r/20240628151518.40100-1-afd@ti.com/ "
---
 arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts |  5 +++++
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi          | 10 ++++++++--
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
index fb899c99753e..741ad2ba6fdb 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
+++ b/arch/arm64/boot/dts/ti/k3-j721e-beagleboneai64.dts
@@ -859,6 +859,11 @@ &pcie1_rc {
 	num-lanes = <2>;
 	max-link-speed = <3>;
 	reset-gpios = <&main_gpio0 22 GPIO_ACTIVE_HIGH>;
+	/*
+	 * There is no on-board or external reference clock generators,
+	 * use refclk from the ACSPCIE module's PAD IO Buffers.
+	 */
+	ti,syscon-acspcie-proxy-ctrl = <&acspcie0_proxy_ctrl 0x3>;
 };
 
 &ufs_wrapper {
diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
index af3d730154ac..b9bb59ce4ed2 100644
--- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
@@ -5,6 +5,7 @@
  * Copyright (C) 2016-2024 Texas Instruments Incorporated - https://www.ti.com/
  */
 #include <dt-bindings/phy/phy.h>
+#include <dt-bindings/phy/phy-cadence.h>
 #include <dt-bindings/phy/phy-ti.h>
 #include <dt-bindings/mux/mux.h>
 
@@ -82,6 +83,11 @@ ehrpwm_tbclk: clock-controller@4140 {
 			reg = <0x4140 0x18>;
 			#clock-cells = <1>;
 		};
+
+		acspcie0_proxy_ctrl: syscon@18090 {
+			compatible = "ti,j784s4-acspcie-proxy-ctrl", "syscon";
+			reg = <0x18090 0x4>;
+		};
 	};
 
 	main_ehrpwm0: pwm@3000000 {
@@ -979,8 +985,8 @@ pcie1_rc: pcie@2910000 {
 		max-link-speed = <3>;
 		num-lanes = <2>;
 		power-domains = <&k3_pds 240 TI_SCI_PD_EXCLUSIVE>;
-		clocks = <&k3_clks 240 1>;
-		clock-names = "fck";
+		clocks = <&k3_clks 240 1>, <&serdes1 CDNS_SIERRA_DERIVED_REFCLK>;
+		clock-names = "fck", "pcie_refclk";
 		#address-cells = <3>;
 		#size-cells = <2>;
 		bus-range = <0x0 0xff>;
-- 
2.45.0


