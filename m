Return-Path: <devicetree+bounces-164258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 08AC4A7FA00
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:42:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 54DE9189CB3A
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D0C5269892;
	Tue,  8 Apr 2025 09:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bkvZ0zG2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1925A269810
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104788; cv=none; b=LeQKpFTJqr83LybVhCJ9uPMwqzILYPahaluprciw3QZJUVHJ0k9iFPnEHmwpfuP30fbWDLDiRER7o9H6X18YvMt0A4n4E03sZqX+HmQXcrltlejSHhCvZdfYdv8wrXxED3BAbGSkN8FfUZaoqzJ2tM2Aj60LBF841ody7wCL2tc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104788; c=relaxed/simple;
	bh=omkn3m7HWR7M8yA3Wy2SKdjKBChDLn4G9csmN/Npsmg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p80UB9uVpLL1MXkvZsbLCtc5Lp48wW/3C9yXCCpHZ4P2kd9u1nv5ru0weHx+plPI6RP5ySSYeCBfryTTLrVCtnSeFruF47SQB5CAlhdqTpiwM9GUt/hw3RsXOz1nMMtaDiD8FxkvzS3bQqD2Er5/rbVxTvhlzZNHR0qzWFd+bnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bkvZ0zG2; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43cee550af2so5216415e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104784; x=1744709584; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZd9DLuj7IqA/jzUFYP9J6UdMf8SerqXtE2cDOsTPxE=;
        b=bkvZ0zG2YfTU67tqyzwiHTkgIeYhWeIXVXtEM3hTLWt9CoPNxMR+LK/rgmndQON9Sn
         I/uoaaozuc28xjgPUDutXBvg2xot+zb0yg1S9ZWy8StW+Inf0cfyg9mxhQ6laWcKrxJM
         CUM4iCozWrSk4mo7yVSmytJaRYD97K/7EhHoHUxf+FVVLWSEVRxWw/gbu9ATWZIGXY0M
         zrV5ufmQ+RbqW4ED7ct1UyBmDgXHb5dBV6FtG75SKZiLahrCTfSJIK1WVqZDcBWkCSgn
         +VGuFRYb04OYW9sV6cTYeZDjKy0BPD6Y7BU0ix+TVaeMaLCifLohSa/8W1ELavSXxdoG
         Ndaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104784; x=1744709584;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZd9DLuj7IqA/jzUFYP9J6UdMf8SerqXtE2cDOsTPxE=;
        b=G07Ab4muOSQGcjLBse2inCawn1+YRK00sxHeb45Y6r3NWG3eZEscDh/1MEcLLMgv3x
         e07RNDwyzDLEe5gYZSuVlihIPWD/SqYgkx7MOhCfxIxyLlFtEA1I1L6HA/EEAksa4Z59
         p4sdZSdrV9mjj7pF6CnKRhBi4KvBxfbea8stEnCEtpGjXIfdvQqm/42u85J7hwFi8tyS
         dlSgrF6eVehL1HMpqjHOr4CWvSC2i25AV9hSyvB9fD+ftLbKGY1J/5kdz+ZD78Us3fk8
         F2Ssmnssy+SokOCytgZJ92O5rCukJ8J+gst5Qthwlq4dxCJ1elt5CX2bTFOoPi7L4GtJ
         0COw==
X-Forwarded-Encrypted: i=1; AJvYcCUSZ3YDSmsiHraocBTLOwi15NA9DHncB3DLORgcuJOX4/5MzZrNdtupGECN/kza3OX7jo2YSL9cS/+Q@vger.kernel.org
X-Gm-Message-State: AOJu0YxFX+bM+yI+PrVepdqsrwNCNRs6G78xyFSWN1MZRd3JI2RhJWD1
	KgG8c/dVrK9Kl2uNkeVOAiuLZVO8w5e0xoAPDwDE78vqg2v21L7FfgL6ZWPDDnE=
X-Gm-Gg: ASbGnct9LRORojWmWDBO7ew1+RQS12oHWquAFK/BujHA2kMeXiZaRc5jQpVMDq6akss
	vlFu2e6P6pqHJPGg5qeQR7zRjUaP1L5Ohvixq7whri7fUvwu2HI5ZGIt3XuMBb2mlML9/CFkNBR
	G4X+u00R0/XWay1FDnIpwtIYa8DRUNBAD13fyCIld3MO0p/wXQrUMiB6MkdiZuZsz0AOxxTqGRE
	Vf/L4nCBisJEvkVR6U7ONEJe9rQQFdlroaDcqZUbEqod9Aj5AIW1ODuA0ghhmiN50WDVguCb0Jy
	uaIt/FVT2diz6iq3OW+XWxPMuRepobRpNasgZatbiW+VQ5qCeyckRjRIGCX+yDk=
