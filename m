Return-Path: <devicetree+bounces-141111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC88CA1D73F
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 14:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8F9527A4218
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:50:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60CDC202F88;
	Mon, 27 Jan 2025 13:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kD7rOlr9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F23B202C2A
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 13:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737985702; cv=none; b=SLcaCLey2sV9/N1es1zTq0hCYoxS4KMYQaq4J4M1WN3DEbtX55HcQiOwbyUloUGNehOiKf4Q5oEWIZoO80t4XAnZG9vUJpnweop2HU0Hz6FUkbkjuH1OG5cf3vxW+/q/PcSubK2qUX7W0+rQ4tRBUtSzRYcG7zrTTw2ps17d6TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737985702; c=relaxed/simple;
	bh=4mD3I/ZH+PdMbOED5R6nzE3D/5QdVrqSyji8jpkRaM8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eEs6uqWX1hnuH2tdUsKqkaR6nz2QA3OUe5nQQIsL/CHSKg4U/p18lTtCVfMiKVI1Yuqdy/tPsgztR+k74XoUe88EnDYZGQaxT+4O221UVWxQSj8q/7nu/eJNoBlikD27EHItG1juIJeKvJ1iz0IcT+o8GLNyUgQ7Jkipbn3zV68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kD7rOlr9; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-436230de7a3so7298825e9.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 05:48:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737985699; x=1738590499; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lm4HhrVX4a7NIDiUhbpv0ZMxrzHvg+gRo9Ix0RAstow=;
        b=kD7rOlr9KuYc99+hzoiGjvaoT1a6aI0X+7BxXCynsi00woojm8nzFlYCYy+Uhu/OVO
         +DoCo77fKY1yXNscQD080dCuec6JTQXOzWz48kOABB6pQaBcsVOfEMMXeS8HtffsCai1
         wfDfWRg15sBFSXV1mbzjJkQy0LNmbfjoBfi2KZyHFmCuDU+QiQRmMc4nvC/q8ShPEpUl
         vFOHbQgcr5QL9To+kgbhMa/0aNX/PzYGrr+NCQiyehVlJx38o8Y44ovQffMDv3gPEigT
         kBFyBOfDgkkN0/gIAFvU3/qBkBdROGpjqp/v36f/UpwYFk5oopjkA1NjY3wm6jx2ScvD
         qFww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737985699; x=1738590499;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lm4HhrVX4a7NIDiUhbpv0ZMxrzHvg+gRo9Ix0RAstow=;
        b=pfWt7B4zk9wcIbXguAJB+Vwmrld/yYRxD2j9lY6bSt/DjQq48yyGr0UH+HLQHjACNv
         5xt6VYsCJW/Bw2Nyy8A/mq5Pejl1+DvuY9ciCaE2S8t0H7Optix9fQ4MTOeT8nGZNtUO
         NOBKAmyzYiVuilDpEJl5kRqqVcFOvN5zbomzdPKoTO4jHahyZoco4HF4P1PJTqfbYqtw
         i62Ahw/2qDn2APFa/nzSxjI43sJJ7FRj/THnqVnY5sXBwTYBjS7TOlqU7kCWhJ/90AVU
         drZegDaODWytlK0UeIeHgjvN/MQYQrrbfVlCdgVdc6VTSLxyaeK3cnPYkT1egib9z6Sk
         lD+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWfSEAne6Eel7IwRQ/s8bwv/v2MP+FIA/9dbEdY11HoEcWWzLiCklul27C4ZfmUK9IK4aFxYydIRbZY@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/Ldnw363j4UXyoo/hPvjU6XRmXPwggnYuY1oWOn/3y0O7NKub
	CM2qveQh4R+AxulFpvUk9SVIalCUEcXEZOAUiSmfN1iDYPd8AZk7NrL7lwulUJ4=
X-Gm-Gg: ASbGncsVdWeR+mlsUtzNmhHKKEPpU7cbg4emSvED9s+vpIwqwJIQQ+7mv7oGtaST82L
	Xsp2Xa4VKSG51WBMdWQpyRCuZoMxVcE6wU7Veah7Sh1keltdSoUQB/6E5C3C6HGY4VYNEKkfPXQ
	iRF25xrqG2vtnAnFxLZMvmrM0T9sY8MMti0vieDC+2AFj/+IMP5EtiHnOxjY40Xbts9ud945sIW
	/qSthOIVE66GasUKe++xswLTjEKmu0o6LSUOT9JgWDBgGdlMxkQiLBXCULqL7SCoDNCux5UXyQg
	Gz0R+2f9l6oqhmOFOB4=
