Return-Path: <devicetree+bounces-8994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E20E67CB1A6
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 19:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96390281762
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 17:55:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC0A328B9;
	Mon, 16 Oct 2023 17:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jQdU9Tto"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396D8328B0
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 17:55:40 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71542E1;
	Mon, 16 Oct 2023 10:55:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9ad8a822508so784488266b.0;
        Mon, 16 Oct 2023 10:55:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697478937; x=1698083737; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3fhMPK1TiFshtwsFU4ELogXg+Q+YZPoOXgpzwCu7gVo=;
        b=jQdU9TtoM6VKVWLFAgX2a0JNPqrOKu3DQnoc/sE+Qc7uUo+6KM1LBhQ/QOzo6+/gWb
         N2p9xkF4E7cJVj2DvfTg9FPF9G+5thEdAjtBawEbZ19oZDRfw6MjI6rKNh0lrk4O0HHX
         i8G7Y0DzhyIfWcxW7TPM7Ur1GEAFUzIYYWrkzaCOC3fsvUuha0IdQ8lb4UFBTQLlQlEK
         0FS30uF+bi0b6BMavS3i20liUhdSFwBHaJZFVRr+zWbhUXGWIjdJoQCl/XMpMw21T80H
         hs2Xez/jcvBHvH4y66DVN+YaEiq214dlpX0BwOazEKBvIp7kxFIKh1tvdrv2fKUw9CPu
         9oPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697478937; x=1698083737;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3fhMPK1TiFshtwsFU4ELogXg+Q+YZPoOXgpzwCu7gVo=;
        b=ZjAIPwuYnJw5WBVp3R3tfocic6HqPq2MQU6oC4MMybBd0+f7wujeubb8jWTaFf3IZR
         VzRzUe5oS3cZyvGZUsPSUoQ2stDTwfVWxzF6KeDKTeAMCa6pkznM76+SOK+oS2hKkNuG
         L7e8aDBwKGQBM/7rpkjcbNLFbmUhUKcxWKSxcDH4/jmtpmn7yn2pQxEKMouEhntASQTv
         jaQucpJ/5h3IFoRn1QvAw2I+stnAaqn4Oxb1QVq/y8UQ0giIxbzr0b44Rr7KX2W/Wt+g
         cgnMLNoR73LgH6z4DDyLi20vnbwanXDVW1FF0qc/enin+CuTkRXWnS2e9wynW/YjMjvg
         8o2Q==
X-Gm-Message-State: AOJu0YzvPWoOkatfByZhxDpxVJB09xa/MwKGhc5wOW9LuWz7LpnjWTPH
	gZeVu+QpiKFKO2DdSq7w4R6CU0er5HFOpA==
X-Google-Smtp-Source: AGHT+IELh9h3BU4r331WoOQM0GUgbAZXCa0AAyavJGQtZAlPmO4PbijGAk0IMuk3RgCFAcJnGmYVew==
X-Received: by 2002:a17:906:7310:b0:9c1:9bc5:c263 with SMTP id di16-20020a170906731000b009c19bc5c263mr4406398ejc.50.1697478936531;
        Mon, 16 Oct 2023 10:55:36 -0700 (PDT)
Received: from fedora.. ([188.252.220.210])
        by smtp.googlemail.com with ESMTPSA id g15-20020a170906348f00b009c3f8f46c22sm2378007ejb.77.2023.10.16.10.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Oct 2023 10:55:36 -0700 (PDT)
From: Robert Marko <robimarko@gmail.com>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	ilia.lin@kernel.org,
	rafael@kernel.org,
	viresh.kumar@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Robert Marko <robimarko@gmail.com>
Subject: [PATCH 2/3] cpufreq: qcom-nvmem: add support for IPQ6018
Date: Mon, 16 Oct 2023 19:55:16 +0200
Message-ID: <20231016175532.2081344-2-robimarko@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231016175532.2081344-1-robimarko@gmail.com>
References: <20231016175532.2081344-1-robimarko@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

IPQ6018 SoC series comes in multiple SKU-s, and not all of them support
high frequency OPP points.

SoC itself does however have a single bit in QFPROM to indicate the CPU
speed-bin.
That bit is used to indicate frequency limit of 1.5GHz, but that alone is
not enough as IPQ6000 only goes up to 1.2GHz, but SMEM ID can be used to
limit it further.

