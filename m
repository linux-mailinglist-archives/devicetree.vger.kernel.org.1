Return-Path: <devicetree+bounces-231941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE8BC132BB
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:30:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0042D4681A4
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:29:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9773F2D6E58;
	Tue, 28 Oct 2025 06:28:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FUEJF8Zl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971592D46A9
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632908; cv=none; b=hkIpcyJTR02Mkj3CcXq0rzK2kZmjhT4qqJBxdKR6IweuXRopHF+AsIrzIPb3S+DY4tFQJ3qu61SdpTkRcgYzrewOGP1x/65l4y8b2Alv+qAqlckGGXW1aNDpvoEPYH5vT59LhuiJLldRZ6BdV7M0wpUSdhnqDW/dFwEl/qfpCPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632908; c=relaxed/simple;
	bh=2oaRzZpkpBcaDL+LXhi7LqTRCwRt9ypQSujziItZ0/o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=muFSwgG6gmoXPcxfFdMFrcgmZ0jbBJKN2IHA+4xZ5wnffYjJkzQPhXiNQ5s/dRUaKZOIxW1d1IqRK2nrC1z8QtcUBhh7ftNFsNyeAioUtL9zmK9trpfZqlJSUgdsfEew8VNdv4N3hXbMwUQujkT2ZleNhS6OVZibfDr/JABICT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FUEJF8Zl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S325Id353674
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jF+INNhgLS0eIQd6UyyLDzCUNgzjGz+l2LgLPRrmPKI=; b=FUEJF8Zll/uH0uK6
	EmJCU2wHG4bKJwhSfRjdG3ZJcenfIbpzSOzat7aMAkKH8uvrdbfw8emXfHfqMIWc
	xii1wGoXh2gPpwRDOUHYGexmVdZSHBwiOC4T21SDYmNWvBaGEspUNc1iyh4o2MC7
	LzlLBQyU06jtNZGqwZdYDdp3ZTI4vaSinfolbDezaJRAIwhtfMDFxqCHFODvJqRz
	MO8n2/Qs+E8LHHveofY28FShItCYK4ZM7T19nRKLelJqPupfBGzdJjYEaBhLlrNJ
	7jfyc9eLYsB/JArL6dO/wBU+Ggm2DrGHX4wC44c9yUL0Hhkb+XDFf4mMPttR2PlV
	IxwvvA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2njrrfvk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:25 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290bd7c835dso53202255ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:28:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632905; x=1762237705;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jF+INNhgLS0eIQd6UyyLDzCUNgzjGz+l2LgLPRrmPKI=;
        b=EiMG6OCj6tIQLDbCBhHlJvmksITyjp01xRX0mXTJJmxc0hKWi4hgMixW2eeB0jqXg6
         nnbAyZzRlAIFIZLqvKyRmswLa8dejAXSaMZ1Oda1h+z6cKl+Z1m8T445BstTeR6+efRt
         4Qra2Eltb++bCD+Ld5KjqSPAtaWJSqbHbWqzoVP2QefKUPQTjEjLAOjJlBo0CIsR3PQu
         ekTqN4Rl7v9DmmcbxJJT2UffebaBLssuVZqO9SVwcv8qW+YNdjPLBbm/iBS0DPkwSkTi
         voHIfhzCzvzIbag4j3JA9WT0OzqN2Ej5/3FPr+OjDpKkpCQeJx0eDktpCSSF+VxiW+y5
         jLqQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZsUbQ5VzQmzT0lg/0EJriiOjhBSD5jpoAhapqo/AK0ztrcYykFr7Dmmmx7g9Jso3Q3mDjt10c7GeE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5SFlbTkLKwgeBrcaLEp2CWv0v48UaW95pZeBr+/zE2u/9+boc
	8tjKT7SAdxsNRGtAT/x/amihQh25IAyh3YWtA5lTa3wqI5KAaltGaXK1/QUpuGn+JCFtkrryQNc
	ccgvvSbTuCkL7sAAL2DBTIJ97ATKeKFUZ2f4CRxEJtzveietZ+cw3ZN74SN48wpuv
