Return-Path: <devicetree+bounces-7055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 878157BEF30
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 01:34:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3CA91281B0C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 23:34:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D135447365;
	Mon,  9 Oct 2023 23:34:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KmMgUnJl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1F547360
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 23:34:09 +0000 (UTC)
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C64DFAC;
	Mon,  9 Oct 2023 16:34:07 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-77574dec71bso333654785a.2;
        Mon, 09 Oct 2023 16:34:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696894447; x=1697499247; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2bo5wp4VPacPQ/YFv1ka6i/IWIDKPlu3gu5ElNSMims=;
        b=KmMgUnJlr+NjH3YkvOJ8wwUi8Jxhq8/3LIMPk57xvXYOjj2XpfoCWWu4E8luSSuBRC
         pAhV+mpcku7eXE80jwAgfLM/eUY/MCDiJvMPKGTTmCtwDVL9iK1/QWfBEaFTMDK7I4NB
         OatBwlv0d4hl0hivWO4a19cWsRQ/RA5tc/3xUmGkQPT6o4w9yPLpV4j9cAW+1vloM5n6
         8lLSqWFkQz9QbHwkjlAcPFSYAUzlAdMuQJX7pfc0+2yeAGEKNOsa7g2O6jQrlQYcb6ox
         cWq7U7N4wYvP/2uZtXtgv/ijohblddpiq+8B+1yuMEUqX8IsXaXmdM1BbDPdWst76iC9
         01nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696894447; x=1697499247;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2bo5wp4VPacPQ/YFv1ka6i/IWIDKPlu3gu5ElNSMims=;
        b=ZikXBwRQhZHvGO47n9zpu18CrOpVg44gFL5V6R4dCMir+SVi8xGdqRTuaxSQyXt9+U
         CG/a8ox2ab9+mW4d41cmXV2uiRnNTdWVQ5MLUVsxCE9lTbfJ1q2V66G3Uw4yYQh+NEnq
         XCQL8FhGIVG/y/LMMv5l3AO+tTWdsiuPHFaqAPjPquwA6ROmLqNy4ki6IGJOjeaRA0jy
         2Rbo2xI2qZU9ZPCB8lH0qo1Btb3223XM5zYeGaHhY4nD3C9LG+4GK4E5FkGoCEOoOF1Z
         euq+0Hp8kfpAKnea05aJwWjUFH6RLfP1Nftco7KiVtLowMhNRfHPXFl1HjGJwVyDhyKX
         DpJw==
X-Gm-Message-State: AOJu0Yxw30gW9JC1HpK0qEzscW+u1ajcBkahg1NRqoQ+hVZPT0nBaCST
	wTQ4fkhpdiFP9SqsBHJGqpknQy85vBg=
X-Google-Smtp-Source: AGHT+IG8nbPSkPWBdiU9Re/rG7GGdaGIqwh/sp5gmoPGcCmdyPJxgBNb9RE6oeXEACOhSM/7nJCNrw==
X-Received: by 2002:a05:620a:2118:b0:774:2ab6:9cba with SMTP id l24-20020a05620a211800b007742ab69cbamr15869048qkl.78.1696894446897;
        Mon, 09 Oct 2023 16:34:06 -0700 (PDT)
Received: from localhost ([2607:fea8:529e:7800::1d3d])
        by smtp.gmail.com with ESMTPSA id w19-20020a05620a149300b0076eee688a95sm3893908qkj.0.2023.10.09.16.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 16:34:06 -0700 (PDT)
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Vinod Polimera <quic_vpolimer@quicinc.com>,
	Ryan McCann <quic_rmccann@quicinc.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Liu Shixin <liushixin2@huawei.com>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org
Cc: Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v3 4/6] drm/msm: mdss: add support for SDM670
Date: Mon,  9 Oct 2023 19:33:42 -0400
Message-ID: <20231009233337.485054-12-mailingradian@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009233337.485054-8-mailingradian@gmail.com>
References: <20231009233337.485054-8-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add support for the MDSS block on the SDM670 platform.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 drivers/gpu/drm/msm/msm_mdss.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_mdss.c b/drivers/gpu/drm/msm/msm_mdss.c
index 2e87dd6cb17b..2afb843271aa 100644
--- a/drivers/gpu/drm/msm/msm_mdss.c
+++ b/drivers/gpu/drm/msm/msm_mdss.c
@@ -551,6 +551,12 @@ static const struct msm_mdss_data sc8280xp_data = {
 	.macrotile_mode = 1,
 };
 
+static const struct msm_mdss_data sdm670_data = {
+	.ubwc_enc_version = UBWC_2_0,
+	.ubwc_dec_version = UBWC_2_0,
+	.highest_bank_bit = 1,
+};
+
 static const struct msm_mdss_data sdm845_data = {
 	.ubwc_enc_version = UBWC_2_0,
 	.ubwc_dec_version = UBWC_2_0,
@@ -609,6 +615,7 @@ static const struct of_device_id mdss_dt_match[] = {
 	{ .compatible = "qcom,mdss" },
 	{ .compatible = "qcom,msm8998-mdss", .data = &msm8998_data },
 	{ .compatible = "qcom,qcm2290-mdss", .data = &qcm2290_data },
+	{ .compatible = "qcom,sdm670-mdss", .data = &sdm670_data },
 	{ .compatible = "qcom,sdm845-mdss", .data = &sdm845_data },
 	{ .compatible = "qcom,sc7180-mdss", .data = &sc7180_data },
 	{ .compatible = "qcom,sc7280-mdss", .data = &sc7280_data },
-- 
2.42.0


