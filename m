Return-Path: <devicetree+bounces-164250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF046A7F9C5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9771B7ABD2A
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:35:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6634B26869C;
	Tue,  8 Apr 2025 09:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NkuSyAWA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EBEE267F50
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104774; cv=none; b=aPqUZJ8fxWa/jCBfyUoVBqZetN3y8elmapJ3Qp9YicB9ZKm0NW5oW/uo7EFdjAfDsYuZNtrBmoiMmLvy3Nh8JbzS/v+ASIIhZojVIY+Al4qtX4n5IJDGY+AVZkx5/RNIizzgSf/TpXPf+6ASkb9lE7H9BklYJ2nAkITVZ+1wtQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104774; c=relaxed/simple;
	bh=wrALnxrPHUXPgAdAIi61FIS6cjVsAHrdY0OAJGvKs+M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AZ+P4U5H3gK39lmtcniDdreyh6PEp2aoel7kWq4/Ee8MghpmJAgMV6taV6szsZw5JngQTyfdBbjkBhjs9xv07FufqBegtmhPb01RR/wl7CMPjyYYouoeS3SNq4wq3hE9casn7nl0BBMudVYg4C6DNUJEeSbsBXlCF9KMDqQ+LSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NkuSyAWA; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf89f81c5so3754565e9.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104769; x=1744709569; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxO5+JoEiCzlmQhedz8IDum/Hr0w5nRBROvtuW53UYU=;
        b=NkuSyAWAE6nSagkDHFe9zvRzaLKawRqKlC/GqulydQgP/wz2y0C/zWrmGGE+slcvdB
         Laf5U89U8zPc867ketdjoDZwcL6TdL2IiNCHst3IZcfpsDRtRGcXDdTrvoJbK/J4c27E
         9jzR9LjOjkVFQoDF56hbo7/QmNd0GdqnBwWiWiqrz5C89fPVS+fDF1mwDlT3YKzrnrCw
         ZcCOvNfFjvtgyP6qX0NYrUeAJKgz7Dc5ZyizV8m5iuRDRxkTCqv5sPVMv1f1xh7x3k1z
         e2b70tOEOFhu2MRUsP0ZWdhxMQPzr4o+xLOsudPtCnQuY7/C8HcS+rU8GiTTmwiZdkap
         1wTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104769; x=1744709569;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NxO5+JoEiCzlmQhedz8IDum/Hr0w5nRBROvtuW53UYU=;
        b=Uc/GZBeaZkZYTocTs+GlsREaOVv72Ebo+uDskOOeu1n4CIT3h266YWAIf9tfSaYo8U
         K67imMD8P9bUMHY+25cUOMfF1d+j/1vOgncpdg5nj9H4nKEzanmVDvwLAR4mKjWR9YC5
         g+rVf40l8Dx+09fQQKV9BmkuLmQ0gBlnXpnPItgfJGhv3LS1p7YuJmMtpjN6muiijk1G
         nt4BSPjr8iAhoZGr9WeE2eQ0diQalb+IqOC4PjFKNzRjd3FItQgXLNwKjO3s1zCnVFoM
         RAY0sFZ2Q5yKnl6bFkil+m/Piul0yC5algO9xu7UVQIOr6p7ghIfhCb1F3tzbgut6YIA
         gJYA==
X-Forwarded-Encrypted: i=1; AJvYcCWQWuakj+2ZCCaT/Z42c0kth9cP/a15cUpI76WhWDpOzk6LxQQ2nRHmvM5NLMr3lm/oXFTMW9CfqxN4@vger.kernel.org
X-Gm-Message-State: AOJu0YydNlhC9/aH6ZDCqHUov4h8tidNpnCEM34qPL8ZWLWfuz0zPKcf
	rLtyh9RnP3elE5SKYqRqxWXTOMAksJEflHVmQ22FdA/ymmjH00Bb1MQhB0o6JS8=
