Return-Path: <devicetree+bounces-141118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 36AB4A1D760
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:53:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA6747A02D8
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D5B5204C1C;
	Mon, 27 Jan 2025 13:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XQzmbsoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217521FFC7F
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985711; cv=none; b=YoHf3JT2qRqWqML/JQXmZ4ECAwrGjQpKAvePcA/l2W2AA3X0AUjzF/HkLVWJW1lAi11q7JmP5Nf0s6CgqVxmuUZd2IP504K1Fbq6WygjYnG3A0hbeD2LCZdvJObY0cnZWG+CFrxW/Vu+ovP/LS9XCvALnseiku7cyJRgEq7O8XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985711; c=relaxed/simple;
	bh=h0cVw3WhBwhxWApd6NyQCFGpyPBt3xdpuWP2D0cWTpA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YW3jcmqaAusS5Xrv+e4t8iVqts3HF12BfWqx0IIwyecG5bWOn4Tlw/9NIses2IsTnqm4I7/5KrHPicBbC0IdyJ8cpxThRzJOVxN0FmUG6/JvQ2oxhhwGtjpI07Y0UNG9Pu3f2/rLX8YCtIq+hjaaCWIAA2XRA4+a4+A6bA+jkLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XQzmbsoD; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4361f09be37so7287615e9.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985707; x=1738590507; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mY8RQtjFV+gxytYKCRNZfQ8KR5dAf8lraKLA1ofVlco=;
        b=XQzmbsoDb+cNFg+diIMTuvC1R71gpzLIcZtZkrw3+yQTMlI82mR57AmaTGAdBIkdSl
         gSJg98K67xx30IBDT2mko2+cWfvuyaEFC/YPpyTUO4E+Twq6+aMucWHCFSikVGWL+4+m
         kVUYH0SEBztixhGhZLIJUkiXuh/Pm+C7L0CUed2KeABPY5oIPYmBmbytNCc5/90SndhL
         CWlY1Vcov/DshA/J6al0UtatdxQgvC+D6/7xtj/0uC0/SBgLHBaiYx8J/ykt/rjVY7x1
         gWS3KpHbhQK+dii43I0TNoE+Cl2qlnMGfYhc+AAAXmVMu/sRsi2Y1fzjEPTPm4/h18ob
         gwow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985707; x=1738590507;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mY8RQtjFV+gxytYKCRNZfQ8KR5dAf8lraKLA1ofVlco=;
        b=o8mljfBFrXFZjSWl8h6BnxECc/d04wqxzpQA5FcVX1qeAqiHPwcYdy6NR1LzbqjUDF
         iRuvDTkh6XQKuw+XhB+HghnLd5IdsITdN00EwMbOpzYqfbVNgn1btE9bKILiKe9T6koc
         htkfb+LT5nDzjiQ5wy2lBFV+XyRPmnm07pLn4CWqDwAnmkI/O04j7z5L+YlDhHz7gLCw
         kSXVrWec465gMjB9fV22+qVv67QARB/ogAX1F8SwCdYbACbMjZYiyskUu1Zcs49uB9qS
         ZwHrSCn4E5Uy4eubrdc8yBQjJJfyUhEfUxuYKRrpi8c4Jr1euKAtpx7bHmga847H6oI7
         Q5NA==
X-Forwarded-Encrypted: i=1; AJvYcCXbmOgG5wJDstXedKcUwp4AXJPOFW+NefcMcmpPHX3jPZK6UFgY9ug02SDUf+o4283O1n/QPm4QSRur@vger.kernel.org
X-Gm-Message-State: AOJu0YwTVbW73J8Xugnfcqooi46LPjzWFks1uHm8mbtXzXM1iPRKxtVl
	9/ZK0Ocn5IkOChDHxLr+VOzJFy0gqMBm1JQI5ojACA6lYFTWsqGfxBRVThzfL00=
