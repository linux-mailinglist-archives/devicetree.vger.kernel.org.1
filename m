Return-Path: <devicetree+bounces-247722-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DB844CCACB2
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 09:11:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B9CDB30210DC
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:11:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E09D42F39CD;
	Thu, 18 Dec 2025 08:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R0LckyiQ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W+UNYLut"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FFCE2EF66E
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766045448; cv=none; b=tGO+0mibeF/p8ZIQMCaQOJc9CgsFvPd6spN6dTJlfSDr+xNxAPHZCB93aHp3b/upAYt+41vWiZlx6/ImOK3jQg/SoJGIzWXzgZ8I0dLjFrRctZzgNpPdrEsKFkBY4sdPvVVXR5AgCee2e7RKvicqn0JbynlCClQH8v/pWN3hTds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766045448; c=relaxed/simple;
	bh=Fpp/5eQxMyG5rpvoNvxSYiDKJ7rnTCbi3mj2igPMxLU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aZ3ZqUrGsQHNpL6Nsl3YEc12gzZTFXnWwH3xO5itwf5OjKQKrOq5ETB2KjQDIJoAFyh2yaxlZGd8y4Y4ml12FXztiHjIyY3CbswyoB+corQYul2mPmQA9PUg4URGTxk11SoueUEeDQA9H/82xoCL9PZ+4bYmE28en/OaX6JJSic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R0LckyiQ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W+UNYLut; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI3agNm754700
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cNH63exyhTmIcemy4/YjTfy8jDYpUWUjpvcUJrfWdgU=; b=R0LckyiQx7Vz5Glw
	JUHIvlCeO86pmxbCF3yddwHW4f2haJktLClGqNcYiXVxUeBuvkaFCdrYbveMMhed
	Ox7aXp8aVx8UQWbazOMGOQgLZucJiMoGI9YtOZw7J/EwrlWhIORdezkvIOPG6cRp
	edBqAeAeNxAo+KQ0P3iqtA1Us/xY2ZMKuZIDt++/DxSNCiyY1k9onhICdZGbzRAT
	NDa6huCwKOU5TVjPyxtDOqoegf67GcZ+9gdx8SR+RmzlYeYnAe9DPxckoXTATaPM
	RBzk6XmgYs1OGzIRkNLGkP1gCnut8q0mDAk/J80kihZSAttr+H8PApI3TTEWEbjX
	d+VbCQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b49v0rpnb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 08:10:43 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f0c7a06eso7833345ad.2
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 00:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766045443; x=1766650243; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cNH63exyhTmIcemy4/YjTfy8jDYpUWUjpvcUJrfWdgU=;
        b=W+UNYLutP14j7XkV2GN6NbPi1k67nzj81bRD1GUR5VCeeATOu0UKpJrkcbffy+hVhD
         T4TequGYksT7AapnR/rFwN8Ft3huEFCbhL0lnZYSbUncy8ZZUyExAE2q791AP3zLqp6q
         lH/p2poOOaIMpHjWZXlKWR13vTHM2xnrI4O9+nPH6lXZ5tixBvPmSBWSs5ZpdOvjxeC0
         uCNf5tB+7rvAmcnhZJ0KbWCRXTKIHWnjppC0RQCny4KK0J/r/0kG687iIuhSp9O4nUeC
         LGgOgDwlEz/cuODOs8va0NDaW5Dx4IKnQDvgQRoFPO7/wWmjHxhjfxjX62aj+8S72hEL
         gSkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766045443; x=1766650243;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cNH63exyhTmIcemy4/YjTfy8jDYpUWUjpvcUJrfWdgU=;
        b=OTIVEgDDQpASl23jUyk5zIHa3016jmg+Omw14fOZ0gZbNHfhMNpnutanBTL9/ZSlb4
         LMhi+WHFpI94hw+IKpG47YyayVf3axfFHWc7cePIR/GkKbIUlzokcJeEuGM9W5E9zqhw
         wvmn+ApOVtRI+TQX5T7H82FLBOaZSsIVVvn2AfLOGD8Fh3FKOlUWKC8lg2HBoelRQWQ3
         3k1cMfIJgfdivsi0yDWuJpjkVTbOrDzGa4zYg8l10NZhEgWFjHsa4aLXdFZ6yT0xmf2f
         NuDz6aX09cWfMBhpBg0y7vBALXa4dgS/rv18eNaXPwvCrcelvxoeGHqvwRlObrfu07CT
         qEgg==
