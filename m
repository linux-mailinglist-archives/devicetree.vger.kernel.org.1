Return-Path: <devicetree+bounces-249095-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C2CCD944D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 13:34:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A436302AB88
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 12:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484B0330B1C;
	Tue, 23 Dec 2025 12:33:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ED0+or5y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eYk2sQ98"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E090F32ABC3
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766493219; cv=none; b=OdxwdA+ecGz8Xp/j65xHEGKekYKL4Y6hFKt6tswHx3SGVvHQu8yORxGsA4X+9ewECEeZEY41Ax9ZKDyqRBcbM6bNOyVMFSwaXVgz9/4lwnw3K6ILkx7QmFu1uUOOS7/8hDC/ip5JCh+dNoxUAflSGUrmS4KV6psCTNKyYPHvFTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766493219; c=relaxed/simple;
	bh=foVZcuk0ELu8rn+Y1h/AXjrAXtCeEHIt7M7SE9rpY3M=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=JGAfKjD0AA4wku1H7ZwkJ42r8NFR/3WOKccZyv/FdGZIZhuL/DUMrvnJJH/qBIWpIbg6OpJzErI6Pmn0tJ+1QB1hmwGOUH5T2dYudk/kOUFdPEuohLtkEcqzEDY2dVrZnDy5sx95hYUEJwV26Vvk6duIGG/r3Y+QoQn7vLT4tqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ED0+or5y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eYk2sQ98; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN8tdPL2748481
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=YULFLgxmKKR
	dhUCw5G92AvuzjeLGGojQfJhhxT0OW9U=; b=ED0+or5yOMs7UP598p2TIOV1YK9
	vYOBVxuqxfppBdZl/fHGpxtsalrJv+Gu3M1t7yTIWXXk//elu9YCg9HM+mPCl5li
	mGQ25oWCsDI+6JOmBvy8dCWBRAqm4yHxECZBSOCJivzph8V2aRkO24Gg5PvUCLhN
	YcqGfB/H++FzH+xXYmhmoWzo979bpiygVEWCAl6Bl4VP+XUF7IVPaocV8nkMGfGB
	fv9uW3/E8eoqAPDfPrYIXm0LvPCowr5f+YGM/ITSCcYBXIu9zIhUUMaBqtQ7OpBN
	mHgVR1P+k57ZpNITncdCkMVjbynPpuAkjl4CjBEIfM+Xckl/OJo4XHyeUyw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5ct2wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:33:36 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34ab8693a2cso13720429a91.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 04:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766493215; x=1767098015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YULFLgxmKKRdhUCw5G92AvuzjeLGGojQfJhhxT0OW9U=;
        b=eYk2sQ98oVx+R5Rz9T6pAXFNsaah1XBN41SkMfaLbas2U8l3GkNI1JqLvtna3L1iFC
         VgeOqDeqRwT21EzkbeFLFTypBHF/yyI3ZT/5bzulU7B+e8m/HwO3qbSgCzXtQ/sSrkCz
         x+VAtEv4xonEDBr+us/AzgQNSoHOGdXmgJI1dO/F9A5KvHOrd3pFIaKKefr3UvX0cHvY
         UGa5o1MDYz4d5/ZAxhiqqQCDbWdXPM+maNvRNCktgumn5XovVRGWYFZ1avl3h+K1L9PW
         q1pt49BABn8Xmjc/OGDI7HEaaL0ENrJpWaAEv0FRNQ/J1KMUuTc7dqt24NrIdLO+acFH
         AoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766493215; x=1767098015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YULFLgxmKKRdhUCw5G92AvuzjeLGGojQfJhhxT0OW9U=;
        b=X7oeLQhAZWq/hTOZ074x25lQEuu8TuHvltOwK8YGhi3goxCKlJCqK6BKd1HCdNi0Vp
         CbN1w46a1gXEMYUGRZxlhpv04F5bO4TKzZ73UgOZ1M6RhdlBxT9s+Ph62TMet5if7o2C
         i+r2wcnRccogNomw2wK6HlHxW/WQvSqDm1ev0F4j9+lqbMR1ahQ6KzEaNskHr1UBV/i8
         bt93XyepeUkr0o5cPLrPOR2psszjRYfeiQ4CW/kjKieM4pav0A+S8vg3oJN7kkm8gcWN
         XuO+bpNC+qNAIgOibfkD+mawrGVIVL176//4uy9H2Mp8MzDoqVAE/y5Ef/wBwGH7gvRe
         rILw==
