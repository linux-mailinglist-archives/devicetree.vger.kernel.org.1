Return-Path: <devicetree+bounces-5498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 092927B6767
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 13:13:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 23EC71C204F5
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 11:13:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D39321118;
	Tue,  3 Oct 2023 11:13:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D261A286
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 11:13:13 +0000 (UTC)
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B42A4CC
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 04:13:07 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1c5c91bece9so5746955ad.3
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 04:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696331587; x=1696936387; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1SXdGgyqDUIjaVfyup8+XvosqsNJQG+PbqUrtIaIrGg=;
        b=lYryP//Y8916Dw9T7yefaMuDEGicVgm/JsSYCgQlHygLhbpvoBmkhQsNj1SfdxGDzn
         JVL4W54WWmsaf4tZGoxDqkuTVRkmSwYepihRlDvnzh1hLeD5Mvbv5RJk1CZ9E7UOwGFB
         s5ZqowBr8R0rzZRk/XLdztMhwcmArvNe0w9Lg5EaH4ZhNDziOud7MQxzfGOxpqiLjSxf
         zPbYMQkNkszRUXTO0SBV6Q82/sksoFCrDl1xRe+5f+2Nk9/BjcW6dWBUHM3y/zhgWFTe
         JxWP4rpAupqVpeWWxW5lQTcO1TGvjiH69UPj9RLflHds/IsVd/NKu/MAil33szzpAygU
         uUNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696331587; x=1696936387;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1SXdGgyqDUIjaVfyup8+XvosqsNJQG+PbqUrtIaIrGg=;
        b=PB3fP/+Oa9gt7xRR7fFzbOCIoln/hNI9tIYR4SDXdxxP6eRqPekjj1/EDSDRKD5PNC
         trThbL1NM9BW9YQwTwA/CWFc3nhR3MVwwTEKxE2XuWcJGlVH36cFsPYLn9FGEtkt1qQK
         +25Z3qA8m9gGoT9wB7U8Qe6C/tPeliH6rQhzQfZ6+fET03oDG2uZw6riQkHCUoj75SGQ
         IuNW06J+rFzhHFwKMg0JLxsw73TVwbXHFy8Ra7lmQz3rQEp7OnYdM0bgvPOIIStaK5nY
         rNE+D0z9rfzbO6ZxtxacKLtYnHwEr3O1uu+cI/nkUjVlIuoIa+7z5wA8r9WjYKCourEE
         o84g==
X-Gm-Message-State: AOJu0YwGzMgB5/RY2IOJhuVSLFVlmmXtqcv2KQ2xgtWUdIdseJx59AvD
	AaDWakvrajnS9SwwQZsYGX6O
X-Google-Smtp-Source: AGHT+IEgaRwzsJlpUNc98pJxuNEdzXPM+dY/VQGRsbnG0oy5jS6mOtXRh9qNLqUl5w0ZhfLRV88q3Q==
X-Received: by 2002:a17:902:f54c:b0:1c7:2476:c977 with SMTP id h12-20020a170902f54c00b001c72476c977mr13404192plf.33.1696331586819;
        Tue, 03 Oct 2023 04:13:06 -0700 (PDT)
Received: from localhost.localdomain ([117.217.185.220])
        by smtp.gmail.com with ESMTPSA id d9-20020a170903230900b001ab2b4105ddsm1250328plh.60.2023.10.03.04.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 04:13:06 -0700 (PDT)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: vireshk@kernel.org,
	nm@ti.com,
	sboyd@kernel.org,
	myungjoo.ham@samsung.com,
	kyungmin.park@samsung.com,
	cw00.choi@samsung.com,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jejb@linux.ibm.com,
	martin.petersen@oracle.com
