Return-Path: <devicetree+bounces-231937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E92C13267
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:28:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5C7F1A68103
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 06:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D95072C08A8;
	Tue, 28 Oct 2025 06:28:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F+ktBSla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE9429293D
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761632899; cv=none; b=rJPCAeYYepp15fV4sxoOvf2SeRQa24gknDlZnVWM+cXe5HwpSfJgemSMlY4hKryETv1VpGAbQh4xbVCGoPOCgsruSHF1x8Hi4NSyWXxBTNVPmgbEqRaMvazgpNDe4d4/6PXBw7fOISt3jSgRCY0OxqacfdsiMOvINb7nMojjN+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761632899; c=relaxed/simple;
	bh=TMPIo9r3GKbM4/XsJ/eT0bym94bCuMEsVFDyTCJ0GQE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cVJLkbaLN1FLeUjZI0U3/toJsVFZPs1vPP4fnDRUO2pmLTTUSP0kyiHzeQRCooizm1cisWsKqsUicA2Wb351d3VTaL6gLCE0vD1J6fuAHL+VxuojRxVOiZzdTUFGQFOoO7H1FQ9Z5oCWx7ql2TOE4hNNrbGprbPg09VbkhCIILI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F+ktBSla; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59RM8aZt2752398
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HuSM5SLFMC7N6NZFy7Qf19Ll4uLRSR1mcYDYQZd6pRw=; b=F+ktBSlaRa5746cm
	0sWtcu22QT/5PTZgXcYDikvFKTSeMhqU6ykfU6t4PmsBNyowxBayFRANlzNJtJnD
	wRUsR2WzInmY6k/xZ7eHCyNQIWMNn+GDg2+b+B6xy1YuvXctI697rTiV95Z7QLC5
	jzFU0J/xvU6EsssNcoIlbF9luugYQiEfddgbj0wmoTuoKmXoXmGm6ibMfY5i+Tf6
	ijyrrv3qLEowiPk2Q6YUwVt+q+6jID9f6tsFXReg6f1iL5OMUSek3+OmFqlaXQvl
	ABvczUjhd1MU00wmOEEwFiUgDpQmmD6qONBFXuZO9JmTBm7rH0V4i6xZmyakr10a
	k+CarA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a28nstw76-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 06:28:17 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-269880a7bd9so57085635ad.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 23:28:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761632897; x=1762237697;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HuSM5SLFMC7N6NZFy7Qf19Ll4uLRSR1mcYDYQZd6pRw=;
        b=p8yTki/SCUGyZ5px71w806ViJzDLRufY5OAz0uTvqSPazAh9I5/Sja/SMCtToCGNJC
         uwAglebYKQze2/FJdh3MCAyLggO3h2qGlGsxbfHfdiE9LTgGr4HKtBMV5ziE0R6exSVU
         nWmRfw8mhxrRUCa365Gw3CTgV8p3//CowoZ/ndlJBxX+mLziqFYx6P1AupG0QL81ymxh
         xiRSxaIZIGw3eCaxlskFEbeTEeMN8x/bcdn2GtKeDhwFh2fMqrSqSZXBdzfzqblxTw9X
         CtmeaNLo/+IQltQtrizG2lkbhDrsZgtjZND07sOIy5couqnSqvTbkHKUq9U06vJCVCwK
         UtiQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFb+yyPDIb+zVzZuTvHCF7CcTZe1T5kyRUKzb2XDdEZsGAMYVSlyNbBnk67ojV8Yy6Lrg3KhrPtqNW@vger.kernel.org
X-Gm-Message-State: AOJu0YwBvE9E7ooj/smd0QelF+1VOysw+0kzksFs69BQevb8rgNVy9HV
	+0wZDBBLHWzrGwlSf5GiMb0eqYT382pRvASaGj6jEDjyi+ZiQQcF29/5hTAX7E7surViA/3pBEr
	XmOfxc5isCLcuRhWkR33Z537nI9J2/tQcRs7oB3u9Tvg8TQpcBd99QgWwbWsMW4vJ
