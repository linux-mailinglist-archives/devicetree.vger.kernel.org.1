Return-Path: <devicetree+bounces-254376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA940D179A3
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:26:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37ADC300349C
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C8BD38A9B5;
	Tue, 13 Jan 2026 09:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O5ySRklD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LFhkaUXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32DDD38A733
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296058; cv=none; b=SJOextnHLG3ibXjEM5GkeP0WObFmuWEWpcvzFGuIK+OL5yeq8HaM35AsV6cMbo841LmysyYjIn+J+1xReaaoaNZ1fv2/EIWbnUPZD6xkZbHTeTWhxpfZjbD29q+BBzc56KEzB+27aB5OgV9EdVFRqgWmpo6hIUoAeEhwsxWU0eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296058; c=relaxed/simple;
	bh=I4zcV+jKg61sO3tGPShuGvOoP5KftrPWRAmDTIWp3ws=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Pu1BuHDv3G/8qmW7/O6MJTfgs9kAUVEgv7nhs3QHqT+HgRql/FZm7D6/bMl4yOngHsJp3x5c2TjcCd6WwW5hst+Rz/yYXwC4j6gMKb9MV6TKkUX4MrtoE6826aCdQFRzYAHcnNBBPeIBIi3eZz5qcgj/vt1+D5kOx5nVxAypWo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O5ySRklD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LFhkaUXz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D1th2V2752099
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=4rUcs1nTZl4
	EAdNAkmu526/RJYDtK6RgXOmFYi4FHXU=; b=O5ySRklD24sDnB6a+9PCJn38SNw
	Vng4i0bnbVdUwrRUN2Q5JdKzqRUnxRQB0c5te+GMbKADJXLb4fIfKYfWoTJx3ge2
	MdAcreyCWeHNsU7iDAyPEryy2x6C/np9k8XbPW8o6GOAwwrutXvs2YijeznBuA/d
	02E5u021wz51rz6A6HqBWLBzBf1MJLPQ6w8BQwUNaGcakoxjE81iTqJsmC8FGd1e
	TtMLBWzXqyQ4PEnWsqqkd7/dYPfGt+i5APMbyIzpTEV8sPD2rRqVjL+JXxMsVEuc
	wB688LTQVF1QU46zxsb/hmaVGE1KbueZQno1+flKTqfWpyfyZxPkF0n4ZfA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnctjs5wd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:43 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0d058fc56so60531705ad.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:20:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296041; x=1768900841; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4rUcs1nTZl4EAdNAkmu526/RJYDtK6RgXOmFYi4FHXU=;
        b=LFhkaUXzs/IdY2g9MfTiJkPYPAUL9/yX2GOiQAacza/Jc+K69fVa/04/wzBkI+KcHK
         n7Ak5AMcc5fE8sQoyCuoBkJ5YpgxwfvhnGPFFy6pPtEPcssnD9xN57dpL8GA2mABB3mh
         Iz64lgOw8iU1B4XQRvdWbeUq8tZRz6KTzChenMWzeAvPXsleLQtXco5n52on9o3QryOI
         98ik7JgOUGiBiNYllH48OALPM7lKItMZakrdb2KUXUuCbN8NOpTtmERZQQl0Zce+t9Fm
         oChTwIhPiNAPZMQb8XRso0DLBsH02mU3noc0C4tj1yCYzhAGAbC2ThNGUO/TrwGEQlv3
         nZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296041; x=1768900841;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4rUcs1nTZl4EAdNAkmu526/RJYDtK6RgXOmFYi4FHXU=;
        b=el2oH5Q7X1xc6vrC7N6nIeoVmo1JGm+//jRM2v3TRx9aBITikjrl4h+1EOy5NTF+ae
         gVv2ZdlDrktEJvcQ75kP9D6mmZoZRygdukz4STTngXf+uid4DxP3AVty/qBDiJD6t3hx
         pGIX4UAbm1wtHPbAvPkYUgre2ukTFNhg9ny7i2GtK5/Dwbc7reJVSQ2KPc450mqyikmU
         hZ2hz7dY7B8A2vjyLIBa0c1xNrj/0JFAsOSO7vaoHwNest1h0+Vg6dFddAzqeIBx9y2B
         1o6QISW9dfe13bNFL6f6edoo6Un3O0vSX5uzSmsUo7MN/iRZSNR0rlTYEJnNHcztTCwc
         3ACQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwKPFVj0shrNWoe3xCT3KyqXU+UXUI5Rp9PsxgLSdEUsuRFSXEU9p6xRstks6tr2fIBTV28iCKsi1z@vger.kernel.org
