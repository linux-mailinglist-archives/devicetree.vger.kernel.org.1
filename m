Return-Path: <devicetree+bounces-215851-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E64B52D6A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 11:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8248FA802ED
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 09:37:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05D8F2EA744;
	Thu, 11 Sep 2025 09:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fhj/0SiU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 271182EA735
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757583459; cv=none; b=jxJ5MS1DV4YWuaF9gS2j8tPcGTt6uHSYaodaacGhz0jQzbSPBDAORE6w1pOlZk5OgY/3F1SXRa4R0+1ZdsuKORkRQNbl0cSdbdjxBK3OW6k40dQxr7NqFbjdZ/VX64YZWpZ7ynNNkbFfUSPYglmE4cdzMxB3KZY1HYEiJt5cyho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757583459; c=relaxed/simple;
	bh=v23xmem2Bt+Tgm+51X3S8Idk7oSeK94L/FuNsCG9NiI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TaPXRu/1gIIBzUEyea7ryPoNFtscR9yH3U34Aeq8kMRSnVrxzWqUKZ0whKc+dEVgeNGFHpgPUXHjLPIJrA1uIvJHuIL176D/0QuHUbluYIsyLCpUE6Q4ZTxtspZ7YkQ4czbWABLiR1FUUUfNG3P4YWHpzexcjVgUMxd6S/MHiCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fhj/0SiU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58B8ViBx003681
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DP7hy6R/ajCWGii9N1NQ8UzWBIex0rIJ0tD9YQPKZFA=; b=fhj/0SiUIZgoPnck
	fENAT01gbp+3i9BSD0iehzs1R5I1D5khPGIkFoROj0F+D2YAXlEIQEjjrQW0L8SW
	iIEe6oVnqQzU8m0Ar3vLh5dmSo+cP5uoLfmB937zUxasj694fAr2tif47K9lFbbU
	zL4ZyB9FUd15yecvYRgYfmFEBUR9GFmrIEaefXVi7Rdo4ol+cJK3bFDSXSzQ8Jwt
	FbSKvlDEca4XBYe7quDtXdPfWuhveK8wpD+cTde37SrO4AflcA77hph2UflE5UQc
	M9qzLlU9jDxmRZN+1zxPrAcmqi+suQ7U3LEupCRLwfK1i8YUWNAy2AwNT2NfSlUy
	ajD5Ig==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 493tyxr6yr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 09:37:36 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4fc06ba4c1so491576a12.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 02:37:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757583455; x=1758188255;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DP7hy6R/ajCWGii9N1NQ8UzWBIex0rIJ0tD9YQPKZFA=;
        b=BNi2/a6ZQhB26Ll+4cI+HxpskYm0Yj76HJFOJ+gIMJNLaIBDwMbwEtGqvGvBCaYBC7
         RFKCatGRYuk9MiYyV+FveXeL0G7t6YOPPRkVQToLVloUuxTbIMQ3SZeOPEarfRopYILH
         ONbdvyagU+BLlwnd44xsiAKfgnIJymUASf21JxnwyoqUBeqnFODPcP8i1NsHuQ8JuR9N
         s/g0Ct7BGU68DUm4oXpNrmm5pToTzJEhWOt8NKBxfDxqJL9or3rtZu6AQVraaJNp+tIA
         HwHMAKc2rFGPoz96la3cILFCNbBD4abCv5jvWuXJgdscW95H9ZbZSl1ePJJKlsJvnAtA
         7TgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWav5Jefu4P3p+ftCuBp2zYdImnUw5O4nilcqUG2X0f6YjyQas3JMDHRxd1l1GOa8ZE1PhWITvfzK0r@vger.kernel.org
X-Gm-Message-State: AOJu0YyjGXyJqgcvy0CPUA2lONIB5+pnLNW4hzL6GTsbCYUpkbiqJ3Ot
	6ag78pwDpSIYaQTb9QoYv8FksIJCUrbYXkE77XachwSBLmNFtycEN79ANnaFjeuE1YGLFLOsBPb
	NCRCztdmXtU6huekCY7b0McJPkW7Cl+YQvYnomR/ePZOwCGL5A+nFFG8PhA2YDLLF
X-Gm-Gg: ASbGncsB4VHUkzAR+Ody7XB7acVav3G5wDnFs8NM9H+KiN0ttf2TjUFSs9DTBKLQUmj
	RyhlB1zlchlBZaDlI91+ZsliXA1yyzNKywDmiGa1QI1aAOnZyo0QpNjdraiTLDaMn01lVpqcmfN
	NNDVm1xmAlK5Pocy6JiArOG7AvqPLYY6Z282OMgY3prSc2TvA43SKzblZaFGw1c+wa9COIz/9dg
	NWU3jH50OJ94Yu/h6DO/shjBg55oW7xo4JAuhkHw9XDxVR9bVd4tXlPWOmnicHMVPpnIGZSXtr+
	TFVg2TEhoCSb3yo8gwgWa8tiQVWTb6fkyMWbCwqS/xwzeMzEs7crU25RMSaulfCQsfjdv7lBARO
	9EAuYm0ORI2cj/wdOIrcxzfFTWPk=
