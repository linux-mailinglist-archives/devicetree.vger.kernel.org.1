Return-Path: <devicetree+bounces-141115-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D471A1D74F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:51:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2939C1882D82
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:51:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD51D2045AC;
	Mon, 27 Jan 2025 13:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="g/9hv6H6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A129920370B
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985708; cv=none; b=W2YAirs3GrCGOIMAoKUxD0xa/Y5xQPi8MxZacOp7Zl6lFN6hfPRjHx6G93rDYEAcYecoQQOCR+vaeiZAixrYHOCBHQUbYIXkO7Jz66wuq8uSL8BKJWYYmfo3TyVa2Bn5X2bltW3qxvdBK5GwpwiN2aQ5TsYhexof/44ZO5o1yZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985708; c=relaxed/simple;
	bh=8GCpFvKrkBXZDpAxmDG8Uefa/6eLrl2pBtUGW0GW1GI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E0kq1zqjZ2cDpjpsQTB/OcvD3g5h6vhQArV9StxGHMFVYAuuliFYAtyZUBWYhB9oeiCufEXWEYMZOJ8aczxkANHzYzVpOmKt9BYFhdjbMQEg20UfjzJPZlsXUvc7haRvt4MRAlBcmx97fb/Wz35U+hFIEdcYiaZBxeg/E++7ghU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=g/9hv6H6; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-43637977fa4so3928905e9.3
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985705; x=1738590505; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/VlHxHVydrfwCLar2bdBkhg7ucMhIThep+6XbGebqQs=;
        b=g/9hv6H6k2Pd6rVlp0142QVxGE6cG3xVgkflIQmYnVggg138aCFwnX2CQFU+LDAfLT
         KI9avsPp2LB6pQhSGW60TwWyVVN3MfwV0HJsOfrjjsFmM7NTmqj6zi5Kzl/6jdEbG+Bo
         rjHvm7ks1KK+m/0cR0FcOT9wNVJRJ7l7VtT4T7SckLgyAEG686Awt9jJms3VyA3n/g84
         4asfMbDWO4eCCxHzUbRfZa1ojfSV5iB2plnxrOIxXKgyGW6DVK7KUesyNJ3aO+TKgfe/
         3hhYqbCAHrK3hxPZBEQv12Lyv+z/A28Xddfv7lMBeA1oqPi7eujLFArRDbYTyHNzI7bg
         4vjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985705; x=1738590505;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VlHxHVydrfwCLar2bdBkhg7ucMhIThep+6XbGebqQs=;
        b=jZKhTlHASrdbkVn71IKOj4qZJidPZAyJjw/aBaYK6j3SevL+I+c2FzV332VZ4Yg6by
         1MYjMqHmHqI02/wb5zh5zMJjzXhHwiRYECJf1uvQDpqnDfkHM5H0T/IujIBTPByj54MO
         F3ZjBjqEZwNL4dsmjekqXGOOJK9TQKyh/ov72Y0ONi7eIW+9x93uDNp4itCmeFEW8395
         ZgM4Zd0oR+ZXUPLcu7GSZE97Mp+Rz+jjW4lqlql+hZqbx2GpECpCkNcu+QduCG9cjKze
         vY7UeBlrc91c/THYUIQz0jicEhyrpIeFPrWHOsitYHBYgIjy7u6uGz7Hai1E5229s5yN
         UzOg==
X-Forwarded-Encrypted: i=1; AJvYcCXNnWyVbc1WWYVrNxjIoZoaGsYChjsflvi7sKA7Tmqmj8m/ybFCWP3C7jGJsDlot2ZrznodeYq/IiAd@vger.kernel.org
X-Gm-Message-State: AOJu0YwO/QMStqLyzz5COnqh9lKJeDoRQEyWi8xslxS9ArqcHDcuF9q5
	Fo4pX3sDqK9bNTdX30jRZYvPMs0tlWV2MDw81wPSZM2JAd913F0nVitUFvvrSxI=
X-Gm-Gg: ASbGncv4fRiahH1EvsShJhDIF/SvlqraxUDTDPZHYxd3lEVB7SVVQyGS8SDrVBSYE5u
	fx7+KI21omtQoYTcgkYVRYWjLDa64m76BK/GxD9NG3NcUorQKSJ1HQ+0rCkXtTQcqLMS8N9avfI
	ESZyLRrtLu6FnxqXuzIhb6RxSFwl89+1OD0Zugf7Suq6NJgZvynP25fxNti0Xhjt12c1yWH4Cpb
	yw2zPNb6u0IT+eeSQ52TuBGXQsZ3lPUXtitlYEp98uDq92tA9IsKS9eTdCFnhaj/Hnry94B3cBB
	GVu4WqA2K63edFueBSA=
