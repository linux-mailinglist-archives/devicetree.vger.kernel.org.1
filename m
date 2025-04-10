Return-Path: <devicetree+bounces-165104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A00A835C2
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:34:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 663C319E2F3C
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 01:34:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 220121B87F3;
	Thu, 10 Apr 2025 01:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H9yJUA9b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2A11A7046
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248831; cv=none; b=FsZUvH0UHSL3ekCxrcQ0mlBYRi50cLHUbLptNzbAc3R9i5mNlTslPxAU6pb1qfmN/kc3nsYNOANFzod75vLuxrSWZVX/OlCI1CtsrFc7Rgs1UBou1zcdtJBwxzCKHSlLAEH8VWT2i3mKnSzqplaNyy9iQ7x9iJH3itp26/Nn6ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248831; c=relaxed/simple;
	bh=9EeYc2uLAA+LZVZlS7O1+YEDNxBRhdSs3LsoOwIdgsk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QVUvn7lbPyZRCnorj/trCq+LBGH2Z0ZlzcyO7H6SD05Yql2MQYueEMyGY67f/MzK4kSIq0JY/9PFhAcxUxHQ7INrTXfK40Cyd4QV9FGIzkLMcEtFzDqLXhvBQZ5mlL/dz5SjBSvLrxAPEivicrs5MDXfc1bY8SFoEzb092gOHsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H9yJUA9b; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539Gdnko027497
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/hbu+J38Osl
	kyyaqUl3TD0hhOvybI072r0nxhEaLcKQ=; b=H9yJUA9bw3vdhwFOIqJSwaKyDPs
	VH7D+VDM0GQ7CVhfxld0MT66iEEwGqU+XnAmi5bFqjn22L85W9fVXZW7IMSfWJ9T
	XUI+zEbIUhB8RiaZ6fddg/RtKp5jaP2vZg1QRg5WNgeAHP2Ixrnw8eUEoB9ETKA2
	M1p52z+mdIRgU4FIW7mwx6rLK2NYKABmFJMelJA2BDu6WtX8nPhkElITkFuw+Ir+
	q7l31eH/ItXMqwT84tH53XwCEYzRv5eYNZkc5XBh7KrqXmYzg5J3a5w3d6yVsZPX
	iZS+8GihNblIq6kFOr2Eyzk5+8PP0QQvLLUzpoIyN432Tl28GS4Ax+SVHaw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twcrnbjg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2240a960f9cso3060965ad.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:33:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744248826; x=1744853626;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/hbu+J38OslkyyaqUl3TD0hhOvybI072r0nxhEaLcKQ=;
        b=lV6p1Y/9jzKX9QOgTtW5SuQea1CmUMF8IDCB1a9XNYCsrlzJqOZB6grylHVtfFW09O
         U9EIGsb++td2NwKZlHXJJoNINsbsxQuUTIB4urC+Xnn7KDJxRmipkj3H8ECldUMYgY4q
         is3/YRll3iiolt4W1Mfv9mNtrO5cUW5mkLXIfOrUcCTS31eEh2IV3jmhxvIFKBXrZPR9
         sudPRuCCLIPREfnbn0puOpcFq712qol3oXRi4Y2GQY4yRY0/JZKnyLA8/gcdbyGb7SiM
         EDkk54MMpxFeqGI2gm0lUBP7erBIzgOi1bCx6tFTMOJBWvbj3PmwJZEXaNfVqa8P7QpY
         CRvg==
X-Forwarded-Encrypted: i=1; AJvYcCUd7Zln5rl+semcb4YZkx8lr/ES/XZJMbMHCF4HpoHRegadkkNfRmrCLYlWVSIh0ZAMbcs1WZUkhAf3@vger.kernel.org
X-Gm-Message-State: AOJu0YyGLfIsSfbAu3V+gsfTeHAG9vw2BRGlytkOpDqXlzuQgOtNOWIh
	uX4cvtD3Lm0E3CLXuiVxw1Gfg1LB7ZeozoO5TMtVMOfgt9WF2nC4t/EqyNjhKtknyp14J1n+H5h
	6F/IqUiM7hUOz47GfOmwrm61ni1N4oc2korPC6IqmJtIJ28CNshFIX7FZKZrU
X-Gm-Gg: ASbGncscaso9oROP/0mEwPTOonvVKmaAQsj0GMbIBP+/yvGWLlRkpXWOrF2aeM2Qc3p
	b5xQtUbdJ1iwTaWT1tXXx7P8gTiht6cS1t26C7CMvYXQf16a0z5xE1mO3eyJycysK+XD6GQTK2l
	OxzoW3sIcKJ1SBGGHQeeAEyfe99aJrAZaN3Qe71inG0XYzR9P8pBelfXtQu6RWYItYVmT68toXL
	sk9IhWCEdgJpMcz/xTyU8niZ+yf4qxdvhEIkJ8V6TpvqRgo5mrnp4aHfCRTcVkVgKrxGbP/Ms4v
	zc0eNngVERp95REF9er+vHC7SBkAZ6mo9rUfvvEhcOB8pUVKd8nyASBZohkYc+lK0nswFJI=