X-Forwarded-Encrypted: i=1; AJvYcCUwDri8EvMErX/oimO79paryHQpeQLMQiD6jaff3XhLYKAH83cr/PwEdZm/sOZxYifCnQ8Pf0NglIbZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1ZnbmoviTQHMbo81rwiXsuHMeIQohM/QqIzaVJh5F305dMc6o
	cigLmacY91sTQPykjJ6fUI6ZdnP2m+xen8SaEMNhRwHuPUuMuYlxNCBYCxENXnWAHm0U1Z6ayC/
	xRvzxaYE99WLGlFTWfibnwPQVfdMFJxr3EkifKLOPZZUDUinGStcg8swBGXRTUJYE
X-Gm-Gg: AY/fxX6ctS3XiqzHl0350ywckun7J4j6tXvT8teSWDg8ayUxQmeSS3ODY6kdf4Q5aOU
	kUDfy3oINV63/Jcx2bh0cc5CQvBQV/uxdx+bvQv4QWCmWQuq7WuQN8cxxAp6vF3vKWMeP3Uy2VL
	O/xum1jRXqCOZPdKfHGSs8304rdtG8mcPxN+eL1Xuo1c4v+jSdSpsmhYGX5uhMR/lKMB+4bzEx7
	5hsXSEg9tz6EKB7yBxTryju4FYGKnziqaTAkhYzgMifhSWQbeXaBlHIkC26BvCJ8gnmhmSoOrPs
	q670cFxD00uXkbr3ChfQylmA+0qc3l3evhQsORMmQz5XDtl6PKn9z1wbjtP5YCiEdAvUvNiAYyU
	dX7UQEgSTUTFaPgd8YwP5kzI+CINythWkVOM3+ZM=
X-Received: by 2002:a17:90b:35d1:b0:340:ff89:8b62 with SMTP id 98e67ed59e1d1-34e921b05a1mr12712288a91.21.1766493215428;
        Tue, 23 Dec 2025 04:33:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFbcsMdo+iwlrL6OggSVKKtuzxeCLAMwngRRk7btZQwlB6vQf6eEjfycmecYDIyqPN8zgQ02w==
X-Received: by 2002:a17:90b:35d1:b0:340:ff89:8b62 with SMTP id 98e67ed59e1d1-34e921b05a1mr12712264a91.21.1766493214936;
        Tue, 23 Dec 2025 04:33:34 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e921b39dfsm12936044a91.8.2025.12.23.04.33.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 04:33:34 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rafael@kernel.org,
        daniel.lezcano@linaro.org, rui.zhang@intel.com, lukasz.luba@arm.com,
        konradybcio@kernel.org, amitk@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Amit Kucheria <amit.kucheria@oss.qualcomm.com>
Subject: [PATCH v1 1/8] thermal: Add Remote Proc cooling driver
Date: Tue, 23 Dec 2025 18:02:20 +0530
Message-Id: <20251223123227.1317244-2-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDEwMiBTYWx0ZWRfX5Wwv4h0+UeyL
 oNqF4E6djiVEquFrgwbcWuMHVa+BXWJOFDmaKB+uE0+8MrZp9y25jkbVDqDjTawil7Bf3U99fAc
 fK35Pozbid1+/aAEpu2sfMMAcjWnlgzhfsoeE9t38jWmhbYFX1W87pMMO0UoswsvKDZw6zsBCsF
 H2qSxcDtLSPyNuKrxcwJU6Egr/x52ogCPQp4Q0atNLsUuufadHWOfx+tFXpUDXpMIiof7B64wkV
 gDcvhMftPGvT5ksjBSkdatMD/pH2ZlZvfFMMd5bOQJW5fUBTx/mtKitVQ3XADN/pntlsUgFR5SP
 kW05F1ErytQ3vYC3gymBVE4U63QB/+clKQYa2nyohg6PxI2/iGcglSn+TsrOUUJ8LCnG5qdeS90
 L8jeEiq/pUh+0gTIzhpcfSgH+fSnw8jEtldRAGhgN0aUkFhNHryU/Hf0DiJLv/0dVsQEPbpHBiz
 TwRIrJrjddt0GM35urQ==
X-Proofpoint-ORIG-GUID: eyyZhdXFp6qFr_-KS2b6Hk2Tw8FNC0p3
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694a8c20 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=2qJnY-jACA4cO-adHyEA:9
 a=uKXjsCUrEbL0IQVhDsJ9:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-GUID: eyyZhdXFp6qFr_-KS2b6Hk2Tw8FNC0p3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_03,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1011 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230102

Add a new generic driver for thermal cooling devices that control
remote processors (modem, DSP, etc.) through various communication
channels.

This driver provides an abstraction layer between the thermal
subsystem and vendor-specific remote processor communication
mechanisms.

