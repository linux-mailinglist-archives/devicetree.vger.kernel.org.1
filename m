Return-Path: <devicetree+bounces-164252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC599A7F9D0
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 92ED716B203
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:37:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E35F3268C5C;
	Tue,  8 Apr 2025 09:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IjEyLi0u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5756266B66
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104778; cv=none; b=scb8Cb+YacXivo0FwwVADnXB3VBxnn/Rg/ZEOIFbV7ZA0Qs0PV7t8FlDZwyRjeB9+/J4t9kQEw4otdsl5jYAOghiDsLX+2S+N5/RHFe3/m1JrQ4OPVNSkpJK6mrhA4egxyRIuX/JbtdTFQLThFMp5HW8qXAeMZ5LSK67V4jAYGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104778; c=relaxed/simple;
	bh=fZFbC8k6T5MU+Ow44u3JsSjxzpu0DWJ4yHdQYHPjNAs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=J+DcRoJU5svflCZuguVzD5cM3Q4eDqR0XoXaM5J86hYputBxdTriM4Dtwk1y+YFAc0VKXQAU9rpzmzue0qwA1wqeqzYmGwEBAfbfEsXLwDU3+lRPW6ZCg8PWOYHrGtCmgG9aOGfro7Lp3aj60w+HD347ERNDs3FJfkoWRYT47T8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IjEyLi0u; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43e9ccaa1ebso4113635e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104774; x=1744709574; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QklIp3gQyq6pxiDQB72pDv+w+oBX0RJytSz2Um3s23g=;
        b=IjEyLi0u0vJS67bnt63yTxmENUA+N3My2UUvoRAynn3NcqOA+997LKVw2ilfvKBsip
         6hYbRL6Rd1AaS/QK36ChD4iWlhclAygUOW2/DvvKLfT0bTrfglEZvbyYTIjabRoXdYMi
         9Onggoci8aoMTfGprKynzCcw4mzP4sFajFH4asnc8H1aN1O6+TxliyYUCLJwWikss0pJ
         opDTqY8xxJXler3W7tgJ3cyhYwarECFeBg3QENEvhvdavpgTVMpAaVieW54Gk8FEimey
         WFQ2UjSJXJz0wQdSohTKR56wiL/cA+hcRhII5nrzt2lQva9YhumWGl3k0dzLmsxPcqFN
         Hw2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104774; x=1744709574;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QklIp3gQyq6pxiDQB72pDv+w+oBX0RJytSz2Um3s23g=;
        b=N1iuZjM7wb8WY56iYY2yxibGepwS6huPvytWXJok4jEYrU0IiPaVwgwY7xaMHu6UEb
         BjUfc/kALLsdwnxxpHjts5NqAI5TBCWI7B1BJNtOzEAHK0mZv9pZ0CsBeFzBuTGDr59J
         7KGKdp3krW+cONc5EIT0nWHb7gYAf9GIwb4wF5YkzS/MsVQt21cLZm6qlJT1P1uo+T82
         DQMZfYRQd7P9j81fzTMEmP/gmfhUEtDNP+28cFDgpuSKtAA3aJbPaiNBd/LHPDxi9Yud
         yryf/RdzNhf9aFXK/d6sHQlLQENLV6wJJgAo7DEgwnBDEeHW4fZs12KDzddWx8AEdHPA
         y3mw==
X-Forwarded-Encrypted: i=1; AJvYcCXq77t1L51TCbUJzUDiHHTYItbEv3jAEZYB6SJJfhwmlmiOeRZqmSliGOA/nDWpbjWfFVIX1ukcyLWf@vger.kernel.org
X-Gm-Message-State: AOJu0YxPruEi4hlq2zzrUlRqjtOrg4Nkj9BJUqYFRjg2qOy+26iiox81
	66nBjH1II8lEcevg6rj4p8efbvzmzNoai+x/0vbtNM/VnhvCEOBaab71U7weoOA=