X-Gm-Message-State: AOJu0YwLNBJ7yx7ErpEdVKs0j9JYM6B1zEujYpvnRnRJqe7OaDJHxSBA
	+ErarsmWxYBQS15EKbrxzuADv6sVthDKvgQ2Vx6vA57Kbq4M6/I14zCvcdVlJCexZPRjjyny3J2
	RhwhuPqm8CYAsoEfUXZ9dNRX48UghFSZOoTqi86oM4jnhOpD3/IZuEedHwuBSbwmE
X-Gm-Gg: AY/fxX4rEO66hexM38qhNwIHBkEzgG2nPv1UkO2NvTcq6MPavHP5FXLMkWx3icvfbIU
	guq1mKXe9pk19bUc8e6dpptYGP3LuinwtyfgNJYfZLBcCl0YKiJDECvn4z+gu0VHOmsYJxQCzH/
	8QL0/f/jLjf+m18GNEuqPriKl+2O0zqhjZdLE5TPIjADd3VaGLJOWQspENBwEWvXZnQiHtEHbnC
	Om55vrcHN3P57/YsOZ93HEIMx3x6aP1jd9+cxaY/jrFMwTxxnQNBabh0687GIuD1cCzK0zYM4Ui
	YLOKhuYf+E+pwhyCR1TvkiwwpcN6mJ0zDXJmLmMejwFJdDISH/m6B7WDHZHTZF7IelSP9V8vbup
	7p/e30nLAGs3HILndDAzcnOS/G3A6WMZGKj26lIgRtwZFn/rSxTx7V8CEFqeHAijjNchznfdhyX
	3TOgSSYN/cEFXpNlgnLYKVdVpF5eKKzS4odDLRxns=
X-Received: by 2002:a17:903:3508:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a3ee4e8351mr194465125ad.30.1768296040862;
        Tue, 13 Jan 2026 01:20:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF5yUt2Fq7NGInIB//iuiBRZDPH+GYG1iZAVsUt+iIT3Vs/ENY0gsqicoYTacheHqZ7ENLejA==
X-Received: by 2002:a17:903:3508:b0:2a0:d629:903c with SMTP id d9443c01a7336-2a3ee4e8351mr194464875ad.30.1768296040244;
        Tue, 13 Jan 2026 01:20:40 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc794asm196314945ad.70.2026.01.13.01.20.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:20:39 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        George Moussalem <george.moussalem@outlook.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v10 3/6] remoteproc: qcom: add hexagon based WCSS secure PIL driver
Date: Tue, 13 Jan 2026 14:50:18 +0530
Message-Id: <20260113092021.1887980-4-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OCBTYWx0ZWRfXyKfM/VTMC4w2
 YhktLJk0W0rzFFZrJ94LOuAcc4QqH8zcI6s60Gb9A2Iijxm9bAs4CJFEzFWVeLU67j5A4oaZKBA
 zZigLWvsHABx8O5SGxB2z2obGyifLQyFFvvu45D9U3EvqQhgW5RU2zUkrKOIg0uFvhbKqvHpTuH
 eSU6/sw+FWap/yPlYwYu/y79R2RzBhNdpD8OpMEu1MhoxS56592Zv6xPaTte/bOArZWL0iXQoGP
 wJuMEiKTWj2+0PBWitOsKNT/y0fG5OVcbFn7K1dCxSMdy9mgEmp3EZWtj6tFHecO/rfCy2jpuHi
 4WOIoTMP+4tr3jvyEqi8ggSJBLSo9OwJvtGxgIrRhmajwwm22fiuu7Tbg4lAdlef7Ds8VfrDhqP
 LhtE4MlDrY+DcH8uYWQ1plwSLAbjD1H5B6lmNVAzwEfzo3ar7tx1mEKe6EJBdPENblMBgK5f92j
 V5k7xPW/DscPB2B0Axg==