X-Forwarded-Encrypted: i=1; AJvYcCWiU7GdFDtN/aV0V2gkz5egOCcpMcMe040oCjU2t8FSXFoVAjOwmmcXiLbbLjhVgpTP+7j5D3JGfZuw@vger.kernel.org
X-Gm-Message-State: AOJu0YxquB2br/+R+c2dapf44t24T+sf4EXWWKzkt8HtjGQK+FgsZAPn
	nCAjS8ZBevWegjg8K666olM7S+EjONq7RuY0D9qkWiqj9tSz3VmIKCqIYdromptsMCzo45Kdj1e
	MWhJtfD3JHxX/MW90q1RHSM+pOig7haULyZiANXyKZHBrjZKklU0h7IDw5regJ/4S
X-Gm-Gg: AY/fxX4P4WGtBGSwJO3ypb0ScMDOZyvNA2aA6RzkoxRbGoXXD+8Lq7B3m4AHteyEL/6
	fnU8muXonq4Kyyc8T24piZBEKP50yyZ3RmiVoTVrG0kNfpJoP/1Z6EdLLxVp6FpixQ8S//VTBKB
	n6UoJt5oB+5TKtNENKFF/XDrQKek79WPt45UbDR1q6YFRwCiXoRBBmz1/kAuQPwxoBg1Y/er+t9
	XNgfS4TR2eScwUANL9+Vbvce2WnBKX/M09eXfg8FObSoFqtTAn1Q84SIl7fIMTxI1CKEIwMl/3/
	Z6kJUbPXinWDGXrm28ou+FFGlB59AaDX2QK+J6qMWMM4maj9iKb3JAYq8N9zxOGpbbDvX5ZVc+p
	GSqz2g9Z+nDNs2cGsq9bugIu/ARES9WewEWv+vGJpKlssk3AHH75c91ejwBFzCmFZq1w=
X-Received: by 2002:a05:7022:f686:b0:119:e569:fba9 with SMTP id a92af1059eb24-11f354cc907mr18256787c88.24.1766045442785;
        Thu, 18 Dec 2025 00:10:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3Pquf355K3Y1FFskaQnCkkuyO/O4usAru27v+VGDNITq7dta4Vgx4zQjMo851Kc2edI937w==
X-Received: by 2002:a05:7022:f686:b0:119:e569:fba9 with SMTP id a92af1059eb24-11f354cc907mr18256751c88.24.1766045442231;
        Thu, 18 Dec 2025 00:10:42 -0800 (PST)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b04e58d423sm2564824eec.6.2025.12.18.00.10.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Dec 2025 00:10:41 -0800 (PST)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 00:09:42 -0800
