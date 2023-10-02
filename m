Return-Path: <devicetree+bounces-5231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F127B5AA6
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:59:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7247F283274
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:59:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 358AA1F194;
	Mon,  2 Oct 2023 18:59:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1AF61F18C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:59:47 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92240C9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:59:44 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-502e7d66c1eso38689e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696273182; x=1696877982; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uUMMYHvgPHC3FfvjsnckoOJeoQiZG6ia/eSTyXFZQWY=;
        b=ZhI8t8stGzgFJbpADZZ5VJoJGDvPoaxXXcKMlhIUM22511S9yUN2bRwROclKU+ugfw
         kwZAureA2ymlIctRf/9KGeuNXRON1zE4KVClgIZbR1s2LidbVuiR5kC2j2TDsTmvOHFY
         3S4dclPNG7O1MYZnDC5V5NQC/ntpU6VrVY6V2urEmpewgCSLl7xYcppIC6XPYIkjCj6e
         JCwcfVSBAXG3jWlG3FzxScwSgR13gzQXP66dD05sausEjOfXblPwQOGgfHZzyamrt2py
         WNL9j1kIComsU2cLllR+ZVHn30UYb1ytCmXiwIISHEjoZc79WFPRXdQa5Eg/x9fdioZQ
         W+nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696273183; x=1696877983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uUMMYHvgPHC3FfvjsnckoOJeoQiZG6ia/eSTyXFZQWY=;
        b=omTRCRQ1OXBpkSj498lmEu6bFgjslOcNb9gdwdM65N+OnNBlLBLfQqeLEQpKnOnweP
         +BxzwrR5u4cv9duG5xSnUDwGm26oHXZj/0Hd610SbbGd2Zt/cBQclm+aBmrQ/9HhD7tH
         No4BFIZLKi9wKIeds/yNR+WBJ3ruETzbYGpvs3p5Xz5mqIauxxMW7KXAu1ErRnLh3x/i
         MZDaRR+fNI0t53nhBMlkMKATgPNwF5SxrUn4j/8ZZH6uRElq2Y5K3hnWIwbyTi9cN/KH
         J/tA1XJjSRxM8vzMs1voTWVj7B0QIG9BT7q4KvaywLU49xEeza2+rsMj79Vi0rTpCV6m
         yNDQ==
X-Gm-Message-State: AOJu0YyivzND63krL5LiyM29JXDBNQN8BmkVD/6GrCtLd+BOcE9eDXUV
	cOGYl0jLLkLsNYup6iWORjm5kw==
X-Google-Smtp-Source: AGHT+IEgxFY+35KvD5H3tSxWVYVRmZNUF09HNGbEzDO2oFLSFdd5IOhZLmpK+kmZLitoT04UbgVrRg==
X-Received: by 2002:a19:f814:0:b0:503:343a:829f with SMTP id a20-20020a19f814000000b00503343a829fmr9526676lff.23.1696273182683;
        Mon, 02 Oct 2023 11:59:42 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t6-20020a19ad06000000b00502d7365e8fsm2443981lfc.137.2023.10.02.11.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:59:42 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	Viresh Kumar <vireshk@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Georgi Djakov <djakov@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Christian Marangi <ansuelsmth@gmail.com>,
	Stephan Gerhold <stephan@gerhold.net>
Subject: [PATCH v5 2/6] cpufreq: qcom-nvmem: create L2 cache device
Date: Mon,  2 Oct 2023 21:59:36 +0300
Message-Id: <20231002185940.1271800-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
References: <20231002185940.1271800-1-dmitry.baryshkov@linaro.org>
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

Scaling the frequencies on some of Qualcomm Krait platforms (e.g.
APQ8064) also requires scaling of the L2 cache frequency. As the
l2-cache device node is places under /cpus/ path, it is not created by
default by the OF code. Create corresponding device here.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index 84d7033e5efe..919f2ee9cafe 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -22,6 +22,7 @@
 #include <linux/module.h>
 #include <linux/nvmem-consumer.h>
 #include <linux/of.h>
+#include <linux/of_platform.h>
 #include <linux/platform_device.h>
 #include <linux/pm_domain.h>
 #include <linux/pm_opp.h>
@@ -377,6 +378,7 @@ static int __init qcom_cpufreq_init(void)
 {
 	struct device_node *np = of_find_node_by_path("/");
 	const struct of_device_id *match;
+	unsigned int cpu;
 	int ret;
 
 	if (!np)
@@ -387,6 +389,25 @@ static int __init qcom_cpufreq_init(void)
 	if (!match)
 		return -ENODEV;
 
+	for_each_possible_cpu(cpu) {
+		struct device *dev = get_cpu_device(cpu);
+		struct platform_device *pdev;
+		struct device_node *cache;
+
+		cache = of_find_next_cache_node(dev->of_node);
+		if (!cache)
+			continue;
+
+		if (of_device_is_compatible(cache, "qcom,krait-l2-cache")) {
+			pdev = of_platform_device_create(cache, NULL, NULL);
+			/* ignore, this error is not fatal */
+			if (!pdev)
+				pr_err("%s: %pe, failed to create L2 cache node\n", __func__, pdev);
+		}
+
+		of_node_put(cache);
+	}
+
 	ret = platform_driver_register(&qcom_cpufreq_driver);
 	if (unlikely(ret < 0))
 		return ret;
-- 
2.39.2


