Return-Path: <devicetree+bounces-260020-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uDJVEJbheGkGtwEAu9opvQ
	(envelope-from <devicetree+bounces-260020-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:02:30 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D07DE97502
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F3EC30C7582
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 15:57:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAF635EDBB;
	Tue, 27 Jan 2026 15:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="e2MEiGrY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NGt0XGFm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48AA35DCEE
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769529470; cv=none; b=DJUCtCFp4Ky+mj4DZFIHmLR9Lzx1woGTtmNXyUTv2smNxpnG+A4+R2p8NWJFLD+1uNssNRf79FMWZlPRhEx3GaKY/AQIzoEE2Pea3lwpLHDXj4VlXg9bCYaXUw+P5Em/u+5Ce0KZV3JHADjgA3DHNEgAm9lnUkWU3CKlLNiRM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769529470; c=relaxed/simple;
	bh=YyaNXeWaLIKpWzCU/L/ILFdXN/+iun4frf5IkoJMhJ4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ec6DFHkQICQYckwTYubG0xs9CcMr6tvrNLqtc21S/IxyEVMlr8rW8t3AB6dnxAVXW4sAwlPKyXymVexjcZu8eAvUZaw15yMmbNGwMtMKWTF5br7yvoqE+Sk9ZfEPFqJ3SZ/KcPzNQqfosDHrtHHVjYxsqQccL2+FILyt3eg3WWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=e2MEiGrY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NGt0XGFm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60REmgGK2379244
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=5nar1uSCNy/
	fyhypcdwInxOup3xqwfDAP5lnvImXQmk=; b=e2MEiGrYMzVHg7YLNP3oMczkud3
	GomERdLlTL9e/zdasrlSxwni6xGMxXr0jaWX8wFaDuy677NeREJCVz3xiNv+Rfab
	MXB6Uh/FRD2G4V55i1DBkRx4kNG23GIw+Qsbb4WpO2uNNNXbrPGagZHjPfemBX0K
	l3v4bdceC8owTYTA3+tshUUORYcDgmhpes8+xtF4NbfeRWHq+juVBBYjC/nammJ7
	ffgAiSFk29FEh/wXM91uTDAYgQLVzTQn8+NOJuuCOeVXPBUjIbWj0Tkr97zf5t4C
	fPr2P/9dc1UAASMKTasobnwyfsvATn7PLOjfxwO3gyKLEg2rKfpj6Cmq5Tg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxsjr9hbe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 15:57:46 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2a0bae9acd4so39187105ad.3
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 07:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769529466; x=1770134266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5nar1uSCNy/fyhypcdwInxOup3xqwfDAP5lnvImXQmk=;
        b=NGt0XGFmucQoYulaecA6hWVSISy44oSTR30LqbQAdoFeMCOnr5JMfzbFuxNjTuW1f+
         IhMJrAFmZSCffvkz9KEehKdKitoqMNbAbqT2SVM+r2RssBVzTNe3BHbQtBdEAN+3qEBt
         Wgc5UqHJfGIkQdzVyIT1jfYUYhxw3Pm7852PPWssOWw/TehYrqhfzLcpFeOm/217WlsM
         NM78hW6Rw3cYioL0uNXASgK+R8pkcIsZ2X+/hwZnsd9CWt27bwBj+GbpKSbIbwsgMHHN
         qJlGQjkFBad97UAvzZHTNsTedNBTRT4ibgoFcj/CYjSQA4dugMqus5gpKne77/f/gP1L
         uOKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769529466; x=1770134266;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5nar1uSCNy/fyhypcdwInxOup3xqwfDAP5lnvImXQmk=;
        b=Z2ZFAxjPP8a681CygbTTkhUtccLKfLBBeZFzrT2PekAOX3+6MAmQRIxpxxnIGtdzbQ
         ILtxtZjt+4jm3R8Osh6GOFvshAHx/k5JaVkLH5RyKWhDJb8jsPEkdO5eg/exEOO1uk+b
         GTn/bbb+FAooCWzQ5XFLSM4tptQNqRfNgJYtV06fieyfumaImTHgy+450CI7kIds5GkI
         RqpmHNMaMptF8m+Svl7ab6Wl2aboGKEsZ2jRZWrksjw1MMyjDW5tytRM8hQ5NG5n5s6A
         K03SAHVH0MFR2aY4Tdaj5HuB7KxdgEEB8AAA2FxNOber2qotkAyVpq8c2FH234zvZzue
         2jvw==
X-Forwarded-Encrypted: i=1; AJvYcCUxNlrV9zNnEK54sdeMi2F1642zu8cxjtpWlsNh+962fNr5THRtX4oq04VdU/Zm+7x4W/WzJ1zjzOuL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1j5BLINV8mrVoXPCbuCXWiWnAzMeVpMdHexsG6vQH+o04XvIh
	lDZBO0v4jjsaE282OvCz5lC8WtssoizlZ1ffY6Nox0eF3j/OvRPmJM5s/sJOJv8qtjXO0P7bLvi
	q6cbXF6uHiJf8vFvHiPalb8sga99xZbYzxR7HhqX6JbyCJ5fm206DZkekW8QFkeWK
X-Gm-Gg: AZuq6aIjWXirvR4W3LeYmEqmcwQYoVzc8omJY6J6c7qOIHpPiNFD6hyMaQ0SHpF/PO3
	3dZfn//hKXpOgF7BtYr40gnuebeLNAVCbwHzeEP+Ar6MPMI1XN5iefCkzZhJ0uljU+XuIniHcxh
	mZq05f2vYofSUJGuIPjFkHebDwDkqJx3MBJJEUC0bfdIVxtgSGFPD+88aTeqNcgHsNjlMflB5Q/
	KyYmAn36cZAuq+9yLJgZfemItrdOQo0ngVFGIslRAenpur2P8TWw5AgXSDM8HdRAXPsJwBuUxFs
	wX+tvvSAoBz6YTC3MtDGJQGeZBrQdLYYgJ4305/l9PmkFC2MmISzSo1x1NNRnLJK/Viyquehv7e
	rImPKDvqHTpReqFXXzJJ3+ZwED0Y1ALq2rgKX8Wc=
X-Received: by 2002:a17:902:f68b:b0:2a1:243:94a8 with SMTP id d9443c01a7336-2a870ddd7b6mr26852685ad.49.1769529465669;
        Tue, 27 Jan 2026 07:57:45 -0800 (PST)
X-Received: by 2002:a17:902:f68b:b0:2a1:243:94a8 with SMTP id d9443c01a7336-2a870ddd7b6mr26852185ad.49.1769529465015;
        Tue, 27 Jan 2026 07:57:45 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802ede745sm120577465ad.44.2026.01.27.07.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 07:57:44 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        gaurav.kohli@oss.qualcomm.com, manaf.pallikunhi@oss.qualcomm.com
Subject: [PATCH v2 1/8] thermal: Add Remote Proc cooling driver
Date: Tue, 27 Jan 2026 21:27:15 +0530
Message-Id: <20260127155722.2797783-2-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 05cSnYxt63cADtT8EFd735fpHMswCHeJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMCBTYWx0ZWRfX15nj/xjogfFX
 Jh96erjVwd+Wa+3epmu8ubpEScJ8ZHH5b1aKi+SjpK3UTV1mJhDinhbFpUs3uO9qXJgGhSZNGr2
 SO8sgDSU1lnTomMAAhEAAe6C2nYOx9LdeiZdiyxhDpAOPBqT0xY/pbdy39O8ifMyX9sZ96Eqfhk
 LiHGFejzcrXFRWFlpNyaPVi3BRsEuDBHBE0SRFBZHoukaZkTVVusncB76nlVOqBFabGo3NTc+UB
 W8bMpiCpG0Nr7Vcr5VjkPcO5avObleZbOnTWixKLyQIAbX90Qgz/BcnexQUiunkzqt79I4g7ICN
 U8SptR8sEscz1dW5H86IostUUoZZaps3KrpAgjonIiiiX/SvjL5IVx3crVFmxE3fM9KKZbOrkMN
 ri5PwP5zvQRBd25Q4Tv4I/NIJOd3bWztwUbBV89gy87dCHbLanSunQRIPYR6KfMvSWQVM1aAciM
 mzqD7hj2PBKvxes+YyA==
X-Authority-Analysis: v=2.4 cv=b+i/I9Gx c=1 sm=1 tr=0 ts=6978e07a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=7CQSdrXTAAAA:8 a=2qJnY-jACA4cO-adHyEA:9
 a=uG9DUKGECoFWVXl0Dc02:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: 05cSnYxt63cADtT8EFd735fpHMswCHeJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 lowpriorityscore=0 clxscore=1015 phishscore=0
 impostorscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270130
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RSPAMD_URIBL_FAIL(0.00)[arm.com:query timed out];
	TAGGED_FROM(0.00)[bounces-260020-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_TWELVE(0.00)[17];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[linux-pm.vger.kernel.org:server fail,lukasz.luba.arm.com:server fail];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,arm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D07DE97502
X-Rspamd-Action: no action

Add a new generic driver for thermal cooling devices that control
remote processors (modem, DSP, etc.) through various communication
channels.

This driver provides an abstraction layer between the thermal
subsystem and vendor-specific remote processor communication
mechanisms.

Advantage of this to avoid duplicating vendor-specific logic
in the thermal subsystem and make it easier for different vendors
to plug in their own cooling mechanisms via callbacks.

Suggested-by: Amit Kucheria <amit.kucheria@oss.qualcomm.com>
Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 MAINTAINERS                          |   7 ++
 drivers/thermal/Kconfig              |  10 ++
 drivers/thermal/Makefile             |   2 +
 drivers/thermal/remoteproc_cooling.c | 143 +++++++++++++++++++++++++++
 include/linux/remoteproc_cooling.h   |  52 ++++++++++
 5 files changed, 214 insertions(+)
 create mode 100644 drivers/thermal/remoteproc_cooling.c
 create mode 100644 include/linux/remoteproc_cooling.h

diff --git a/MAINTAINERS b/MAINTAINERS
index 414f44093269..5ebc7819d2cf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -26169,6 +26169,13 @@ F:	drivers/thermal/cpufreq_cooling.c
 F:	drivers/thermal/cpuidle_cooling.c
 F:	include/linux/cpu_cooling.h
 
+THERMAL/REMOTEPROC_COOLING
+M:	Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
+L:	linux-pm@vger.kernel.org
+S:	Supported
+F:	drivers/thermal/remoteproc_cooling.c
+F:	include/linux/remoteproc_cooling.h
+
 THERMAL/POWER_ALLOCATOR
 M:	Lukasz Luba <lukasz.luba@arm.com>
 L:	linux-pm@vger.kernel.org
diff --git a/drivers/thermal/Kconfig b/drivers/thermal/Kconfig
index b10080d61860..dfc52eed64de 100644
--- a/drivers/thermal/Kconfig
+++ b/drivers/thermal/Kconfig
@@ -229,6 +229,16 @@ config PCIE_THERMAL
 
 	  If you want this support, you should say Y here.
 
+config REMOTEPROC_THERMAL
+	tristate "Remote processor cooling support"
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
index 000000000000..f958efa691b3
--- /dev/null
+++ b/drivers/thermal/remoteproc_cooling.c
@@ -0,0 +1,143 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Remote Processor Cooling Device
+ *
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
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
+	struct mutex lock;
+};
+
+/* Thermal cooling device callbacks */
+
+static int remoteproc_get_max_state(struct thermal_cooling_device *cdev,
+				    unsigned long *state)
+{
+	struct remoteproc_cdev *rproc_cdev = cdev->devdata;
+	int ret;
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
+			    const char *name, const struct remoteproc_cooling_ops *ops,
+			     void *devdata)
+{
+	struct remoteproc_cdev *rproc_cdev;
+	struct thermal_cooling_device *cdev;
+	int ret;
+
+	if (!name || !ops)
+		return ERR_PTR(-EINVAL);
+
+	rproc_cdev = kzalloc(sizeof(*rproc_cdev), GFP_KERNEL);
+	if (!rproc_cdev)
+		return ERR_PTR(-ENOMEM);
+
+	rproc_cdev->ops = ops;
+	rproc_cdev->devdata = devdata;
+	mutex_init(&rproc_cdev->lock);
+
+	char *rproc_name __free(kfree) =
+		kasprintf(GFP_KERNEL, REMOTEPROC_PREFIX "%s", name);
+	/* Register with thermal framework */
+	if (np)
+		cdev = thermal_of_cooling_device_register(np, rproc_name, rproc_cdev,
+							  &remoteproc_cooling_ops);
+	else
+		cdev = thermal_cooling_device_register(rproc_name, rproc_cdev,
+						       &remoteproc_cooling_ops);
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
index 000000000000..721912d1a5ec
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
+			    const char *name,
+			     const struct remoteproc_cooling_ops *ops,
+			     void *devdata);
+
+void remoteproc_cooling_unregister(struct remoteproc_cdev *rproc_cdev);
+
+#else /* !CONFIG_REMOTEPROC_THERMAL */
+
+static inline struct remoteproc_cdev *
+remoteproc_cooling_register(struct device_node *np,
+			    const char *name,
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