X-Google-Smtp-Source: AGHT+IF/qIrOpR+RbXkw+mJBR1TH3gB6xPsy3GUgB1wSHHUldAHyfxAZI6SomCiSn2s1hM7o2Zfdjw==
X-Received: by 2002:a05:600c:91a:b0:43d:745a:5a49 with SMTP id 5b1f17b1804b1-43edf680d22mr29157485e9.4.1744104784399;
        Tue, 08 Apr 2025 02:33:04 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.33.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:33:03 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:17 +0200
Subject: [PATCH v2 20/24] arm64: dts: qcom: sm8250: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-20-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3506;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=omkn3m7HWR7M8yA3Wy2SKdjKBChDLn4G9csmN/Npsmg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0nKsnrVWZzBEisFbEkzVk7Dwfx+5aBJmVyA
 cICw/KgXpWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtJwAKCRDBN2bmhouD
 125sD/9W9jxNwTVpd7nBVeoMBxDwN/ldcSOJA7n7Y9hThPwHeCqPAn6tnQUVjfa5PwXWukWypTG
 V8dH6e//1ZQFU3gCDUftAvschpaZzqFdRKQZycHCnC+bp2Oyyd8otMZsbbp16sAloW65B/+6V42
 j40lPic2ZqYsizWSNfycfKbnZbohk55PcU7QHHauQDqR4QOjP32ajER/vOMaG+F6Tu6kHBt8kRF
 VRr4mNqQ+BBBDqwG398G3RIwsL4huBp1UjGZ5/GAjuMsWY37WUTkPvm3Ol9jQ+Fe2zmLp/vfcY0
 LUVJLWuvSS2O9xn8bIlEzNQpZQQC5P4aLtT8JZCc3JxVWe8pvKTQQyPGqIlvoyXfjWeOhb8xfOg
 4XH6ahUFQd8bfogSzy/A5s66sw4ioMOzrgA2tzHVrs+kch3ULwmkgbRxJUQqFOxVY7IAehuYBFm
 izPBR0suv+2CIZPhyd79Kwg9LIkszZTeSq8okAyCjkkEr9LbUH0pVZ1tB/A406HtbBF9aSGRRlT
 CuJAlIOXz+ZtZM2jfu5f3XEl0JfBhY3Eo52kNN0IhS6rLB58ZfN0pyt+/RjerHhUjrBkNu1mU0f
 /yt8182YvTtPfYsurc94jKS+GDSCdCKt2LUq8Ag1JtI1iFuz0hRI42UwZFRwVhARoXFUEQ/gZkl
 o/kWOf94uddXWwA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi   |  3 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                | 21 +++++++++++++--------
 2 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
index 01a321d801af3389258abd54e60c39272c59fb7e..465fd6e954a347acf15ef3199afd8d1a198f95e8 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
@@ -659,7 +659,8 @@ &mdss_dsi1 {
 	qcom,dual-dsi-mode;
 	qcom,sync-dual-dsi;
 	/* DSI1 is slave, so use DSI0 clocks */
-	assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 	status = "okay";
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 68613ea7146c8882150f1b81dbc0f3384d3380ba..0425e14840c6a299aa49e82ef5010fc9ac090296 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -5,6 +5,7 @@
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8250.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm8250.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8250.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -4861,8 +4862,10 @@ mdss_dsi0: dsi@ae94000 {
 					      "iface",
 					      "bus";
 
-				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd RPMHPD_MMCX>;
@@ -4953,8 +4956,10 @@ mdss_dsi1: dsi@ae96000 {
 					      "iface",
 					      "bus";
 
-				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>, <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>;
+				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
+						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd RPMHPD_MMCX>;
@@ -5011,10 +5016,10 @@ dispcc: clock-controller@af00000 {
 			power-domains = <&rpmhpd RPMHPD_MMCX>;
 			required-opps = <&rpmhpd_opp_low_svs>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.45.2