X-Authority-Analysis: v=2.4 cv=Ls2fC3dc c=1 sm=1 tr=0 ts=69660e6b cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8
 a=2haS3Ga0fGOBmvNocw8A:9 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: BOaaxllzVnN7H3fiRTTBKiPoXUIzuYR_
X-Proofpoint-GUID: BOaaxllzVnN7H3fiRTTBKiPoXUIzuYR_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130078

From: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>

Add support to bring up hexagon based WCSS using secure PIL. All IPQxxxx
SoCs support secure Peripheral Image Loading (PIL).

Secure PIL image is signed firmware image which only trusted software such
as TrustZone (TZ) can authenticate and load. Linux kernel will send a
Peripheral Authentication Service (PAS) request to TZ to authenticate and
load the PIL images.

In order to avoid overloading the existing WCSS driver or PAS driver, we
came up with this new PAS based IPQ WCSS driver.

Signed-off-by: Vignesh Viswanathan <vignesh.viswanathan@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Signed-off-by: George Moussalem <george.moussalem@outlook.com>
[ Dropped ipq5424 support ]
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v10: Remove unused members from 'struct wcss_sec'
     Remove glink and ssr subdevices if wcss_sec_probe() fails

v8: Dropped ipq5424 support.
    The comments related to 'use_tmelcom' in [1] not applicable
    [1] https://lore.kernel.org/linux-arm-msm/72f0d4f7-8d8a-4fc5-bac2-8094e971a0e3@oss.qualcomm.com/
    Changed copyright for drivers/remoteproc/qcom_q6v5_wcss_sec.c
---
 drivers/remoteproc/Kconfig              |  19 ++
 drivers/remoteproc/Makefile             |   1 +
 drivers/remoteproc/qcom_q6v5_wcss_sec.c | 325 ++++++++++++++++++++++++
 include/linux/remoteproc.h              |   2 +
 4 files changed, 347 insertions(+)
 create mode 100644 drivers/remoteproc/qcom_q6v5_wcss_sec.c

diff --git a/drivers/remoteproc/Kconfig b/drivers/remoteproc/Kconfig
index 48a0d3a69ed0..eaa427e4e9ec 100644
--- a/drivers/remoteproc/Kconfig
+++ b/drivers/remoteproc/Kconfig
@@ -254,6 +254,25 @@ config QCOM_Q6V5_WCSS
 	  Hexagon V5 based WCSS remote processors on e.g. IPQ8074.  This is
 	  a non-TrustZone wireless subsystem.
 
+config QCOM_Q6V5_WCSS_SEC
+	tristate "Qualcomm Hexagon based WCSS Secure Peripheral Image Loader"
+	depends on OF && ARCH_QCOM
+	depends on QCOM_SMEM
+	depends on RPMSG_QCOM_GLINK_SMEM || RPMSG_QCOM_GLINK_SMEM=n
+	depends on RPMSG_QCOM_GLINK || RPMSG_QCOM_GLINK=n
+	select QCOM_MDT_LOADER
+	select QCOM_PIL_INFO
+	select QCOM_Q6V5_COMMON
+	select QCOM_RPROC_COMMON
+	select QCOM_SCM
+	help
+	  Say y here to support the Qualcomm Secure Peripheral Image Loader
+	  for the Hexagon based remote processors on e.g. IPQ5332.
+
+	  This is TrustZone wireless subsystem. The firmware is
+	  verified and booted with the help of the Peripheral Authentication
+	  System (PAS) in TrustZone.
+
 config QCOM_SYSMON
 	tristate "Qualcomm sysmon driver"
 	depends on RPMSG
diff --git a/drivers/remoteproc/Makefile b/drivers/remoteproc/Makefile
index 1c7598b8475d..08705ef62bce 100644
--- a/drivers/remoteproc/Makefile
+++ b/drivers/remoteproc/Makefile
@@ -28,6 +28,7 @@ obj-$(CONFIG_QCOM_Q6V5_ADSP)		+= qcom_q6v5_adsp.o
 obj-$(CONFIG_QCOM_Q6V5_MSS)		+= qcom_q6v5_mss.o
 obj-$(CONFIG_QCOM_Q6V5_PAS)		+= qcom_q6v5_pas.o
 obj-$(CONFIG_QCOM_Q6V5_WCSS)		+= qcom_q6v5_wcss.o
