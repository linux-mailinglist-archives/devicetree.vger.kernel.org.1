Return-Path: <devicetree+bounces-25236-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EC643812B52
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A22BB1F21845
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FA7E2C847;
	Thu, 14 Dec 2023 09:12:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i0x1jBDt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5708411D
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:23 -0800 (PST)
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-77f8e4702a6so149247485a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545142; x=1703149942; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=i0x1jBDtKLGBSHWJe6Y5P8awCV4vjrBhYub4s5xNckoIF1vPLDN59GTsfMUebze/I+
         IBiMHqpy+V3baWZHsw2W4UWAk33Bo08J+iF0RCJ/vf2cy3fov/Ryqsut5i8HJW2Sdnqk
         oiXV4JKPHMgshO0ACaFFhpin5RbCNH0qZMy71Bz7+NUyyegtQXu+AxRsZydhZSohJAAw
         h9TtttUvYsJSBtKFKuWa915707Y55mEqevxlKIpJcOdwTLjU+IIYbYNsnjkuM2Hm3Mk+
         Hvd9DfgK2GMhT31GtcFbLWd+9k+uxeppfgIjWLFmY6/Ux72DBJ6s7RnusGtgO2XT+eFg
         xO0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545142; x=1703149942;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+NpBpw87ancReoayxiYNLEpdh+qbLyvkQJUBfcAOaoQ=;
        b=uwu+ApwMmLakx0GlhunEDbM7RIafKSsc4RaO45HvT3e5EJFm/xJNJeYK2mAlJPsnzn
         oOWZhuwPbEdayt9g57qiKCOyCBdRPoe/+O7vO7/Yik0jwYGD6ub6/GtBCRD1TWJLcOGS
         ThHBmrkm0eTDaOObIkolwsNF4m2JXgaXqqhcomFyiqqIXLJJjZsp341P/vi2F6pB1ljY
         iHPej5pLSiW0vO5XCOWKsAd4xvT33USB/UJeoj3U+4eBkFWFoBdaF6PxcZyiukDloiGs
         Zp05GEsWS7qXh6/HloULOrF5w07foM+vFbhtOCZyyz+XdqMn5cZaOKM2wSgnfiyZLkpT
         gwcQ==
X-Gm-Message-State: AOJu0YxYIbCJ0RC4WuWmy2MAt2XcvxcP/5BDstXzjIlgHDXAQ7UosZig
	xXWpzteaAIy/8JdTXaKAHe25rGzvgecugxnpCw==
X-Google-Smtp-Source: AGHT+IHkKGZjjk5nJUoZ+N0uLM2h0SgrsFVpX/16fIAjacSPXopzF1OgPVpV/nLmed6E8PzbjRaw7w==
X-Received: by 2002:a05:620a:260e:b0:77e:fba3:81e5 with SMTP id z14-20020a05620a260e00b0077efba381e5mr10587915qko.123.1702545142533;
        Thu, 14 Dec 2023 01:12:22 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:22 -0800 (PST)
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
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 11/16] arm64: dts: qcom: sm8150: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:56 +0530
Message-Id: <20231214091101.45713-12-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

QMP PHY used in SM8150 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from GCC

While at it, let's move 'clocks' property before 'clock-names' to match
the style used commonly.

Fixes: 3834a2e92229 ("arm64: dts: qcom: sm8150: Add ufs nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8150.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
index 43d56968a382..18af94852974 100644
--- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
@@ -2065,10 +2065,12 @@ ufs_mem_phy: phy@1d87000 {
 			#address-cells = <2>;
 			#size-cells = <2>;
 			ranges;
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&gcc GCC_UFS_MEM_CLKREF_CLK>;
 			clock-names = "ref",
-				      "ref_aux";
-			clocks = <&gcc GCC_UFS_MEM_CLKREF_CLK>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_PHY_GDSC>;
 
-- 
2.25.1


