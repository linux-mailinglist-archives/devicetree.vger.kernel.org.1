Return-Path: <devicetree+bounces-7704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 251397C5204
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:27:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D4F2728220A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:27:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3360E1E51C;
	Wed, 11 Oct 2023 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ej8D5yfk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61F21DA32
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:27:31 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DAF48F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:27:30 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5033918c09eso8517821e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:27:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697023648; x=1697628448; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/zWK+bD8Aid1fpusuW1MHz1xIacL85O9/h4oyYVsZ/0=;
        b=Ej8D5yfkmy8v6C8HTqPcdvZP6KPW2sG9mFYuuLI04Az5JtVjtW3ZJFCiiOfvPt6DCT
         fY86pJktZ1gyYRs7skZCyvJBZT5zTQZes7jVwGAezewb/YcRYLSlop7+SwMCY0dZpT6B
         7JvZSxv7Nxt2YtxLTynNLvfGfJ56mt3JRHIOzrCx2cTJ8O8TvaZwuC4EQucG3rHAtOkE
         RlTuMxMQXONDQn8l7xIIBN0MSkCY5Fn3IqRTKS36g9PdjyCIAC8HdJEkbSm4IfQnnC8K
         fKgKPDNzeEmKqP1CT1ZGrQTpUYnqP5t5Nz1XdfzhhdrFwThwTsPQAiGpyMXjpNF0SnZE
         LdFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697023648; x=1697628448;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/zWK+bD8Aid1fpusuW1MHz1xIacL85O9/h4oyYVsZ/0=;
        b=BPYJs/OgY7M4xnta7hF9ntBvm0vgMfrczDCdhmv8Nc/wyTmGoqFzSCfht8p3JIvHQH
         AImYKW9Eu6f4KxylsMNPEmXPcRR1QgVlJ0aZnjbIGtvhTpO4M6obYTNjgBGnRfRFi8lF
         CI9c/hQ+K7B007bDjRmA19a0i6zewd2WICTNkaZwZCblNizhHS9wtQZEDxCr9l0+a5Pn
         CP373WLuRp6qlNVEOsLImAgOtggdF5bUjW2iBDAITnPLuvJInjq2y8CXnTEFkuuHnS4c
         jJtqPpgVzfu7O/YHZ5DH1bA3oCj4Iw9BOWEbjhbxNctgKmVklq/VaSDpmpno5A5ZeqWL
         oXiQ==
X-Gm-Message-State: AOJu0YzLjZr/yJrWWcr0Y+P4BOvhSia9kBSxMHQZtsq5/CZIlD1PnOs0
	Ts1Nw+8gJYieJS+6pJjyF5htRA==
X-Google-Smtp-Source: AGHT+IGvenwk2MJkOq3Kj8WNWwdd/u1jV8TzOJNidj7MkUHF50J7iU+JoTJQf+ppFys3K+MXURN1ow==
X-Received: by 2002:a05:6512:6c7:b0:503:95d:f2bd with SMTP id u7-20020a05651206c700b00503095df2bdmr20944407lff.34.1697023648266;
        Wed, 11 Oct 2023 04:27:28 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id a29-20020a056512021d00b005008c11ca6dsm2228154lfo.184.2023.10.11.04.27.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 04:27:27 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: [PATCH] of: export of_find_next_cache_node() for modules
Date: Wed, 11 Oct 2023 14:27:26 +0300
Message-Id: <20231011112726.166052-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The qcom-cpufreq-nvmem module uses of_find_next_cache_node() function,
so export it to be available to the modules.

Fixes: 7683a63c08ff ("cpufreq: qcom-nvmem: create L2 cache device")
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---

This patch fixes the discrepancy caused by the patch for the
qcom-cpufreq-nvmem. I'd like to ask for this patch to be also merged via
the cpufreq tree.

---
 drivers/of/base.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8d93cb6ea9cd..c4cf558e60d9 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1905,6 +1905,7 @@ struct device_node *of_find_next_cache_node(const struct device_node *np)
 
 	return NULL;
 }
+EXPORT_SYMBOL_GPL(of_find_next_cache_node);
 
 /**
  * of_find_last_cache_level - Find the level at which the last cache is
-- 
2.39.2