X-Gm-Gg: ASbGncttv0v99JRk4o5F2pJ67UvStvIUrHsC1BoVr3vsz+VcmoIoatY8GAUuFzCdOAQ
	cocFBGEeIxdDoW2A7Hr/rtqOrTPCHJUM0E2sWxNWi/RTvnL45Tty3m7kCGlchnWTHPRLDnEkPpR
	mAzbNP12hgpF9HDHlSe4KJexN7nTRFqJ9xofrUen+2SEPxI7MMKL//ckTwYWM+VNJeWYwopDBOL
	tDF7V1rr04I+1lBe4cWHiIaEWX2WmDlGNGeYBm7n5KQfLzocG9inmIgsi1NbUuNd08EmHR2oLEB
	HKXIgnshyPAexzYdwl4rIHK6/iKDALendEyiSnJ7bbF41XHyDsSW9aYreBtHrJ4=
X-Google-Smtp-Source: AGHT+IEP2VOZqM1Pzgr0xVtzK/PXfvs7NFE5l+7yNKQVcBTdAwjwDPecCJl9XbWdu0FuKvJQUBmrEQ==
X-Received: by 2002:a05:600c:35c2:b0:43b:cd07:92fb with SMTP id 5b1f17b1804b1-43ecfa43d05mr49319815e9.6.1744104774199;
        Tue, 08 Apr 2025 02:32:54 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:11 +0200
Subject: [PATCH v2 14/24] arm64: dts: qcom: sdm670: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-14-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2362;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=fZFbC8k6T5MU+Ow44u3JsSjxzpu0DWJ4yHdQYHPjNAs=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0i2hjZsgkXzbnYF6c8v2rCWlyShL9ioGmJK
 ui8wbYZ6tmJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtIgAKCRDBN2bmhouD
 1/xMD/9Kgx1p13iLJQUDA5c1nzEvhcv+9xRQd4hJWUhnB86Y06PqGYsvrf3qW7mCVuuLw3pbpjn
 p+Hc6+ZJlelRH2YG2YjfOuvdDxaTuUNnw9mvZc0ZfX9GWjjACFlQlGZZJ7ipfI7ceGHB6blAuzH
 zHTrlXRWI3loKMjujEhzZxy0g2i/E7ve1qWF5Tm+yKQtvPsdkq9xI7qtY8QMoHWX+gidZ6fSS1U
 IbE6oS3ZJtSqFaVsPXa3Re0LBhoCMdbzaWAjjSbJNXR6lQYFf7NqkLMAuZ0nmGz054yywF0N2d6
 oFberQaPHaVcoh8qMdYcNrlfWVrU1foGgfwHITmtkoMoaJXi27o7c6ssteKk6A/tEWkgDtk33fN
 YmuuicR9FM0E1ZteOCv/nzk2ZtwfF85Tq7/QMQ6eC4GKzasS2KhNXhItOVwCwGhmE2Ts0JBNqcb
 7mYjV+V68tXF/2tsF3S7ypjycmdQqNC7WobstyTApfg+DufTpf1kWNtZ0Ypj/gLR4IH9itirN6H
 LqM3CiE/SiTKSe8f0WEylHKGPAdFkvh+n6H11H9au2yw/EMBC09v66ynDZbdKE9o/TfVATPug8B
 GY4kL+n0tkOiPgG+BOsaCaSfMA7XGAbhOzWQMlohNw+Pe1trTwnBVNjgYIdkEZyfLoeZms6Bpb+
 UCBb+9sjMtgzLrw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index 279e62ec5433af70c0a7c594f2c5241800b465cf..a68ef6741f8d4f875a8897493c9f903e8ed3734e 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -7,6 +7,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sdm845.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sdm845.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm845.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -1720,8 +1721,8 @@ mdss_dsi0: dsi@ae94000 {
 					      "bus";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM670_CX>;
@@ -1794,7 +1795,8 @@ mdss_dsi1: dsi@ae96000 {
 					      "bus";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE1_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmhpd SDM670_CX>;
@@ -1851,10 +1853,10 @@ dispcc: clock-controller@af00000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_CLK_SRC>,
 				 <&gcc GCC_DISP_GPLL0_DIV_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi1_phy 0>,
-				 <&mdss_dsi1_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
 				 <0>,
 				 <0>;
 			clock-names = "bi_tcxo",

-- 
2.45.2


