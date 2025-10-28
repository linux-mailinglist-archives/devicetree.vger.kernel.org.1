Return-Path: <devicetree+bounces-231938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AF3C132A3
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:30:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BC975873BA
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5A822C237F;
	Tue, 28 Oct 2025 06:28:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vh4XLW+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23BB17555
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632902; cv=none; b=n2v7K2X7bbeBGB0DsGR0zoFSrpgtdJqTL/xGKj5pzDnydyJDeTw4u7miAelQvkLMQnd/xDMm0Xm22y+KqYlFJGaWgBQXAfqibu343NdB3SkXLDTc7XGxKEuf9QdDHZTeRjoaiTGfgNYvfpfpfzLcZO3eVYEQpLHlZZ8xNEdWMFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632902; c=relaxed/simple;
	bh=E0SDWUZhZFagugdNgdZOT1J748JhKJGJROZqnLwgGz0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=G5c3DJXWuTvfJdgsP4tF3ASdDezyd3h8oSUH4r5HYnyqJjFz0KkJLRTGOAaBTxKKdAdMEVBEBYmXk8+BnE8UaiwKZSQfRaQwEa1s4Y5cKeCeVGxkhb7ouNS5GVhzoM0ApwzfAZyHhzuqAnMcBWK5UKLRPLUYOzrrXfJQp2HcyP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vh4XLW+2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S327NH353682
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9LXsSAWESBxx1qhIkwj4IUMDZJdoAsaN3iRHs4NlQ0A=; b=Vh4XLW+2GHItm0nd
	INCrDaUXdd8qm1eZQP2UVe2GZ3VWtgR2HKEzsxWqTcFDdEsM2Xvll/BBMBhXyJpT
	uW0kUSuMfFN97IRfT6ospIYdSDSyMvTf/QNB+lcPutbcEFxXWJ/ipzwcdLNZAp4R
	ndSA8vcU0aFGliR+Yp3a9XPD0L7c5xGW5+ARG3br8JieRKqRSzPAqjwqRehBmuZo
	Rz8fWnGmm0X/FBZ6R/YIwU+AvmQgoQjJabCv2QhNPR62UiDLEHOBAcLatYos9sZk
	HLy5iAYpRoZQQ8aBY8sWeVcfFPbpQcKRbNr0eEtaWA6vRolsBhhzY6+2ooumBimZ
	iQLVfw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2njrrfv1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:20 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-277f0ea6ee6so49311895ad.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:28:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632898; x=1762237698;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9LXsSAWESBxx1qhIkwj4IUMDZJdoAsaN3iRHs4NlQ0A=;
        b=MvlUHbRJYP6iHiMEzhSPWaAt6k1R3L4N1rGsccnnHaBtCpjFWglfNQTAhiwAgAfo4A
         fNFpJYMW5ea0/C2aCh/DwIt/Ysn+Co6RsYzxzhRei+lueTSo14/k3vIo9Hhl2ZBQNRm0
         +y2pItmDHaM3eYqh9iw+SccaYVQipCSkss3+jzzwBn+IhVWOLgH6NSB/YB7rkuJTUKj3
         YUpidPIAoK+m0Fg2DCJ/eKh5n8D/G9BHPd9vWtXVpTtytG4GGpMfD2T0EiICL9Mhaciz
         dnlWCfpM0Du3MtDy2fiVXtfO793eaXFqmXV+T0tZKeG7awAOesjalOD270z9yTTqNbox
         vXbw==
X-Forwarded-Encrypted: i=1; AJvYcCVpPO72uXqPtuCeJZYBUJmdXDaj8/KmqPET9A8gd0Hrgz50DWZv1jhH5WosACXBE+dd55mED7T32iB2@vger.kernel.org
X-Gm-Message-State: AOJu0Ywbs5ewqZwGK2WmPm9oqw7sfPWwfICYA9wmi5Erqk5sLjhFjhyM
	Ywbm/LYjlxXWsZndppt4xv2r1xPL5v8ec2+9cXtFVYYH7oPtDna02Gjdmzz3kAdSNSbUrCYKKWj
	gefUSK2Jr3jNdopb2yrFFFf9gpsgW5nb+nXrB7KawB7cfRlCLJmgKxQfRwE5Twus6
X-Gm-Gg: ASbGncsjXFcnf7cEdWhb/66QhLEQLMUo3OqvRgyBbInMI3OZORa8czq6MAkOJdwJEhB
	TtK1DSq06+wnc3bgusFAnLdcRuJj/EwfxuhTtvEA3pyu/hMh7ryujF8g3iIL2HtpmS/k44WnNfm
	9iXBJWZttuXm9n5Rlq+3RJUV5/sA4uSut7s4BhuFE21ZDsasRqs1sYSJfViNwnvEoxEUJVk5kis
	AXR+J9O8/Coz1wUxW1zlnOC7adF/NKOEfAaGTGcT8aPBioBbF+1DEtQ2VqIkJBnc/SQ8ioptXOn
	Ct8Trkr4fQNKC9TKGi/V79npdNk4batnILaMkQ9xKDD6NkYDOIKQsByizZ2cCwF/2vvaDfZ86ay
	lEqcRWvLUsaTZjCIcyj96uv2M079vEnpNaS49KdD/IkTmFaB/QlWPy64A