X-Received: by 2002:a17:902:d2ca:b0:223:5a6e:b2c with SMTP id d9443c01a7336-22b2edd2d5amr14924825ad.17.1744248826352;
        Wed, 09 Apr 2025 18:33:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbZM9pDJc+QEgclUt66GbWgtrAL7JKUny/wc6kcLIOC46cExebvjVHkQBn+tXU3uwE77c53w==
X-Received: by 2002:a17:902:d2ca:b0:223:5a6e:b2c with SMTP id d9443c01a7336-22b2edd2d5amr14924405ad.17.1744248825829;
        Wed, 09 Apr 2025 18:33:45 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb596sm18801815ad.220.2025.04.09.18.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 18:33:45 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 1/5] coresight: tmc: Introduce new APIs to get the RWP offset of ETR buffer
Date: Thu, 10 Apr 2025 09:33:26 +0800
Message-Id: <20250410013330.3609482-2-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
References: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: MQzy7fr9vy8h69a1BUdGzPSD0-kPDZUL
X-Authority-Analysis: v=2.4 cv=QuVe3Uyd c=1 sm=1 tr=0 ts=67f71ffb cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=QSMfYRlErQPllaMuWGUA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: MQzy7fr9vy8h69a1BUdGzPSD0-kPDZUL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 spamscore=0 malwarescore=0 mlxlogscore=861 bulkscore=0 priorityscore=1501
 clxscore=1015 phishscore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100010

The new functions calculate and return the offset to the write pointer of
the ETR buffer based on whether the memory mode is SG, flat or reserved.
The functions have the RWP offset can directly read data from ETR buffer,
enabling the transfer of data to any required location.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 62 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  1 +
 2 files changed, 63 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index 76a8cb29b68a..ed8a89fcd3fc 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1236,6 +1236,68 @@ void tmc_etr_disable_hw(struct tmc_drvdata *drvdata)
 	drvdata->etr_buf = NULL;
 }
 
+static long tmc_etr_flat_resrv_get_rwp_offset(struct tmc_drvdata *drvdata)
+{
+	dma_addr_t paddr = drvdata->sysfs_buf->hwaddr;
+	u64 rwp;
+
+	rwp = tmc_read_rwp(drvdata);
+	return rwp - paddr;
+}
+
+static long tmc_etr_sg_get_rwp_offset(struct tmc_drvdata *drvdata)
+{
+	struct etr_buf *etr_buf = drvdata->sysfs_buf;
+	struct etr_sg_table *etr_table = etr_buf->private;
+	struct tmc_sg_table *table = etr_table->sg_table;
+	long w_offset;
+	u64 rwp;
+
+	rwp = tmc_read_rwp(drvdata);
+	w_offset = tmc_sg_get_data_page_offset(table, rwp);
+
+	return w_offset;
+}
+
+/**
+ * tmc_etr_get_rwp_offset() - Retrieving the offset to the write pointer.
+ *
+ * @drvdata: driver data of TMC device.
+ *
+ * Retrieve the offset to the write pointer of the ETR
+ * buffer based on whether the memory mode is SG, flat or reserved.
+ *
+ * Return w_offset of the ETR buffer upon success, else the error number.
+ */
+long tmc_etr_get_rwp_offset(struct tmc_drvdata *drvdata)
+{
+	struct etr_buf *etr_buf;
+	long w_offset;
+
+	if (WARN_ON(!drvdata) || WARN_ON(!drvdata->sysfs_buf) ||
+	    WARN_ON(drvdata->config_type != TMC_CONFIG_TYPE_ETR))
+		return -EINVAL;
+
+	etr_buf = drvdata->sysfs_buf;
+	/* Disable the ETR if it is running */
+	if (coresight_get_mode(drvdata->csdev) != CS_MODE_DISABLED)
+		__tmc_etr_disable_hw(drvdata);
+
+	if (etr_buf->mode == ETR_MODE_ETR_SG)
+		w_offset = tmc_etr_sg_get_rwp_offset(drvdata);
+	else if (etr_buf->mode == ETR_MODE_FLAT || etr_buf->mode == ETR_MODE_RESRV)
+		w_offset = tmc_etr_flat_resrv_get_rwp_offset(drvdata);
+	else
+		w_offset = -EINVAL;
+
+	/* Restart the ETR if the mode is not disabled */
+	if (coresight_get_mode(drvdata->csdev) != CS_MODE_DISABLED)
+		__tmc_etr_enable_hw(drvdata);
+
+	return w_offset;
+}
+EXPORT_SYMBOL_GPL(tmc_etr_get_rwp_offset);
+
 static struct etr_buf *tmc_etr_get_sysfs_buffer(struct coresight_device *csdev)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 6541a27a018e..945c69f6e6ca 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -442,5 +442,6 @@ void tmc_etr_remove_catu_ops(void);
 struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode, void *data);
 extern const struct attribute_group coresight_etr_group;
+long tmc_etr_get_rwp_offset(struct tmc_drvdata *drvdata);
 
 #endif
-- 
2.34.1