X-Gm-Gg: ASbGncuENGI1GZGlxQoDyCemThhLmlXNDx77lvUwU3g/uc08JFjLUL6ELP82lNO4Sz4
	Rh3mAm/nZ5l4YVzee6JAiFAjxKyRe+JgWf5E2VIeOWRTbJ1nN8szr6PhBw+QFJyM6tqm+/Fl4SQ
	30gBTG5n/tiHFJgXmzbIKGJS2EmqRn6XzxBMNUWZy3vDQAKkRHeAEfXr4WMooe7+iSsGu+zTho3
	ANWuySm/TcmxMvh/KXkjl47YvB02EjGRR5aCXkYNQIKAlTTJ+Bd6Bbork+YhbojwDYptgNcOgis
	XFXZJ8hfAcWGk68UgH8=
X-Google-Smtp-Source: AGHT+IHYNAjO3ohTdcNEKnNNfGumM+VSrKwMfMbaJmkLmJbYqUNosj5ab8kqUUiRToaXhPBPSxsPYQ==
X-Received: by 2002:a05:600c:4f54:b0:434:f9c1:a5b1 with SMTP id 5b1f17b1804b1-4389141c9cemr144223645e9.3.1737985707345;
        Mon, 27 Jan 2025 05:48:27 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:49 +0100
Subject: [PATCH 16/24] arm64: dts: qcom: sm6115: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-16-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1770;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=h0cVw3WhBwhxWApd6NyQCFGpyPBt3xdpuWP2D0cWTpA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46NdjnUQ62jxyJHl7jB+tJb+rml19JaIusJ2
 vlqC/BMnTyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOjQAKCRDBN2bmhouD
 1yijD/sGCCYjELVMBo9So0fhD95G96vzudT1GT1MD0sR7vK0T/5CvDitMC68zZ23IDMAR/Ao+/t
 /66qC0MY57ryHytXZw8pXTbvK4wWmvLQOFiaT650VHSI4vglnSqjL8hROyDZ0z+8jOVtTvfBjze
 vohPzJlPeDOLQamXS85KrFFFnsZw7ogVkTIZd7k40GlnOVTTt9GqgbzIsv3zx6fvTs/o2R/q7K7
 uJO36P5CioBxZ/vNiZ4alUFrQWlO396abBk1UKIwYCuvHzYTkn9wuCIn+CDJwfy/veP5IVHgmlO
 64dA1fEI+Su53VNkn1dhXApV5yeesGt77T18I9J+lg938rj/8tqvT9FVTJCLtpnHgQ8mtkXnpYs
 JCGawBRAyzR38kT6bcH50mol4M5I1xLfwAbTry5rqJzLhXRJcKZI34WPHYjH9WPbLkDumKoPBtv
 3EnGGPAaijQBbNq/XyxDPyXXOahvGt8Gghz9UPfvlnw/eyuMF614hdu++xJCuR8BIyr4BkV93ys
 cOS+jBCquqhqB5fkO/4XHf47EuM88WGnowYEFu2dhd2J5UfiAIGcFKresZOPtHIcYvYjYXY2rut
 flWYkoAXXQr0Iq+bijTMfl9IlHKyjszWD4ZySn7BVxMfTU0UlHuoyJ0NQG92ugmmovp9qF7McRp
 LFBIEQ6XX87ZHpA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 94c081bf7a892654e684ad806621a14dfd4407ab..55a0db0ed9cbfa2560e94ca8160a31ff3f1efc25 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -3,6 +3,7 @@
  * Copyright (c) 2021, Iskren Chernev <iskren.chernev@gmail.com>
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm6115.h>
 #include <dt-bindings/clock/qcom,sm6115-dispcc.h>
 #include <dt-bindings/clock/qcom,sm6115-gpucc.h>
@@ -1960,7 +1961,8 @@ mdss_dsi0: dsi@5e94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd SM6115_VDDCX>;
@@ -2034,8 +2036,8 @@ dispcc: clock-controller@5f00000 {
 			reg = <0x0 0x05f00000 0 0x20000>;
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&sleep_clk>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;

-- 
2.43.0