X-Received: by 2002:a17:902:f691:b0:28d:1815:6382 with SMTP id d9443c01a7336-294cb51a504mr29192945ad.46.1761632898350;
        Mon, 27 Oct 2025 23:28:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGunZd6QjmVZFUVALHMT2sY8Uu3OLJR7Y3CnSh4NxInW/ltJhJpM9Bd6lz422ERYv553IXKbQ==
X-Received: by 2002:a17:902:f691:b0:28d:1815:6382 with SMTP id d9443c01a7336-294cb51a504mr29192565ad.46.1761632897829;
        Mon, 27 Oct 2025 23:28:17 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm102503265ad.12.2025.10.27.23.28.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:28:17 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 23:28:06 -0700
Subject: [PATCH 04/12] coresight-replicator: Add support for CPU cluster
 replicator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-cpu_cluster_component_pm-v1-4-31355ac588c2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761632890; l=10262;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=E0SDWUZhZFagugdNgdZOT1J748JhKJGJROZqnLwgGz0=;
 b=LxELFMmOq8/u9m/7p0savfS77WPdQkZIi18XPd+4dmDwx6eytPfzie538K4qbfI6xrK1ddBZM
 LFnxSO39YFzA/w+OzauTWT/TPv8SzKfLvYuCeIGjNNkauzeNAeAnfqp
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Authority-Analysis: v=2.4 cv=dqvWylg4 c=1 sm=1 tr=0 ts=69006284 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=WnTABDZRLdPeFdqLaHUA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: obbd5vS5-C-jLVYMyZKMi9KLSGB0BDtu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1NCBTYWx0ZWRfXzVudoon6Cj0t
 DzYwQikmHn1aa3gJ+nJyIYJ53pgBnWyxpo2UmVWbnFO4cAWZV8B5c8NKcxzWHnXFhcqUN9zuxtI
 A2MeynXGfIf7KUn36pfJqiFgQGPg5vM33aK/r1BFt5IuTEaryJQUUwgH93onDtTQoV2DQXdG+o3
 pSjCKnzTj68rK4yyv838ULtwTNWkNDmKfvSZiHIrr0VCI03YOyiRV/KFSeIcjMCnXtFCcrDVHjo
 ZPk/v+e7FchqWM2IzxbVHYTwGZtaQuGcHFkr6Tr58/Zg0cSXzWCBzkJUOPQGqdb3h+z1aTOOdN5
 +GtRXY3Z7og6RxrcUHoWGG2NMPWzK+qKPv6a4nyankO1bQG3m7lb4L4zh47OiVOML+1DAh3lL4C
 WQKKiWZp3R45rMyONXjLERCoXjgaUg==
X-Proofpoint-ORIG-GUID: obbd5vS5-C-jLVYMyZKMi9KLSGB0BDtu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 spamscore=0 suspectscore=0 malwarescore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510280054

The CPU cluster replicator is a type of CoreSight replicator that resides
inside the CPU cluster's power domain. Unlike system-wide replicators,
CPU replicators are tightly coupled with CPU clusters and inherit their
power management characteristics. When the CPU cluster enters low-power
mode (LPM), the replicator registers become inaccessible. Moreover,
runtime PM alone cannot bring the CPU cluster out of LPM, making standard
register access unreliable.

This patch enhances the existing CoreSight replicator platform driver to
support CPU cluster replicators by:

- Adding replicator_claim/disclaim_device_unlocked() to handle device
  claim/disclaim before CoreSight device registration.
- Wrapping replicator_reset and clear_clear_tag in replicator_init_hw.
  For cluster replicators, use smp_call_function_single() to ensure
  register visibility.
- Encapsulating csdev registration in replicator_add_coresight_dev().
- Refactoring replicator_enable function. For cluster replicators, use
  smp_call_function_single() to ensure register visibility.
- Maintaining compatibility with existing static/dynamic replicators while
  minimizing duplication.

This ensures replicator operations remain safe and functional even when
the CPU cluster is in low-power states.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 202 +++++++++++++++++----
 1 file changed, 169 insertions(+), 33 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index e6472658235dc479cec91ac18f3737f76f8c74f0..c5a9c7a2adfa90ae22890ed730fc008fe6901778 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -13,6 +13,7 @@
 #include <linux/io.h>
 #include <linux/err.h>
 #include <linux/slab.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/property.h>
 #include <linux/clk.h>