X-Gm-Gg: ASbGnctDcda4BFxI94JHxKlmLcLa0cpeigQtJR7BsQpiNdO9tnHhcDEcZmFDVk7LomP
	LHE0BQhHyBUjSdYWBKJwiYkrOsCqzTzY8a1+09FiSOHV72w5W4xcFFqG7IDk3rho6YfDJimcvB9
	XjGozBDKV/giTX1vU+av6MKQZe51v/zO7VQLU3ZQoQ47w/vk/Ea4W2pwc5Uh9md6jkGDoOr5D2z
	E4jNkidnzdv+cyBxwKdOoN5AiBq1IUCcoqNlmjwVMH9dweQwAPYUds0ZiJz6WJ2pIM7IvZFRr8+
	hWYtZLxIMEnVo/rIj/cF8rkPEzXTmtrSxWWeiCuiTz/uZEA6pE2pwORZxJ7e4QQAe+GqpfZag5L
	oBh5nhAF8+0z0ns7j/R0yYzA1ag3CN6pLnXUJGHA2ZtldlCCEHiFzfYJz
X-Received: by 2002:a17:902:d50c:b0:265:57dc:977b with SMTP id d9443c01a7336-294cb6ab8afmr26086665ad.61.1761632896867;
        Mon, 27 Oct 2025 23:28:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEJHI3hJVc5V8w2KfBaOGb+fbx2ZhMNUkTZo9hi0BOvSUZh3C76Y5JuAjU8EzyW78la+CcyYA==
X-Received: by 2002:a17:902:d50c:b0:265:57dc:977b with SMTP id d9443c01a7336-294cb6ab8afmr26086325ad.61.1761632896374;
        Mon, 27 Oct 2025 23:28:16 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498cf359asm102503265ad.12.2025.10.27.23.28.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 23:28:15 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 23:28:05 -0700
Subject: [PATCH 03/12] coresight-funnel: Handle delay probe for CPU cluster
 funnel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251027-cpu_cluster_component_pm-v1-3-31355ac588c2@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761632890; l=4160;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=TMPIo9r3GKbM4/XsJ/eT0bym94bCuMEsVFDyTCJ0GQE=;
 b=GugX3k+ihfKyUBUqtYh1X+pw96lNXr/5f0/RSTbu9cBkZhi71QQJKr8CSmV3S1zYjioYc7gJN
 u+Pcw81DtinB6++tLNNOcS6Ou3iIHF7jRRdAtVGIPMdw74WXe+L4j+y
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1NCBTYWx0ZWRfX/P3VZqqV9Bul
 C95JozrB/V+g2ZJl4adVzVhhXWqGn7JzsD9gm02QeEMty6bZGJk+8+sOvrc7FD9ojo74k/niQW9
 7qPI3+3VfOlxKztJGoajpnobyGjnIfKMYFLTLooN+N+cBzL0ktiquCEcX+vmGac1gp854uGdlPC
 JmIElJgczOQQIGbM22LdyPdbMHEwt/KTinUNADR4HdmRTvekGvSauJ/tfqTsxcM/kcCPrhVsGvo
 APcCur+1fc/cQDqsQVAewisXJbGWSYJ1NJpkqY541ky6NuqH1792gWaKHbdS5f4UktXtAoPln4F
 NZRYXcyqhOnxD2Bq850IbU1cwLWtOUoCh3Gtut+ZAv+kph2jG7d2T5ueJVN74LFUkkFlWC8+Rj0
 30CVHbtwfQ4LltG8cJC0UIHHKShpig==
X-Authority-Analysis: v=2.4 cv=RIW+3oi+ c=1 sm=1 tr=0 ts=69006281 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=B8lwgTuz66jIMM7eRW8A:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: S0mj_fKVSlr3Y3N2D9b8oM4vkrp9tUy5
X-Proofpoint-GUID: S0mj_fKVSlr3Y3N2D9b8oM4vkrp9tUy5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 malwarescore=0 clxscore=1015 bulkscore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280054

Delay probe the cpu cluster funnel when all CPUs of this cluster are
offline, re-probe the funnel when any CPU in the cluster comes online.

Key changes:
- Introduce a global list to track delayed funnels waiting for CPU online.
- Add CPU hotplug callback to retry registration when the CPU comes up.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 62 +++++++++++++++++++++++---
 1 file changed, 57 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 12c29eb98b2122a3ade4cbed9a0d91c67ec777ed..43b9287a865eb26ce021521e4a5f193c48188bba 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -32,6 +32,9 @@
 #define FUNNEL_ENSx_MASK	0xff
 
 DEFINE_CORESIGHT_DEVLIST(funnel_devs, "funnel");