Subject: [PATCH v2 02/12] coresight-funnel: Support CPU cluster funnel
 initialization
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-cpu_cluster_component_pm-v2-2-2335a6ae62a0@oss.qualcomm.com>
References: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
In-Reply-To: <20251218-cpu_cluster_component_pm-v2-0-2335a6ae62a0@oss.qualcomm.com>
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
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        maulik.shah@oss.qualcomm.com
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766045439; l=9011;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=Fpp/5eQxMyG5rpvoNvxSYiDKJ7rnTCbi3mj2igPMxLU=;
 b=BavpAy9r7xKAgf/EbkDhLS/jCe/ZLPOLxE+sU7ckt40H3lLyYD/fFw77y3H7DyHloXrCfJK9C
 K6Bc7EKVjfMD71KSm5dlRQXRyjiuhr6czi4m3WboiAsLxZvj4T1Jz6e
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-ORIG-GUID: DbtNn8fbI9oTLHST12SNksTM-CywzbDP
X-Authority-Analysis: v=2.4 cv=Q/HfIo2a c=1 sm=1 tr=0 ts=6943b704 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ntKk2pyKPOpeOXeRekoA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: DbtNn8fbI9oTLHST12SNksTM-CywzbDP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA2NiBTYWx0ZWRfX+WVxKUkfVESk
 hrc6Pqr5KwJyvPGqSmJ2+y5Ke7NTlCEJv830ni+omQHc3mChqfACdjyntg07rh6a1cBqkiuVSSQ
 0qpG0EndtheuAzwN47TNDkbD2rPlQzSYTiA9rN6jEpN00tzHje8oR9QA6e8RCEyKAIxti/nOMW+
 jkC08Kua+mTxZH9XVGrnlboSSClOdbmWK28ximI6h05eWE7f0/IBMslQZ3Yd8Dss16WNfZ6zVCH
 QwVjW5skbNk0C1rUjnb+9KAfZ3BOXNcBFr0Rj2pSHBkKVxX8GwXmlxzpwuwVspyNcDamOKPSg7T
 h25NHtlszrJ60Np44UgnIeA7NVpIWxmc7HWxQBgjErwisexA7bI7SBzv3JDpQjStCW5rk4IUwQv
 jqLHBbeFME6P0gTKlyUSvNHjLBfs5w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180066

Funnels associated with CPU clusters reside in the cluster's power domain.
Unlike dynamic funnels (which are typically system-wide), these per-cluster
funnels are only accessible when the cluster is powered on. Standard
runtime PM may not suffice to wake up a cluster from low-power states,
making direct register access unreliable.

Enhance the funnel driver to support these per-cluster devices:

1. Safe Initialization:
   - Identify CPU cluster funnels via "qcom,cpu-bound-components".
   - Use smp_call_function_single() to perform hardware initialization
     (claim tag clearing) on a CPU within the cluster.
   - Refactor the probe flow to encapsulate device registration in
     funnel_add_coresight_dev().

2. Cross-CPU Enablement:
   - Update funnel_enable() to use smp_call_function_single() when
     enabling the hardware on a cluster-bound funnel.

3. Debug Interface Support:
   - Update funnel_ctrl_show() to safely read the control register via
     cross-CPU calls when necessary.

This ensures that funnel operations remain safe and functional even when
the associated CPU cluster is in aggressive low-power states.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 183 ++++++++++++++++++++-----
 1 file changed, 152 insertions(+), 31 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 3b248e54471a38f501777fe162fea850d1c851b3..a1264df84ab4c625c63dfbb9b7710b983a10c6b4 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -15,6 +15,7 @@
 #include <linux/slab.h>
 #include <linux/of.h>
 #include <linux/platform_device.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/coresight.h>
 #include <linux/amba/bus.h>
@@ -40,6 +41,7 @@ DEFINE_CORESIGHT_DEVLIST(funnel_devs, "funnel");
  * @csdev:	component vitals needed by the framework.
  * @priority:	port selection order.
  * @spinlock:	serialize enable/disable operations.
+ * @supported_cpus:	Represent the CPUs related to this funnel.
  */
 struct funnel_drvdata {
 	void __iomem		*base;
@@ -48,6 +50,13 @@ struct funnel_drvdata {
 	struct coresight_device	*csdev;
 	unsigned long		priority;
 	raw_spinlock_t		spinlock;
+	struct cpumask		*supported_cpus;
+};
+
+struct funnel_smp_arg {
+	struct funnel_drvdata *drvdata;
+	int port;
+	int rc;
 };
 
 static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
@@ -76,6 +85,33 @@ static int dynamic_funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
 	return rc;
 }
 
