Return-Path: <devicetree+bounces-5232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 580477B5AA7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:59:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 074E32830BA
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:59:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21091F181;
	Mon,  2 Oct 2023 18:59:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D39D11F190
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:59:48 +0000 (UTC)
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E13FE8
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:59:45 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-504b84d59cbso32213e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696273183; x=1696877983; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A+56KXdnxE65EkSdZoHmKszExF8hRCz4jAuhqSaYx84=;
        b=RHtJpeqpvfvlEYHBRlj6P931QKBBieNT+gIGCfhsSrk7Qx3Fnbqi84lTKZ9gB08rIx
         G92ni8UhydGa3ds+lHd9dUOIycLQL6Kk+t2SAbZ1qXlqGM6/y95CxxbNEQCCqsqoQ9eQ
         OmmgeJLBDVwh6KKvY6dY3aYNOZxxcIaxB8Y5cCU6ueG47hZp+fdipJN1Gj78zvmery4Q
         V90txEuWk2DCDhBu7kAOUSZRPUY0kvjALZHg9UPwfelTdYS5zMt0mkymrn/Wb5SEm24U
         JWTTtmftGdM+bL+oIo7/QihwVQDABxuI9McCDy/IGazX0KN2z0HOeVGTEv/RiDfFCpKH
         S3AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696273183; x=1696877983;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A+56KXdnxE65EkSdZoHmKszExF8hRCz4jAuhqSaYx84=;
        b=qQ5851VhBIRAWg6t8KUCTq8x4IQq6pAJ1kmMXlB0Q8uSCdHTkmRtjSfEMSrAt34/uQ
         uDrhIUuVNrdw/LgofApFI1dBfZR4tuQzJtV8/LSkyjumBUDiS0viARKlaetRU2KDse+M
         fUp7oPpI52fAUdimi2vV4+H/8rzVwxPJUWjL1w+MUgDXZMhEKZiOBVx1hfNijHUdVmMf
         7ASeYYC8Quo/PdoUtL7HidMsY7RAddLPAZp3920vC7NeL+sS/WKQ/M5Qe2CMcMWZGaOQ
         vJxDaTe/PZi+MN1PhlF04Teoxg0Qgte1PP5/Ngz85DGgA9VsuRPhuNxl4YADJX9RapW0
         p0Hw==
X-Gm-Message-State: AOJu0YzDVvEYFy0epACSRwG3/oJrWb6J2H5Qqtu1MX65SIWYGWsCUVh6
	486yrYogdVAaRDojxSYAkz7lFA==
X-Google-Smtp-Source: AGHT+IGsvZCvt/wf7r/3mXfcPjQ5EYeujepsUhoo6d+dKmFSmHIRZsTUCxc9T6L/QX6onz8XGVW1lw==
X-Received: by 2002:a05:6512:5cf:b0:500:92f1:c341 with SMTP id o15-20020a05651205cf00b0050092f1c341mr9311900lfo.54.1696273183479;
        Mon, 02 Oct 2023 11:59:43 -0700 (PDT)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id t6-20020a19ad06000000b00502d7365e8fsm2443981lfc.137.2023.10.02.11.59.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 11:59:43 -0700 (PDT)
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
Subject: [PATCH v5 3/6] cpufreq: qcom-nvmem: also accept operating-points-v2-krait-cpu
Date: Mon,  2 Oct 2023 21:59:37 +0300
Message-Id: <20231002185940.1271800-4-dmitry.baryshkov@linaro.org>
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

the qcom-cpufreq-nvmem driver attempts to support both Qualcomm Kryo
(newer 64-bit ARMv8 cores) and Krait (older 32-bit ARMv7 cores). It
makes no sense to use 'operating-points-v2-kryo-cpu' compatibility node
for the Krait cores. Add support for 'operating-points-v2-krait-cpu'
compatibility string.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index 919f2ee9cafe..9db060bed742 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -238,7 +238,8 @@ static int qcom_cpufreq_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENOENT;
 
-	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu");
+	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu") ||
+	      of_device_is_compatible(np, "operating-points-v2-krait-cpu");
 	if (!ret) {
 		of_node_put(np);
 		return -ENOENT;
-- 
2.39.2


