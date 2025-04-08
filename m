Return-Path: <devicetree+bounces-164259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFE4A7FA03
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C84A1189D9C3
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:39:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B10CD2698AD;
	Tue,  8 Apr 2025 09:33:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pmKHaLrZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A215A269833
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104789; cv=none; b=lJWvrwA65fWUK+dQj5Mr1P1WnBVMNNiLisn4jALnfzD9iyZLUzgz6e3Bdfq0xp2ooE+qyJuGRNjhI4c6r46uWbFQp3v/Jmz6HYjNCqjsKRbOy8N42Wmo/RF7Grpdfu06F2nDsoPLBSyI/Mfnvlx7UOLsvKVierz3I2hQnmvM+is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104789; c=relaxed/simple;
	bh=ZAK3laSOyAkGBhO/byWfwE6m03KDoDdWnPvDi7sSsoE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AIwHwo/4tgbCJ0Xb1BN0ydkLB9hg/ZldiNPPTf8gjjV7diWA2phwhhqCW/o9d3jXNqW6A3wdR3B5J14WnipGklCC3NQeisF1qXb1KN65GdaY38qGHBL1BgoBOa8mqyVQags1mNmeEVgyZ6IMYXjVDa4XJHiGIuKMSCesARcUttI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pmKHaLrZ; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-391295490c8so600388f8f.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104786; x=1744709586; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cq7IiRmj1tTFDuLXnaM/qJOBryK1F0+gMBIe1qznfH4=;
        b=pmKHaLrZ619FjnHBhTpCWbSEdc6N+A8+xmYNe97N4PBiTogphshPMicmDBVjRafuI1
         B5pmDrP1DaHI2AUanMdouA9IE77drYdaUqUQWYUuelyr3teBaSIXM8LYZxvtO5kCfGXX
         wSoqgSFMbRrJhihv7jRmlYCPeTdhAsUvpkyHYIRXwVL3yTKuUHcJvzysyFze/XvXsmFE
         KQxpQhrY162OOLsVnHeVVNTU996MDo02ZuiNd0WYuLvJP4cwtu4PYdNVzkYf/KwU6nM7
         eGNzfTuF/Z5hqJ5NjS6IVPejfxVlSaZStS9LtLItUdBAg6v9kAXILHnS5GPrs90mYija
         Ugyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104786; x=1744709586;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cq7IiRmj1tTFDuLXnaM/qJOBryK1F0+gMBIe1qznfH4=;
        b=N3SUxFS0EzRmsSWk4MJ07qtwozb3r07BYIic1FVVSvwqM+HmltT6U2JjNcXgCu1hIA
         ma4Q77if0uNmn/X4H+WJNY72C7OwNUHiSkVegGKsv3GtkAXksDb6ZlV356lg3CwQVbIo
         QIvTeB3+yP3xH4kNaoIYtmumkhe4oZQ8xxK6uy2uknEfbQSqrGrNSdJRKaluPPpdXE9Z
         uqt6enZ9sh8WLZsINLom1woD31bvUMHeBSBUybEcs0jbyJFjTpMQ3kO0gUz4RF1zFZ+x
         ujnIG0nsZdyKgI0YOWSyjRwcJEcrydnOYOHNkmo7+qWoI0qps4r/t3SHLaPRV1fDQJ4+
         VGBw==
X-Forwarded-Encrypted: i=1; AJvYcCU1FocdukbgRypJi3oXzP8IWANdvCVIJMzUMmx9AiYbwst0c7aCzoPyuXVnwl/6eGRz8ETkBhZS+C22@vger.kernel.org
X-Gm-Message-State: AOJu0YzCxvyCsesnaia33KLSzRZdbTih2yl/m7dps1kDkEJJR68WjQXD
	1wWBRV3WOw/z/4bEhQc1nNQXqKFHJ+eKSkIb/HodD9c7v7P7B9pBb/Z0f84XOjg=