X-Gm-Gg: ASbGncsfQ0jdu/YZkwWhZm+UXLVizp0tx35OuFLncmH+gKcMdDnx4JnMRQKLr172p9W
	AslLQquI1RCuDyEM1i5gAQY3tXWwhSU/dJSo0vHpFj61ZXzvLKmgHk7KwRFmem2fXxNoMRTwhi8
	FET+UqbsVK8ZCpQDNihxBYtlXT2g/DMpCvdWFFxEOlLjcQ7XxGc/o7etORI5SJEqrH4PeR/4AtL
	taBB3An0QlO02N3PDip8KNyCVK8m+N9z9AMPzZlkDWlDGJqbTr31Qzzd1Sg6yqQuQ13UEQQowOJ
	SZA10KWvDX8HK0BraVIFJ6tMG3CPiwZQwxibhTcfxD+GhfwvB80YFy2y23ee3rMd0RiLtomXSLb
	6wTEadY65E2mZ/D7lWoFO4XYOKcDuPQRkTzGiZBG+s2rUh6iaWEoIuKlJ
X-Received: by 2002:a17:902:d4c9:b0:269:9a71:dc4a with SMTP id d9443c01a7336-294cb528b7cmr29036095ad.41.1761632904824;
        Mon, 27 Oct 2025 23:28:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0PQhb7nrOPw0owTHAb3UKocoVdUClhf+q6Z+WRWbHQ8BqO2EjJqP+VdWfwsWlpn2aNVCP9A==
X-Received: by 2002:a17:902:d4c9:b0:269:9a71:dc4a with SMTP id d9443c01a7336-294cb528b7cmr29035985ad.41.1761632904243;
        Mon, 27 Oct 2025 23:28:24 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm102503265ad.12.2025.10.27.23.28.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:28:23 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 23:28:09 -0700
Subject: [PATCH 07/12] coresight-tmc: Add support for CPU cluster ETF and
 refactor probe flow
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-cpu_cluster_component_pm-v1-7-31355ac588c2@oss.qualcomm.com>
References: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
In-Reply-To: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761632890; l=10579;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=2oaRzZpkpBcaDL+LXhi7LqTRCwRt9ypQSujziItZ0/o=;
 b=VbRLKaV4ZZf4K+mfX6223CCeK+C08cMMtg5ExiBoeA7d7WYQ+SrZBEsI6X/0m+K1BD90HjSrP
 YrqnvJpPDTjCu/4Ah1MCMgwVDHRCo6qdyWZXPDGgsCIUD3y2jzNnZv/
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Authority-Analysis: v=2.4 cv=dqvWylg4 c=1 sm=1 tr=0 ts=69006289 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ko4GrPIkLBdci27uQwEA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: v5zoWtVLxZSEhogMjGHWEkLpntPGR5Ef
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1NCBTYWx0ZWRfXx1p1fiWjg7KV
 8IwVwKzsGs4fgBu7tES3hgTpdPnP61OY3xBkDTrc7AAosfjVXsCG2ET8RF8ySimaZKP6yYGAcZt
 veYCHoQXf5YtHtAyD7+aqWmn9GQAqVUhJ3KOJp6czIKxmSWwzqfIsMKEGsxUM1k/Cvsf/kNkE55
 pRcG8uZ+1phPuerv+ci18MqJYMn59d2AP3VuP5Clko2rftkXvTu9khGVP4ia+GsC43NmtSpk536
 4HZ4Y8+BgLZGNnHVBZ3Y2/bdY4H1JnrhQ83Za2/cLZ5/CRRLlwIT7BWZ4w6g7VQEP0riGL2jwz5
 Taa6d7GEu+IMMj8qw7INsy73BOEINZ3Tzd6ekop6yaV+9GGLWhVUmQsxcqRm4fApN+b9W2LQZX+
 VkP+mKoQKJqgOmLbYVPlo5Ox41B8ig==
X-Proofpoint-ORIG-GUID: v5zoWtVLxZSEhogMjGHWEkLpntPGR5Ef
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510280054

