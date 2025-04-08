Return-Path: <devicetree+bounces-164261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E55E6A7F9EF
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:41:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FCB176B06
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:39:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AED7269CFD;
	Tue,  8 Apr 2025 09:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GJHsF8vJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53658269B07
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104793; cv=none; b=kMWRYU+F1xzggpHwSos5O1K06uPKOLQDfr7jrYYufm7q0eoqqMeBMgcBEqBNv+Ebss0o1ZVH0n9Ipf0Wm0jrKsd3/oWF3hb9P0ZWznr62BbvMNjnnAIj3GxCJPxyEqBNHI8yK6749+MfQbN7nDfBrD0jio9wNX7Xmar0K6ZabZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104793; c=relaxed/simple;
	bh=kv66JXJMQwvyQy8IMat3vtfyIifmhMMDCFfmYyWx17o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=A2o/zXB+IAkjSix3tgN3+JjsgP44EDzFDs5iTecNykr3O0V0hMqc3H40Hx5IKJIxQ6trRw20poEGIgm/lGO/czsyzbCtRSVOWzVcGTVs9YfRC3Gx01IxDNDFVvWki4P2im5Qa0o78o0toCOLBuGpuNADUaoH7fYhWwtAFd9tI70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GJHsF8vJ; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d16a01deaso4381055e9.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104788; x=1744709588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NPpauOlUZM7m2C7OOyRUvio+pwuYkpY1PK+AHDphjYE=;
        b=GJHsF8vJ9bHRuCVbkkQf3zOUlTg2PJVxpTfJWy7gJSPvSeLAg42nR+RRIhZJopB0Cl
         U1lblWxr4WIoGOHyuaEyx0Dctn1+FXtsoLVA2eqb/Xp01VHs4MQGsGzzMvkAEDfdPifv
         vJWp7lu1cdBtSbREku97QWwLa+M8Ss5SYRCmW757hNBi6by+qaS9B4/yWqUab3ff5YQi
         F93vJeEzfbtaf4km2CJiJno5q7hTz86HHvxYGjjX9eccIdBE038ZGMilEZdf9nw5q5/Q
         IrWOn1ThcNOdfI1NarYfBp4r+ZH2tpZkPRjhPrDNn2Bw01TOUBbcDlAojmMi8UnGSQ+M
         qEIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104788; x=1744709588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPpauOlUZM7m2C7OOyRUvio+pwuYkpY1PK+AHDphjYE=;
        b=PFx1SPedLsinoTMZtNQCCOn3mKguaKhB82/RO6hGIW/coh3fUHLHXXXV516WuGKgZX
         BhlK0P38kYlTKyFd4UHFZ8dhp4otXa2IWhnlEINZ9AwSI2Y6JvzsS7GuOZvu9Xc9H96l
         j8JF0hGSHqJxiYGacgMB3zxJi4tx1HtbeYjDQqK74gJm1uAx3cRORQDMXg8L3MT6enO5
         9wBkV0Mw6MJsKNpZZGq5TgdnlsqFV++N7vqBkwL5czFPPhupULKEgKXK1YRMT+liRa/L
         tgQ7ZROt5/LVCVzpQA0VOzmzkTz5/e7BdRuTRFdYEJ8XfQFkAKyFrdLmyAmh/9jDtcvD
         K7ng==
X-Forwarded-Encrypted: i=1; AJvYcCW7SOdQuUeKKrf0vpFoTZMEIrh3ulPvQxpJTDHD5RgDB3TW8JIXRfPQVlG4K1AZzSXp7pRVFyPjYh/w@vger.kernel.org
X-Gm-Message-State: AOJu0YxlhAGHkUKCgGVaEwNof6ZIDPJNgfS20abnHLd4ZSV5TUcBqMKe
	CtayLMJUsH38JBbznldvWeXHesxyhKqUEQO/M6/0VZJwneJYY4gXYwrVySTjnB8=
