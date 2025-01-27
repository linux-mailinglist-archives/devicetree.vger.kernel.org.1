Return-Path: <devicetree+bounces-141121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F57CA1D761
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8CC2F1619C6
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:53:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A77B205509;
	Mon, 27 Jan 2025 13:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wV3Qm5gx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BE92204F91
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985715; cv=none; b=ubKxDgfI8I8+II0JM9ERJen1h7L//oCxcWu8GPFo2212LAz+PzSMmbZOApZ52incmxJuTLta5IkF1X6mkonQ7/SqNSOl29HiXYVlUiUHJEl0hKPcfjbkiXgiXL8+7Rb4ZcA0khCSxIl2zX8dc1BdVTUDBkMW91cMGADJ1tqAN6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985715; c=relaxed/simple;
	bh=CyufeZicSnDkcW59HxvT9leNYEDXngWCu/28kgii9/g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NCDbWdsaXGtiAKXORbMpCrsJkE6jwuYxrH9ed5i7XU10CEWH47Z1th8OtxiEZdHhRHXRY9ZQeXC0IOH2eWLoZmV+4dzi6aRcZLhG63VSe9IqGfGFOIUlZjIu1lVyO/N3jJkshQx2fucIY9YCaBj76jjqGb6j6DBNpDafQ6WHZcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wV3Qm5gx; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4361aa6e517so7279185e9.2
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985712; x=1738590512; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lNsJqIvq0L+hRpO6UD6pxYUSBx1K0BT+9I87jYJmqR4=;
        b=wV3Qm5gxqA2G55Em1NIVT/xfRArXiuz6Ia5b2BG32tYPHkbZCAU6VBTlvKA4WOZm2Y
         ruZZRSjvKDUgtoifdaf+lxZefRDy4Edk7JoBR7l7Aq+aO+MuddeDF2xr/NUxbYHHDq5P
         oVZIB71NYGk/iBMtLMyqjipYdhUAXHtFRKPFV496uMRytfrGIZc6DgbqMKxIgbxYnKj+
         mxMhMU7SaiaHzq6wpo2AXL8TpJA+WClUErGYa9V2AMv4LPftKJWP1lPdecr9E0NhTBfZ
         xb24g2IBM33Vk48zPBC0ZTZ3KwyZxJeBHr6XETLiQUtXmYUdUXBDQ9snzrtXj+splnNP
         w1Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985712; x=1738590512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lNsJqIvq0L+hRpO6UD6pxYUSBx1K0BT+9I87jYJmqR4=;
        b=tQwVi/2/uh1Whe/K9bkRL1uocXpg/jSzuxLeM2Axy+o5pujst3LkPXr3afNv9IPC4L
         jHqxh5IfHwTErdgj0bpVOsvJzdhN0r4HqiWEjxSF2I00N2NVSPrLakxSoXQGUZW7OG3d
         j6/mDjr4LV4h2Z32sKTCa1ptRXpBtfyu2uQmpF/nlHRwP815m8RAGGnrix8mvjQHV5rN
         rlHD82jWcaS1muk6kxinze8SATF9M0qFUEbN4BSnXCOPugeDoVRpvrrqApN2kPAcKtY4
         RUw4eBOoy2enhAuyNtPeREsXNL7xZiFnFqaYcAguo+1fGkBfyJIJ9ZS+hI4sTMguusZn
         2zBg==
X-Forwarded-Encrypted: i=1; AJvYcCVOyW/JwAHGoAC/0FCDBTXLeLB2rj1PAlm3zM3mG5q/7rqCSjQg19aBySDgelTdjGcHksechclt3D9L@vger.kernel.org
X-Gm-Message-State: AOJu0YyA8s2vuKNb0CiriTGmSoBwCsTYrCXgtU9FZVbKEXccslPW9Kdd
	xqVydkXfN7K/b6IulU30HnrSX9pilGDCHwM2H+c5n4IKbChLeM3+0RhVuA+U5DA=
X-Gm-Gg: ASbGncvzKHE6BoyvU+PPpG01+qs+Teq8hyue2pgn1KufpaOKdFfmD8tGPkiJ3LUYZlZ
	hCl9YJxHjCXLiggNCYVC/wmrxpl+y+//O8cfuhBipnLuSGBqD9nmH8OMyTkqX+HFxMpqWIEVIxI
	xS/g6HGNpN8tP0JYpoGlqL7r7mfFX7b5CpQVKPBA/aBFMo0meMrpSwMiJVA08vOPKQIRMYFDgMl
	LqP1G7ogpwN3ecPG20w47Z9EyFYX20P/VYOCnEBXe17zmVdjXp/tVIaBnyY29CbJ6vMIGtzyUSv
	JEdZDFog/UI9XaYwqgE=
