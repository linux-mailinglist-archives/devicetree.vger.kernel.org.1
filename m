Return-Path: <devicetree+bounces-10013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 472E47CF5BE
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:50:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4263CB212E0
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 10:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5629E17727;
	Thu, 19 Oct 2023 10:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PgF6XgDN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2A0171DD
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 10:50:26 +0000 (UTC)
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77081124;
	Thu, 19 Oct 2023 03:50:23 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4056ce55e7eso71216595e9.2;
        Thu, 19 Oct 2023 03:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697712621; x=1698317421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0naVyUeSmTC7NBi/QXx7z14rWsTMmPuek5i541kbChk=;
        b=PgF6XgDNP/o1D1DfUjFz9ONNlBUv5VN2XhOX/7P9MmOyDwYVYakd8ZW2dWuUsV0Il6
         68jW/qzjqIIQkG9u/k/L5iXOVCuuz2JgwOD3qETgwcl6UFUVe0uhDaOaBxNgLrKLoShy
         5/ZvJL4JxerqFXlqXEw/KxVIWAIbwNgtKvI9SkhnRMb65iutqY5LxqtbiL3K/rdt9JTV
         5vnG7YOzs1Py2BowahGUs/3JTabqvYdVNQeOk+ZqY8MzU9BoOl8S8lZ0t/TklpQYVv/g
         ln4TAk8JG/ETZSqQz9FYfPeEg+Cp83zQI8pEdo30nF6Eoa5ueCZTmu2TfP2ZP8e8T1zV
         6ngQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697712621; x=1698317421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0naVyUeSmTC7NBi/QXx7z14rWsTMmPuek5i541kbChk=;
        b=PKr5jcztOHCifB5iV/fb2c1XACiz/wARgRjrzywx2Xd7+AFB0r10KtE6rnoBksi3uJ
         MlQLJbWa0xq2/qHAKxYV05rOwxU0qOo4teszuBaMgvdvvZASFL+ZJ+J4Vs3RXmRQ+Wiu
         iimwFHPiiUoWsH1N7k62DpdlUDJc4y+rugbKBax2Ak17mZXfepsvN2Sc2a78cu+89Ly7
         iiEGtXQeRXjVxxl7qulkeZFYWDjYMlj4c3oNR6+kVpg3yO49v0RNAUdMyq85P04GqZo0
         3iq7U5AgNbzfffrWNc6T9PnLNRIX4VNrcqiqy8eDJwHBGb7jV2BESwNyv7i/YmaVDO7C
         mIIw==
X-Gm-Message-State: AOJu0Yzas7Xq6Zr8rBanM2U/yg6N+riQKyyqCmDCOkCoopc2+WplXhmq
	sG/TDQXo7BCUlEvgJ3g3x9nKbyudDnE=
X-Google-Smtp-Source: AGHT+IH1D92oyQQikNYUtEM82hVGX1QwIVrW7tZZA0+9MqH36DSuOwfz16ZteI8WYuigyQLCFiUeNw==
X-Received: by 2002:a05:600c:511b:b0:402:ee9e:ed98 with SMTP id o27-20020a05600c511b00b00402ee9eed98mr1488997wms.34.1697712621541;
        Thu, 19 Oct 2023 03:50:21 -0700 (PDT)
Received: from localhost.localdomain (93-34-89-13.ip49.fastwebnet.it. [93.34.89.13])
        by smtp.googlemail.com with ESMTPSA id bh9-20020a05600c3d0900b003feae747ff2sm4129511wmb.35.2023.10.19.03.50.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Oct 2023 03:50:21 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ilia Lin <ilia.lin@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Sricharan Ramabadhran <quic_srichara@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v7 2/4] cpufreq: qcom-nvmem: also accept operating-points-v2-krait-cpu
Date: Thu, 19 Oct 2023 12:50:09 +0200
Message-Id: <20231019105011.7289-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231019105011.7289-1-ansuelsmth@gmail.com>
References: <20231019105011.7289-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

the qcom-cpufreq-nvmem driver attempts to support both Qualcomm Kryo
(newer 64-bit ARMv8 cores) and Krait (older 32-bit ARMv7 cores). It
makes no sense to use 'operating-points-v2-kryo-cpu' compatibility node
for the Krait cores. Add support for 'operating-points-v2-krait-cpu'
compatibility string.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
Changes v7:
* Add this patch from reverted other series
---
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index c399b5014b49..57842d60d6ec 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -369,7 +369,8 @@ static int qcom_cpufreq_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENOENT;
 
-	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu");
+	ret = of_device_is_compatible(np, "operating-points-v2-kryo-cpu") ||
+	      of_device_is_compatible(np, "operating-points-v2-krait-cpu");
 	if (!ret) {
 		of_node_put(np);
 		return -ENOENT;
-- 
2.40.1