X-Received: by 2002:a05:6a20:12c2:b0:24d:d206:6992 with SMTP id adf61e73a8af0-2533fab21e2mr24980708637.22.1757583455466;
        Thu, 11 Sep 2025 02:37:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMAT+mtv4V4eOOakGYoWzIg2DcLqJbZNqjT7jnekLGX1TDeiDnbQSIzgOPBjdtR946Xnyevw==
X-Received: by 2002:a05:6a20:12c2:b0:24d:d206:6992 with SMTP id adf61e73a8af0-2533fab21e2mr24980677637.22.1757583454959;
        Thu, 11 Sep 2025 02:37:34 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7760793b730sm1512930b3a.15.2025.09.11.02.37.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 02:37:34 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 17:36:57 +0800
Subject: [PATCH v2 2/3] coresight: tpdm: add static tpdm support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-add_static_tpdm_support-v2-2-608559d36f74@oss.qualcomm.com>
References: <20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com>
In-Reply-To: <20250911-add_static_tpdm_support-v2-0-608559d36f74@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757583439; l=8786;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=v23xmem2Bt+Tgm+51X3S8Idk7oSeK94L/FuNsCG9NiI=;
 b=wYRgTWtOkKC5c8t1jXzCYs9vFEvjmwmgF1Oocuxz+CL/Zdyt9EbbhXGXKAsRb6w9ZflPIAQ4g
 YRNvTPq4vs0DnvByr9M+o7H+pfqrmNE4sCiw3Bweqfeih6AulDpGELK
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-ORIG-GUID: y9C2z3PK622yHQbaPbkBgoZ3jtdvWD6-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTExMDA3NCBTYWx0ZWRfX3+Cy2juxUAIt
 GXr424h/wt0XMGRzjMl9v/pFTFO/+IVJ8m68x6dR5wcc9jcCQuOfJqGk0+ebTXSDuhZe1GkaT4u
 zWqA86lJmvch9xOuRcNNz0HJUN7Fgr1r8pAgEg4Jz8ZwnWOgBPzhboZKVRiTDkhPpX+sOdXAvkB
 tjtXfDZR0vgvk88Ex/2QWggQx2d9hwQ/1d0FH67ATHaQ+9I7ZxQJFfvzU0LNqIPoc69S552Z4IK
 zPYPkRSnk+KhdNPoG7klWye+w2EEg8NLneHnCCOGVJmf9bRqpmCoUZLNpDu+jpCv7XuINsrV8+j
 3PtrqjygzfFpynTAIw68BOsVPJthEBMmDEqoO8xZUuJq2qmUd6dvtoKmEYJxvxdbXky8ug4d9VD
 QsUQGs14
X-Authority-Analysis: v=2.4 cv=VZn3PEp9 c=1 sm=1 tr=0 ts=68c29861 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_wMi7B_O7ukW3LTXVV0A:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: y9C2z3PK622yHQbaPbkBgoZ3jtdvWD6-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-10_04,2025-09-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 adultscore=0 suspectscore=0 bulkscore=0
 spamscore=0 impostorscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509110074

The static TPDM function as a dummy source, however, it is essential
to enable the port connected to the TPDA and configure the element size.
Without this, the TPDA cannot correctly receive trace data from the
static TPDM. Since the static TPDM does not require MMIO mapping to
access its registers, a clock controller is not mandatory for its
operation.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tpda.c |   9 ++
 drivers/hwtracing/coresight/coresight-tpdm.c | 148 +++++++++++++++++++++------
 drivers/hwtracing/coresight/coresight-tpdm.h |   8 ++
 3 files changed, 131 insertions(+), 34 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
index 333b3cb23685..4e93fa5bace4 100644
--- a/drivers/hwtracing/coresight/coresight-tpda.c
+++ b/drivers/hwtracing/coresight/coresight-tpda.c
@@ -68,6 +68,15 @@ static int tpdm_read_element_size(struct tpda_drvdata *drvdata,
 	int rc = -EINVAL;
 	struct tpdm_drvdata *tpdm_data = dev_get_drvdata(csdev->dev.parent);
 
+	if (coresight_is_static_tpdm(csdev)) {
+		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
+					      "qcom,dsb-element-bits", &drvdata->dsb_esize);
+		rc &= fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
+					       "qcom,cmb-element-bits", &drvdata->cmb_esize);
+
+		goto out;
+	}
+
 	if (tpdm_data->dsb) {
 		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
 				"qcom,dsb-element-bits", &drvdata->dsb_esize);
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.c b/drivers/hwtracing/coresight/coresight-tpdm.c
index 7214e65097ec..1766b0182819 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.c
+++ b/drivers/hwtracing/coresight/coresight-tpdm.c
@@ -495,7 +495,9 @@ static int tpdm_enable(struct coresight_device *csdev, struct perf_event *event,
 		return -EBUSY;
 	}
 