+static LIST_HEAD(funnel_delay_probe);
+static enum cpuhp_state hp_online;
+static DEFINE_SPINLOCK(delay_lock);
 
 /**
  * struct funnel_drvdata - specifics associated to a funnel component
@@ -42,6 +45,8 @@ DEFINE_CORESIGHT_DEVLIST(funnel_devs, "funnel");
  * @priority:	port selection order.
  * @spinlock:	serialize enable/disable operations.
  * @cpumask:	CPU mask representing the CPUs related to this funnel.
+ * @dev:	pointer to the device associated with this funnel.
+ * @link:	list node for adding this funnel to the delayed probe list.
  */
 struct funnel_drvdata {
 	void __iomem		*base;
@@ -51,6 +56,8 @@ struct funnel_drvdata {
 	unsigned long		priority;
 	raw_spinlock_t		spinlock;
 	struct cpumask		*cpumask;
+	struct device		*dev;
+	struct list_head	link;
 };
 
 struct funnel_smp_arg {
@@ -372,7 +379,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 		drvdata->cpumask = funnel_get_cpumask(dev);
 		if (!drvdata->cpumask)
 			return -EINVAL;
-
+		drvdata->dev = dev;
 		cpus_read_lock();
 		for_each_cpu(cpu, drvdata->cpumask) {
 			ret = smp_call_function_single(cpu,
@@ -380,10 +387,15 @@ static int funnel_probe(struct device *dev, struct resource *res)
 			if (!ret)
 				break;
 		}
-		cpus_read_unlock();
 
-		if (ret)
+		if (ret) {
+			scoped_guard(spinlock,  &delay_lock)
+				list_add(&drvdata->link, &funnel_delay_probe);
+			cpus_read_unlock();
 			return 0;
+		}
+
+		cpus_read_unlock();
 	} else if (res) {
 		funnel_clear_self_claim_tag(drvdata);
 	}
@@ -395,9 +407,12 @@ static int funnel_remove(struct device *dev)
 {
 	struct funnel_drvdata *drvdata = dev_get_drvdata(dev);
 
-	if (drvdata->csdev)
+	if (drvdata->csdev) {
 		coresight_unregister(drvdata->csdev);
-
+	} else {
+		scoped_guard(spinlock,  &delay_lock)
+			list_del(&drvdata->link);
+	}
 	return 0;
 }
 
@@ -535,8 +550,41 @@ static struct amba_driver dynamic_funnel_driver = {
 	.id_table	= dynamic_funnel_ids,
 };
 
+static int funnel_online_cpu(unsigned int cpu)
+{
+	struct funnel_drvdata *drvdata, *tmp;
+	int ret;
+
+	list_for_each_entry_safe(drvdata, tmp, &funnel_delay_probe, link) {
+		if (cpumask_test_cpu(cpu, drvdata->cpumask)) {
+			scoped_guard(spinlock,  &delay_lock)
+				list_del(&drvdata->link);
+
+			ret = pm_runtime_resume_and_get(drvdata->dev);
+			if (ret < 0)
+				return 0;
+
+			funnel_clear_self_claim_tag(drvdata);
+			funnel_add_coresight_dev(drvdata->dev);
+			pm_runtime_put(drvdata->dev);
+		}
+	}
+	return 0;
+}
+
 static int __init funnel_init(void)
 {
+	int ret;
+
+	ret = cpuhp_setup_state_nocalls(CPUHP_AP_ONLINE_DYN,
+					"arm/coresight-funnel:online",
+					funnel_online_cpu, NULL);
+
+	if (ret > 0)
+		hp_online = ret;
+	else
+		return ret;
+
 	return coresight_init_driver("funnel", &dynamic_funnel_driver, &funnel_driver,
 				     THIS_MODULE);
 }
@@ -544,6 +592,10 @@ static int __init funnel_init(void)
 static void __exit funnel_exit(void)
 {
 	coresight_remove_driver(&dynamic_funnel_driver, &funnel_driver);
+	if (hp_online) {
+		cpuhp_remove_state_nocalls(hp_online);
+		hp_online = 0;
+	}
 }
 
 module_init(funnel_init);

-- 
2.34.1