Suggested-by: Amit Kucheria <amit.kucheria@oss.qualcomm.com>
Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 MAINTAINERS                          |   8 ++
 drivers/thermal/Kconfig              |  11 ++
 drivers/thermal/Makefile             |   2 +
 drivers/thermal/remoteproc_cooling.c | 154 +++++++++++++++++++++++++++
 include/linux/remoteproc_cooling.h   |  52 +++++++++
 5 files changed, 227 insertions(+)
 create mode 100644 drivers/thermal/remoteproc_cooling.c
 create mode 100644 include/linux/remoteproc_cooling.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 679e5f11e672..c1ba87315cdf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -25935,6 +25935,14 @@ F:	drivers/thermal/cpufreq_cooling.c
 F:	drivers/thermal/cpuidle_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL/REMOTEPROC_COOLING
+M:	Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
+L:	linux-pm@vger.kernel.org
+S:	Supported
+F:	drivers/thermal/remoteproc_cooling.c
+F:	include/linux/remoteproc_cooling.h
+
+
 THERMAL/POWER_ALLOCATOR
 M:	Lukasz Luba <lukasz.luba@arm.com>
 L:	linux-pm@vger.kernel.org
diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index b10080d61860..31e92be34387 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -229,6 +229,17 @@ config PCIE_THERMAL
 
 	  If you want this support, you should say Y here.
 
+
+config REMOTEPROC_THERMAL
+	bool "Remote processor cooling support"
+	help
+	  This implements a generic cooling mechanism for remote processors
+	  (modem, DSP, etc.) that allows vendor-specific implementations to
+	  register thermal cooling devices and provide callbacks for thermal
+	  mitigation.
+
+	  If you want this support, you should say Y here.
+
 config THERMAL_EMULATION
 	bool "Thermal emulation mode support"
 	help
diff --git a/drivers/thermal/Makefile b/drivers/thermal/Makefile
index bb21e7ea7fc6..ae747dde54fe 100644
--- a/drivers/thermal/Makefile
+++ b/drivers/thermal/Makefile
@@ -34,6 +34,8 @@ thermal_sys-$(CONFIG_DEVFREQ_THERMAL) += devfreq_cooling.o
 
 thermal_sys-$(CONFIG_PCIE_THERMAL) += pcie_cooling.o
 
+thermal_sys-$(CONFIG_REMOTEPROC_THERMAL) += remoteproc_cooling.o
+
 obj-$(CONFIG_K3_THERMAL)	+= k3_bandgap.o k3_j72xx_bandgap.o
 # platform thermal drivers
 obj-y				+= broadcom/