The CPU cluster ETF is a type of Coresight ETF that resides inside the
CPU cluster's power domain. Unlike system-level ETFs, these devices
share the CPU cluster's power management behavior: when the cluster
enters low-power mode, ETF registers become inaccessible. Runtime PM
alone cannot bring the cluster out of LPM, making standard register
access unreliable.

This patch adds support for CPU cluster ETF and restructures the probe
sequence to handle such cases safely:

- Wrap hardware access in tmc_init_hw_config(). For cluster TMCs, use
  smp_call_function_single() to ensure register visibility.
- Encapsulate CoreSight device registration and misc_register setup in
  tmc_add_coresight_dev().

This ensures TMC initialization and runtime operations remain safe even
when the CPU cluster is in low-power states, while maintaining
compatibility with existing system-level TMCs.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c | 204 +++++++++++++++--------
 drivers/hwtracing/coresight/coresight-tmc.h      |   6 +
 2 files changed, 141 insertions(+), 69 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 36599c431be6203e871fdcb8de569cc6701c52bb..d00f23f9a479ee9d4bdb4e051ed895d266bcc116 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -21,6 +21,7 @@
 #include <linux/slab.h>
 #include <linux/dma-mapping.h>
 #include <linux/spinlock.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
@@ -769,56 +770,14 @@ static void register_crash_dev_interface(struct tmc_drvdata *drvdata,
 			"Valid crash tracedata found\n");
 }
 
-static int __tmc_probe(struct device *dev, struct resource *res)
+static int tmc_add_coresight_dev(struct device *dev)
 {
-	int ret = 0;
-	u32 devid;
-	void __iomem *base;
-	struct coresight_platform_data *pdata = NULL;
-	struct tmc_drvdata *drvdata;
+	struct tmc_drvdata *drvdata = dev_get_drvdata(dev);
 	struct coresight_desc desc = { 0 };
 	struct coresight_dev_list *dev_list = NULL;
+	int ret = 0;
 
-	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
-	if (!drvdata)
-		return -ENOMEM;
-
-	dev_set_drvdata(dev, drvdata);
-
-	ret = coresight_get_enable_clocks(dev, &drvdata->pclk, &drvdata->atclk);
-	if (ret)
-		return ret;
-
-	ret = -ENOMEM;
-
-	/* Validity for the resource is already checked by the AMBA core */
-	base = devm_ioremap_resource(dev, res);
-	if (IS_ERR(base)) {
-		ret = PTR_ERR(base);
-		goto out;
-	}
-
-	drvdata->base = base;
-	desc.access = CSDEV_ACCESS_IOMEM(base);
-
-	raw_spin_lock_init(&drvdata->spinlock);
-
-	devid = readl_relaxed(drvdata->base + CORESIGHT_DEVID);
-	drvdata->config_type = BMVAL(devid, 6, 7);
-	drvdata->memwidth = tmc_get_memwidth(devid);
-	/* This device is not associated with a session */
-	drvdata->pid = -1;
-	drvdata->etr_mode = ETR_MODE_AUTO;
-
-	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR) {
-		drvdata->size = tmc_etr_get_default_buffer_size(dev);
-		drvdata->max_burst_size = tmc_etr_get_max_burst_size(dev);
-	} else {
-		drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
-	}
-
-	tmc_get_reserved_region(dev);
-
+	desc.access = CSDEV_ACCESS_IOMEM(drvdata->base);
 	desc.dev = dev;
 
 	switch (drvdata->config_type) {
@@ -834,9 +793,9 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		desc.type = CORESIGHT_DEV_TYPE_SINK;
 		desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_SYSMEM;
 		desc.ops = &tmc_etr_cs_ops;
-		ret = tmc_etr_setup_caps(dev, devid, &desc.access);
+		ret = tmc_etr_setup_caps(dev, drvdata->devid, &desc.access);
 		if (ret)
-			goto out;
+			return ret;
 		idr_init(&drvdata->idr);
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
@@ -851,44 +810,142 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		break;
 	default:
 		pr_err("%s: Unsupported TMC config\n", desc.name);
-		ret = -EINVAL;
-		goto out;
+		return -EINVAL;
 	}
 
 	desc.name = coresight_alloc_device_name(dev_list, dev);
