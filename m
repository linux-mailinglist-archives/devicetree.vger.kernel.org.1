Return-Path: <devicetree+bounces-225866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A054BD19AC
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 08:12:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3749D189032A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 06:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BAF2E4279;
	Mon, 13 Oct 2025 06:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GskPnNZc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062582E3AF1
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335912; cv=none; b=kw/nVSPGKRaGFS5e9Nf86SMsgGMnPW7Kt/69N3AYbxrjxzIpnYVjhUPnc591IjZOYQ8UR1z/+YOiNvawbBLIFe5rCJfKZ1N2MdAFUzjNpMG/7qJKXz89nLWUG9a+qFvZvuMR5uzAQeisWp9QN3HSw5k/uZDu6BmDw2Ljhi6vP3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335912; c=relaxed/simple;
	bh=v23xmem2Bt+Tgm+51X3S8Idk7oSeK94L/FuNsCG9NiI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E8uLDakz2S4E9XVbK22lHdBblAgISGhx+qiXB4nw2ZpgcFnw7T9LhdHW5fuLMo0r9WrPTctSB8xkBUSLVW2tPlDURLNshRCfVQ2RRMRj5PuEJkYDZztGE/LCCgogqT6mrhboMRXmoADScFy3zkUFz4K8LZCTeqBz4si9o8+cJo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GskPnNZc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nRve023125
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DP7hy6R/ajCWGii9N1NQ8UzWBIex0rIJ0tD9YQPKZFA=; b=GskPnNZctdjaf7O6
	CU7yKrlDhK4t8qe9JsL08HYWeQDTrKu6kiK18Cn21sNVz0hpcq01Yk02lGksA1cS
	621TwTl8hdqXxsZ2uSgP4qvR39zRrDJG1SQF4P8KjCj1dbaewZ47mROfXf0qve1D
	u0N2wiPdtDwOL813+U24ME/v5gEjA/29TzeGD4UkUJ4Xnh+ejpmLWRWBQcejyfMP
	AXXJYWtQmYV5Z1ijY0B5z4DyWrKR/geEyf9aqz/IjvD8zMiGbZXE963IwjxzNsx+
	2AyEpcVI+3eFVsMPksQSVs4xGGWsY8eskIkjU+cI+2XlsVoCf6AWQq4jQqaYZ+oA
	OIdqrw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgdfubqj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 06:11:49 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-268149e1c28so107420535ad.1
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 23:11:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760335908; x=1760940708;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DP7hy6R/ajCWGii9N1NQ8UzWBIex0rIJ0tD9YQPKZFA=;
        b=dpaWD30GgI1Vb/BRNQdG21oFe6dklr3zjaEvJbWGzSaH0InbMuEeumbTWdtKzdnHqy
         3tlAmNC+9rB5PQfAdf9ys2/C7UntPy6NVwAICkfF/vYhq0QdK2s+DEa2pir8ckNu4esB
         FndRS+Wh2qAdvEwcJ9McNNaEk2kf08uv4iTZHUN+x2rcXsY4WAC9ouA/gcDBRbgZ9O1Z
         S0SHGC+SdNI3G9NpVl54dASr/5et+FeeOsx5ixMGcgQzUOQzXVnrmte0PYfSg7FjjEd3
         gxG6J+ZSIeqmIKbBf1yMsQQb7TVSL6JRxx7xe70xnSLeQNKP06pTUZovvvq5E0/CEGAr
         DomA==
X-Forwarded-Encrypted: i=1; AJvYcCVRrFoe3Eg8jIKYw3ElwzkI9lrjyAYogwC5diuubEnhX2PR27ylV6vYNWG6EgxYT29cJ2fw+vcnTH48@vger.kernel.org
X-Gm-Message-State: AOJu0YwC0f3DtmPuyFtBej5wx6eWgSNf1MtYIE11PzIbiJ1v8rfVI8qV
	8NVfqgaOPy8hRuv0+8ynfRKIxbeK/gGHoNb7IAPsdfPXVPvsCpMC7GKIfKZyc773naT6HoweYh8
	6JFr/SwbREiHostdrcGky9iSsIRp8qM8OxvMVFJyGrZbj4EOHdk9qvheeyc0//lbr