-	__tpdm_enable(drvdata);
+	if (!coresight_is_static_tpdm(csdev))
+		__tpdm_enable(drvdata);
+
 	drvdata->enable = true;
 	spin_unlock(&drvdata->spinlock);
 
@@ -551,7 +553,9 @@ static void tpdm_disable(struct coresight_device *csdev,
 		return;
 	}
 
-	__tpdm_disable(drvdata);
+	if (!coresight_is_static_tpdm(csdev))
+		__tpdm_disable(drvdata);
+
 	coresight_set_mode(csdev, CS_MODE_DISABLED);
 	drvdata->enable = false;
 	spin_unlock(&drvdata->spinlock);
@@ -1342,10 +1346,9 @@ static const struct attribute_group *tpdm_attr_grps[] = {
 	NULL,
 };
 
-static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
+static int tpdm_probe(struct device *dev, struct resource *res)
 {
 	void __iomem *base;
-	struct device *dev = &adev->dev;
 	struct coresight_platform_data *pdata;
 	struct tpdm_drvdata *drvdata;
 	struct coresight_desc desc = { 0 };
@@ -1354,32 +1357,33 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
 	pdata = coresight_get_platform_data(dev);
 	if (IS_ERR(pdata))
 		return PTR_ERR(pdata);
-	adev->dev.platform_data = pdata;
+	dev->platform_data = pdata;
 
 	/* driver data*/
 	drvdata = devm_kzalloc(dev, sizeof(*drvdata), GFP_KERNEL);
 	if (!drvdata)
 		return -ENOMEM;
-	drvdata->dev = &adev->dev;
+	drvdata->dev = dev;
 	dev_set_drvdata(dev, drvdata);
 
-	base = devm_ioremap_resource(dev, &adev->res);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
+	if (res) {
+		base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(base))
+			return PTR_ERR(base);
 
-	drvdata->base = base;
+		drvdata->base = base;
+		ret = tpdm_datasets_setup(drvdata);
+		if (ret)
+			return ret;
 
-	ret = tpdm_datasets_setup(drvdata);
-	if (ret)
-		return ret;
+		if (drvdata && tpdm_has_dsb_dataset(drvdata))
+			of_property_read_u32(drvdata->dev->of_node,
+					     "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
 
-	if (drvdata && tpdm_has_dsb_dataset(drvdata))
-		of_property_read_u32(drvdata->dev->of_node,
-			   "qcom,dsb-msrs-num", &drvdata->dsb_msr_num);
-
-	if (drvdata && tpdm_has_cmb_dataset(drvdata))
-		of_property_read_u32(drvdata->dev->of_node,
-			   "qcom,cmb-msrs-num", &drvdata->cmb_msr_num);
+		if (drvdata && tpdm_has_cmb_dataset(drvdata))
+			of_property_read_u32(drvdata->dev->of_node,
+					     "qcom,cmb-msrs-num", &drvdata->cmb_msr_num);
+	}
 
 	/* Set up coresight component description */
 	desc.name = coresight_alloc_device_name(&tpdm_devs, dev);
@@ -1388,34 +1392,51 @@ static int tpdm_probe(struct amba_device *adev, const struct amba_id *id)
 	desc.type = CORESIGHT_DEV_TYPE_SOURCE;
 	desc.subtype.source_subtype = CORESIGHT_DEV_SUBTYPE_SOURCE_TPDM;
 	desc.ops = &tpdm_cs_ops;
-	desc.pdata = adev->dev.platform_data;
-	desc.dev = &adev->dev;
+	desc.pdata = dev->platform_data;
+	desc.dev = dev;
 	desc.access = CSDEV_ACCESS_IOMEM(base);
-	desc.groups = tpdm_attr_grps;
+	if (res)
+		desc.groups = tpdm_attr_grps;
 	drvdata->csdev = coresight_register(&desc);
 	if (IS_ERR(drvdata->csdev))
 		return PTR_ERR(drvdata->csdev);
 
 	spin_lock_init(&drvdata->spinlock);
 
-	/* Decrease pm refcount when probe is done.*/
-	pm_runtime_put(&adev->dev);
-
 	return 0;
 }
 