-	if (!desc.name) {
-		ret = -ENOMEM;
+	if (!desc.name)
+		return -ENOMEM;
+
+	drvdata->desc_name = desc.name;
+
+	desc.pdata = dev->platform_data;
+
+	drvdata->csdev = coresight_register(&desc);
+	if (IS_ERR(drvdata->csdev))
+		return PTR_ERR(drvdata->csdev);
+
+	drvdata->miscdev.name = desc.name;
+	drvdata->miscdev.minor = MISC_DYNAMIC_MINOR;
+	drvdata->miscdev.fops = &tmc_fops;
+	ret = misc_register(&drvdata->miscdev);
+	if (ret)
+		coresight_unregister(drvdata->csdev);
+
+	return ret;
+}
+
+static void tmc_clear_self_claim_tag(struct tmc_drvdata *drvdata)
+{
+	struct csdev_access access = CSDEV_ACCESS_IOMEM(drvdata->base);
+
+	coresight_clear_self_claim_tag(&access);
+}
+
+static void tmc_init_hw_config(struct tmc_drvdata *drvdata)
+{
+	u32 devid;
+
+	devid = readl_relaxed(drvdata->base + CORESIGHT_DEVID);
+	drvdata->config_type = BMVAL(devid, 6, 7);
+	drvdata->memwidth = tmc_get_memwidth(devid);
+	drvdata->devid = devid;
+	drvdata->size = readl_relaxed(drvdata->base + TMC_RSZ) * 4;
+	tmc_clear_self_claim_tag(drvdata);
+}
+
+static void tmc_init_on_cpu(void *info)
+{
+	struct tmc_drvdata *drvdata = info;
+
+	tmc_init_hw_config(drvdata);
+}
+
+static struct cpumask *tmc_get_cpumask(struct device *dev)
+{
+	struct generic_pm_domain *pd;
+
+	pd = pd_to_genpd(dev->pm_domain);
+	if (pd)
+		return pd->cpus;
+
+	return NULL;
+}
+
+static int __tmc_probe(struct device *dev, struct resource *res)
+{
+	int cpu, ret = 0;
+	void __iomem *base;
+	struct coresight_platform_data *pdata = NULL;
+	struct tmc_drvdata *drvdata;
+
+	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
+	if (!drvdata)
+		return -ENOMEM;
+
+	dev_set_drvdata(dev, drvdata);
+
+	ret = coresight_get_enable_clocks(dev, &drvdata->pclk, &drvdata->atclk);
+	if (ret)
+		return ret;
+
+	ret = -ENOMEM;
+
+	/* Validity for the resource is already checked by the AMBA core */
+	base = devm_ioremap_resource(dev, res);
+	if (IS_ERR(base)) {
+		ret = PTR_ERR(base);
 		goto out;
 	}
 
+	drvdata->base = base;
+
+	raw_spin_lock_init(&drvdata->spinlock);
+	/* This device is not associated with a session */
+	drvdata->pid = -1;
+	drvdata->etr_mode = ETR_MODE_AUTO;
+	tmc_get_reserved_region(dev);
+
 	pdata = coresight_get_platform_data(dev);
 	if (IS_ERR(pdata)) {
 		ret = PTR_ERR(pdata);
 		goto out;
 	}
 	dev->platform_data = pdata;
-	desc.pdata = pdata;
 
-	coresight_clear_self_claim_tag(&desc.access);
-	drvdata->csdev = coresight_register(&desc);
-	if (IS_ERR(drvdata->csdev)) {
-		ret = PTR_ERR(drvdata->csdev);
-		goto out;
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-cpu-tmc")) {
+		drvdata->cpumask = tmc_get_cpumask(dev);
+		if (!drvdata->cpumask)
+			return -EINVAL;
+
+		cpus_read_lock();
+		for_each_cpu(cpu, drvdata->cpumask) {
+			ret = smp_call_function_single(cpu,
+						       tmc_init_on_cpu, drvdata, 1);
+			if (!ret)
+				break;
+		}
+		cpus_read_unlock();
+		if (ret) {
+			ret = 0;
+			goto out;
+		}
+	} else {
+		tmc_init_hw_config(drvdata);
 	}
 
-	drvdata->miscdev.name = desc.name;
-	drvdata->miscdev.minor = MISC_DYNAMIC_MINOR;
-	drvdata->miscdev.fops = &tmc_fops;
-	ret = misc_register(&drvdata->miscdev);
-	if (ret) {
-		coresight_unregister(drvdata->csdev);
-		goto out;
+	if (drvdata->config_type == TMC_CONFIG_TYPE_ETR) {
+		drvdata->size = tmc_etr_get_default_buffer_size(dev);
+		drvdata->max_burst_size = tmc_etr_get_max_burst_size(dev);
 	}
 
+	ret = tmc_add_coresight_dev(dev);
+
 out:
 	if (is_tmc_crashdata_valid(drvdata) &&
 	    !tmc_prepare_crashdata(drvdata))
-		register_crash_dev_interface(drvdata, desc.name);
+		register_crash_dev_interface(drvdata, drvdata->desc_name);
 	return ret;
 }
 
@@ -934,10 +991,12 @@ static void __tmc_remove(struct device *dev)
 	 * etb fops in this case, device is there until last file
 	 * handler to this device is closed.
 	 */
-	misc_deregister(&drvdata->miscdev);
+	if (!drvdata->cpumask)
+		misc_deregister(&drvdata->miscdev);
 	if (drvdata->crashdev.fops)
 		misc_deregister(&drvdata->crashdev);
-	coresight_unregister(drvdata->csdev);
+	if (drvdata->csdev)
+		coresight_unregister(drvdata->csdev);
 }
 
 static void tmc_remove(struct amba_device *adev)
