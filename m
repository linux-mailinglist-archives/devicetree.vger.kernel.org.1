Return-Path: <devicetree+bounces-5234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE7367B5AA9
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 80FF228339A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BCCC1F187;
	Mon,  2 Oct 2023 18:59:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B96601F199
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:59:49 +0000 (UTC)
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7109CE
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:59:47 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-50437c618b4so31697e87.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696273186; x=1696877986; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ETmrOyXpzkFbupwItSkBNFCMqm+cnfW5vWqiMF83MgM=;
        b=KXDx19e3//Y8kt0JJre+F6jhUk0ruqw4A3TRW2+76Yj/+X9CHgG8eeu6/CsIgqTn6E
         NaCzrD0egxBynwKreHodsfqeg6Anra8B/pyd46VJwXi2zEEfW98lDBGbATy+Mq8LHEze
         kJaiFRa793vc2BsITA77TNfunGvnskZE/UrOIPlE2zZ+PE3O5gUCB9fe0RDJebclKG0r
         ZC6v+x1tR8q/TjPUYf/9c7gFPZyQNKM03y6NMM5lxND/gEFLM1aMOUewnr7u4EqfLVT6
         iLtKMQiIoZQVYP+ky6DL7rBFMTkcxjBgnrlbVYi7hd5+ZdWqj/ZalPClaOwrO70YHT4S
         lRAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696273186; x=1696877986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ETmrOyXpzkFbupwItSkBNFCMqm+cnfW5vWqiMF83MgM=;
        b=R5V8q8xhqddiHvhYFGtbLEJMFAjKENiwUM6GZ4BcUaXASpaHKYVUc8Ni0gxQQkuk6k
         0ftCGDDsxaRT8q0ic4CmS96k3a4xFQNr4hl0ahUu+8/XSrXBBG1TcBdzrgSIGem2gein
         roIo7IGhbv2LTIPuvBFWsa8OR6NZ3Q8zxyIkI1U4H/onvRYLpI18s91IbucHv/L3kMFL
         /3HpmAkgGVxPO4UupaAF2U8m2FfbM8Xo0FMJZlJN8px28G7UPJJ66xGZAH5mNw/UhWpw
         jQeG+fw85pdrh3Ff1FBGITn4qXIoKQA4b0JCSGdaLt/ZHdotzlnLTcCAQ6v+zBme0XeO
         2/Pw==
X-Gm-Message-State: AOJu0YzwRzP2i136wA3BoT6UKn0N4SIygqpkEKc0yRKQ/J/QmcWC3xjd
	QthQmgxfinlZRw+3C6q4OUAyvA==
X-Google-Smtp-Source: AGHT+IGoo4epBUciQRmMmhHMfybHxLIJNCItcKoPirP6vC0ZxB9+PFXBJdN8BkE3vJgSJ2vYEEuuPA==
X-Received: by 2002:a19:8c47:0:b0:500:9524:f733 with SMTP id i7-20020a198c47000000b005009524f733mr9981048lfj.20.1696273186047;
        Mon, 02 Oct 2023 11:59:46 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t6-20020a19ad06000000b00502d7365e8fsm2443981lfc.137.2023.10.02.11.59.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:59:45 -0700 (PDT)
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
Subject: [PATCH v5 6/6] cpufreq: qcom-nvmem: enable core voltage scaling for MSM8960
Date: Mon,  2 Oct 2023 21:59:40 +0300
Message-Id: <20231002185940.1271800-7-dmitry.baryshkov@linaro.org>
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

Reuse APQ8064 config for MSM8960 to enable core voltage scaling.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index e1cf677b0c6f..6b54a674e9ea 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -408,7 +408,7 @@ static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
 	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
 	{ .compatible = "qcom,apq8064", .data = &match_data_apq8064 },
 	{ .compatible = "qcom,msm8974", .data = &match_data_krait },
-	{ .compatible = "qcom,msm8960", .data = &match_data_krait },
+	{ .compatible = "qcom,msm8960", .data = &match_data_apq8064 },
 	{},
 };
 MODULE_DEVICE_TABLE(of, qcom_cpufreq_match_list);
-- 
2.39.2