+obj-$(CONFIG_QCOM_Q6V5_WCSS_SEC)	+= qcom_q6v5_wcss_sec.o
 obj-$(CONFIG_QCOM_SYSMON)		+= qcom_sysmon.o
 obj-$(CONFIG_QCOM_WCNSS_PIL)		+= qcom_wcnss_pil.o
 qcom_wcnss_pil-y			+= qcom_wcnss.o
diff --git a/drivers/remoteproc/qcom_q6v5_wcss_sec.c b/drivers/remoteproc/qcom_q6v5_wcss_sec.c
new file mode 100644
index 000000000000..10a69fcd20f0
--- /dev/null
+++ b/drivers/remoteproc/qcom_q6v5_wcss_sec.c
@@ -0,0 +1,325 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+#include <linux/clk.h>
+#include <linux/firmware/qcom/qcom_scm.h>
+#include <linux/io.h>
+#include <linux/mailbox_client.h>
+#include <linux/of_reserved_mem.h>
+#include <linux/platform_device.h>
+#include <linux/soc/qcom/mdt_loader.h>
+
+#include "qcom_common.h"
+#include "qcom_q6v5.h"
+#include "qcom_pil_info.h"
+
+#define WCSS_CRASH_REASON		421
+
+#define WCSS_PAS_ID			0x6
+#define MPD_WCSS_PAS_ID			0xd
+
+#define Q6_WAIT_TIMEOUT			(5 * HZ)
+
+struct wcss_sec {
+	struct device *dev;
+	struct qcom_rproc_glink glink_subdev;
+	struct qcom_rproc_ssr ssr_subdev;
+	struct qcom_q6v5 q6;
+	phys_addr_t mem_phys;
+	phys_addr_t mem_reloc;
+	void *mem_region;
+	size_t mem_size;
+	const struct wcss_data *desc;
+};
+
+struct wcss_data {
+	u32 pasid;
+	const char *ss_name;
+	bool auto_boot;
+};
+
+static int wcss_sec_start(struct rproc *rproc)
+{
+	struct wcss_sec *wcss = rproc->priv;
+	struct device *dev = wcss->dev;
+	int ret;
+
+	ret = qcom_q6v5_prepare(&wcss->q6);
+	if (ret)
+		return ret;
+
+	ret = qcom_scm_pas_auth_and_reset(wcss->desc->pasid);
+	if (ret) {
+		dev_err(dev, "wcss_reset failed\n");
+		goto unprepare;
+	}
+
+	ret = qcom_q6v5_wait_for_start(&wcss->q6, Q6_WAIT_TIMEOUT);
+	if (ret == -ETIMEDOUT)
+		dev_err(dev, "start timed out\n");
+
+unprepare:
+	qcom_q6v5_unprepare(&wcss->q6);
+
+	return ret;
+}
+
+static int wcss_sec_stop(struct rproc *rproc)
+{
+	struct wcss_sec *wcss = rproc->priv;
+	struct device *dev = wcss->dev;
+	int ret;
+
+	ret = qcom_scm_pas_shutdown(wcss->desc->pasid);
+	if (ret) {
+		dev_err(dev, "not able to shutdown\n");
+		return ret;
+	}
+
+	qcom_q6v5_unprepare(&wcss->q6);
+
+	return 0;
+}
+
+static void *wcss_sec_da_to_va(struct rproc *rproc, u64 da, size_t len,
+			       bool *is_iomem)
+{
+	struct wcss_sec *wcss = rproc->priv;
+	int offset;
+
+	offset = da - wcss->mem_reloc;
+	if (offset < 0 || offset + len > wcss->mem_size)
+		return NULL;
+
+	return wcss->mem_region + offset;
+}
+
+static int wcss_sec_load(struct rproc *rproc, const struct firmware *fw)
+{
+	struct wcss_sec *wcss = rproc->priv;
+	struct device *dev = wcss->dev;
+	int ret;
+
+	ret = qcom_mdt_load(dev, fw, rproc->firmware, wcss->desc->pasid, wcss->mem_region,
+			    wcss->mem_phys, wcss->mem_size, &wcss->mem_reloc);
+	if (ret)
+		return ret;
+
+	qcom_pil_info_store("wcss", wcss->mem_phys, wcss->mem_size);
+
+	return 0;
+}
+
+static unsigned long wcss_sec_panic(struct rproc *rproc)
+{
+	struct wcss_sec *wcss = rproc->priv;
+
+	return qcom_q6v5_panic(&wcss->q6);
+}
+
+static void wcss_sec_copy_segment(struct rproc *rproc,
+				  struct rproc_dump_segment *segment,
+				  void *dest, size_t offset, size_t size)
+{
+	struct wcss_sec *wcss = rproc->priv;
+	struct device *dev = wcss->dev;
+
+	if (!segment->io_ptr)
+		segment->io_ptr = ioremap_wc(segment->da, segment->size);
+
+	if (!segment->io_ptr) {
+		dev_err(dev, "Failed to ioremap segment %pad size 0x%zx\n",
+			&segment->da, segment->size);
+		return;
+	}
+
+	if (offset + size < segment->size) {
+		memcpy(dest, segment->io_ptr + offset, size);
+	} else {
+		iounmap(segment->io_ptr);
+		segment->io_ptr = NULL;
+	}
+}
+
+static int wcss_sec_dump_segments(struct rproc *rproc,
+				  const struct firmware *fw)
+{
+	struct device *dev = rproc->dev.parent;
+	struct reserved_mem *rmem = NULL;
+	struct device_node *node;
+	int num_segs, index;
+	int ret;
+
+	/*
+	 * Parse through additional reserved memory regions for the rproc
+	 * and add them to the coredump segments
+	 */
+	num_segs = of_count_phandle_with_args(dev->of_node,
+					      "memory-region", NULL);
+	for (index = 0; index < num_segs; index++) {
+		node = of_parse_phandle(dev->of_node,
+					"memory-region", index);
+		if (!node)
+			return -EINVAL;
+
+		rmem = of_reserved_mem_lookup(node);
+		of_node_put(node);
+		if (!rmem) {
+			dev_err(dev, "unable to acquire memory-region index %d num_segs %d\n",
+				index, num_segs);
+			return -EINVAL;
+		}
+
+		dev_dbg(dev, "Adding segment 0x%pa size 0x%pa",
+			&rmem->base, &rmem->size);
+		ret = rproc_coredump_add_custom_segment(rproc,
+							rmem->base,
+							rmem->size,
+							wcss_sec_copy_segment,
+							NULL);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static const struct rproc_ops wcss_sec_ops = {
+	.start = wcss_sec_start,
+	.stop = wcss_sec_stop,
+	.da_to_va = wcss_sec_da_to_va,
+	.load = wcss_sec_load,
+	.get_boot_addr = rproc_elf_get_boot_addr,
+	.panic = wcss_sec_panic,
+	.parse_fw = wcss_sec_dump_segments,
+};
+
+static int wcss_sec_alloc_memory_region(struct wcss_sec *wcss)
+{
+	struct device *dev = wcss->dev;
+	struct resource res;
+	int ret;
+
+	ret = of_reserved_mem_region_to_resource(dev->of_node, 0, &res);
+	if (ret) {
+		dev_err(dev, "unable to acquire memory-region resource\n");
+		return ret;
+	}
+
+	wcss->mem_phys = res.start;
+	wcss->mem_reloc = res.start;
+	wcss->mem_size = resource_size(&res);
+	wcss->mem_region = devm_ioremap_resource_wc(dev, &res);
+	if (!wcss->mem_region) {
+		dev_err(dev, "unable to map memory region: %pR\n", &res);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
+static int wcss_sec_probe(struct platform_device *pdev)
+{
+	const struct wcss_data *desc = of_device_get_match_data(&pdev->dev);
+	const char *fw_name = NULL;
+	struct wcss_sec *wcss;
+	struct clk *sleep_clk;
+	struct clk *int_clk;
+	struct rproc *rproc;
+	int ret;
+
+	ret = of_property_read_string(pdev->dev.of_node, "firmware-name",
+				      &fw_name);
+	if (ret < 0)
+		return ret;
+
+	rproc = devm_rproc_alloc(&pdev->dev, desc->ss_name, &wcss_sec_ops,
+				 fw_name, sizeof(*wcss));
+	if (!rproc) {
+		dev_err(&pdev->dev, "failed to allocate rproc\n");
+		return -ENOMEM;
+	}
+
+	wcss = rproc->priv;
+	wcss->dev = &pdev->dev;
+	wcss->desc = desc;
+
+	ret = wcss_sec_alloc_memory_region(wcss);
+	if (ret)
+		return ret;
+
+	sleep_clk = devm_clk_get_optional_enabled(&pdev->dev, "sleep");
+	if (IS_ERR(sleep_clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(sleep_clk),
+				     "Failed to get sleep clock\n");
+
+	int_clk = devm_clk_get_optional_enabled(&pdev->dev, "interconnect");
+	if (IS_ERR(int_clk))
+		return dev_err_probe(&pdev->dev, PTR_ERR(int_clk),
+				     "Failed to get interconnect clock\n");
+
+	ret = qcom_q6v5_init(&wcss->q6, pdev, rproc,
+			     WCSS_CRASH_REASON, NULL, NULL);
+	if (ret)
+		return ret;
+
+	qcom_add_glink_subdev(rproc, &wcss->glink_subdev, desc->ss_name);
+	qcom_add_ssr_subdev(rproc, &wcss->ssr_subdev, desc->ss_name);
+
+	rproc->auto_boot = false;
+	rproc->dump_conf = RPROC_COREDUMP_INLINE;
+	rproc_coredump_set_elf_info(rproc, ELFCLASS32, EM_NONE);
+
+	ret = devm_rproc_add(&pdev->dev, rproc);
+	if (ret) {
+		qcom_remove_glink_subdev(rproc, &wcss->glink_subdev);
+		qcom_remove_ssr_subdev(rproc, &wcss->ssr_subdev);
+		return ret;
+	}
+
+	platform_set_drvdata(pdev, rproc);
+
+	return 0;
+}
+
+static void wcss_sec_remove(struct platform_device *pdev)
+{
+	struct rproc *rproc = platform_get_drvdata(pdev);
+	struct wcss_sec *wcss = rproc->priv;
+
+	qcom_remove_glink_subdev(rproc, &wcss->glink_subdev);
+	qcom_remove_ssr_subdev(rproc, &wcss->ssr_subdev);
+	qcom_q6v5_deinit(&wcss->q6);
+}
+
+static const struct wcss_data wcss_sec_ipq5332_res_init = {
+	.pasid = MPD_WCSS_PAS_ID,
+	.ss_name = "q6wcss",
+};
+
+static const struct wcss_data wcss_sec_ipq9574_res_init = {
+	.pasid = WCSS_PAS_ID,
+	.ss_name = "q6wcss",
+};
+
+static const struct of_device_id wcss_sec_of_match[] = {
+	{ .compatible = "qcom,ipq5018-wcss-sec-pil", .data = &wcss_sec_ipq5332_res_init },
+	{ .compatible = "qcom,ipq5332-wcss-sec-pil", .data = &wcss_sec_ipq5332_res_init },
+	{ .compatible = "qcom,ipq9574-wcss-sec-pil", .data = &wcss_sec_ipq9574_res_init },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, wcss_sec_of_match);
+
+static struct platform_driver wcss_sec_driver = {
+	.probe = wcss_sec_probe,
+	.remove = wcss_sec_remove,
+	.driver = {
+		.name = "qcom-wcss-secure-pil",
+		.of_match_table = wcss_sec_of_match,
+	},
+};
+module_platform_driver(wcss_sec_driver);
+
+MODULE_DESCRIPTION("Hexagon WCSS Secure Peripheral Image Loader");
+MODULE_LICENSE("GPL");
diff --git a/include/linux/remoteproc.h b/include/linux/remoteproc.h
index b4795698d8c2..7b2159853345 100644
--- a/include/linux/remoteproc.h
+++ b/include/linux/remoteproc.h
@@ -472,6 +472,7 @@ enum rproc_dump_mechanism {
  * @node:	list node related to the rproc segment list
  * @da:		device address of the segment
  * @size:	size of the segment
+ * @io_ptr:	ptr to store the ioremapped dump segment
  * @priv:	private data associated with the dump_segment
  * @dump:	custom dump function to fill device memory segment associated
  *		with coredump
@@ -483,6 +484,7 @@ struct rproc_dump_segment {
 	dma_addr_t da;
 	size_t size;
 
+	void *io_ptr;
 	void *priv;
 	void (*dump)(struct rproc *rproc, struct rproc_dump_segment *segment,
 		     void *dest, size_t offset, size_t size);
-- 
2.34.1


