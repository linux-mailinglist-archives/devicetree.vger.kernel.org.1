Return-Path: <devicetree+bounces-212187-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA02EB41F52
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:40:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 76B767B4666
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:37:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B66B3002D9;
	Wed,  3 Sep 2025 12:38:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RXjpvW++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA382FF66D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:38:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903086; cv=none; b=CDpb1bFFd5VtEhErWO0j2KMWJQPY1B9gce5HYV0OnJ9ZPB8+kbLHv9AmBiQbkob2gO6DKqhKtx2Orxq3SRllwiDSkwwrJ6K6YYFjp9cf8mpbwO/LLmltUroZQl/m00t8zFn/cgaKbuCg80fS9k05SCYSjq41vhCL6xkCLtdbAdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903086; c=relaxed/simple;
	bh=gjoz5nwDFenqDS6hJyaeD48yf8bV5QGodUXJKjCBlis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hO17/sYqn8a98AzlA1wXfjVG1sARsEUuMDMvqISdyCRc2ymWsBZ/tqMq/IaFuovvtT9HUuKoIvgtrzYSHyRGqaX2WctaVmsUz529sNxeJD+Lxb7VE7l6od+2L6GgvDHmkRXWMDOKiriAJctH7QiPnELD5dshIdU9vVAk21mloZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RXjpvW++; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45b7ebe667cso44974615e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:38:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756903082; x=1757507882; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gBq2AL4q+hvpDTTNrtzvNXi1ClcvgDH146gronVyWSU=;
        b=RXjpvW++9tlQpIKRmuE83qb+pb8DhYBxyjaEi7frQRcgemhtCPPP7kTuCzqbfTuEei
         VUDyUaGl3y5FeqEGwcaZja61mx4f9VSgYS0otk8I+mrcjoQjWCXjMgXApmREivDc/ci5
         vkPD1KHUJVlfYQAyzWAYYUGLfR3lFGSAisRlm0zJZj6FHt5C08I18aPPwRVCoWwGemh6
         9bnCTRl1wyMa7DAeA2Tq+R5Y5uAfZta+Qn5u43Vc48GIB7dIIoT3IAGKbIDp80p99heD
         8v8Fk+GOZovNnPF1jLeRJ9pa7I82nr0V5vVCTCl53UZ5H0SIRPW2e8SfQHGxIvG9O+2o
         7q8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903082; x=1757507882;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gBq2AL4q+hvpDTTNrtzvNXi1ClcvgDH146gronVyWSU=;
        b=RumagE9dJa+45pYZ+amuG6YErnsGEMoPtmnv9ocPd9WHc3YWbCF9Hw4Wzuv9N7eVoD
         QkpSE0Vk2EHtw9dPVXbfWrT+hxdEnhDsMOEVg0TeCSFuRnTaiNZvAc42D4No7HpTpgHT
         CQq5WXdxSBhG2BHCcoKqXqlLyt3YKNdj1FosYqGxglRHdofyp/4Dk6Xqkruekck4OTgz
         LBccOEcfOBAWXA2CZuP4lN3LqDg8YxEKl0P8Y5xP5AqWKKQ0ZNErQ6YjuItfSFySN1Mm
         pKTqfUUxPEISn/tVh+GgvJiNNBo/adrIsdqBi7Kha8uNLFcBpsfqhHX8da6K9DKYhrGN
         2v8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUSw8eVTIheDNNvSM6/BbVgSp+JTra8LcfcQ2TQ+E+cBJk3drVCtijV7rPP2gAw7ESgQr1jOS3aj6Iw@vger.kernel.org
X-Gm-Message-State: AOJu0YyydQt9dHhxvhW9jupYxQGKo2xsf1hfVU0DM6ik7T7nMBoGlLLR
	bYNjjr7iRtLzwTSFCYZEthCoKPPJpMHCL8JDMU4o8xNhi1BSeGvnO5e1HogdOc2tWWA=
X-Gm-Gg: ASbGncsm7K1Wj9KiJFWQk9n8X19Y+YtBSOUa82gPckkmRlk9laAvKs/IcsxeDZ1+YIm
	raYaCeMmtNtoYGxQ7xzsg3SmiQaT0RQ7ddeionskSGl58tFT7g6pFNcWtp8vHK5SRB3eQsRyv1Q
	1GTq50GvwjL82wtuz5KNm3Zk8uGQij+6rg8IZCUmKevoZl/rp3aEnfWdYXt5VTE1yV7ifMjuptN
	6qRoPP/wGZWYzESi5Ko1fpTCvLZCBKpjc4B/yiwFQkd8tuR/K3hRSdf2WE+rA7O4Q5UMiR9CjGi
	5B0S+9grfT1AgW/LQUlOcXWmXKc+I5BltrLEFMiLyhiLO0ZLjkw3TRZDz0rtr3a900Rl031kYbM
	ntF4jRuLbCXws8A6xZZ5WYN0=