Cc: alim.akhtar@samsung.com,
	avri.altman@wdc.com,
	bvanassche@acm.org,
	linux-scsi@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	quic_asutoshd@quicinc.com,
	quic_cang@quicinc.com,
	quic_nitirawa@quicinc.com,
	quic_narepall@quicinc.com,
	quic_bhaskarv@quicinc.com,
	quic_richardp@quicinc.com,
	quic_nguyenb@quicinc.com,
	quic_ziqichen@quicinc.com,
	bmasney@redhat.com,
	krzysztof.kozlowski@linaro.org,
	linux-kernel@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v4 2/6] PM / devfreq: Switch to dev_pm_opp_find_freq_{ceil/floor}_indexed() APIs
Date: Tue,  3 Oct 2023 16:42:28 +0530
Message-Id: <20231003111232.42663-3-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
References: <20231003111232.42663-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some devfreq consumers like UFS driver need to work with multiple clocks
through the OPP framework. For this reason, OPP framework exposes the
_indexed() APIs for finding the floor/ceil of the supplied frequency of
the indexed clock. So let's use them in the devfreq driver.

Currently, the clock index of 0 is used which works fine for multiple as
well as single clock.

Acked-by: Chanwoo Choi <cw00.choi@samsung.com>
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 drivers/devfreq/devfreq.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 474d81831ad3..b3a68d5833bd 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -88,7 +88,7 @@ static unsigned long find_available_min_freq(struct devfreq *devfreq)
 	struct dev_pm_opp *opp;
 	unsigned long min_freq = 0;
 
-	opp = dev_pm_opp_find_freq_ceil(devfreq->dev.parent, &min_freq);
+	opp = dev_pm_opp_find_freq_ceil_indexed(devfreq->dev.parent, &min_freq, 0);
 	if (IS_ERR(opp))
 		min_freq = 0;
 	else
@@ -102,7 +102,7 @@ static unsigned long find_available_max_freq(struct devfreq *devfreq)
 	struct dev_pm_opp *opp;
 	unsigned long max_freq = ULONG_MAX;
 
-	opp = dev_pm_opp_find_freq_floor(devfreq->dev.parent, &max_freq);
+	opp = dev_pm_opp_find_freq_floor_indexed(devfreq->dev.parent, &max_freq, 0);
 	if (IS_ERR(opp))
 		max_freq = 0;
 	else
@@ -196,7 +196,7 @@ static int set_freq_table(struct devfreq *devfreq)
 		return -ENOMEM;
 
 	for (i = 0, freq = 0; i < devfreq->max_state; i++, freq++) {
-		opp = dev_pm_opp_find_freq_ceil(devfreq->dev.parent, &freq);
+		opp = dev_pm_opp_find_freq_ceil_indexed(devfreq->dev.parent, &freq, 0);
 		if (IS_ERR(opp)) {
 			devm_kfree(devfreq->dev.parent, devfreq->freq_table);
 			return PTR_ERR(opp);
@@ -2036,18 +2036,18 @@ struct dev_pm_opp *devfreq_recommended_opp(struct device *dev,
 
 	if (flags & DEVFREQ_FLAG_LEAST_UPPER_BOUND) {
 		/* The freq is an upper bound. opp should be lower */
-		opp = dev_pm_opp_find_freq_floor(dev, freq);
+		opp = dev_pm_opp_find_freq_floor_indexed(dev, freq, 0);
 
 		/* If not available, use the closest opp */
 		if (opp == ERR_PTR(-ERANGE))
-			opp = dev_pm_opp_find_freq_ceil(dev, freq);
+			opp = dev_pm_opp_find_freq_ceil_indexed(dev, freq, 0);
 	} else {
 		/* The freq is an lower bound. opp should be higher */
-		opp = dev_pm_opp_find_freq_ceil(dev, freq);
+		opp = dev_pm_opp_find_freq_ceil_indexed(dev, freq, 0);
 
 		/* If not available, use the closest opp */
 		if (opp == ERR_PTR(-ERANGE))
-			opp = dev_pm_opp_find_freq_floor(dev, freq);
+			opp = dev_pm_opp_find_freq_floor_indexed(dev, freq, 0);
 	}
 
 	return opp;
-- 
2.25.1