X-Gm-Gg: ASbGnctcFRLrFY63CFyjexNW4RRtzeqoYQNyeP8frGUWdlc9Rrah9jQpR0TLr9Pz17X
	+KKcWATJfi7yk1+PRNJLx3XEzeVMVpfk5p6Mz8YRXnBlcSc+xDHDuJYrRqYSVhG5uDdrHlyhVjz
	NCWHS1bX4c+kcuw9qs+YF1HYz7vexxXF8R5r06Fgz0s6XHZfvCGqtsN/h+fjEEpA2CUDDUDrchP
	puk5if7DMBYKkTuspMFcbOKhe9JXAlRvbciwr03QLvqgN1qCqnpt+IHuF2zs7CFKk9MfmjMoR9A
	Y2of6Jxf6KN0T1NNhcd+3agE9IvMy8ENXbFHEXBJd+TOY/+EmBWgIzsXmOHZ86s=
X-Google-Smtp-Source: AGHT+IE/HEYFhKvGIn1QJ76xbnrC0OtoMKOwDHlx+9LFg+ZS/IsGCRzhg6tovUInEbBoYNJWi29H3A==
X-Received: by 2002:a05:600c:848d:b0:439:a3df:66f3 with SMTP id 5b1f17b1804b1-43ecfa18ba7mr50772265e9.6.1744104788594;
        Tue, 08 Apr 2025 02:33:08 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:33:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:20 +0200
Subject: [PATCH v2 23/24] arm64: dts: qcom: sm8550: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-23-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2292;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=kv66JXJMQwvyQy8IMat3vtfyIifmhMMDCFfmYyWx17o=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0qUE3gakt+IF3gxl2+EaGVQmeVGcLjzcagA
 lV1WJQTC+CJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtKgAKCRDBN2bmhouD
 1/66D/wNh0NPP3faIwSx9t4OOFBTSeznCbPFHEyoCBQPf/C6kedkJPE4YY2QE0LqyrEnBvosIdj
 4IP0bmPyc2gLUPD8NWHmjJRv2qqsXVTxOkssNoM+IZjspFE6z78IEMFfgRmqtSpZLDm06bMbH7X
 PVudqu5HFAam/GX8wDch/q2UWXD5eLFZMi2VTnSILLIOLz5wHq/EDZbXRq2pam0T4MrUjqrfthN
 XkK66WCQoEcKLN74QlhCEkReLUMTmVGcT09f0WeXbk5KFmuxbX9QZa47NFxLdIGL990sAqVSR26
 tg/dtOnYg8aiqznQvNk90JWO0JYCs7dsrnCYSnf2rA1T+GsOieaaj7bXINSDFpXNmWQCggDJHl3
 KEfoEuH0kbOlcv/IKXrNCBWiV+6qsoAiDvrqnB5wvM6Jso6t5X6AeTuu/G2Gve/8ylP2aomhpPl
 fD8KYRbXZKdkkRbnPqnIusTw+t8G8ZSBDaG4n1VWB+W4DWQlU5WO+wqMXSKIkHRHYReaPkZalLS
 hpM6ayQNRDJ1iHZHoFGytOYl3gwsADSFqJVDxjkP4rMLYCZ3/yvhwqPYqfRYi2fZsU6RR3gkuye
 vWfBWVA+ZWMujANHLp7oob9AdoNasK8vVo4YfwxLEuNm5I3GWxcFzsYGrTa1tBZyR9xr2vsvpt0
 l987snkDH7qYokQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index f78d5292c5dd5ec88c8deb0ca6e5078511ac52b7..a2732e04896e2f6dcdcd019d90d23731ad0d15a7 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2022, Linaro Limited
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,sm8450-videocc.h>
 #include <dt-bindings/clock/qcom,sm8550-camcc.h>
@@ -3554,8 +3555,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -3649,8 +3650,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 
@@ -3708,10 +3709,10 @@ dispcc: clock-controller@af00000 {
 				 <&bi_tcxo_ao_div2>,
 				 <&gcc GCC_DISP_AHB_CLK>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_dp_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <0>, /* dp1 */

-- 
2.45.2