X-Google-Smtp-Source: AGHT+IHHjMfeUR3VPdWUhkYeBHLjrlPVEuiMEAPZ5ou8OrAN5gHnevrmutrWJRDE5DWhNlET0FIhsw==
X-Received: by 2002:a05:600c:524d:b0:45b:8a10:e5a6 with SMTP id 5b1f17b1804b1-45b8a10e833mr115504315e9.15.1756903082281;
        Wed, 03 Sep 2025 05:38:02 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d0a7691340sm22526782f8f.39.2025.09.03.05.38.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:38:01 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Wed, 03 Sep 2025 15:37:44 +0300
Subject: [PATCH v2 3/3] arm64: dts: qcom: Add missing TCSR refclk to the DP
 PHYs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-phy-qcom-edp-add-missing-refclk-v2-3-d88c1b0cdc1b@linaro.org>
References: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
In-Reply-To: <20250903-phy-qcom-edp-add-missing-refclk-v2-0-d88c1b0cdc1b@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Dmitry Baryshkov <lumag@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: Johan Hovold <johan@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1464; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=gjoz5nwDFenqDS6hJyaeD48yf8bV5QGodUXJKjCBlis=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBouDagx3idw9QI9tPiz91f6ITE+nyun9EJds1pt
 OKHuigb1g6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaLg2oAAKCRAbX0TJAJUV
 VpDyEACKT75jHFu/u91xhCbvMJWadVagqyszBJuFCNz0c0XNoJSRkovYTbCmhGaCSsG1Ec5U6Va
 OPT7aPr4V2pv2efX2EdEVy/6k66jxUZZ6nfl6PNyrVubbDo+LoPsC3T9zqNWaLEub+QHJGrdPQ2
 wuzKNLlckf6lfDX5CL0qsNJBjIBk5M9phhfaGZOne8eSj9/vhMBfY8BGpPHqrJLinoPEI72lIGs
 oiwTBIcXU4Aknf7NX7iIgsLxhZz2Cg8Gorio9zfT8Cp9a8ePFeLQzfeiA5TkRaPLqo36WGJ3CqH
 P/uEJuM0gPabltVHJQHkXrjEjtwjvRR68ye1EWgO1ERuwSSxuPmMysz6Vamfflr4eSj1c2f7xhc
 lR5wPssdj8zOUIMVS57+yzu48Y0sf9P+rg96n0lvoHsaAsUErq8fd5pp41sNXd5rBaFrTxmyxnO
 usAsFMPchM3EzvqXC2OCZR49gugUbBbMFi5RaaAIf4lXmzmdyv+sAmnFmfwI15/6gwxtY6jcXKj
 euI9qY2s0uWiudY9Y29UqR+3mrQt1uGVKfDSprjHgRpMlaKZ0v8+OHiZNYW5Or/76riAcVTCSQ+
 kinxeHZ3eqWmiLj1XyMavclXOfNhgUU6Q8prwwiFVnfyApijOR2oXzmxY5Gc/LJ8FezMcUEeDhU
 xD+giQpWtAUIu5A==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The DP PHYs on X1E80100 need the refclk which is provided
by the TCSR CC. So add it to the PHYs.

Cc: stable@vger.kernel.org # v6.9
Fixes: 1940c25eaa63 ("arm64: dts: qcom: x1e80100: Add display nodes")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100.dtsi | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 737c5dbd1c808300041cc8897ca1f7450e16e019..495356a7ebe662c68385a19ee0657033e44e0c7a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -5670,9 +5670,11 @@ mdss_dp2_phy: phy@aec2a00 {
 			      <0 0x0aec2000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX2_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "refclk";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 
@@ -5690,9 +5692,11 @@ mdss_dp3_phy: phy@aec5a00 {
 			      <0 0x0aec5000 0 0x1c8>;
 
 			clocks = <&dispcc DISP_CC_MDSS_DPTX3_AUX_CLK>,
-				 <&dispcc DISP_CC_MDSS_AHB_CLK>;
+				 <&dispcc DISP_CC_MDSS_AHB_CLK>,
+				 <&tcsr TCSR_EDP_CLKREF_EN>;
 			clock-names = "aux",
-				      "cfg_ahb";
+				      "cfg_ahb",
+				      "refclk";
 
 			power-domains = <&rpmhpd RPMHPD_MX>;
 

-- 
2.45.2


