Return-Path: <devicetree+bounces-93997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A599538BC
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 19:05:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D171F284074
	for <lists+devicetree@lfdr.de>; Thu, 15 Aug 2024 17:05:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A821F1BB694;
	Thu, 15 Aug 2024 17:05:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="he8xmXuV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB90D1B3749
	for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 17:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723741550; cv=none; b=kG89KLLBEPyYoeOBfZ0PnlKmLEITSaeI3O29rFdl4BBHw1FM1sphMOO0u85v+88sGOHWcQbCqoMMw6BwQhGUj8nss9n6l3/lUdGw0JnSIKnojXHc/4Dtb67bVDFIhSfEqST9dA00KhZTlcFMmmx3R7nzzyyR9O4CVSCCJNUsYc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723741550; c=relaxed/simple;
	bh=yNAYnrrthvnc92LbkHZu+Lb3N7bb93tsqL1JSAKbnBo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=Nr8WmNyBBb8ZvfFJfidj5sn8o3ITQgtMFheogDBYN6rrFNDBBfpHIn9DxnQ8RSagb0P5unE2yfxHFqOfWOaixFrOgClFN4DQIGsXl16yaHyiurev44aJnkmS2m+CBCPUFODlkaGDvi57ArUYabAxENdissxq1WVncr55bmbhg7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=he8xmXuV; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-428ec6c190eso7962185e9.1
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 10:05:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723741547; x=1724346347; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CepgmEounTUrl6P6kxWZPU5dwK4CK5Hpa6rPc4gSVuY=;
        b=he8xmXuVPcd600KNHYRN7dzf7rMyh5OeiR7u9SDClChXNqcsUVn3lNF9WzjaB5qEcm
         e9xa6kPGHTzLGdRWMWltIS9RDX6xulENrPTxSVRf/O3p+BjL/iiYxZ5epyY7Yp9E0uwi
         vp7hwlfTJQ5wh5EZkNGLsTlw5/a99fyYc0k8scYDakQPm8uEMOKLY3RIHb9GmFtBahzt
         O52bQDPh49htPWdp6NeejCkdLdT9faERXqKv0Yubl/mWigAF3ZkE7gLs9X2pnu3IlFpD
         be41vBLVR4zKQtl8cMABmImBxhfSbgDppSm1DApxdzZ3Zx2u6wdRjHxqUkKYzqMIK8Vx
         Rghg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723741547; x=1724346347;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CepgmEounTUrl6P6kxWZPU5dwK4CK5Hpa6rPc4gSVuY=;
        b=KDhMe+HNhVEGtITGjLircxZSZSEj8INRF1n1OzBGkHhb7eSuZaR2noViV7QTbRy36K
         18xAyPjljT+ybO0S6/AL0DvZTCBBV3Q2sNw06wTN8Q+22s65yQ0x3LBIXq7NgsC+DZXy
         YxC9KEQXwl6+M+eZ2UZkSywP78x3QN0mbEqnxkMrRma0lmCZyaPNDW0iOfg+TQetw2q9
         mFYB0B604aLxDhI8qqDC+tmJVbnMjOj5QHtStH4f4aGCRBUlTKK/vTm0M/wosP4pmzb1
         6wAzR3fAcnLyuHYBrFlZmN9+fkM9wTiyXDexuOdGTp8RXFPesI2PL2rjpn9xr/AfRjE0
         PgfA==
X-Forwarded-Encrypted: i=1; AJvYcCUtIIu3xWZE0pcWtrKKmcgI2k6pncTGPZhLiHE0dcpQ/eYLcKzwm0Zc5G3/3b1cta0cJ0yP1yOuDu76GPdDeprvmlfVM0hoi0VsxQ==
X-Gm-Message-State: AOJu0YzAS+5RmW70Awf9qgUNO0+4bSWgkcQPT3YCwUYXvxFeJjCYy7/a
	2X8GLbX1kZcgCQBwz5F+1sp/zYD6Oi7nN6WewmORWAeJVYRu5PvFvCOrVCDI81k=
