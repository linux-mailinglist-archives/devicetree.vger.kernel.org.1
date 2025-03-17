Return-Path: <devicetree+bounces-158131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C77B9A64C2D
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 12:19:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D26251886ED0
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 11:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20C08236455;
	Mon, 17 Mar 2025 11:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NZDcQ6aV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 516AB23315F
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 11:18:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742210342; cv=none; b=FadIlnwCxt1+EFgTRHLm4qL7m8iq34UXEqjDXwPxJa2G6VVDMIQcQ7jVISkpptQO4F2ReBXDTI3FTi8wiYJITtxnvcquC87hLmOY/udHDDA3UCisFBQfBwggKN1+nEW8i7c+jsdo3Lj5jURiJ/iIiUgWH4zuCo5dIj3c0EPc1nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742210342; c=relaxed/simple;
	bh=BNlq7x+/ooXQ5PNMvqwHrshQHFzbSVEM5YZ1/1EZSOE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mPUrd7c+lhyMPrwnxi3PUKcKcePcO0LqvfaTp5QG2AxdZKL+/q4zydjccOgiUJa7K9LcgokCBH43xh3T/5Aa8wo3+R37Rzo/pxBySlmv9QOwUE1fZNYMfqIsJ4G6AtqXtoxWhEpxjxIKiiJX4ZZEfqIl6wcGnDKlABoeYO/PD0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NZDcQ6aV; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5e835ffcf71so740736a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 04:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742210336; x=1742815136; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Yb1bmwpZfvOX6yMK1i3HHBS8ZlfwQU6J5gT+QGlyLNY=;
        b=NZDcQ6aVwtqAC/383Z1kogpSWdyiBBOG18zDsMGIoWp9TxkRBwldqjopb/F56udVId
         qrbvyNfflcgp/fcxnm9IZ6lFwRhDpH+d8+LVQWlVfEYeeDJ6exHhSKviYfD1VRSTsfpY
         o479JgT6ZPPjw9JAnUbHfJkUhoT2YNnV6jz5eaSp/d+cUoVv5Np5n114ML7jWHydlMAf
         ZRQvop5rNQGjzMdlWWVRc2ht5MariQcbwf36GCEM7jTaDLtwGTm6G8Y9iWcXxbhcfyAy
         Zs33cbWziyCFY0SObXz41tfERcs67xqoDHKguXAVLkq9s1lv/joUGGEfgVxofNO128Vk
         GcqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742210336; x=1742815136;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Yb1bmwpZfvOX6yMK1i3HHBS8ZlfwQU6J5gT+QGlyLNY=;
        b=kDyMRxJOBCZACmJu5pBtTEljQln27hMR9JHV5c6YQW8w0Mqo/p8pPoCI/xt5vbVtq1
         TaDwCkp4d6FSc/677q2sCnWo9dAYFv7ieWyiev+Ox4cLhs6V93hAGN0WGGW5q+HAljXy
         44iWuLtHumRh7wPJsPM5UJ4hIJHq8E1oeem1zdJFyarKAVeMsauw/302vGCoZ11377OK
         7H1Vp4mWeXvpCkMZ+GjA7oUp8FSnFIhNS1Wk1OAKkxYGF3xSqmi+V+v/VGyTxbJHwf1r
         qRAr/L08nPf8NewdcUXgJvQv1EQYOyn5/FzmtnE8DQrgdwrcAR9BHe/NNoGa5w5UhJfK
         ISwA==
X-Forwarded-Encrypted: i=1; AJvYcCW7x0nbw9fFAzkzW6ROJ6GE9Vwpc971X0pqWrht7ECecO4jzjslNlej3ADnL3hpwkC2oiZxO8R7BPRe@vger.kernel.org
X-Gm-Message-State: AOJu0YweLwNC636caNg6fnZwl80yZHlcV0hxH5FlKiTPoUqxJYW/8b5X
	CKLLnMB/WHllMJW58wbxk3c07WzcqKZOaUv+tjADJwa5HqtYPGmPgb97Kct41sk=