@@ -992,7 +1051,6 @@ static void tmc_platform_remove(struct platform_device *pdev)
 
 	if (WARN_ON(!drvdata))
 		return;
-
 	__tmc_remove(&pdev->dev);
 	pm_runtime_disable(&pdev->dev);
 }
@@ -1029,6 +1087,13 @@ static const struct dev_pm_ops tmc_dev_pm_ops = {
 	SET_RUNTIME_PM_OPS(tmc_runtime_suspend, tmc_runtime_resume, NULL)
 };
 
+static const struct of_device_id tmc_match[] = {
+	{.compatible = "arm,coresight-cpu-tmc"},
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, tmc_match);
+
 #ifdef CONFIG_ACPI
 static const struct acpi_device_id tmc_acpi_ids[] = {
 	{"ARMHC501", 0, 0, 0}, /* ARM CoreSight ETR */
@@ -1043,6 +1108,7 @@ static struct platform_driver tmc_platform_driver = {
 	.remove = tmc_platform_remove,
 	.driver	= {
 		.name			= "coresight-tmc-platform",
+		.of_match_table		= tmc_match,
 		.acpi_match_table	= ACPI_PTR(tmc_acpi_ids),
 		.suppress_bind_attrs	= true,
 		.pm			= &tmc_dev_pm_ops,
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index cbb4ba43915855a8acbb9205167e87185c9a8c6c..f5c76ca2dc9733daa020b79b1dcfc495045a2618 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -243,6 +243,9 @@ struct tmc_resrv_buf {
  *		(after crash) by default.
  * @crash_mdata: Reserved memory for storing tmc crash metadata.
  *		 Used by ETR/ETF.
+ * @cpumask:	CPU mask representing the CPUs related to this TMC.
+ * @devid:	TMC variant ID inferred from the device configuration register.
+ * @desc_name:	Name to be used while creating crash interface.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -273,6 +276,9 @@ struct tmc_drvdata {
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	resrv_buf;
 	struct tmc_resrv_buf	crash_mdata;
+	struct cpumask		*cpumask;
+	u32			devid;
+	const char		*desc_name;
 };
 
 struct etr_buf_operations {

-- 
2.34.1