X-Gm-Gg: ASbGnctCjFhCGGjv6aISlQqGe3rmy2OXZ5gm3ifEg98WvIEB1pYsGl8W4/WObgya1hs
	AK6wxpVN10oOBDJdy8Wi3KjZvHeBKy7j4q0o4/lRsOs2sGnIRVZzqyr/bT+K+aXQuHB26TmhyiR
	J+uAwug6YCknQPuZ+HdscW9szaarRxZ8DGRnA1qg6SJIyBJvU4lt4iQpylyW89lF6cN/Og99dXy
	Op4944/QlvCpN9rSLymHDLOd3h3q2nSwn5e0WVhB/hasPlM98+k90iBkMCVopivkYXSulOfq92m
	tfjgcbyJMgxjQLOHDIMICKD+MzlhQAvLAPc5yyLjcmjth9IDA3dQHKLOgI3W84r49Vcam4RnNA=
	=
X-Google-Smtp-Source: AGHT+IEhqJRPG6jiXOM4M7EtymJybaJJaVAr0n8j1sg1vCzP02cienEQR993Mp8jqHgEpk251RiiMw==
X-Received: by 2002:a05:600c:8488:b0:439:9b3f:2dd9 with SMTP id 5b1f17b1804b1-43ecfa05efcmr52827275e9.7.1744104769614;
        Tue, 08 Apr 2025 02:32:49 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:49 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:09 +0200
Subject: [PATCH v2 12/24] arm64: dts: qcom: sc8180x: Use the header with
 DSI phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-12-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1514;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=wrALnxrPHUXPgAdAIi61FIS6cjVsAHrdY0OAJGvKs+M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0gCno9j3rBs6lVgvbMvXZl47cJ3JVVya8fm
 N+o1EoSU82JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtIAAKCRDBN2bmhouD
 17O4EACYJ6gNVD+8NUzbFnv+DaCuI3AxBbsSAaFusRUDf1sgrf+vZ6XV/7Ai/XMf7h6+y+0ax1m
 EaNuN7ijLoeQVPkWietQeBLL45UQKwZnjcd7qH5Gha3IjaDrTXuui/mkMWSUisKz9eqQDhwsKiT
 eAopAH18+Z9O3FKlIbN5zhgt/+zl4I8yLKontztD5QYhzPmROvsimJdkQSgdnKEi7r5gDuVA3Y0
 P8KifghGDBNNeOjIuW3SM+k2Qe9/ZhylcBILt56otfZMrY5TBgRh6OeaO988k7tqs6vO/Db+z2s
 J7KKPRbFB8hIbuE0R4j9AfDzCJWoEBnzrlp/WDzpwGnnTnl0F6IDWZloR1WbC4DzooFvr6QHnrV
 cbQaLtkuDI6AcvQuCPLOgJMd6mbWMWDAYRC+SlE3I2XD1OHYMLC3Kk9hmN/f2W1w4x2PsMRXjBF
 Zm43Oi4vGImC+fHhZqNJFQuNjP0AUteDatirsBGpMTBWMOZJVXKaiQam1Z46I+/uKdwmyKy4S24
 L62e9ZvaOCKsO+6bY7ZNw5lZsIjdqECuPNXS3fnP1Ce7b4P5GgA/dXroTxm542Zm2/HE222pa24
 VrtbRfqDh6HRyDQ3GZT+9y10aYO1swiISvy8cEMl/JiqmKlBPgF2TbDsPPtMj3p2vF5tKh4+Dup
 wgIiGe2WIPKN0mw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index f142eb63b8d7f443a8df2334cf3c205353762893..30b8a666561d7b56009db988fb70bbac402a934f 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sm8250.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sc8180x.h>
 #include <dt-bindings/clock/qcom,gpucc-sm8150.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -3465,10 +3466,10 @@ dispcc: clock-controller@af00000 {
 			compatible = "qcom,sc8180x-dispcc";
 			reg = <0 0x0af00000 0 0x20000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_prim_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_prim_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>,
 				 <&edp_phy 0>,

-- 
2.45.2