X-Gm-Gg: ASbGncu2KcnO5uf68d/Cg2RPERhvDNz6R4j6A9Qi7rsCY/XSYjuQsuZ4W+oP15vrKcl
	yzEtgEPgTYmphNniliO3pyJ5FQmM/jdGFZPVeATEFCsvqzIVvuhpEzq0qGzMOAwqzfNwUeCG/LF
	XJJulcuil/6LfJvdlaov5eq8s3ex9bcJRgCfCrZgF6m0yBc2brNVRXxCY0y4UqUByuQS9T2T44s
	hpgQrr29Wjm8fyHwluvBHdyRHISaHnLshnexITO1QOOAQVvEbIJGzXjDvIQQk6FhZeT1vgBLgQI
	wGXVFg/tY1gMYrQxztFtR+5Qded3EWSHfFNPGu1LBENantp4uEdRTW8XbQ==
X-Google-Smtp-Source: AGHT+IGfG0kMUMy8OCD9zOa9XSNGd00YZZiW8tI8Vc7MTZK1U10MgZJVD9O1t41p31Vck9HevRFDYQ==
X-Received: by 2002:a05:6402:3592:b0:5e4:d192:86c5 with SMTP id 4fb4d7f45d1cf-5e8a10edf48mr4164494a12.9.1742210336553;
        Mon, 17 Mar 2025 04:18:56 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816973b87sm5851428a12.23.2025.03.17.04.18.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Mar 2025 04:18:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: nxp: Align NAND controller node name with bindings
Date: Mon, 17 Mar 2025 12:18:53 +0100
Message-ID: <20250317111853.43708-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect NAND controller device nodes to be named
"nand-controller".

Cc: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx25.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx35.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx51.dtsi | 2 +-
 arch/arm/boot/dts/nxp/imx/imx53.dtsi | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx25.dtsi b/arch/arm/boot/dts/nxp/imx/imx25.dtsi
index 9cfff2151b7e..82601a4b7b4b 100644
--- a/arch/arm/boot/dts/nxp/imx/imx25.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx25.dtsi
@@ -611,7 +611,7 @@ bus@80000000 {
 			reg = <0x80000000 0x3b002000>;
 			ranges;
 
-			nfc: nand@bb000000 {
+			nfc: nand-controller@bb000000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 
diff --git a/arch/arm/boot/dts/nxp/imx/imx35.dtsi b/arch/arm/boot/dts/nxp/imx/imx35.dtsi
index 30beb39e0162..111d7c0331f5 100644
--- a/arch/arm/boot/dts/nxp/imx/imx35.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx35.dtsi
@@ -363,7 +363,7 @@ emi@80000000 { /* External Memory Interface */
 			reg = <0x80000000 0x40000000>;
 			ranges;
 
-			nfc: nand@bb000000 {
+			nfc: nand-controller@bb000000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx35-nand", "fsl,imx25-nand";
diff --git a/arch/arm/boot/dts/nxp/imx/imx51.dtsi b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
index 8323e3a56a1f..f42903c9cf0d 100644
--- a/arch/arm/boot/dts/nxp/imx/imx51.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx51.dtsi
@@ -595,7 +595,7 @@ weim: memory-controller@83fda000 {
 				status = "disabled";
 			};
 
-			nfc: nand@83fdb000 {
+			nfc: nand-controller@83fdb000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 				compatible = "fsl,imx51-nand";
diff --git a/arch/arm/boot/dts/nxp/imx/imx53.dtsi b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
index faac7cc249d0..0c38c37dd142 100644
--- a/arch/arm/boot/dts/nxp/imx/imx53.dtsi
+++ b/arch/arm/boot/dts/nxp/imx/imx53.dtsi
@@ -775,7 +775,7 @@ audmux: audmux@63fd0000 {
 				status = "disabled";
 			};
 
-			nfc: nand@63fdb000 {
+			nfc: nand-controller@63fdb000 {
 				compatible = "fsl,imx53-nand";
 				reg = <0x63fdb000 0x1000 0xf7ff0000 0x10000>;
 				interrupts = <8>;
-- 
2.43.0