+static void funnel_enable_hw_smp_call(void *info)
+{
+	struct funnel_smp_arg *arg = info;
+
+	arg->rc = dynamic_funnel_enable_hw(arg->drvdata, arg->port);
+}
+
+static int funnel_enable_hw(struct funnel_drvdata *drvdata, int port)
+{
+	int cpu, ret;
+	struct funnel_smp_arg arg = { 0 };
+
+	if (!drvdata->supported_cpus)
+		return dynamic_funnel_enable_hw(drvdata, port);
+
+	arg.drvdata = drvdata;
+	arg.port = port;
+
+	for_each_cpu(cpu, drvdata->supported_cpus) {
+		ret = smp_call_function_single(cpu,
+					       funnel_enable_hw_smp_call, &arg, 1);
+		if (!ret)
+			return arg.rc;
+	}
+	return ret;
+}
+
 static int funnel_enable(struct coresight_device *csdev,
 			 struct coresight_connection *in,
 			 struct coresight_connection *out)
@@ -86,19 +122,24 @@ static int funnel_enable(struct coresight_device *csdev,
 	bool first_enable = false;
 
 	raw_spin_lock_irqsave(&drvdata->spinlock, flags);
-	if (in->dest_refcnt == 0) {
-		if (drvdata->base)
-			rc = dynamic_funnel_enable_hw(drvdata, in->dest_port);
-		if (!rc)
-			first_enable = true;
-	}
-	if (!rc)
+
+	if (in->dest_refcnt == 0)
+		first_enable = true;
+	else
 		in->dest_refcnt++;
+
 	raw_spin_unlock_irqrestore(&drvdata->spinlock, flags);
 
-	if (first_enable)
-		dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n",
-			in->dest_port);
+	if (first_enable) {
+		if (drvdata->base)
+			rc = funnel_enable_hw(drvdata, in->dest_port);
+		if (!rc) {
+			in->dest_refcnt++;
+			dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n",
+				in->dest_port);
+		}
+	}
+
 	return rc;
 }
 
@@ -188,15 +229,39 @@ static u32 get_funnel_ctrl_hw(struct funnel_drvdata *drvdata)
 	return functl;
 }
 
+static void get_funnel_ctrl_smp_call(void *info)
+{
+	struct funnel_smp_arg *arg = info;
+
+	arg->rc = get_funnel_ctrl_hw(arg->drvdata);
+}
+
 static ssize_t funnel_ctrl_show(struct device *dev,
 			     struct device_attribute *attr, char *buf)
 {
 	u32 val;
+	int cpu, ret;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);
+	struct funnel_smp_arg arg = { 0 };
 
 	pm_runtime_get_sync(dev->parent);
-
-	val = get_funnel_ctrl_hw(drvdata);
+	if (!drvdata->supported_cpus) {
+		val = get_funnel_ctrl_hw(drvdata);
+	} else {
+		arg.drvdata = drvdata;
+		for_each_cpu(cpu, drvdata->supported_cpus) {
+			ret = smp_call_function_single(cpu,
+						       get_funnel_ctrl_smp_call, &arg, 1);
+			if (!ret)
+				break;
+		}
+		if (!ret) {
+			val =  arg.rc;
+		} else {
+			pm_runtime_put(dev->parent);
+			return ret;
+		}
+	}
 
 	pm_runtime_put(dev->parent);
 
@@ -211,22 +276,68 @@ static struct attribute *coresight_funnel_attrs[] = {
 };
 ATTRIBUTE_GROUPS(coresight_funnel);
 