X-Google-Smtp-Source: AGHT+IFK40baDRBZZa6LvUMXD8hYfDj5xeWovQYJ4OP7ULhCiP5URrdhjEsPWUscdWPDjg3wpJznXA==
X-Received: by 2002:a05:600c:1d07:b0:436:17f4:9b3d with SMTP id 5b1f17b1804b1-4389141cda7mr141183655e9.4.1737985698720;
        Mon, 27 Jan 2025 05:48:18 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f292sm131038555e9.3.2025.01.27.05.48.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jan 2025 05:48:18 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Mon, 27 Jan 2025 14:47:42 +0100
Subject: [PATCH 09/24] arm64: dts: qcom: msm8998: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250127-dts-qcom-dsi-phy-clocks-v1-9-9d8ddbcb1c7f@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=2371;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=4mD3I/ZH+PdMbOED5R6nzE3D/5QdVrqSyji8jpkRaM8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnl46Ht5aABc5D2AU3J7klIw+w1xSxbOm+hCW+C
 atGq1lNkdKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ5eOhwAKCRDBN2bmhouD
 12aBD/9bzzfLTUYcYOypfpT/vV0aAcEP4DYAEJ/Rp7ohCLn/VPTxD2SsfMSDwhguddGwW4y6rR2
 iPcTz45rqkVOZoGkObvw63TcJBGHApgF9Vt2RvDqIX98rov6IxD/Vj52RLn6h1oyAzmtaNgjER+
 lBY1gv98nDIkjD40suNn2Zk1r+TAt2uWYuy6JCwycBDBfKPHWn8xYiP2UI3+muxSJM7fnZi6Re1
 4DkqzjfVvTekXXLEvm1KuoSloHnVmuM/aGLeb3DB0a3aIXVQ9ei4BqN7cLxZy4uqti73sgQ7Fjz
 A5h555k2NTZ9SnmOc+Dv1K2JKBF/O3Gh/N02Xi4RTbPkOYVoyqV29ylCu9hLWJHZbaLiMfTnn3t
 NtjBZAHpCitjshVbJz5DzQNE1Av+3Gz9xs8rYRXz0jpp4j8U+CPj0PFVcea7HgribBgX/InlSA8
 W8+GPXgU2AO4EpV8a5ncApa8J+EfQ02uBp0fhlqivhnmv3JhUrVKUE2tsgN/5A8Dtt/c5AX6qiV
 9xQ2GWtef/bPpHCrrWDK3ftYU/ZoHBsHSqdGFqZl6i4URyqz2iUnZs7Hf3gDN7Zxd7SGPGRC3oN
 O1rUzp7jypTyBXXgcZrHyox503Vp6+Y+91kud74QO/1BcFTf+pM5aGse1jnyaVbjhBm8hKHc0mR
 jiYyHrDfaSBvSog==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Depends on:
https://lore.kernel.org/all/20250127132105.107138-1-krzysztof.kozlowski@linaro.org/
---
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8998.dtsi b/arch/arm64/boot/dts/qcom/msm8998.dtsi
index c2caad85c668df2ebe900bc560e39480ae03e353..7eca38440cd7ea60caa3e8467097aaf0d7928df5 100644
--- a/arch/arm64/boot/dts/qcom/msm8998.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8998.dtsi
@@ -2,6 +2,7 @@
 /* Copyright (c) 2016, The Linux Foundation. All rights reserved. */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8998.h>
 #include <dt-bindings/clock/qcom,gpucc-msm8998.h>
 #include <dt-bindings/clock/qcom,mmcc-msm8998.h>
@@ -2790,10 +2791,10 @@ mmcc: clock-controller@c8c0000 {
 				      "gpll0_div";
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
 				 <&gcc GCC_MMSS_GPLL0_CLK>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi1_phy 1>,
-				 <&mdss_dsi1_phy 0>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
 				 <&mdss_hdmi_phy 0>,
 				 <0>,
 				 <0>,
@@ -2932,8 +2933,8 @@ mdss_dsi0: dsi@c994000 {
 					      "bus";
 				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
 						  <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>,
-							 <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd MSM8998_VDDCX>;
@@ -3008,8 +3009,8 @@ mdss_dsi1: dsi@c996000 {
 					      "bus";
 				assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
 						  <&mmcc PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>,
-							 <&mdss_dsi1_phy 1>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd MSM8998_VDDCX>;

-- 
2.43.0


