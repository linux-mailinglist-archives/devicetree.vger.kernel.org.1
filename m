Return-Path: <devicetree+bounces-26545-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C499816D9B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:12:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FCE31F2123B
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 12:12:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27A856380;
	Mon, 18 Dec 2023 12:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XQdjibbr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8912754756
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 12:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1d389fb3f64so9706835ad.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 04:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702901323; x=1703506123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=XQdjibbrWWqgkQFL+nfztW+iiJiyjrIbl1q3ntsli0rG+WorzCgNeal4IktZL0BznO
         t3ZbAoDQUxr4jwL9RLD3LFQWPOixl6HNEepwhulRSre2aCnq+GUl0sdlk3GAqnaMvj4X
         svQK2Ds51Msa1bOLvn/YCCgVtAG0c+eAdsZk+ZarCqagKXIy5Q5EGJvGlRiKJbVSOtHR
         nW8KGzF9WyjA6Cfhdrc5CHSX5XeOCmMPEqGylNmJYzXGPoHML6SMQpDJz4Wa97/V3oSK
         x3H0LMgnf5DAXsyPyBYCd9c22EdHJEW4GNh3AIcgIp/LCOXsv/Qa6SZEFoNnZ3bxLUmC
         8wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702901323; x=1703506123;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=sJTJMz8tdP+nbJO5pf3fLuZkWzdzdRlhJmBsKWyGH5IqFimxDOV4UhRmsd6nl0mteY
         y6iFdPpnVpvaNDx0Ujl4tIgNe4h64DTfbvS34UYjYn+oDLvvSOyIjUFS/EdBSOjwQwK2
         6LAd7ZeA+b290wkC/otqmWER8r0jqXWSntUx7CXrLOzgDSF1zyWACsp6aQ+j3LmR5XX3
         NjxQZM+TSAga7XAgIK1x8RWwx6YBaZx65J6Ez2ggx+M4ysl/sX3VOYFMoz/QP8ZEEy7Q
         w9QVX5mnIljtc6WJ6E3ToUVZ00SKwka3Q48tgXe0lU1TP1nGAw4sx+6WXWRkzWqhQrQc
         p1aw==
X-Gm-Message-State: AOJu0YwgCyK5E1netQvoiBEc6fjn6AOa4VulNSut2pDkVTD0QkAvtF0C
	lXNzZrcJwrPcrF/RDlFGRDdW
X-Google-Smtp-Source: AGHT+IEFzKmwQ9jijXgAmsmDSBEbNm51X5eQbNutP//715SDDDau68UX4AE2HLchbkXj/fguvb8Jzw==
X-Received: by 2002:a17:902:b197:b0:1d0:6ffd:6e66 with SMTP id s23-20020a170902b19700b001d06ffd6e66mr7691134plr.94.1702901322911;
        Mon, 18 Dec 2023 04:08:42 -0800 (PST)
Received: from localhost.localdomain ([117.207.27.21])
        by smtp.gmail.com with ESMTPSA id j18-20020a170902c3d200b001d368c778dasm1285709plj.235.2023.12.18.04.08.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 04:08:42 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_cang@quicinc.com,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 13/16] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
Date: Mon, 18 Dec 2023 17:37:09 +0530
Message-Id: <20231218120712.16438-14-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
References: <20231218120712.16438-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QMP PHY used in SC8180X requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

Fixes: 8575f197b077 ("arm64: dts: qcom: Introduce the SC8180x platform")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc8180x.dtsi b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
index 8bcc8c0bb0d0..5591e147bde1 100644
--- a/arch/arm64/boot/dts/qcom/sc8180x.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8180x.dtsi
@@ -2122,9 +2122,11 @@ ufs_mem_phy: phy-wrapper@1d87000 {
 			reg = <0 0x01d87000 0 0x1000>;
 
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_EN>;
 			clock-names = "ref",
-				      "ref_aux";
+				      "ref_aux",
+				      "qref";
 
 			resets = <&ufs_mem_hc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