IPQ6018 compatible is blacklisted from DT platdev as the cpufreq device
will get created by NVMEM CPUFreq driver.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
 drivers/cpufreq/qcom-cpufreq-nvmem.c | 58 ++++++++++++++++++++++++++++
 2 files changed, 59 insertions(+)

diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
index 675da7f368469..07181913448f4 100644
--- a/drivers/cpufreq/cpufreq-dt-platdev.c
+++ b/drivers/cpufreq/cpufreq-dt-platdev.c
@@ -180,6 +180,7 @@ static const struct of_device_id blocklist[] __initconst = {
 	{ .compatible = "ti,am62a7", },
 	{ .compatible = "ti,am62p5", },
 
+	{ .compatible = "qcom,ipq6018", },
 	{ .compatible = "qcom,ipq8064", },
 	{ .compatible = "qcom,ipq8074", },
 	{ .compatible = "qcom,apq8064", },
diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
index 3fa12648ceb64..4a6c84b4a6d3c 100644
--- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
+++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
@@ -35,6 +35,8 @@ enum ipq8074_versions {
 	IPQ8074_ACORN_VERSION,
 };
 
+#define IPQ6000_VERSION	BIT(2)
+
 struct qcom_cpufreq_drv;
 
 struct qcom_cpufreq_match_data {
@@ -246,6 +248,57 @@ static int qcom_cpufreq_ipq8074_name_version(struct device *cpu_dev,
 	return 0;
 }
 
+static int qcom_cpufreq_ipq6018_name_version(struct device *cpu_dev,
+					     struct nvmem_cell *speedbin_nvmem,
+					     char **pvs_name,
+					     struct qcom_cpufreq_drv *drv)
+{
+	u32 msm_id;
+	int ret;
+	u8 *speedbin;
+	*pvs_name = NULL;
+
+	ret = qcom_smem_get_soc_id(&msm_id);
+	if (ret)
+		return ret;
+
+	speedbin = nvmem_cell_read(speedbin_nvmem, NULL);
+	if (IS_ERR(speedbin))
+		return PTR_ERR(speedbin);
+
+	switch (msm_id) {
+	case QCOM_ID_IPQ6005:
+	case QCOM_ID_IPQ6010:
+	case QCOM_ID_IPQ6018:
+	case QCOM_ID_IPQ6028:
+		/* Fuse Value    Freq    BIT to set
+		 * ---------------------------------
+		 *   2’b0     No Limit     BIT(0)
+		 *   2’b1     1.5 GHz      BIT(1)
+		 */
+		drv->versions = 1 << (unsigned int)(*speedbin);
+		break;
+	case QCOM_ID_IPQ6000:
+		/*
+		 * IPQ6018 family only has one bit to advertise the CPU
+		 * speed-bin, but that is not enough for IPQ6000 which
+		 * is only rated up to 1.2GHz.
+		 * So for IPQ6000 manually set BIT(2) based on SMEM ID.
+		 */
+		drv->versions = IPQ6000_VERSION;
+		break;
+	default:
+		dev_err(cpu_dev,
+			"SoC ID %u is not part of IPQ6018 family, limiting to 1.2GHz!\n",
+			msm_id);
+		drv->versions = IPQ6000_VERSION;
+		break;
+	}
+
+	kfree(speedbin);
+	return 0;
+}
+
 static const struct qcom_cpufreq_match_data match_data_kryo = {
 	.get_version = qcom_cpufreq_kryo_name_version,
 };
@@ -260,6 +313,10 @@ static const struct qcom_cpufreq_match_data match_data_qcs404 = {
 	.genpd_names = qcs404_genpd_names,
 };
 
+static const struct qcom_cpufreq_match_data match_data_ipq6018 = {
+	.get_version = qcom_cpufreq_ipq6018_name_version,
+};
+
 static const struct qcom_cpufreq_match_data match_data_ipq8074 = {
 	.get_version = qcom_cpufreq_ipq8074_name_version,
 };
@@ -406,6 +463,7 @@ static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
 	{ .compatible = "qcom,apq8096", .data = &match_data_kryo },
 	{ .compatible = "qcom,msm8996", .data = &match_data_kryo },
 	{ .compatible = "qcom,qcs404", .data = &match_data_qcs404 },
+	{ .compatible = "qcom,ipq6018", .data = &match_data_ipq6018 },
 	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
 	{ .compatible = "qcom,ipq8074", .data = &match_data_ipq8074 },
 	{ .compatible = "qcom,apq8064", .data = &match_data_krait },
-- 
2.41.0


