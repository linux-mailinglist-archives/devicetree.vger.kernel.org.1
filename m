Return-Path: <devicetree+bounces-27114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D10D681957A
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 01:34:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DAFBF1C242F5
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 00:34:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428AF16403;
	Wed, 20 Dec 2023 00:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CGjLZn8R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93722168CE
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 00:31:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cc843af59fso14790251fa.0
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 16:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703032272; x=1703637072; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iL7/cJ6kElWHnhbek3aTb1dfvRVji6nGvSY/NIw03Sk=;
        b=CGjLZn8RQSJNX0wsXcyRFOEoQWWLUmHI16Ise7axkkdwuILSywsDyRWFBIi4hGAi1f
         WZq503A2jdRA5PslAJWhVArYVGgoFDSJgwb0wVXP6f0OR4edZYYaIfx4ZdsTjsnJFGrw
         Kycjd95M3zrpcc+gasvkUrU4Nlum3/GHkQ073VXbbgsv2vrACzd5O1jid0GwXPAJT0dC
         nkv5e2F72aLSCkPU/2ywvupJc/uk3a25u2nU6Ql1LgZyuQEisOJtQ5MuuHCSpHVRF/lR
         3TmnkoGwTJZo+84nSImenaHgCWbWBpILkjcEMpfjQuvKn0gS7nT5ey8QNOGUFphuu3SA
         UZWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703032272; x=1703637072;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iL7/cJ6kElWHnhbek3aTb1dfvRVji6nGvSY/NIw03Sk=;
        b=K+nEVfhzesuu33b55m6MXKcAL3Eo71dGGsmIOeO1z6WUR9RN+/nXUL3c9FB/02PWEj
         bepVyX/l0QO518tHKq8KqZnVR7jGIjc1M3+wRUz8n2rmXyDvCviIP7xzCqpB1TxAYPOn
         JXXzfigAAGDcn44wwl1hPtkxf7S8cabZe/lkjaGTYK5FSTMFvLO/ntrfDNfNOU83aOx2
         LG4fB6fQ9Y/fSXgbcGFvc/s2zlsLLSRisvuwH0Yw2u8Ku15gf7YSA7Glh+zFvVsblo1d
         L3wokD4Ca6qhsXQb/zPZsDPv0e94BMytM4RCf0fOJ+tzANFmOIy46n0aG86R+DBhg02L
         j6/Q==
X-Gm-Message-State: AOJu0Yz3E/wheOKWJjV/jVQSyKGyuNZJavZ7giE4eBQKlc6FUVd3EBdE
	MO1L+1kf6kBFbM4dc2WWneUlUA==
X-Google-Smtp-Source: AGHT+IGggSpim3Sjz11CySr8Mk3XffgInvaRz+LVbVBVtZqi8rGkaMS60eO0kkzseXHzRGB/V9cE6w==
X-Received: by 2002:a2e:a685:0:b0:2cc:69a6:a49d with SMTP id q5-20020a2ea685000000b002cc69a6a49dmr2060217lje.78.1703032271806;
        Tue, 19 Dec 2023 16:31:11 -0800 (PST)
Received: from [10.167.154.1] (178235179206.dynamic-4-waw-k-1-3-0.vectranet.pl. [178.235.179.206])
        by smtp.gmail.com with ESMTPSA id k16-20020a056402049000b00552d03a17acsm4824397edv.61.2023.12.19.16.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 16:31:11 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 20 Dec 2023 01:30:52 +0100
Subject: [PATCH v3 11/15] clk: qcom: gcc-qcm2290: Add runtime PM
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230717-topic-branch_aon_cleanup-v3-11-3e31bce9c626@linaro.org>
References: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
In-Reply-To: <20230717-topic-branch_aon_cleanup-v3-0-3e31bce9c626@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1703032250; l=2146;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=Am9uKVZmtmU4RslmGcqWt7Und9xViAlu8ssTW3WECb8=;
 b=P9NWhqhoMKb6ser2xFt0lQBZ+Aao5an5mJaPk9VN2bm2Vgn4In7Yny97kQ5t3WtDW3KF0/L9C
 6cCVEJalfIOCb0A+pg1Lcax4vvhqXAGO0sSBAOE5NiQxXAg9VCtEkqc
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

The GCC block on QCM2290 is powered by the VDD_CX rail. We need to
ensure that CX is enabled to prevent unwanted power collapse and that
the reference is dropped when unused so that the system can enter a
firmware-managed lower power state.

Enable runtime PM to keep the power flowing only when necessary.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 drivers/clk/qcom/gcc-qcm2290.c | 22 +++++++++++++++++++---
 1 file changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/qcom/gcc-qcm2290.c b/drivers/clk/qcom/gcc-qcm2290.c
index cc1dd5fc6d32..0992da84a741 100644
--- a/drivers/clk/qcom/gcc-qcm2290.c
+++ b/drivers/clk/qcom/gcc-qcm2290.c
@@ -8,6 +8,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
 #include <linux/regmap.h>
 
 #include <dt-bindings/clock/qcom,gcc-qcm2290.h>
@@ -2882,14 +2883,26 @@ static int gcc_qcm2290_probe(struct platform_device *pdev)
 	struct regmap *regmap;
 	int ret;
 
+	ret = devm_pm_runtime_enable(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = pm_runtime_resume_and_get(&pdev->dev);
+	if (ret)
+		return ret;
+
 	regmap = qcom_cc_map(pdev, &gcc_qcm2290_desc);
-	if (IS_ERR(regmap))
+	if (IS_ERR(regmap)) {
+		pm_runtime_put(&pdev->dev);
 		return PTR_ERR(regmap);
+	}
 
 	ret = qcom_cc_register_rcg_dfs(regmap, gcc_dfs_clocks,
 				       ARRAY_SIZE(gcc_dfs_clocks));
-	if (ret)
+	if (ret) {
+		pm_runtime_put(&pdev->dev);
 		return ret;
+	}
 
 	clk_alpha_pll_configure(&gpll10, regmap, &gpll10_config);
 	clk_alpha_pll_configure(&gpll11, regmap, &gpll11_config);
@@ -2903,7 +2916,10 @@ static int gcc_qcm2290_probe(struct platform_device *pdev)
 	qcom_branch_set_clk_en(regmap, 0x36004); /* GCC_GPU_CFG_AHB_CLK */
 	qcom_branch_set_clk_en(regmap, 0x2b06c); /* GCC_SYS_NOC_CPUSS_AHB_CLK */
 
-	return qcom_cc_really_probe(pdev, &gcc_qcm2290_desc, regmap);
+	ret = qcom_cc_really_probe(pdev, &gcc_qcm2290_desc, regmap);
+	pm_runtime_put(&pdev->dev);
+
+	return ret;
 }
 
 static struct platform_driver gcc_qcm2290_driver = {

-- 
2.43.0