X-Google-Smtp-Source: AGHT+IGQEWGD2uTt4JOylXLFOS6tTAzZOetE/pp1JGV9+vPDEgebW+ZIc3n8HhA+45q5YWGxxcf3FQ==
X-Received: by 2002:a05:600c:3547:b0:426:647b:1bfa with SMTP id 5b1f17b1804b1-429ed780642mr127135e9.8.1723741546729;
        Thu, 15 Aug 2024 10:05:46 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed7841a1sm89765e9.29.2024.08.15.10.05.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 10:05:46 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
To: andersson@kernel.org
Cc: konrad.dybcio@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	amit.pundir@linaro.org,
	dmitry.baryshkov@linaro.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH] arm64: dts: qcom: sm8250: move lpass codec macros to use clks directly
Date: Thu, 15 Aug 2024 18:05:42 +0100
Message-Id: <20240815170542.20754-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

Move lpass codecs va and wsa macros to use the clks directly from
AFE clock controller instead of going via gfm mux like other codec macros
and SoCs.

This makes it more align with the other SoCs and codec macros in this SoC
which take AFE clocks directly. This will also avoid an extra clk mux layer,
provides consistency and avoids the buggy mux driver which will be removed.

This should also fix RB5 audio.

Remove the gfm mux drivers for both audiocc and aoncc.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
DT bindings changes to fix the incorrect number of clocks is available
at
https://mailman.alsa-project.org/hyperkitty/list/alsa-devel@alsa-project.org/thread/BWBTJHLNBQIMPUQNR274CPYXRBIBAYP5/
CHECK_DTBS=y might fail without this bindings change patch.


 arch/arm64/boot/dts/qcom/sm8250.dtsi | 31 ++++------------------------
 1 file changed, 4 insertions(+), 27 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 9d6c97d1fd9d..630f4eff20bf 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -8,8 +8,6 @@
 #include <dt-bindings/clock/qcom,gcc-sm8250.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8250.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
-#include <dt-bindings/clock/qcom,sm8250-lpass-aoncc.h>
-#include <dt-bindings/clock/qcom,sm8250-lpass-audiocc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/interconnect/qcom,osm-l3.h>
@@ -2633,14 +2631,13 @@ tcsr: syscon@1fc0000 {
 		wsamacro: codec@3240000 {
 			compatible = "qcom,sm8250-lpass-wsa-macro";
 			reg = <0 0x03240000 0 0x1000>;
-			clocks = <&audiocc LPASS_CDC_WSA_MCLK>,
-				 <&audiocc LPASS_CDC_WSA_NPL>,
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
+				 <&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK  LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				 <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-				 <&aoncc LPASS_CDC_VA_MCLK>,
 				 <&vamacro>;
 
-			clock-names = "mclk", "npl", "macro", "dcodec", "va", "fsgen";
+			clock-names = "mclk", "npl", "macro", "dcodec", "fsgen";
 
 			#clock-cells = <0>;
 			clock-output-names = "mclk";
@@ -2674,20 +2671,10 @@ swr0: soundwire@3250000 {
 			status = "disabled";
 		};
 
-		audiocc: clock-controller@3300000 {
-			compatible = "qcom,sm8250-lpass-audiocc";
-			reg = <0 0x03300000 0 0x30000>;
-			#clock-cells = <1>;
-			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-				<&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-				<&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			clock-names = "core", "audio", "bus";
-		};
-
 		vamacro: codec@3370000 {
 			compatible = "qcom,sm8250-lpass-va-macro";
 			reg = <0 0x03370000 0 0x1000>;
-			clocks = <&aoncc LPASS_CDC_VA_MCLK>,
+			clocks = <&q6afecc LPASS_CLK_ID_TX_CORE_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				<&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
 				<&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
 
@@ -2792,16 +2779,6 @@ swr2: soundwire@3230000 {
 			#size-cells = <0>;
 		};
 
-		aoncc: clock-controller@3380000 {
-			compatible = "qcom,sm8250-lpass-aoncc";
-			reg = <0 0x03380000 0 0x40000>;
-			#clock-cells = <1>;
-			clocks = <&q6afecc LPASS_HW_MACRO_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-				<&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>,
-				<&q6afecc LPASS_CLK_ID_TX_CORE_NPL_MCLK LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
-			clock-names = "core", "audio", "bus";
-		};
-
 		lpass_tlmm: pinctrl@33c0000 {
 			compatible = "qcom,sm8250-lpass-lpi-pinctrl";
 			reg = <0 0x033c0000 0x0 0x20000>,
-- 
2.25.1


