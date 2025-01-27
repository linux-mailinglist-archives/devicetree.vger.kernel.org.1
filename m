Return-Path: <devicetree+bounces-141120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F90A1D75E
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:52:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF217188713F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:52:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4410E204F8C;
	Mon, 27 Jan 2025 13:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JldgJlkU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5673B204C20
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985713; cv=none; b=s6b4yF7Y6/nWua+zElN4q1x8VVkWkCbV17UNiESyl2zpLASxBRKvok5GZjwrmds/+ZThGqCRWEZ72PyU9ecN+JbzQvfpNwThlZ+yp+3xtUhulNNVkgjdkCdMLBQLIE0yelqpOE8BGa0e2MLzQUHEMAzPvSzOsKHHiR8/kDDOYlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985713; c=relaxed/simple;
	bh=T8F9q6L3xxGtSl+njNnru6ExReMWCn8MciYg/Hh1kjQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KMudD/ngeo7eCvMrqYAK7vc54IFEnMBhmpstanl+Jcosf4sS46p2MDfujuv3bWJ1msU/YeT/BMG+CGyKKrRiA5IC/u8kBpcF/BaO2Wgl1o+AWo/XGA5M2auYckeAJyxOVkftZ29S2g0KsDuR4tCsu8G94rBpHf2wbU/6tDGznHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JldgJlkU; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43658c452f5so2811935e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985710; x=1738590510; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JXi/CyMU7iHWGF7/c/KfypBCsJz8/NJCXYKeZ5FTdwQ=;
        b=JldgJlkUrjdVDBT5W7rMPhK3PNo6q18URrFz2sUvS0QmYWLUpWj34oTUL2LUOWZb9q
         H9puOm9ZyIwyPkg5w/CpMxPWg9noj59mz4jErKuUvd02BntBQcKZE+lT7AdyxlxKJ3Rl
         DM7aGAk4R+xliQPS0vbF8Hm4FtLbbzn9f6tqrpKJ2GBpe47f9sEE9qGWHvA74FaGUrSd
         WNGmTFJYVRfDjnSdYYUntc029MYsq2bHJLYp940ZWR6beyZGVSmK6M4hM/DRbm8yB0Sx
         PXV4+Z9PHNAuX8XBZiRAa8HqWp8YpDtKQHDMiSa8YUcWMxaWB8j7OjSiv2XVzS0dpJ3q
         8b0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985710; x=1738590510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JXi/CyMU7iHWGF7/c/KfypBCsJz8/NJCXYKeZ5FTdwQ=;
        b=qtmfeeneFISVe3fx9E1o+L82jLG7cQQfEWNyi5mXm2Ipc4FXlOrCw4Z40E2AhcibuX
         vORU7Fn9R8DIuaFEti1Bb1XQgN/BbY7RMLSElafKHLt5IkaykuyJEitARsnWeeTzODoD
         0InBh/S+JmVQNjVWtFhIXr02aBdloM/vO27x+lsGkzahXi9igaDdRZgephJePkZF5I33
         x3VkVzQoszYQXkmE/cQP1QujK9+DlFblHVuIFCZp7ZyQ3csVglAhvND0OsORagoZqwsN
         TAhxgcIQK9YD/NqFsbRflHJEMtqg3jIIj9smA9k4PvXMpEvRIDRZ2Y3nzYzIrOG4zMnH
         AHZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbapubOpN7YqD/0SCGsYWh50IJFKBa9aKEDrZBT9mHbJ9l4N+5lZ45Qyi/J3soguxYHWVJFuqXDBuz@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1mJaYuaZXW6X3pbbyyWqBpNeQPZvGDFipRcSRnVrWpCpP8mEu
	dOkDvBjTEkTiVyuJIk9LaCwZ+T8xdjp49a7KnMR4zTMwXm8GIfmHk16HpQwM+2k=
