Return-Path: <devicetree+bounces-21578-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E5C6B804637
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 04:26:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9C5FE1F21410
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 03:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DDB08F4E;
	Tue,  5 Dec 2023 03:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vfj11L+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3969B101
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 19:25:57 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c9bd3ec4f6so64759971fa.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 19:25:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701746755; x=1702351555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LyzRfzID8N4Kx/HRmPavTsXUJw62DczP8Df9UN78MIY=;
        b=vfj11L+w0V/tKwBXVYSOF+jLdIfT95kH1v3QGtO9K5qG0V+8VC0CzZcLJsP71tRwYn
         XRB/GvKjEg7rbJrhVNxjaA0TgFBhoH2teSEyNSDyX0bjRTL/wdE8dHL8rfjhldMjFxgv
         bwe5O9ALPiA+AbJFeQSQLEtOPsiGY3LtFkM1s2KCf3O7VvJbso6WM2uGfLSEjiZ/bS5N
         2wf9EK3GSIPR7zJ6mKpPSeuyDhZPyWALZ76dyHmULsrCa+p8FxEPHYdpxWFs1vBrOq0j
         6GSSTvOwTL/hi0jZf2H7TNakxWEm5i3h23Kl0lV1xyIfDkCZW7ZxxF09Cru+MTEuM0bg
         48cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701746755; x=1702351555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LyzRfzID8N4Kx/HRmPavTsXUJw62DczP8Df9UN78MIY=;
        b=GU7yVOHrft8v9o0kB/jDsME/m2hxMHOoCAbg/nRXLoZQJJn+IEAr0XNdGz9ZH+nBsa
         ICSeDQ76KdnJXL60R4v0LLmEEnq7VyQ+/H//FSaX2jP+49orciB1fU0OKJZVhEodZwNl
         +aFal5ewbI57hYKzBdVCDq7bqpL+XRT0T7aMMWt7xT69p/ehmxHh5aflaYtUGu4f5aNv
         +EtbzEpifoMvnAudiTtHetDnC1JEHaSO9I/xG3jerySIK6/oyRzC35te1ru1wUmFWLTM
         sRtfZyNxdqgOD/g5Ug5T8cI6QXoGXwbRu4npPysk8gF2uZl1xDPtt4pxF+XmKmvtOVCs
         6m/Q==
X-Gm-Message-State: AOJu0YwVYZeEOj6gKIypQDi4EIAPfsjFy/FKcnsBKV5MZ/afavbA7MW4
	X/J2O3Bh7E9GU/qbFjl7Faazjw==
X-Google-Smtp-Source: AGHT+IE/2esE5N1LUQzjBr74vQuWEQpM9UBdf4yWk85bD4Uy2JSunarZllPwrSw99ub/T6AAV+KDjA==
X-Received: by 2002:a05:651c:217:b0:2c9:ee88:8ff1 with SMTP id y23-20020a05651c021700b002c9ee888ff1mr1625005ljn.47.1701746755465;
        Mon, 04 Dec 2023 19:25:55 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651c04d000b002ca12be2b63sm127277lji.18.2023.12.04.19.25.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 19:25:54 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 1/9] arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
Date: Tue,  5 Dec 2023 06:25:44 +0300
Message-Id: <20231205032552.1583336-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231205032552.1583336-1-dmitry.baryshkov@linaro.org>
References: <20231205032552.1583336-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Change the UFS QMP PHY to use newer style of QMP PHY bindings (single
resource region, no per-PHY subnodes).

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++----------------
 1 file changed, 9 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 35a0d2a69711..d3d01c1e1fbc 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -780,9 +780,9 @@ gcc: clock-controller@300000 {
 				 <&pciephy_1>,
 				 <&pciephy_2>,
 				 <&usb3phy>,
-				 <&ufsphy_lane 0>,
-				 <&ufsphy_lane 1>,
-				 <&ufsphy_lane 2>;
+				 <&ufsphy 0>,
+				 <&ufsphy 1>,
+				 <&ufsphy 2>;
 			clock-names = "cxo",
 				      "cxo2",
 				      "sleep_clk",
@@ -2047,7 +2047,7 @@ ufshc: ufshc@624000 {
 			reg = <0x00624000 0x2500>;
 			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
 
-			phys = <&ufsphy_lane>;
+			phys = <&ufsphy>;
 			phy-names = "ufsphy";
 
 			power-domains = <&gcc UFS_GDSC>;
@@ -2100,25 +2100,18 @@ ufshc: ufshc@624000 {
 
 		ufsphy: phy@627000 {
 			compatible = "qcom,msm8996-qmp-ufs-phy";
-			reg = <0x00627000 0x1c4>;
-			#address-cells = <1>;
-			#size-cells = <1>;
-			ranges;
+			reg = <0x00627000 0x1000>;
 
 			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
 			clock-names = "ref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-			status = "disabled";
 
-			ufsphy_lane: phy@627400 {
-				reg = <0x627400 0x12c>,
-				      <0x627600 0x200>,
-				      <0x627c00 0x1b4>;
-				#clock-cells = <1>;
-				#phy-cells = <0>;
-			};
+			#clock-cells = <1>;
+			#phy-cells = <0>;
+
+			status = "disabled";
 		};
 
 		camss: camss@a34000 {
-- 
2.39.2


