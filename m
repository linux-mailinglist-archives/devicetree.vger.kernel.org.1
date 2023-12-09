Return-Path: <devicetree+bounces-23499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D37780B69B
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 22:56:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3F0BE1C20852
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 21:56:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 222431DA2B;
	Sat,  9 Dec 2023 21:56:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lkAEoxxP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 415AF10E
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 13:56:06 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2c9fbb846b7so36258151fa.2
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 13:56:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702158964; x=1702763764; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Xe0ItZ9gNc3ezmOAnEcbT+smftoMzThFnuNn/+rBU0=;
        b=lkAEoxxPZznLyp/1759OSQ4TMtlb6l46PbEbfi6rNL2fsCODwSjGAbZjLz1h0ePU7B
         oi8qGWC7X+v3ybIvvkzKsOPAaGEe0bi2R9sQjtmWdqoSGP2wP6PVMXE6QeSV0eLkbBDy
         p4lMcTmR27/MRz7FWynV80H4ltqD3eJfHFBYYAuqveg7MtBSYyEe2rHuq/Adg7bCL366
         3bumlYCu+bDkxeQFm8IZlsfAiKmuKzUJvjncIrezxBzYOguc4h5Bg8YFUtRSMJgTfloP
         0USUll3YfMMqhgyw8OrP2pJT8M8ndWpq98JybZQn1qV4r70YcQAbdOz3RPYL9rNXpbse
         L1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702158964; x=1702763764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Xe0ItZ9gNc3ezmOAnEcbT+smftoMzThFnuNn/+rBU0=;
        b=AnUJ5XGgaBvGXh186gM8VqKPPlSHTBtWFAsttz5seTkcPZxeZpHxIbEavWTNghvdTG
         dn4YHHmhd0GCaZ+C9wMqOzxp+zgzleHnjJ3T8x9dSSPFfIQ2V0nbgaUtiDqrGKFFYKE7
         FTdejBSFXw5zon+m2k+71C1sMLM0WqOZRKy3DWbWP4fqGgSa5OjjWzIa7mbW+APRpmC6
         0w7kTiNd4J7rpNA6hqK5MgyupOBUFEuq4/NbZF6xmyCSiAg075PgOu8LpT+h6/SHU6Xo
         NRCOf90rYKmP6dfq4LKiJWzU/CJHxTI6RJf+uJpGKQU45qjo9X8Y0sd8skczv+OzvYwH
         DFXQ==
X-Gm-Message-State: AOJu0Yz+QRM3NF18A9HhUVl4OiNLlZHRVUeD0/hkzpwx+hSYGLNvil5F
	cNEOLc5UVe72d9Syzwu1VIg2gA==
X-Google-Smtp-Source: AGHT+IErQmHVfNHx3Ohpg253x96JGBoeWyJxk1TcVprDIAcd3s5js6efjoe7bTTdOLUjsUL3pBlrOw==
X-Received: by 2002:a2e:a22c:0:b0:2cb:82a1:9893 with SMTP id i12-20020a2ea22c000000b002cb82a19893mr174778ljm.88.1702158964615;
        Sat, 09 Dec 2023 13:56:04 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e22-20020a2e9856000000b002ca061aa9d1sm665103ljj.88.2023.12.09.13.56.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 13:56:04 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/4] soc: qcom: stats: support SM8150 platform
Date: Sun, 10 Dec 2023 00:56:00 +0300
Message-Id: <20231209215601.3543895-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231209215601.3543895-1-dmitry.baryshkov@linaro.org>
References: <20231209215601.3543895-1-dmitry.baryshkov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On SM8150 the RPMh stats have 3 data records, but no DDR sleep stats,
which demands platform-specific compatible and data.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/soc/qcom/qcom_stats.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
index 813c9f3c6bec..dd1b6fee7739 100644
--- a/drivers/soc/qcom/qcom_stats.c
+++ b/drivers/soc/qcom/qcom_stats.c
@@ -438,6 +438,14 @@ static const struct stats_config rpmh_data_sdm845 = {
 	.subsystem_stats_in_smem = true,
 };
 
+static const struct stats_config rpmh_data_sm8150 = {
+	.stats_offset = 0x48,
+	.num_records = 3,
+	.appended_stats_avail = false,
+	.dynamic_offset = false,
+	.subsystem_stats_in_smem = true,
+};
+
 static const struct stats_config rpmh_data = {
 	.stats_offset = 0x48,
 	.num_records = 3,
@@ -455,6 +463,7 @@ static const struct of_device_id qcom_stats_table[] = {
 	{ .compatible = "qcom,rpm-stats", .data = &rpm_data },
 	{ .compatible = "qcom,rpmh-stats", .data = &rpmh_data },
 	{ .compatible = "qcom,sdm845-rpmh-stats", .data = &rpmh_data_sdm845 },
+	{ .compatible = "qcom,sm8150-rpmh-stats", .data = &rpmh_data_sm8150 },
 	{ }
 };
 MODULE_DEVICE_TABLE(of, qcom_stats_table);
-- 
2.39.2