X-Google-Smtp-Source: AGHT+IHcIaqJ4/Xnd7VtV9UNqS7fhzrwlKL+mg9Iufu+alfSuu7+hupDf5ezE+hQEonTXHqPJJeJRg==
X-Received: by 2002:a05:600c:5486:b0:434:f335:aa0d with SMTP id 5b1f17b1804b1-438913c7b31mr150025835e9.2.1737985703589;
        Mon, 27 Jan 2025 05:48:23 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:22 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:46 +0100
Subject: [PATCH 13/24] arm64: dts: qcom: sdm630: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-13-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2782;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=8GCpFvKrkBXZDpAxmDG8Uefa/6eLrl2pBtUGW0GW1GI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46Ki+O9FUw2SbVkgE4dCPjBslewExTrax3m8
 YVG8BNW9WiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOigAKCRDBN2bmhouD
 13dUD/0WvWxayh/q8iOGoE1wWt838r/gfziUkvA80LE2mitlD4yNpCPqKms/R55DEBK0xXjLy+3
 UzYn0QZ49Y7GazeOAM4WHwTknS2aFxSiMfEYG8nBD4Wp50MNt0dSnTEs+qawG2LkNG1QM5bqe97
 ryihbm9LduzGky+ncP4wJwWRo7YygY5qfDjicvd6mTO/0DnX95JQWoWrkVW2BUOgzGIlAJcm6EI
 ESHN4UdSQD7ioHm1RU5OzHc2EK6lJPlqCVF+IrdtYW8br6Z9EVqFGlHAmeo909HiGzMSK+vXKYm
 XM89HnwsINX0sP2aIIblFeGjBIvRRpwUonF7Q7UdNeKZU4SviANtLvntsGLR2DlG+JH3HLhfiBd
 fdC2PcSM6+EPl8IQqQ+qfyJXuPDqO4HTiFbYcw84GSltLHpmyk2SY334Oz7hRM5KAjqs+jTW1Jk
 YdnqogCsPPECNhjN7BeL3ErWNz6jsMd0QlQseRm3dTMw0yNBhftku9eHB/x5JN24Dm4LaNfx6Nx
 MPQIpNrEREHYokXXFwwl8doO4NwvBzAxVh7bxpa3uIq8ru/HzxupzCrdOb6FTMeOvHa0/Rb0l4f
 IOIExnE7vJX/ifcrE1+iIAeg5D4YCEmdu02JANANY1raUbAhnpGPukzqPYFiYbORuPI1q6/UhjH
 ttcEpxq3CKxTO4g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi |  9 +++++----
 arch/arm64/boot/dts/qcom/sdm660.dtsi | 12 ++++++------
 2 files changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index a2c079bac1a754643563718c8b0244035120be7d..1d3bfa224b401e7d0de803ad1e17156e67b31fc0 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -4,6 +4,7 @@
  * Copyright (c) 2020, AngeloGioacchino Del Regno <kholk11@gmail.com>
  */
 
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sdm660.h>
 #include <dt-bindings/clock/qcom,gpucc-sdm660.h>
 #include <dt-bindings/clock/qcom,mmcc-sdm660.h>
@@ -1538,8 +1539,8 @@ mmcc: clock-controller@c8c0000 {
 					<&sleep_clk>,
 					<&gcc GCC_MMSS_GPLL0_CLK>,
 					<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-					<&mdss_dsi0_phy 1>,
-					<&mdss_dsi0_phy 0>,
+					<&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+					<&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
 					<0>,
 					<0>,
 					<0>,
@@ -1661,8 +1662,8 @@ mdss_dsi0: dsi@c994000 {
 
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 						  <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				clocks = <&mmcc MDSS_MDP_CLK>,
 					 <&mmcc MDSS_BYTE0_CLK>,
diff --git a/arch/arm64/boot/dts/qcom/sdm660.dtsi b/arch/arm64/boot/dts/qcom/sdm660.dtsi
index 3164a4817e3267d458d81cabf2ae4223a7a94963..ef4a563c0feba7cd651158cdfa1b4d3cb7503c7c 100644
--- a/arch/arm64/boot/dts/qcom/sdm660.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm660.dtsi
@@ -170,8 +170,8 @@ mdss_dsi1: dsi@c996000 {
 
 		assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
 					<&mmcc PCLK1_CLK_SRC>;
-		assigned-clock-parents = <&mdss_dsi1_phy 0>,
-						<&mdss_dsi1_phy 1>;
+		assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+					 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 		clocks = <&mmcc MDSS_MDP_CLK>,
 				<&mmcc MDSS_BYTE1_CLK>,
@@ -239,10 +239,10 @@ &mmcc {
 			<&sleep_clk>,
 			<&gcc GCC_MMSS_GPLL0_CLK>,
 			<&gcc GCC_MMSS_GPLL0_DIV_CLK>,
-			<&mdss_dsi0_phy 1>,
-			<&mdss_dsi0_phy 0>,
-			<&mdss_dsi1_phy 1>,
-			<&mdss_dsi1_phy 0>,
+			<&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+			<&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+			<&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+			<&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
 			<0>,
 			<0>;
 };

-- 
2.43.0