+static void funnel_clear_self_claim_tag(struct funnel_drvdata *drvdata)
+{
+	struct csdev_access access = CSDEV_ACCESS_IOMEM(drvdata->base);
+
+	coresight_clear_self_claim_tag(&access);
+}
+
+static void funnel_init_on_cpu(void *info)
+{
+	struct funnel_drvdata *drvdata = info;
+
+	funnel_clear_self_claim_tag(drvdata);
+}
+
+static int funnel_add_coresight_dev(struct device *dev)
+{
+	struct coresight_desc desc = { 0 };
+	struct funnel_drvdata *drvdata = dev_get_drvdata(dev);
+
+	if (drvdata->base) {
+		desc.groups = coresight_funnel_groups;
+		desc.access = CSDEV_ACCESS_IOMEM(drvdata->base);
+	}
+
+	desc.name = coresight_alloc_device_name(&funnel_devs, dev);
+	if (!desc.name)
+		return -ENOMEM;
+
+	desc.type = CORESIGHT_DEV_TYPE_LINK;
+	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
+	desc.ops = &funnel_cs_ops;
+	desc.pdata = dev->platform_data;
+	desc.dev = dev;
+
+	drvdata->csdev = coresight_register(&desc);
+	if (IS_ERR(drvdata->csdev))
+		return PTR_ERR(drvdata->csdev);
+	return 0;
+}
+
+static struct cpumask *funnel_get_supported_cpus(struct device *dev)
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
 static int funnel_probe(struct device *dev, struct resource *res)
 {
 	void __iomem *base;
 	struct coresight_platform_data *pdata = NULL;
 	struct funnel_drvdata *drvdata;
-	struct coresight_desc desc = { 0 };
-	int ret;
+	int cpu, ret;
 
 	if (is_of_node(dev_fwnode(dev)) &&
 	    of_device_is_compatible(dev->of_node, "arm,coresight-funnel"))
 		dev_warn_once(dev, "Uses OBSOLETE CoreSight funnel binding\n");
 
-	desc.name = coresight_alloc_device_name(&funnel_devs, dev);
-	if (!desc.name)
-		return -ENOMEM;
-
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
@@ -244,9 +355,6 @@ static int funnel_probe(struct device *dev, struct resource *res)
 		if (IS_ERR(base))
 			return PTR_ERR(base);
 		drvdata->base = base;
-		desc.groups = coresight_funnel_groups;
-		desc.access = CSDEV_ACCESS_IOMEM(base);
-		coresight_clear_self_claim_tag(&desc.access);
 	}
 
 	dev_set_drvdata(dev, drvdata);
@@ -258,23 +366,36 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	dev->platform_data = pdata;
 
 	raw_spin_lock_init(&drvdata->spinlock);
-	desc.type = CORESIGHT_DEV_TYPE_LINK;
-	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
-	desc.ops = &funnel_cs_ops;
-	desc.pdata = pdata;
-	desc.dev = dev;
-	drvdata->csdev = coresight_register(&desc);
-	if (IS_ERR(drvdata->csdev))
-		return PTR_ERR(drvdata->csdev);
 
-	return 0;
+	if (fwnode_property_present(dev_fwnode(dev), "qcom,cpu-bound-components")) {
+		drvdata->supported_cpus = funnel_get_supported_cpus(dev);
+		if (!drvdata->supported_cpus)
+			return -EINVAL;
+
+		cpus_read_lock();
+		for_each_cpu(cpu, drvdata->supported_cpus) {
+			ret = smp_call_function_single(cpu,
+						       funnel_init_on_cpu, drvdata, 1);
+			if (!ret)
+				break;
+		}
+		cpus_read_unlock();
+
+		if (ret)
+			return 0;
+	} else if (res) {
+		funnel_clear_self_claim_tag(drvdata);
+	}
+
+	return funnel_add_coresight_dev(dev);
 }
 
 static int funnel_remove(struct device *dev)
 {
 	struct funnel_drvdata *drvdata = dev_get_drvdata(dev);
 
-	coresight_unregister(drvdata->csdev);
+	if (drvdata->csdev)
+		coresight_unregister(drvdata->csdev);
 
 	return 0;
 }

-- 
2.34.1


