Return-Path: <devicetree+bounces-164254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 212ABA7F9D4
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49EEA1677AC
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:37:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5272268FE2;
	Tue,  8 Apr 2025 09:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MoKGBMiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAD0E268C6D
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104782; cv=none; b=trze0HDco4Ro9dLNEmzAx0iS0uef53yzT3nGSXam08CCKqiZvQGxJhW4jpbyYcGg0s9YLVatF3lzVxeZof63CR00WdeMcD4u3y0RRfDKVQIW2DVPJtHJahSgMHf44zSLvVjxqytuKGbvMASajZCGa4pb0Bswl1rOh/ywNYX7JCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104782; c=relaxed/simple;
	bh=nuW/vxcb/ZKgkR3gzpTaJBTlNLt2STmXWCfO+HzV3Ts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=gzeGF3t80ZJY+mEknwWIyNxIzvi9QZB+YWhHQwC6Hk63BoERgpS66mDC3sjyePJ1iQ6wyt9kyicMuhuI40AzBK5p8Pt7zol9XQ7YzzAUvrZK83OLfSKRX4iax6Fkc/yZD8GbF64Ru2D1AD9RNecI4UYkHSagOHE38yatQhRV+xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MoKGBMiD; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf861f936so5231295e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104778; x=1744709578; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V+XprdFtgaQu6ySSqwjo1DQRvEYVehxDPmieYGF7z3g=;
        b=MoKGBMiDMEztAEhztk6221joM1dExCWfYh1mTx/uNeljbD5/g4DdYXH0Twwsfh1ehu
         hROof1PxeO49Y6FZamMuZFR6m/gc9X7fC66bNxZOUeS2J+8gtf7K/k2uP5JPLlM8bW+F
         aM74UXOLBveLiiEgxEU18Fi0Q43abz+0zjcR3eCEUo3tSPz+OVdxM/0DUMCxVf66UaW1
         z5kO5W15y2whfMj3pgtWrPb1EPnndC/747tfh7n2ilLgI+WCwg88LhIJU2JHdn+ekYiw
         K74FK6Gx6amA+dUUa+CTG+T5XYgDvARYXFVw3i+0BbN1OqFMh3D1LacB/zMXIucCFT5O
         GfEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104778; x=1744709578;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V+XprdFtgaQu6ySSqwjo1DQRvEYVehxDPmieYGF7z3g=;
        b=DzCeK87WXM9x0nWVgX1pt25pMR7is9HKNrWkEG3a4+iabe8OI8XJuNoyoohwexKULy
         OzALwjZjqWMnexkuIceiGAIyr5ZKeC2Nb2W+v5AFWysyi9aRndM8vgTLN3P6HMmO8Hvf
         oc6HhmEpRUJ/sInW8lMVvEcwnsNlr9FpBCGMNNLrH4kQuWeMYKosAP29RaQBWvh8Oakb
         D5UH9mLS2EeBenJSfpy/GLBPNHeKDjkNrDaFrNBM6h1F8TomWVGqsKnRL/QnaZkogVjP
         oODtabrPSP8aOACV6xiAM62WRXd21P1Vh/GsgfwuHf232A0dfGQKybJ5KvfmW+AzSDH5
         3VjA==
X-Forwarded-Encrypted: i=1; AJvYcCWOK5nhjjr59ESYXRLL7IvZCZ/h9rCHL14kdWgzRTQlG1l5POtNAlrMlhMeluWziWH4zY/CdiX7LpDy@vger.kernel.org
X-Gm-Message-State: AOJu0YzuI6nBzHT+kZDQifG6T041acwr1fCDhSd8deC5eeMKn0nXYvvK
	NTksx0EJhnSKYh6HoUT24qNLCFJYvdTRIcVBOgs99kEL2i72Zdcij7SmVGFhb+c=
X-Gm-Gg: ASbGncstR8xNUWG0OxtxVgTPvZ01Lzs8IPh8vKYz6NYBQRhltyDsMV97pkbA5yFZ5z8
	Z/oNPNk2XHK0RNLN8ogW/m+vP4GNJTGK6CtS4rn6CHwdAo+yySjQY9v54aIvR2Ijk0DQQOqT4CG
	X5d2mMtXmrgYcCezSee1J6nUt3iki7EFjZ9a2fmmSJIQ4hcvodO89XNGOeAi2OfDfq2mXLb4txN
	rrXoJYP5GvIzCVp0ZLd039MWZk3TPoOdDAFGjY+DIrf3WkdQEUU2mXoJzCyrvEHaLpU90JeD15l
	8ay6Juaynm4WKaVFLXghixxA0IE2EUqosjMD8xTU4kJ8FVt2Llp+4tqmzxAlMmM=
X-Google-Smtp-Source: AGHT+IEAlvKsvmekTE8MbaYfld0A5jk8A0PjrBe0iOBb/4upO1FB706dd+fBeOivbMd67C6ajFF/0w==
X-Received: by 2002:a05:600c:5247:b0:43b:c228:1ee0 with SMTP id 5b1f17b1804b1-43ecfa45bcfmr54294495e9.7.1744104777933;
        Tue, 08 Apr 2025 02:32:57 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:57 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:13 +0200
Subject: [PATCH v2 16/24] arm64: dts: qcom: sm6115: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-16-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1781;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nuW/vxcb/ZKgkR3gzpTaJBTlNLt2STmXWCfO+HzV3Ts=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0k6k41a2POziiz2ffLEe8lnNt7dHRTGtgR1
 K0f0LFD1UGJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtJAAKCRDBN2bmhouD
 1+LoD/9Bi+gLhxWqfVCROZ1sIcikTmFnb6M+cl5wNUVy1E2zuDro3WQ8j8ICGwAWtQMwUrjg4aw
 yokzxLJEExG5wh26JuMXo/b6a7iU9Keezzct0cS9a3kAwraJ4pT6IGJXQ04If6p0MDpyrz+U12M
 cMsIU8c0pNCzwXalVDcc+LERcoVZX3xqKnBXHE8bbh7NsZ3ZJPVEjwwZgoEovWHp494EWNL0QNJ
 /bmjGFu1Rq4uwRdE5JfSl5/KBMh41ArrnEh0fuy4UiStRJp7F7oNxhMapUWM9o7zLeHHCwFWySK
 DmsdbU5MykDe63g0WchN91YQnagZEORXZKxW36pnOvUCdauEVlcA4Ii/mykqysciVEckyjwwij7
 8DALEXUqmeEJ53cqQjD7MRH8Gc0esBmQuJ92jRUETu8gsOBOWlUqoW7SQFjSBGKt20zrvdFt5I2
 apYl9K2ZGdbboAI4+v4HfAzxryoHowFnEngX39ORMT+OYkF8s3EnWkc6thBFStE7dU7Cgvkq38C
 q1mfiPukyw6lP5sC09OO7y+AvawaZGJAXpn/hzOdx5lJUxHE/Nm9RtcLRZ9IpuB8H00B7Ewn3hl
 X44S91XN5ya4tkTDP5AwZWGw4ne1Q7k/Z7OcjfkzVlWc+sXweH9Q2HJSFE73ff+eMO42pbr2RQz
 c5+QjbaSTGTd0wA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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
2.45.2


