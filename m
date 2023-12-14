Return-Path: <devicetree+bounces-25549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3DF81399D
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 19:14:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C449EB218E2
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 18:14:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C794E67E94;
	Thu, 14 Dec 2023 18:13:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cln9RAwO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC27A112
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:54 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-50bf26b677dso8256620e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 10:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702577633; x=1703182433; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tC67f/rlpMpveywW17PnxYzUi/Glfsd8AP6R8y378/w=;
        b=cln9RAwOuYvElTMK4ZHTDkUWfsbWwFug/0gLM48BVqe9c6QtQL8d9P4JKqLe1hEtuc
         QJ2xdK7cQvgcQUO3KCZrlCH5oRQZwd/kNFtTWC+C7LozGH1a7Xh9qnvmAr4aJ9uEZbDR
         tcvvQsU+wQVr/Klc22LHK4bnrklt/RnBCWJkXF2CL3y6pQlkvkYz/xa016kcrsEi0gdp
         lxJaGiQAiy0FMZrlWpXBNW+8kI3Bs2Lh3UlUJYr8Joxp57ZdVTjLANCqiXt5/X1KrKCF
         WDXTWEMecEsbXerEop1GPTjDscfSl/YAQITgPRJVKRx3h2vC8fbpau5kFo8U3/eDW+7A
         vxJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702577633; x=1703182433;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tC67f/rlpMpveywW17PnxYzUi/Glfsd8AP6R8y378/w=;
        b=TV9uy8O159zA9jcu9RYoRmxExOgep4nsEouXqQQYTSf9fGX5ciJVaXQqVlItHOo9TM
         MsiC3zA90/j9fGsUBzPMghwmmzdbvLQ52wvAX6UDugjimVkS2aNHY8Xr+CqcpH/tH8Yq
         5HA9M7BgxYTufd6nlCa0WuB5fKvePDRyMJmR2I7idqWne29DfniQzfqD12AoZTIQsmER
         cVRWrXRoyPM7b7k6LkEyim4YQFE8poqP74IgviSliRqpDL9QmD4ymUY7cOpalH/1pW0A
         0CKCMm9pLigX+Kf3pkJ/uJhiEBvsmdW9PdRF5eXehE5TIadA7VbPDvwOWKeNer/0ZyNS
         pHKQ==
X-Gm-Message-State: AOJu0YyQws/74vAJpYAICjaLyxI0spjjqLhvu/oJK52igvrdCNxci/U5
	Szhd7apr3HvFbrx90aY2RypdVg==
X-Google-Smtp-Source: AGHT+IGcbEe+tBDd6I6AyNkwGs0Ia75MCyM7k6vMNAGHeogC80Iy8W/qiWyD2+XvGIc/Gbj8bqpTqg==
X-Received: by 2002:a19:8c1c:0:b0:50b:ef5a:d022 with SMTP id o28-20020a198c1c000000b0050bef5ad022mr2770578lfd.41.1702577633070;
        Thu, 14 Dec 2023 10:13:53 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id n11-20020a0565120acb00b0050be6038170sm1928838lfu.48.2023.12.14.10.13.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 10:13:52 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 14 Dec 2023 19:13:40 +0100
Subject: [PATCH 3/6] arm64: dts: qcom: sc8180x: Add missing MDP clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-topic-sc8180_fixes-v1-3-421904863006@linaro.org>
References: <20231214-topic-sc8180_fixes-v1-0-421904863006@linaro.org>
In-Reply-To: <20231214-topic-sc8180_fixes-v1-0-421904863006@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Georgi Djakov <djakov@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Maximilian Luz <luzmaximilian@gmail.com>, 
 Gustave Monce <gustave.monce@outlook.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c
X-Spam-Level: *

The ROT clock is required for the MDP block to function (looks like some
others depend on it), and whike the LUT clock's purpose is not clear,
it's likely better to turn on all of MDP's dependencies rather than not
doing so.

Add these clocks under the MDP node. This also makes Primus work without
clk_ignore_unused (as far as the dmesg-visible errors go, anyway).

Fixes: 494dec9b6f54 ("arm64: dts: qcom: sc8180x: Add display and gpu nodes")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 09b4e66367bf..c970dfb11fe5 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2702,11 +2702,15 @@ mdss_mdp: mdp@ae01000 {
 				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
 					 <&gcc GCC_DISP_HF_AXI_CLK>,
 					 <&dispcc DISP_CC_MDSS_MDP_CLK>,
-					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>;
+					 <&dispcc DISP_CC_MDSS_VSYNC_CLK>,
+					 <&dispcc DISP_CC_MDSS_ROT_CLK>,
+					 <&dispcc DISP_CC_MDSS_MDP_LUT_CLK>;
 				clock-names = "iface",
 					      "bus",
 					      "core",
-					      "vsync";
+					      "vsync",
+					      "rot",
+					      "lut";
 
 				assigned-clocks = <&dispcc DISP_CC_MDSS_MDP_CLK>,
 						  <&dispcc DISP_CC_MDSS_VSYNC_CLK>;

-- 
2.40.1