X-Gm-Gg: ASbGncvh8U3sAsChUNuD+EoQ67Rs07ghAlPYllh0RtlN40Stw8+nTZKptmGeY3ejFzf
	LAsQmVavv3Y09ijNclRNETSpKiXcLSDFOLPXFvdIBf4x4vFYTl+nYT4f4Z8NM+OKZsFA1o6TUvT
	xrhVvzrX6hnpt66tXmbBptIX0jVj3iXBDDNGzOyloCDbdNOlbm3462qr470z7w9xNPDXVsDsJhI
	6a2Xo0K0yVWFGzpEexIelmfSnNem6wWMubgLDZNgXFiUaHj1PkjmQV4QfFC3fIn6yRY5/T7Gj0H
	4RkF0+MNNmqbQ1DbKSGgzq6AREbvTXvnZ+OZOsBFU1SdrzJcSGODUVNKFnWinvkaJGncZHxpyWI
	GgrNS4e54P+2ke/qTA8hv4iPaMho=
X-Received: by 2002:a17:903:2c03:b0:24c:d6c6:c656 with SMTP id d9443c01a7336-290272135a1mr212187275ad.4.1760335908092;
        Sun, 12 Oct 2025 23:11:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFY6acNW15tVg29tgNuFQ2MXt4pYANG2HEWYSImxUA3M6Pr6uqlTS+XBatwLXw062GF+q0KPQ==
X-Received: by 2002:a17:903:2c03:b0:24c:d6c6:c656 with SMTP id d9443c01a7336-290272135a1mr212186945ad.4.1760335907608;
        Sun, 12 Oct 2025 23:11:47 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2904f61a1desm64388675ad.82.2025.10.12.23.11.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 23:11:47 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 14:11:17 +0800
Subject: [PATCH v3 2/3] coresight: tpdm: add static tpdm support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-add-static-tpdm-support-v3-2-a720b73e83db@oss.qualcomm.com>
References: <20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com>
In-Reply-To: <20251013-add-static-tpdm-support-v3-0-a720b73e83db@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Tao Zhang <tao.zhang@oss.qualcomm.com>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760335892; l=8786;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=v23xmem2Bt+Tgm+51X3S8Idk7oSeK94L/FuNsCG9NiI=;
 b=yfr4C8+me/BPW2PCtcSD7ksxh4HEiJxv1Pr2Gx7Lpmn0NzjOA8LDrDmj/vCnXmzJQLxD6dBLc
 Xqf+4eHZSf4DlOf+BrdHhJ9bpgJbdnbMdCmRsj9tcQ03IRoj1BaUTqn
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNSBTYWx0ZWRfX6Yjuizc6SEni
 WbbkBCqwjQjuH1UIlJ6A9TMu4BBuNTtyS7q01kuK9++zOXcw9qcbuJzFr/1bdMkJWGwqkPlu2/r
 aTJtUGSptvDh7rbLOSR40xm004Dy1NDz3eoWJQhtYowhAdt/L2phBdR3fv+PEqe+aTvtgQSLbUY
 HHJmpn2Am0cPzeHcgKaBWSKRP9Z7PHqB2RU2Jj5D09BOTtg6PsmTemca1umTeMbY9kkhMogZmXe
 vkHnex/fh8ZWlh3MP/H4InV0NrfKYjO6lMNdttDZcbbWLQ4Aj2jLWxcQgkCRVpbftr5aQ9zVhut
 8BrNBoIEYbE/veuKyeR0dkTzqwOL8xv52XsrvPhfATKIw6g1jZLskRwa1p2o1AZzYsZEqsgf4x+
 x5/K2QXMxDf0o73rp4YUgU0OVY4kuA==
X-Proofpoint-GUID: fT_J2YXHOP83l-x44aP_wgHTDj-O7m4i
X-Proofpoint-ORIG-GUID: fT_J2YXHOP83l-x44aP_wgHTDj-O7m4i
X-Authority-Analysis: v=2.4 cv=J4ynLQnS c=1 sm=1 tr=0 ts=68ec9825 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=_wMi7B_O7ukW3LTXVV0A:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 phishscore=0 spamscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110025

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


