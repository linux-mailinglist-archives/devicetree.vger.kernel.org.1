Return-Path: <devicetree+bounces-141122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E7E15A1D763
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 275951882BAC
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2C68205AA4;
	Mon, 27 Jan 2025 13:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u075diKw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA663205503
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985716; cv=none; b=MTngJVEHmlpZAfHy079ziB7JOIjmlvyZAsO3Z1fEIhA6TObdci0ixsKfFkDu3blLu+eDyKOZvvkOXhprH6/kYoXDTvu4BBstpF1zyQnAEG+2z/+3udE9IlblaXg9xDzuq5kKpncYohfJqSeatlqegwo6CaxMlLWcubed0lPhFE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985716; c=relaxed/simple;
	bh=eTiJpd0ZzHSjlbk+10lATAcIQTHEVoGhG40y5TkdTPk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=QXNY3l6phy0ONg5UuMfb4dPdcQMxzLyQ8WB7P9Z1N6Iu1R8Lgh+FRhT+/ZFVac4sGeWY8PPMfzqtDqFK2XM1/+8HmxsHyo3XrkQsVOj8xYAvsZWu1uFi7B8Hpt8X2DVTPVo0PPlwGtF2TSiOS7+r9xm7kzNQd+liHmU8inklSls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u075diKw; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43620a5f81bso3932695e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985713; x=1738590513; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uc3dj3WlB20OL3wdtK23hDevRCxJCQRLaPTSMnYGso0=;
        b=u075diKw41Nghg0rcPFDr7TghjSeDsvQVCT1cGSYUzJrdNwSAlvtggKM4KE8RvJSAR
         +4XCCpcTOQtaNoaBCi6V9wSrp64D9xnJj/dhxIAkfghJn2o3HpCkpyOFlLXmMHBVrjQB
         kpz9OFPXRaOCaVUj1NaT+2UG2UgKT8gsdq7U3uqmIcdXx9s1myki9abkuew9G4kw6277
         0fkLey+TQ8ofm4/5SdQt8Bsp3EukoNdwc8mwNQOLgFNtM0m0LIiN1h3gtUVnaBBld/ww
         mD9BzhpmrcoP3Wl2DLvD4ACbnkHggESXmgKAmynnXqToXZvB+RnHjd7BiLNjYUfmecQw
         +QNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985713; x=1738590513;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uc3dj3WlB20OL3wdtK23hDevRCxJCQRLaPTSMnYGso0=;
        b=LnEwI86rGhhmdzYyPTm4slTDQyazuXY2fLxlSMfGTW67mdUOw9xz00n3wkMwl9WGvh
         IvMwHNCJzkvRuLh67nQuRF6+Zov25Ab122ULlkQod95m2+A0cZTAuUAqT8UO/bO7+9mo
         lTBQjj0VYSI/+kZmY0SUsB/gmPbUV6aydRAmXQM2h4nXaZpPPrUM/s5+rWzegudylE/k
         x4JJbvXx1FWiuTjYDeHZ5YNROcI2GVdOSPFvqqqtLiAekxCbRsjL3v6klHsUyV5Bv9bq
         ZUpE4LNQ2rhNzKekn5hggpHteiN5Pm1iS/vASDipB4HuXDg3XnklSl5ZYY3QEjZGTThO
         vJGg==
X-Forwarded-Encrypted: i=1; AJvYcCUYdn1cOzKRJZKf4Cksgg7/+61gkdy9th+Z1IssEXHZbzrAB+dsgQNEjUschugLbDOeyC6BTqNoribZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyMZuq0X8FxRyx8kwh9Q7uP2AXpuNO/DtKSmbof4N8oVUARRBgO
	YfJWshFJ1RksgcnpC7iM4D4s/ZT0Yi60WLN/McgOjrMx9LhBfVeWWhwcCDORjnI=
X-Gm-Gg: ASbGncsaCgHuSkNHMpWpe/9fjhRip1dIozyqsZL2YyBIHMZ3CfQR0avqWM6r/J+bYWN
	JQWThGhynPMBJenxL7gqcZrA+FzdYSHkLm7P+AiP/wX1/f0tvAnqfYbc7n3gxktNkVfOe4H1Je2
	+W1y1DAw6vkbaWXESMD2KvCiajLB8iQ3pxh7m5K6DFl+uFyRvHGYCeon6W+vnSvqe3qWiuqQVCm
	LXjxk1fVaO+1LmsOKq1xVurYDoQoQFBJPEiacvp4lwG/lRys+R1fUX2NWtiQfZXnKG7bDi8o0j2
	KTrP05k1p1/YotUCppE=
X-Google-Smtp-Source: AGHT+IH6OF7thGtOTMQu5GRLiqAbg2ec6UxonHKN/DjUiMiDjkVTclueN3IU3wVpGmOYthb9GZohqQ==
X-Received: by 2002:a05:600c:4743:b0:434:fecf:cb2f with SMTP id 5b1f17b1804b1-43891460b86mr146305505e9.5.1737985713101;
        Mon, 27 Jan 2025 05:48:33 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:53 +0100
Subject: [PATCH 20/24] arm64: dts: qcom: sm8250: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-20-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=3495;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=eTiJpd0ZzHSjlbk+10lATAcIQTHEVoGhG40y5TkdTPk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46Qx4Rsd/ipHmsAz0AEE93cfNo9wO5uLc9vO
 /rB0zuC7eaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOkAAKCRDBN2bmhouD
 13TeD/45ytLjFUbH544Cx01YhXBr7uJYwYgHHmlUUD8xJiWVD8DLw53bTkJaP3nGKqHGjt5p7cP
 pZeNVClL8kwkjkvbmqPYLOL8xYCGxyo0lrknowQmX9Sj21OdQsnxkZmVNfKxVvYvvVa0zizSW3v
 0HEy/9mDRyg1eady5GiMnKBX8RO8PoLHIQTRub0Z8JkAmjQJYnB4YDGPA4TIy6C192x5nPqXvgM
 094PqZp/9dzpatUxi4Kn/gMVjqk6yHbpj/yQIocl1CQ90tDznSFU9IPr0JNyArviQduYeSmrFHX
 2ID+q5LbAEfMbbhMMDn6CyAgGUTQGR+Dd4UxrvcWnO1UGy2VkyW1BBg+tOGiIgsXxu/Ye4q6mIx
 SaO4K8/Sr5iotaGv75orPPqVSIyDRBG9yq4TdNr7w6FRcOf/ha9QXoGadxu0BxHeSL8Q/Ym9Xnt
 GbftzuT44hg/sPhW9taZOIVRJvDQzAd8IYhOMlTd2kf/7b3XOWnGXr1CqUgLXlBWgknSVezMPSi
 W2LAUPU3FsLfT5HJ1hNQn7P7MbbdsOkou8FkDgUkdaLtaltjVU2ScTiD+7/ER8pgJihhIkL0Nlm
 hdEeY3OzQ1Rm2LTt4l1/PZJmoQoCZO3AYNbdK6ylods9npasgBmOi2gc1Sjs1zKJfHRGZL5yCDc
 xl9QBsRpRfKzGqg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 .../boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi   |  3 ++-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                | 21 +++++++++++++--------
 2 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-elish-common.dtsi
index 813b009b7bd6818b92b243f0982d2c7ef903d421..5723999db89afecb666db1e6c937794455cf7342 100644
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
index c2937b4d9f180296733b6d7a7a16a088f1f96b76..751294c5ee4385437364ffcedcfd64248a42f6cf 100644
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
2.43.0