X-Google-Smtp-Source: AGHT+IELKiorTXYsFawg1cagsmxlVOrT8UrfJu1yytT59/UEPeHOSk+B6MdShlt9yVBXrIXIRihu6Q==
X-Received: by 2002:a05:600c:444d:b0:434:f335:85c with SMTP id 5b1f17b1804b1-438914321ebmr149305885e9.6.1737985711907;
        Mon, 27 Jan 2025 05:48:31 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:52 +0100
Subject: [PATCH 19/24] arm64: dts: qcom: sm8150: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-19-9d8ddbcb1c7f@linaro.org>
References: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
In-Reply-To: <20250127-dts-qcom-dsi-phy-clocks-v1-0-9d8ddbcb1c7f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=3141;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=CyufeZicSnDkcW59HxvT9leNYEDXngWCu/28kgii9/g=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46QXXdDZKeNRCKZUZ7IL2BUSuaNPjgYxX9AF
 ZmHrGi62Y6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOkAAKCRDBN2bmhouD
 18aeEACBCsWMSkEtIN0zSs0Pqp2GhGoaDAsZ3iL8hVTNJG3E7fupM+wftFkJl6Fq90h0gERPWFx
 XiCxSmCNsjoPo3/f1VWWMzRTr9D5c4cFrFjhmceme8FvEmpiROdQ4zHqWhEBx31wYrDynDy5laq
 3P+gHA1A6V3VX6BEtMUWzs46SsPIQbBfWZlKD/wy7CpftR8xp683J1Q4bBfdp0475vIUfZrzu4D
 cmyyOFAKEz6rB/pB0GJn0/71ra8qsvuB9t8Cgvqc72bUWn+E0jj3iCKL/eCaIZow0lMA+u8S+4R
 DkCuc4I8gpxz323LppeZzPUiwR3e8OtpyhSgbyEby8UgI6d2vd6FGmd3ouJxycnpWPRGktIhuxj
 X4nGeGFUbHndEqZM9zIUEc8BEgvST2myGZdgYpSYtRBkSp2XOQ6FEFuZrdTM2qYwf5vJqtP9kcM
 H7aZ9odbO/4WDqYm01+XWGCaZD3vAssA2H467VtEeIsfIpX4nsevlmSlTYIBKPtFFP19hX0v0e6
 c2FcasvnOf9TcmJFqn6o51Fy+B3+70DgDYQ8NPr06Ff14ZoOSd8AIbXz3vioHlUstPkND70FcoR
 LvNMrKwnSvJPJ0qitHdKq9b0cqk5AYsQOtH83B+vNBwF0yWaXkxy3fLJ2vaF+W8vcfnJech/p7+
 n+cE8s7GUMHl9Jg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts |  3 ++-
 arch/arm64/boot/dts/qcom/sm8150.dtsi    | 17 +++++++++--------
 2 files changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
index 6ea883b1edfa6c511730550f4db0cb9c25fc633d..20587535ccef881df1cdff33f5d21dc1765949bd 100644
--- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
@@ -500,7 +500,8 @@ &mdss_dsi1 {
 	qcom,dual-dsi-mode;
 
 	/* DSI1 is slave, so use DSI0 clocks */
-	assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+	assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 	status = "okay";
 
diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 4dbda54b47a54d1fa9c3fbeb441f8bc852e52f75..2aca3fdae47ceef9b3030613ec2b8f3a6c1a3356 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/clock/qcom,dispcc-sm8150.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm8150.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
 #include <dt-bindings/clock/qcom,videocc-sm8150.h>
@@ -3981,8 +3982,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SM8150_MMCX>;
@@ -4074,8 +4075,8 @@ mdss_dsi1: dsi@ae96000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SM8150_MMCX>;
@@ -4130,10 +4131,10 @@ dispcc: clock-controller@af00000 {
 			compatible = "qcom,sm8150-dispcc";
 			reg = <0 0x0af00000 0 0x10000>;
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
2.43.0