@@ -35,6 +36,7 @@ DEFINE_CORESIGHT_DEVLIST(replicator_devs, "replicator");
  * @csdev:	component vitals needed by the framework
  * @spinlock:	serialize enable/disable operations.
  * @check_idfilter_val: check if the context is lost upon clock removal.
+ * @cpumask:	CPU mask representing the CPUs related to this replicator.
  */
 struct replicator_drvdata {
 	void __iomem		*base;
@@ -43,18 +45,61 @@ struct replicator_drvdata {
 	struct coresight_device	*csdev;
 	raw_spinlock_t		spinlock;
 	bool			check_idfilter_val;
+	struct cpumask		*cpumask;
 };
 
-static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
+struct replicator_smp_arg {
+	struct replicator_drvdata *drvdata;
+	int outport;
+	int rc;
+};
+
+static void replicator_clear_self_claim_tag(struct replicator_drvdata *drvdata)
+{
+	struct csdev_access access = CSDEV_ACCESS_IOMEM(drvdata->base);
+
+	coresight_clear_self_claim_tag(&access);
+}
+
+static int replicator_claim_device_unlocked(struct replicator_drvdata *drvdata)
+{
+	struct coresight_device *csdev = drvdata->csdev;
+	struct csdev_access access = CSDEV_ACCESS_IOMEM(drvdata->base);
+	u32 claim_tag;
+
+	if (csdev)
+		return coresight_claim_device_unlocked(csdev);
+
+	writel_relaxed(CORESIGHT_CLAIM_SELF_HOSTED, drvdata->base + CORESIGHT_CLAIMSET);
+
+	claim_tag = readl_relaxed(drvdata->base + CORESIGHT_CLAIMCLR);
+	if (claim_tag != CORESIGHT_CLAIM_SELF_HOSTED) {
+		coresight_clear_self_claim_tag_unlocked(&access);
+		return -EBUSY;
+	}
+
+	return 0;
+}
+
+static void replicator_disclaim_device_unlocked(struct replicator_drvdata *drvdata)
 {
 	struct coresight_device *csdev = drvdata->csdev;
+	struct csdev_access access = CSDEV_ACCESS_IOMEM(drvdata->base);
+
+	if (csdev)
+		return coresight_disclaim_device_unlocked(csdev);
 
+	coresight_clear_self_claim_tag_unlocked(&access);
+}
+
+static void dynamic_replicator_reset(struct replicator_drvdata *drvdata)
+{
 	CS_UNLOCK(drvdata->base);
 
-	if (!coresight_claim_device_unlocked(csdev)) {
+	if (!replicator_claim_device_unlocked(drvdata)) {
 		writel_relaxed(0xff, drvdata->base + REPLICATOR_IDFILTER0);
 		writel_relaxed(0xff, drvdata->base + REPLICATOR_IDFILTER1);
-		coresight_disclaim_device_unlocked(csdev);
+		replicator_disclaim_device_unlocked(drvdata);
 	}
 
 	CS_LOCK(drvdata->base);
@@ -116,6 +161,34 @@ static int dynamic_replicator_enable(struct replicator_drvdata *drvdata,
 	return rc;
 }
 
+static void replicator_enable_hw_smp_call(void *info)
+{
+	struct replicator_smp_arg *arg = info;
+
+	arg->rc = dynamic_replicator_enable(arg->drvdata, 0, arg->outport);
+}
+
+static int replicator_enable_hw(struct replicator_drvdata *drvdata,
+				int inport, int outport)
+{
+	int cpu, ret;
+	struct replicator_smp_arg arg = { 0 };
+
+	if (!drvdata->cpumask)
+		return dynamic_replicator_enable(drvdata, 0, outport);
+
+	arg.drvdata = drvdata;
+	arg.outport = outport;
+
+	for_each_cpu(cpu, drvdata->cpumask) {
+		ret = smp_call_function_single(cpu, replicator_enable_hw_smp_call, &arg, 1);
+		if (!ret)
+			return arg.rc;
+	}
+
+	return ret;
+}
+
 static int replicator_enable(struct coresight_device *csdev,
 			     struct coresight_connection *in,
 			     struct coresight_connection *out)
@@ -126,19 +199,24 @@ static int replicator_enable(struct coresight_device *csdev,
 	bool first_enable = false;
 
 	raw_spin_lock_irqsave(&drvdata->spinlock, flags);
-	if (out->src_refcnt == 0) {
-		if (drvdata->base)
-			rc = dynamic_replicator_enable(drvdata, in->dest_port,
-						       out->src_port);
-		if (!rc)
-			first_enable = true;
-	}
-	if (!rc)
+
+	if (out->src_refcnt == 0)
+		first_enable = true;
+	else
 		out->src_refcnt++;
 	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (first_enable)
-		dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
+	if (first_enable) {
+		if (drvdata->base)
+			rc = replicator_enable_hw(drvdata, in->dest_port,
+						  out->src_port);
+		if (!rc) {
+			out->src_refcnt++;
+			dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
+			return rc;
+		}
+	}
+
 	return rc;
 }
 
@@ -217,23 +295,69 @@ static const struct attribute_group *replicator_groups[] = {
 	NULL,
 };
 
+static int replicator_add_coresight_dev(struct device *dev)
+{
+	struct coresight_desc desc = { 0 };
+	struct replicator_drvdata *drvdata = dev_get_drvdata(dev);
+
+	if (drvdata->base) {
+		desc.groups = replicator_groups;
+		desc.access = CSDEV_ACCESS_IOMEM(drvdata->base);
+	}
+
+	desc.name = coresight_alloc_device_name(&replicator_devs, dev);
+	if (!desc.name)
+		return -ENOMEM;
+
+	desc.type = CORESIGHT_DEV_TYPE_LINK;
+	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
+	desc.ops = &replicator_cs_ops;
+	desc.pdata = dev->platform_data;
+	desc.dev = dev;
+
+	drvdata->csdev = coresight_register(&desc);
+	if (IS_ERR(drvdata->csdev))
+		return PTR_ERR(drvdata->csdev);
+
+	return 0;
+}
+
+static void replicator_init_hw(struct replicator_drvdata *drvdata)
+{
+	replicator_clear_self_claim_tag(drvdata);
+	replicator_reset(drvdata);
+}
+
+static void replicator_init_on_cpu(void *info)
+{
+	struct replicator_drvdata *drvdata = info;
+
+	replicator_init_hw(drvdata);
+}
+
+static struct cpumask *replicator_get_cpumask(struct device *dev)
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
 static int replicator_probe(struct device *dev, struct resource *res)
 {
 	struct coresight_platform_data *pdata = NULL;
 	struct replicator_drvdata *drvdata;
-	struct coresight_desc desc = { 0 };
 	void __iomem *base;
-	int ret;
+	int cpu, ret;
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-replicator"))
 		dev_warn_once(dev,
 			      "Uses OBSOLETE CoreSight replicator binding\n");
 
-	desc.name = coresight_alloc_device_name(&replicator_devs, dev);
-	if (!desc.name)
-		return -ENOMEM;
-
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -251,9 +375,6 @@ static int replicator_probe(struct device *dev, struct resource *res)
 		if (IS_ERR(base))
 			return PTR_ERR(base);
 		drvdata->base = base;
-		desc.groups = replicator_groups;
-		desc.access = CSDEV_ACCESS_IOMEM(base);
-		coresight_clear_self_claim_tag(&desc.access);
 	}
 
 	if (fwnode_property_present(dev_fwnode(dev),
@@ -268,25 +389,39 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	dev->platform_data = pdata;
 
 	raw_spin_lock_init(&drvdata->spinlock);
-	desc.type = CORESIGHT_DEV_TYPE_LINK;
-	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
-	desc.ops = &replicator_cs_ops;
-	desc.pdata = dev->platform_data;
-	desc.dev = dev;
 
-	drvdata->csdev = coresight_register(&desc);
-	if (IS_ERR(drvdata->csdev))
-		return PTR_ERR(drvdata->csdev);
+	if (is_of_node(dev_fwnode(dev)) &&
+	    of_device_is_compatible(dev->of_node, "arm,coresight-cpu-replicator")) {
+		drvdata->cpumask = replicator_get_cpumask(dev);
+		if (!drvdata->cpumask)
+			return -EINVAL;
+
+		cpus_read_lock();
+		for_each_cpu(cpu, drvdata->cpumask) {
+			ret = smp_call_function_single(cpu,
+						       replicator_init_on_cpu, drvdata, 1);
+			if (!ret)
+				break;
+		}
+		cpus_read_unlock();
 
-	replicator_reset(drvdata);
-	return 0;
+		if (ret)
+			return 0;
+	} else if (res) {
+		replicator_init_hw(drvdata);
+	}
+
+	ret = replicator_add_coresight_dev(dev);
+
+	return ret;
 }
 
 static int replicator_remove(struct device *dev)
 {
 	struct replicator_drvdata *drvdata = dev_get_drvdata(dev);
 
-	coresight_unregister(drvdata->csdev);
+	if (drvdata->csdev)
+		coresight_unregister(drvdata->csdev);
 	return 0;
 }
 
@@ -354,6 +489,7 @@ static const struct dev_pm_ops replicator_dev_pm_ops = {
 static const struct of_device_id replicator_match[] = {
 	{.compatible = "arm,coresight-replicator"},
 	{.compatible = "arm,coresight-static-replicator"},
+	{.compatible = "arm,coresight-cpu-replicator"},
 	{}
 };
 

-- 
2.34.1


