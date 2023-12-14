Return-Path: <devicetree+bounces-25241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71641812B63
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:12:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 254461F21853
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:12:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7635C2D046;
	Thu, 14 Dec 2023 09:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oBUfICXI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B311114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:52 -0800 (PST)
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-77f9c7d35deso56609885a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:12:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545172; x=1703149972; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=oBUfICXIt6FQlFyXmmLGXvyZUfztr89Kd74kAKtimFIFE4LLA0VKtz7+1Pl3X6QK9U
         +ioY7JTNSOyL4XYB/ecfoJPKv7cDazqWkqR48Kh8fmiOG2ccX6swHbG2rEA1bxXKXmyH
         Nd2xS4RPD2h5pgvkAlrX8DYZTmwMva4JgtKflvlU9rkr5xjNtkArmt7Fvhz0kjHP2+BO
         qCHtwC+YBeSzO2qow1anvOqXka1LefVbUJps4+H7NB2pbLLI4yrtIFUq5XTmv0H06GuU
         uGagyO+fv4kKI8paCdit2TOp5JttL+u3H01ud5QKX6isBzwJNhXJZSXGIIrz4G6CtYeF
         hA4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545172; x=1703149972;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90h9raFSlwYqtZtEwRi3utD1Y8btrpvvb6rt2ijbFWY=;
        b=QB0WACKqEGqnXpTa695/cRs68tt8yQmAjvH2bl4WrBe40HVvc/dYcz+rZwhYsHMwJE
         R3UlHzCLAQ5DFNN7FIIbY5eh3Os/HgR/So28Z4UKFPJd8imn+zNePi598DSNBGU8E+EA
         YWvoZteBfLnX6+YlsjSHnGelGYq4wBlyoF3j3K42ftjyXTk9JLD3YGVSNUeZmb+5Kyrm
         9/5jiqInAuWVSU/bbatKNh1DWvTmv21cKt7FYSPANg2SHjeZ5SEuUhO06p4RFPfIAqyq
         QEpetoCFdvKGgP7oqSB66bwJ6LKEC9cyUDAW8m4mxsWgFv7WteKxQZDKhTEEntNpV+wc
         yVVQ==
X-Gm-Message-State: AOJu0YyPB1o1p1DbfNZPABHVhbv/HKPy3RJeCbs+QCvdEn+16BelEior
	aBdG3i+bVVsoul8riQEMQP7h
X-Google-Smtp-Source: AGHT+IEGFG/+5WBdW+QF3Y2B4MEmKQm1lHv2/KY/sKl8G6B/VvdbDTPntO5+kmWw7bf4yF46kQC8FA==
X-Received: by 2002:a05:620a:956:b0:77e:fba3:a7af with SMTP id w22-20020a05620a095600b0077efba3a7afmr6304092qkw.141.1702545171754;
        Thu, 14 Dec 2023 01:12:51 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:12:51 -0800 (PST)
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
Subject: [PATCH 16/16] arm64: dts: qcom: sm8550: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:41:01 +0530
Message-Id: <20231214091101.45713-17-manivannan.sadhasivam@linaro.org>
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

QMP PHY used in SM8550 requires 3 clocks:

* ref - 19.2MHz reference clock from RPMh
* ref_aux - Auxiliary reference clock from GCC
* qref - QREF clock from TCSR

Fixes: 35cf1aaab169 ("arm64: dts: qcom: sm8550: Add UFS host controller and phy nodes")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index baa8540868a4..386ffd0d72c4 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1891,9 +1891,12 @@ crypto: crypto@1dfa000 {
 		ufs_mem_phy: phy@1d80000 {
 			compatible = "qcom,sm8550-qmp-ufs-phy";
 			reg = <0x0 0x01d80000 0x0 0x2000>;
-			clocks = <&tcsr TCSR_UFS_CLKREF_EN>,
-				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>;
-			clock-names = "ref", "ref_aux";
+			clocks = <&rpmhcc RPMH_CXO_CLK>,
+				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
+				 <&tcsr TCSR_UFS_CLKREF_EN>;
+			clock-names = "ref",
+				      "ref_aux",
+				      "qref";
 
 			power-domains = <&gcc UFS_MEM_PHY_GDSC>;
 
-- 
2.25.1