X-Gm-Gg: ASbGnctRq7xXWDN54DhMUSQLfrZG0cHdcO85rIJS4pwKQzhQZd/OSRy6t4SuP/MFj2t
	WS3j4I+6WJ79RRdDdcFThE6mTgv4hC8wGf8Y9GvXMA0f89jUqjpIgPy23tyuW1llU+YtHupSbI5
	M+0wA82wTDZTH7KsMe/Lek0o01kSlAHRXTX5m//zmIsGH4QoltEkgfCLjG3FQNxoOh2WHx17aR8
	QNq6f+n93VqZVJv0wVy+cwcODjeyt5Rl+zfiUk22xyvNMvSCdR/kr9Wp/gUdUxcczaEL9edY0/P
	x+TSgzl5tDREt/fMYxOYb+IENo/3kUmhGfJVz2EHLEInPMLmRMd1xyZtAa0v+HE=
X-Google-Smtp-Source: AGHT+IFppcRDpFhAxSSBH9vzHOuDR83i0EQcGvHB1qwXLC6WybuTBeeXqTaAjlQ14UktPvJ3F+ctOA==
X-Received: by 2002:a05:6000:186f:b0:39a:c832:4f3b with SMTP id ffacd0b85a97d-39cb35a97camr4662403f8f.8.1744104785871;
        Tue, 08 Apr 2025 02:33:05 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:33:05 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:18 +0200
Subject: [PATCH v2 21/24] arm64: dts: qcom: sm8350: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-21-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2499;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ZAK3laSOyAkGBhO/byWfwE6m03KDoDdWnPvDi7sSsoE=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0oVIVrFNGD6BTTc7M654WdlIf+QcGiaVqcV
 f3ofHnSIeKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtKAAKCRDBN2bmhouD
 13/8D/98lEp2ojdJ8qrrqhZfc77BOkM2DyVpotas5Aq19PjV+RElM7V3CGzelIO6tj9iOhoX/1i
 PQZsieEVrr3M7WSjzvUCKz1Kg8CGBMAowFQNlP8guyo+7eTFR7azpn4+cAmYHg5ebsKIPmIrDSd
 l32WpV6gl4+vUzH8JYMN8KeJ9LwbzKdONq+G5AZBnhHB3mF6deg9oWcqCgXx/59ajUIfOYq+6U5
 RjlwWZYyhDX7q9TE6a/nShyHw7JzrJ3Raiajo6itzEwVq4pH6MOU7Ge+qj8xlgehYYYVZL/bB95
 q/UG0QuimPEL/m1wtvxygTGspg5812fr1TBLIjvEOBKq8RP26QALaXDIMWTx3gOEYkT4ciZgk0E
 O+YH44/bmDbFZDr69yIY7ddgyJ/LXwoliYH5jRAXcc9FAKX54lx281XZpSoVi0El3n0FTqhzV2I
 wt2iqGlnv/jUv0v7rtR9z+0iTnWKE80HKQhn1HpsUkwnrppHGG77ifoiI7kZV5rZ12sP6xmzNTk
 J/PcW/VNHNtY6+k7jE65J3/Uvlji3rYWmbajldOXkDVfccU9mxmQCLbEafQ6hTRjuWxMXQl1i7o
 zJCyFyHeO2mo2qqv7iU4zR/O4Z2lCn2CXifLI0ETVz96U2Fxg83Y21VSApM536poLlvrBxOX3Rp
 f9NA6XRs2+p9Bbw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8350.dtsi | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
index 5f93cae01b060cf99c0de56f603e860aeebc5f67..5676420bd5ccd26cf0fab87195b076a782675db9 100644
--- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
@@ -6,6 +6,7 @@
 #include <dt-bindings/interconnect/qcom,sm8350.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8350.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm8350.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8350.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -2958,8 +2959,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi0_opp_table>;
 				power-domains = <&rpmhpd RPMHPD_MMCX>;
@@ -3057,8 +3058,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi1_opp_table>;
 				power-domains = <&rpmhpd RPMHPD_MMCX>;
@@ -3138,8 +3139,10 @@ dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8350-dispcc";
 			reg = <0 0x0af00000 0 0x10000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.45.2


