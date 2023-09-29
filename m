Return-Path: <devicetree+bounces-4696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB57B37A9
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 18:16:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 83C041C2099F
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 16:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F05BE521D7;
	Fri, 29 Sep 2023 16:16:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796E811C90
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 16:16:52 +0000 (UTC)
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19C7F1A5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:50 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-406402933edso59738605e9.2
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 09:16:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696004208; x=1696609008; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ej83W4mJ4xFKDLp6O9qpUy9eRITOjM3WUInuGsR6c3w=;
        b=ak0wf9kNpN0iI1agnQVQOwZhF2pk+66cAkcCNLgi7okzs+QCyW+93s+ytJsNjtAxcA
         39tT44EAE8EnltjH25b2bWA6/mXmm4xTOv8XODFCmRJYdHmBBQ+skQWblC3D9ls5yP42
         LizmiveqO2cnyAiiDH6IqSsgNoQUkvbIEJCsk/Bof11QJyePHw92iqeMTuhlR0w7WpLZ
         +OWDtR/m+uzDZKrr3Eu6HFEdcDnLMG0MUsGw2OcclnJ9bQlJpqosMYGR0WlMokVXQH0U
         TKwLbZuxuVW7X8CMhtGXO/WwnFtxAOL1ZUpl7oKZiPbXuT8EsbTL/HG2xgQyHrZJ5ujJ
         0QUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696004208; x=1696609008;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ej83W4mJ4xFKDLp6O9qpUy9eRITOjM3WUInuGsR6c3w=;
        b=Q5UyU5w+6M2RD+SC8JBHloGPz0P4qyGYvCsavsxm3Oc94j/AOXpaZ8V4NKR/q/p8RQ
         rLdzcb7aPDJ5H2ltZxspGPslhQMd7Poke4ca5kwU5GRYPIQWbLpgjn4eMb3D4ceBAVWZ
         9vSapRcHnTG4JX37xn7QE6buStS4n83LyXm0GKG9TILKArbcditzvCpEA/wRivpQ9Cuq
         EhTjJY9HO0SSWLsWGBZTQoELfXrHX7741aHcGumqRy5grUX58bC6ml7KoGrQRCXGxD/K
         stglrhId1WVZxFyITGbsM9gX/aiNfUNS+7StR5B/BbuMGCC/XgePj9zjg9QxZ7aLJsd1
         OUQg==
X-Gm-Message-State: AOJu0YzMPFPxBAO36IOduzEBMdI7iX85zXVFnBvP8z3oiIEUiTdSQrF8
	JIY+9wATyVXK2ErgmOwKrXyubA==
X-Google-Smtp-Source: AGHT+IG6giV2nFlnjxwrVxFGPsqceBnh72gCoBi3Ao0oUlvoYM0LIAOKz3IqprIp0Toig4d4DAxZBg==
X-Received: by 2002:a5d:674d:0:b0:321:68fa:70aa with SMTP id l13-20020a5d674d000000b0032168fa70aamr4445292wrw.9.1696004208426;
        Fri, 29 Sep 2023 09:16:48 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id x15-20020adfcc0f000000b0032330e43590sm10226848wrh.22.2023.09.29.09.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 09:16:48 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Fri, 29 Sep 2023 17:16:17 +0100
Subject: [PATCH 1/4] remoteproc: qcom: probe all child devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230905-caleb-qmi_cooling-v1-1-5aa39d4164a7@linaro.org>
References: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
In-Reply-To: <20230905-caleb-qmi_cooling-v1-0-5aa39d4164a7@linaro.org>
To: Andy Gross <agross@kernel.org>, 
 Bhupesh Sharma <bhupesh.linux@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Amit Kucheria <amitk@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thara Gopinath <thara.gopinath@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=2910;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=BQAHBsD8YjKFqwQLawNkTixAQML5hsjMljtR9Bt9PIQ=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSxH3mvrc6/vXxmg4XEgePXBIw6shYH5qlN6g3dmLUu0
 ucb/5KKjlIWBkEOBlkxRRbxE8ssm9ZettfYvuACzBxWJpAhDFycAjCR1HsM/+wXLzasPTLlouGD
 KvZTvsd9ln0LCrtw3yXzgGUxw1O5mesY/unmdS7Nl9y+KW99VkH9dt7jyXZMQRF+l/g4+E1u6qw
 69QkA
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Generalise the qcom,bam-dmux child node support by probing all
remoteproc children with of_platform_populate(). This will be used to
enable support for devices which are best represented as subnodes of the
remoteproc, such as those representing QMI clients.

Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/remoteproc/qcom_q6v5.c     | 4 ++++
 drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
 2 files changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/remoteproc/qcom_q6v5.c b/drivers/remoteproc/qcom_q6v5.c
index 4ee5e67a9f03..8aa5c7b05429 100644
--- a/drivers/remoteproc/qcom_q6v5.c
+++ b/drivers/remoteproc/qcom_q6v5.c
@@ -6,6 +6,7 @@
  * Copyright (C) 2014 Sony Mobile Communications AB
  * Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
  */
+#include <linux/of_platform.h>
 #include <linux/kernel.h>
 #include <linux/platform_device.h>
 #include <linux/interconnect.h>
@@ -349,6 +350,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
 		return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
 				     "failed to acquire interconnect path\n");
 
+	of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(qcom_q6v5_init);
@@ -359,6 +362,7 @@ EXPORT_SYMBOL_GPL(qcom_q6v5_init);
  */
 void qcom_q6v5_deinit(struct qcom_q6v5 *q6v5)
 {
+	of_platform_depopulate(q6v5->dev);
 	qmp_put(q6v5->qmp);
 }
 EXPORT_SYMBOL_GPL(qcom_q6v5_deinit);
diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
index 22fe7b5f5236..ab7e426777c7 100644
--- a/drivers/remoteproc/qcom_q6v5_mss.c
+++ b/drivers/remoteproc/qcom_q6v5_mss.c
@@ -230,7 +230,6 @@ struct q6v5 {
 	struct qcom_rproc_subdev smd_subdev;
 	struct qcom_rproc_ssr ssr_subdev;
 	struct qcom_sysmon *sysmon;
-	struct platform_device *bam_dmux;
 	bool need_mem_protection;
 	bool has_alt_reset;
 	bool has_mba_logs;
@@ -1969,7 +1968,6 @@ static int q6v5_alloc_memory_region(struct q6v5 *qproc)
 static int q6v5_probe(struct platform_device *pdev)
 {
 	const struct rproc_hexagon_res *desc;
-	struct device_node *node;
 	struct q6v5 *qproc;
 	struct rproc *rproc;
 	const char *mba_image;
@@ -2113,10 +2111,6 @@ static int q6v5_probe(struct platform_device *pdev)
 	if (ret)
 		goto remove_sysmon_subdev;
 
-	node = of_get_compatible_child(pdev->dev.of_node, "qcom,bam-dmux");
-	qproc->bam_dmux = of_platform_device_create(node, NULL, &pdev->dev);
-	of_node_put(node);
-
 	return 0;
 
 remove_sysmon_subdev:
@@ -2138,8 +2132,6 @@ static void q6v5_remove(struct platform_device *pdev)
 	struct q6v5 *qproc = platform_get_drvdata(pdev);
 	struct rproc *rproc = qproc->rproc;
 
-	if (qproc->bam_dmux)
-		of_platform_device_destroy(&qproc->bam_dmux->dev, NULL);
 	rproc_del(rproc);
 
 	qcom_q6v5_deinit(&qproc->q6v5);

-- 
2.42.0