X-Gm-Gg: ASbGncsWrvLUxIZaeaD0nPN35QQ173Bk7oCr8LRqhPbPv7Hhvho5LBLYNnqCYWLVeVw
	2UFRtuIhJk14k/yQrEyzTNaq8NCMG82+w2MpImhekxj6nZTlwavy9SdB+LBgVw/SvkcV1W6lsTS
	YofAMFn9TOuexO5JpH8CU1geMO7+EvB32p2ZUQxd2gav5hoFiiFFHM3paPUdLxMmX0dbroaX4LF
	leVGQKk7RxDchOZJreobYumBSx/Eq26rvo+5C6AlWjDtJYKkWSgjHgO1n2s/VjC+wxmzGBWwxC1
	9yH+tgIPrpSPOKasZE0=
X-Google-Smtp-Source: AGHT+IFmbJ7jxH0g2r/Eb8E260JnyPVAj8wzNGaiuU6T66k83KEA1UxXp1+/ZOOTTuK2/CI8ziBD5g==
X-Received: by 2002:a05:600c:1f10:b0:436:fb10:d595 with SMTP id 5b1f17b1804b1-438b1763eeemr81292315e9.1.1737985709741;
        Mon, 27 Jan 2025 05:48:29 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:29 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:51 +0100
Subject: [PATCH 18/24] arm64: dts: qcom: sm6350: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-18-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1792;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=T8F9q6L3xxGtSl+njNnru6ExReMWCn8MciYg/Hh1kjQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46Pcyuxpf/bTwq33iGyggn9dUtrF5hZUBl8a
 6KTMc4ZxLSJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOjwAKCRDBN2bmhouD
 10BXD/9WTf8hzDiwGJQDm9Ix2Dd/Ilm1vJig+OQlOo8/uK20O45NjFQasEMw5kPXukMtjftEscr
 2iOUIZFPNTuHx7aZgfYDxWh2gXii+IIPxFMXYACmib2uocABWhUmZXe07MMVmaP2JYSYtsbVK14
 2bvSe0oYUS8RcE+BCIpsuDWU+MjgPwpTDnv0LuguURx68rN7gbjlKfAbbJtDCzfAcY5Qoylg1pf
 n7/9iszt0yKsBaLQbNlF9Gvol5ztxkYApCNwWmQA9sZZ2Fsu6a823xVczUiQsjNAhFyHNoNulC6
 rBKWfcj826t/LqQ5meHrUDAicM5mtwvp5lsHbMpy5Vm6SrH79HBgLUA+3/QQWnkWArd4yl6Fe7b
 kDUpZ+1xaKiv2g5homkKE2z+k5jJI1O3mZN/XQfy7kOvn+sj8a0KZ+gHI3PTaYAYidDsd9vt4KQ
 9+F8zkQYuXmjptY7QH4qI1taceIoZ8gFt4AC5ZyJGVXMPx8eq0c87c/JVSQplKIE2Gik/wN+m1K
 HYiPkblcYh+3GfpQNbRRdmp19M1J4A4NMYVDqyxwoYnK7rUWqzn/R0lsMc8KaYrb0GM/VB8yG5g
 sKJstYsibYvNNcD/CNXfdgMtHTie4b4RJBXgucQ8M8FTjNi6RPD5IcBDu8tIp6Ik2Byl+6TazZW
 zCNQaGgSJDc5UvQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 00ad1d09a19558d9e2bc61f1a81a36d466adc88e..1f2ac20e537eca90d96f755e9c76c6c3fc7f97b1 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -5,6 +5,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sm6350.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm6350.h>
 #include <dt-bindings/clock/qcom,gpucc-sm6350.h>
 #include <dt-bindings/clock/qcom,rpmh.h>
@@ -2269,7 +2270,8 @@ mdss_dsi0: dsi@ae94000 {
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&mdss_dsi_opp_table>;
 				power-domains = <&rpmhpd SM6350_MX>;
@@ -2347,8 +2349,8 @@ dispcc: clock-controller@af00000 {
 			reg = <0 0x0af00000 0 0x20000>;
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&gcc GCC_DISP_GPLL0_CLK>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_LINK_CLK>,
 				 <&usb_1_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
 			clock-names = "bi_tcxo",

-- 
2.43.0


