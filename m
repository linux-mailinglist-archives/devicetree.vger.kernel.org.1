Return-Path: <devicetree+bounces-25238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF0DB812B57
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AAD572826E9
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B65B42C84D;
	Thu, 14 Dec 2023 09:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="clxzH0FP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x72e.google.com (mail-qk1-x72e.google.com [IPv6:2607:f8b0:4864:20::72e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C4B1135
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:35 -0800 (PST)
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-77f44cd99c6so34861685a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545154; x=1703149954; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=clxzH0FPsT5iPZx+DVeG9g4dLw9kIzROfXH+lilTPy2AD9hGKVHriS6EV++/jMeops
         /W1L4Bk0k8kS1kB/BixiOHaMlv99z014kiZxEiD1k5A28yo4q1YNmhfRGXM9UNg7S1wA
         /lFHKtgr+3QdgfcP9fVihw4fky1fRiA/B+KqMfAW/e7HP6Bvj6uOsyjQZsL1v2KzCIBc
         Yj7mqYsaBXzRgG8G6vq09rsJ+swGufRz90D/aR2QQmRVCVFufC8hhCAEMn/urh6epb+G
         YYcNuwVJG7HSe0sDrxkAi1iNzeh53Iu81YE0XL6/r1d5F7MO/PQ9ErAC9BaKagtNx8OW
         wEFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545154; x=1703149954;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hkhidzmVun0Q+RVPRPkagjowO4OR2Vwj/TtI5d1pEJU=;
        b=IwwjVWXWez9GNzHs0I4YbThtHZGbewv5TjOanOPk2hsHQN5bOkB3ExJC0NqIv6yXtb
         0C5qSvDh7nCro0hT6JhsV/Ms1fJjSvV+ZAWlzJPUXcxUNSDGyIqebxK4Bwvsuw7mJvWz
         XC/vjOMHv3Q4/qGyDxxAasKWclQIR6A91kUk5hA4wFRF8CcIwwcjItZdigk+ptxMFt5r
         mVjWp02khN3/elyF1RoTRhMc+UmyQ3HYiTU6152dXEEd+1ig5RWFIG1QZDUnTvgijoew
         MMRnbFLGI5DO8aVQsrvv8ovAm6l5bWE7fzR9DtO4Wby1BS7ZNJlISA8UV9UTNx3E1Myj
         Hcvw==
X-Gm-Message-State: AOJu0Yy4CBnkUNIG2sdcP7Dh2QEJHJeI10HR3ntC9Jx74gejThWG6KbS
	QbnBDjHXauHIC3uaFY9HA3Kc
X-Google-Smtp-Source: AGHT+IHEtm7mEgCIyDmSr/wXhkhEOgi12WL0DLU2N7twPYVrahWhPEqWyDCKPCHrKSIdtshq633qyw==
X-Received: by 2002:a05:620a:14af:b0:77e:fba3:3e61 with SMTP id x15-20020a05620a14af00b0077efba33e61mr12750317qkj.42.1702545154261;
        Thu, 14 Dec 2023 01:12:34 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:34 -0800 (PST)
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
Subject: [PATCH 13/16] arm64: dts: qcom: sc8180x: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:58 +0530
Message-Id: <20231214091101.45713-14-manivannan.sadhasivam@linaro.org>
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


