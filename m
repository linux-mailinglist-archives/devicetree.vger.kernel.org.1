Return-Path: <devicetree+bounces-25230-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9CD812B37
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:11:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA7EC2822C3
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C947B28DA7;
	Thu, 14 Dec 2023 09:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hs+3XCUG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D72D114
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:48 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-77f44cd99c6so34821185a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545107; x=1703149907; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=hs+3XCUG91TtyWDgWFGL2+8RfdBPJMyG/im0ziLmIXbd6z0agzkLGx1xEwvlGxQwNe
         w87pjLm5uj5eJc6b18TqwuwHgym7Q4syuqtjbKa9M99r3iOMdCjYjq4hUSU10ppHzu8X
         WHZ89/dUhGYxKek/BxJfCgBNjoSuuRAWo+exYo9mNLCnMO3MN58bfFbsaSCk3CT1Nnw+
         bdiOSN/5Dwcwrgn+kR8+O14zbRACh2LsbD9dw8wy11aOk/5V1xYeV1oZsdMpUJIGDuPq
         4Z3PesuUlGG3QWDDt97GzxQjCnYqBh+if1oiBT6LqkeheDbsy8cEOpMq1QaqBGegEEtv
         8zJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545107; x=1703149907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KzU01i6st7Fo+4S1d9zRuY0iUyHKgjsO1CA7YDVBW60=;
        b=gak5O7xgtdQsbyGFjrSMWMRq4u1xjLIpcccuOZD9iFLXrnZaakS5WdTGVfM5ZsbdqM
         GlRyMpuI1Sc2PxGRQETbsJp1Lhlw7xn3+snW/1NXddKFAWpIAbzrDXik9BH4KiqOLMxt
         0ne/H4HQ/ZGJIGVecYkaAmq+RWdJx4f7w/X2myOZAseI1P5BFJu4/aHik4/2w5iT9Jlz
         OiNDo9Q1afWovjpwOUeKOT9LpRU6eMzKo5HT5m0KR9btb2yEPSylMhk50xfFRm11P/om
         Dg+hfr7/QL1/fBGLYWbrtoPY5z/xrhklm2j/mADw5Omr1PnTfLHkPCdyALDSfUOxTW7v
         4mTA==
X-Gm-Message-State: AOJu0Yxn2CNuITLf+foFT8jBsOi8+j+KrLoa5TwWCcfv6jWM0KCHK0sA
	UwafEZ7w3szYORQzchE1g0Qv
X-Google-Smtp-Source: AGHT+IHt2uvwSeovh51fDULXRLbHd6A/TplrDLayAqqLdOB2HDbSO4NgNckuHMbr0eqUuRBeW5jSOg==
X-Received: by 2002:a05:620a:6007:b0:77f:2f54:f990 with SMTP id dw7-20020a05620a600700b0077f2f54f990mr14664887qkb.67.1702545107292;
        Thu, 14 Dec 2023 01:11:47 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:46 -0800 (PST)
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
Subject: [PATCH 05/16] arm64: dts: qcom: msm8996: Fix UFS PHY clocks
Date: Thu, 14 Dec 2023 14:40:50 +0530
Message-Id: <20231214091101.45713-6-manivannan.sadhasivam@linaro.org>
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

QMP PHY used in MSM8996 requires 2 clocks:

* ref - 19.2MHz reference clock from RPM
* qref - QREF clock from GCC

Fixes: 27520210e881 ("arm64: dts: qcom: msm8996: Use generic QMP driver for UFS")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 6ba9da9e6a8b..b235f1d651aa 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -2105,8 +2105,8 @@ ufsphy: phy@627000 {
 			#size-cells = <1>;
 			ranges;
 
-			clocks = <&gcc GCC_UFS_CLKREF_CLK>;
-			clock-names = "ref";
+			clocks = <&rpmcc RPM_SMD_LN_BB_CLK>, <&gcc GCC_UFS_CLKREF_CLK>;
+			clock-names = "ref", "qref";
 
 			resets = <&ufshc 0>;
 			reset-names = "ufsphy";
-- 
2.25.1