diff --git a/drivers/thermal/remoteproc_cooling.c b/drivers/thermal/remoteproc_cooling.c
new file mode 100644
index 000000000000..a1f948cbde0f
--- /dev/null
+++ b/drivers/thermal/remoteproc_cooling.c
@@ -0,0 +1,154 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Remote Processor Cooling Device
+ *
+ * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/err.h>
+#include <linux/export.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/of.h>
+#include <linux/slab.h>
+#include <linux/thermal.h>
+
+#define REMOTEPROC_PREFIX		"rproc_"
+
+struct remoteproc_cooling_ops {
+	int (*get_max_level)(void *devdata, unsigned long *level);
+	int (*get_cur_level)(void *devdata, unsigned long *level);
+	int (*set_cur_level)(void *devdata, unsigned long level);
+};
+
+/**
+ * struct remoteproc_cdev - Remote processor cooling device
+ * @cdev: Thermal cooling device handle
+ * @ops: Vendor-specific operation callbacks
+ * @devdata: Private data for vendor implementation
+ * @np: Device tree node associated with this cooling device
+ * @lock: Mutex to protect cooling device operations
+ */
+struct remoteproc_cdev {
+	struct thermal_cooling_device *cdev;
+	const struct remoteproc_cooling_ops *ops;
+	void *devdata;
+	struct device_node *np;
+	struct mutex lock;
+};
+
+
+/* Thermal cooling device callbacks */
+
+static int remoteproc_get_max_state(struct thermal_cooling_device *cdev,
+				    unsigned long *state)
+{
+	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
+	int ret;
+
+	if (!rproc_cdev || !rproc_cdev->ops)
+		return -EINVAL;
+
+	mutex_lock(&rproc_cdev->lock);
+	ret = rproc_cdev->ops->get_max_level(rproc_cdev->devdata, state);
+	mutex_unlock(&rproc_cdev->lock);
+
+	return ret;
+}
+
+static int remoteproc_get_cur_state(struct thermal_cooling_device *cdev,
+				    unsigned long *state)
+{
+	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
+	int ret;
+
+	if (!rproc_cdev || !rproc_cdev->ops)
+		return -EINVAL;
+
+	mutex_lock(&rproc_cdev->lock);
+	ret = rproc_cdev->ops->get_cur_level(rproc_cdev->devdata, state);
+	mutex_unlock(&rproc_cdev->lock);
+
+	return ret;
+}
+
+static int remoteproc_set_cur_state(struct thermal_cooling_device *cdev,
+				    unsigned long state)
+{
+	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
+	int ret;
+
+	if (!rproc_cdev || !rproc_cdev->ops)
+		return -EINVAL;
+
+	mutex_lock(&rproc_cdev->lock);
+	ret = rproc_cdev->ops->set_cur_level(rproc_cdev->devdata, state);
+	mutex_unlock(&rproc_cdev->lock);
+
+	return ret;
+}
+
+static const struct thermal_cooling_device_ops remoteproc_cooling_ops = {
+	.get_max_state = remoteproc_get_max_state,
+	.get_cur_state = remoteproc_get_cur_state,
+	.set_cur_state = remoteproc_set_cur_state,
+};
+
+struct remoteproc_cdev *
+remoteproc_cooling_register(struct device_node *np,
+			     const char *name, const struct remoteproc_cooling_ops *ops,
+			     void *devdata)
+{
+	struct remoteproc_cdev *rproc_cdev;
+	struct thermal_cooling_device *cdev;
+	int ret;
+
+	if (!name || !ops) {
+		return ERR_PTR(-EINVAL);
+	}
+
+	rproc_cdev = kzalloc(sizeof(*rproc_cdev), GFP_KERNEL);
+	if (!rproc_cdev)
+		return ERR_PTR(-ENOMEM);
+
+	rproc_cdev->ops = ops;
+	rproc_cdev->devdata = devdata;
+	rproc_cdev->np = np;
+	mutex_init(&rproc_cdev->lock);
+
+	char *rproc_name __free(kfree) =
+		kasprintf(GFP_KERNEL, REMOTEPROC_PREFIX "%s", name);
+	/* Register with thermal framework */
+	if (np) {
+		cdev = thermal_of_cooling_device_register(np, rproc_name, rproc_cdev,
+							  &remoteproc_cooling_ops);
+	}
+
+	if (IS_ERR(cdev)) {
+		ret = PTR_ERR(cdev);
+		goto free_rproc_cdev;
+	}
+
+	rproc_cdev->cdev = cdev;
+
+	return rproc_cdev;
+
+free_rproc_cdev:
+	kfree(rproc_cdev);
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL_GPL(remoteproc_cooling_register);
+
+void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev)
+{
+	if (!rproc_cdev)
+		return;
+
+	thermal_cooling_device_unregister(rproc_cdev->cdev);
+	mutex_destroy(&rproc_cdev->lock);
+	kfree(rproc_cdev);
+}
+EXPORT_SYMBOL_GPL(remoteproc_cooling_unregister);
+
+MODULE_LICENSE("GPL");
+MODULE_DESCRIPTION("Remote Processor Cooling Device");
diff --git a/include/linux/remoteproc_cooling.h b/include/linux/remoteproc_cooling.h
new file mode 100644
index 000000000000..ef94019d220d
--- /dev/null
+++ b/include/linux/remoteproc_cooling.h
@@ -0,0 +1,52 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Remote Processor Cooling Device
+ *
+ * Copyright (c) 2025, Qualcomm Innovation Center
+ */
+
+#ifndef __REMOTEPROC_COOLING_H__
+#define __REMOTEPROC_COOLING_H__
+
+#include <linux/thermal.h>
+
+struct device;
+struct device_node;
+
+struct remoteproc_cooling_ops {
+	int (*get_max_level)(void *devdata, unsigned long *level);
+	int (*get_cur_level)(void *devdata, unsigned long *level);
+	int (*set_cur_level)(void *devdata, unsigned long level);
+};
+
+struct remoteproc_cdev;
+
+#ifdef CONFIG_REMOTEPROC_THERMAL
+
+struct remoteproc_cdev *
+remoteproc_cooling_register(struct device_node *np,
+			     const char *name,
+			     const struct remoteproc_cooling_ops *ops,
+			     void *devdata);
+
+void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev);
+
+#else /* !CONFIG_REMOTEPROC_THERMAL */
+
+static inline struct remoteproc_cdev *
+remoteproc_cooling_register(struct device_node *np,
+			     const char *name,
+			     const struct remoteproc_cooling_ops *ops,
+			     void *devdata)
+{
+	return ERR_PTR(-EINVAL);
+}
+
+static inline void
+remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev)
+{
+}
+
+#endif /* CONFIG_REMOTEPROC_THERMAL */
+
+#endif /* __REMOTEPROC_COOLING_H__ */
-- 
2.34.1