-static void tpdm_remove(struct amba_device *adev)
+static int tpdm_remove(struct device *dev)
 {
-	struct tpdm_drvdata *drvdata = dev_get_drvdata(&adev->dev);
+	struct tpdm_drvdata *drvdata = dev_get_drvdata(dev);
 
 	coresight_unregister(drvdata->csdev);
+
+	return 0;
+}
+
+static int dynamic_tpdm_probe(struct amba_device *adev,
+			      const struct amba_id *id)
+{
+	int ret;
+
+	ret = tpdm_probe(&adev->dev, &adev->res);
+	if (!ret)
+		pm_runtime_put(&adev->dev);
+
+	return ret;
+}
+
+static void dynamic_tpdm_remove(struct amba_device *adev)
+{
+	tpdm_remove(&adev->dev);
 }
 
 /*
  * Different TPDM has different periph id.
  * The difference is 0-7 bits' value. So ignore 0-7 bits.
  */
-static const struct amba_id tpdm_ids[] = {
+static const struct amba_id dynamic_tpdm_ids[] = {
 	{
 		.id	= 0x001f0e00,
 		.mask	= 0x00ffff00,
@@ -1423,17 +1444,76 @@ static const struct amba_id tpdm_ids[] = {
 	{ 0, 0, NULL },
 };
 
-static struct amba_driver tpdm_driver = {
+MODULE_DEVICE_TABLE(amba, dynamic_tpdm_ids);
+
+static struct amba_driver dynamic_tpdm_driver = {
 	.drv = {
 		.name   = "coresight-tpdm",
 		.suppress_bind_attrs = true,
 	},
-	.probe          = tpdm_probe,
-	.id_table	= tpdm_ids,
-	.remove		= tpdm_remove,
+	.probe          = dynamic_tpdm_probe,
+	.id_table	= dynamic_tpdm_ids,
+	.remove		= dynamic_tpdm_remove,
 };
 
-module_amba_driver(tpdm_driver);
+static int tpdm_platform_probe(struct platform_device *pdev)
+{
+	struct resource *res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	int ret;
+
+	pm_runtime_get_noresume(&pdev->dev);
+	pm_runtime_set_active(&pdev->dev);
+	pm_runtime_enable(&pdev->dev);
+
+	ret = tpdm_probe(&pdev->dev, res);
+	pm_runtime_put(&pdev->dev);
+	if (ret)
+		pm_runtime_disable(&pdev->dev);
+
+	return ret;
+}
+
+static void tpdm_platform_remove(struct platform_device *pdev)
+{
+	struct tpdm_drvdata *drvdata = dev_get_drvdata(&pdev->dev);
+
+	if (WARN_ON(!drvdata))
+		return;
+
+	tpdm_remove(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+}
+
+static const struct of_device_id static_tpdm_match[] = {
+	{.compatible = "qcom,coresight-static-tpdm"},
+	{}
+};
+
+MODULE_DEVICE_TABLE(of, static_tpdm_match);
+
+static struct platform_driver static_tpdm_driver = {
+	.probe		= tpdm_platform_probe,
+	.remove		= tpdm_platform_remove,
+	.driver		= {
+		.name	= "coresight-static-tpdm",
+		.of_match_table = static_tpdm_match,
+		.suppress_bind_attrs = true,
+	},
+};
+
+static int __init tpdm_init(void)
+{
+	return coresight_init_driver("tpdm", &dynamic_tpdm_driver, &static_tpdm_driver,
+				     THIS_MODULE);
+}
+
+static void __exit tpdm_exit(void)
+{
+	coresight_remove_driver(&dynamic_tpdm_driver, &static_tpdm_driver);
+}
+
+module_init(tpdm_init);
+module_exit(tpdm_exit);
 
 MODULE_LICENSE("GPL");
 MODULE_DESCRIPTION("Trace, Profiling & Diagnostic Monitor driver");
diff --git a/drivers/hwtracing/coresight/coresight-tpdm.h b/drivers/hwtracing/coresight/coresight-tpdm.h
index b11754389734..9f52c88ce5c1 100644
--- a/drivers/hwtracing/coresight/coresight-tpdm.h
+++ b/drivers/hwtracing/coresight/coresight-tpdm.h
@@ -343,4 +343,12 @@ struct tpdm_dataset_attribute {
 	enum dataset_mem mem;
 	u32 idx;
 };
+
+static inline bool coresight_is_static_tpdm(struct coresight_device *csdev)
+{
+	struct device_node *node = csdev->dev.parent->of_node;
+
+	return (csdev &&
+		of_device_is_compatible(node, "qcom,coresight-static-tpdm"));
+}
 #endif  /* _CORESIGHT_CORESIGHT_TPDM_H */

-- 
2.34.1


