Return-Path: <devicetree+bounces-225842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 11250BD1846
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1C2BB4EB8CF
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:50:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 312FF2E092B;
	Mon, 13 Oct 2025 05:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L7M9vKm3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7871D2DEA76
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760334599; cv=none; b=s1Yo7uD10uweTpA9khe29j5ImuBNMhIplCEXDdvzambKLWDEDHU5B8s6G2CM3OwavaKpjgQ7T9ul8MfFEAIQMiVl3zcE+n5USFdBC78IN+Dv/APY9hagc+glVYv3YdOI2tVTqEqHuPQLjr75iFd3syy/7rU0IgBGuqwmOBhuXC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760334599; c=relaxed/simple;
	bh=L4bB/4x9HRGWluep/4LcqZEwsWYNFYbPF6SpnxWAKBg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=phJgPcHvPcyiJTh3BmV+ceJu2PXMJUKj+/Lhe8t1EzxlqN1btWDUSaZaVRuxEIe4DEM6s5HffnJ6Upp9JZM4LnOzgAb54Pbsx1Y+2qX2skCl64d/Z9R+HhNT4HM+ivi044YaR76iH5sFKdq7nb/5eIuvHYdMzenGYYjv/3VCgdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L7M9vKm3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59D2nUTG022356
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aYcq8RLq3GEaww9PDCIrz1x+sabd6SzQwWj1jmTGFa8=; b=L7M9vKm3cLrNv08R
	1/VekvKguheOHvohgBD6dEOGXH/aUf4ZolDD1AIwmnXQfUoayK16pAoE0XWlrydS
	MJTFtq3wXwziCFMVXxUl7rpId4JjOLpC9yKOV9jewd6DJAqhERzMCFqp5Mb9Yo5e
	IlSfa/462SEQ3lwkCAiFhBvQYqmR4w/zykaT+KqQViLsLc6VDP0K/A91AZ0ACwMU
	Me2AWp9AhxDJcmJJGw0MS0w/LjVQCy3ukTAh/Pw5SK2IZKO2ZTLOeux6brBOBmV7
	Aav7mAJXYkBqkcXlR/LYuZhWogO0YmQ7WGtgSBA2LdPgUjSgxwT+TJvKGpTVO5Md
	94/onA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qgh63a62-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:49:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so7323960a12.3
        for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 22:49:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760334596; x=1760939396;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aYcq8RLq3GEaww9PDCIrz1x+sabd6SzQwWj1jmTGFa8=;
        b=f/DTyFv3rwJBnSQOKWn0ShYY+vbgjv3dXdiEa2An4x0wPzVhIPkIhCEnnrnb6yvS5l
         NYV1lOQr/od3ddozcPYxU+Z7r7BULxoDKtXM3wzdZUByMfKrwpbbRQtoVJiS0HHtsvHD
         kC825tQtFzFUbd7lUzvo9mMjLsFMdn45StMtxHaXQ5xkJ+qf/N6rM/Zcl03LFxJp6aTs
         ooQoyE9H+01DOkN0lC9G7TOjpMaN3f2lsc3JXQ7KNFrzqvY86he1sJH1/daj07a2lWkA
         AEvTcrLV5rUR8pOMNLY0UYrg0VJqeP1jSf+p+9ET0hDEcJTGpjSXDwkh7lydg2aWi+4J
         /l0w==
X-Forwarded-Encrypted: i=1; AJvYcCXh5lFkDsMIlxUlft69/2Gq0Q1UwG9LDeCZUOk/VC+tn0oyXsghn4cj+RDOBqACb5Y6uYmpq11x5JJC@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5gotk601pXNuPP06beXH2JrpSL84NaQI5B4xHmJPgge3Bmeo+
	8BF55Btomo1gHdcz4U+AvU+3EaaRsaZIpX5nCsT47ba9qKSCiK04M7aPnnEo6K4ZlW7bx2ynsmR
	/efafM26j4U+u0Vw0Q2qRowai0V32Ds4tTm/jERKfcxKMRPySj3vNlqGUIt6IRcrm
X-Gm-Gg: ASbGnctu+f1IDppE0sT+t/kmKGujXKCMRmmobJmlL3Oj3mKBXkt/dy29UG+gXY713pi
	fPFGG+7e7qEI2VkDMBMEyWTS5JJaLt6KDNiQS0D/YZ/l4u908dr+NAS+SljPDzniWjE0VPxxyoM
	vUFiJ8fWi07Jg0ebqC3UiHwuqjEP7/q4ib+wc2eyqwRgSuiRewBy+A7Pyy61n0ev0Ma7GgELexd
	hgLC67Ubmqr6oLfY4sr2DIW+PXfb1lzcaarvCOoxvMVq2AvV/7/dzEz/AD7bhcqWFb9myqIrWpP
	Mu5+MzfP+Lswr9WOp96SWeoHtD7flkK1ue/In/pl130CxDgyC6QtlwPV+AfNvRtoOgn2lgQKdS6
	NfPZZJq4TA8RFhec1mGjqpyW5AfQ=
X-Received: by 2002:a05:6a20:7286:b0:249:ba7b:e361 with SMTP id adf61e73a8af0-32da8511961mr27030255637.49.1760334595860;
        Sun, 12 Oct 2025 22:49:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7LvePajPfCGBrDB3UBpDITIFqXGX2Q3RL9cwCvFyt4LKIBynMkXTnqxbMSG5t5Ee+JQLwOQ==
X-Received: by 2002:a05:6a20:7286:b0:249:ba7b:e361 with SMTP id adf61e73a8af0-32da8511961mr27030214637.49.1760334595339;
        Sun, 12 Oct 2025 22:49:55 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm10129898b3a.59.2025.10.12.22.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Oct 2025 22:49:55 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 13 Oct 2025 13:49:13 +0800
Subject: [PATCH v7 4/9] coresight: tmc: add create/clean functions for
 etr_buf_list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251013-enable-byte-cntr-for-ctcu-v7-4-e1e8f41e15dd@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760334567; l=4084;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=L4bB/4x9HRGWluep/4LcqZEwsWYNFYbPF6SpnxWAKBg=;
 b=hKsJBah/TFS6zLR53QjFr/ajQFFUd4v2fpkqyLlBaw5PA4yQViDQwvJ+UgUySjQUjd0rlOaLB
 XPLMactZz6nB1gij1laeF985/O8gBYK4dbrq5AZy0GsiMJLZgSa99iE
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Authority-Analysis: v=2.4 cv=H/zWAuYi c=1 sm=1 tr=0 ts=68ec9304 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=iCabL5HRm4xHoUrnq98A:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyNiBTYWx0ZWRfX2ltD1jPb/2ea
 5s+aLLl1JjECgQ9Qf0NkU0qM9iUr654rprNBSRSjWMkyn5ZD7tq+fwortEjNcwTW+kGHngbfvWu
 de2o/XtULT038AsuYBJbWBg8iRy6pigCD+NUHR8EKNZsnvdqQdzGdoPXYVlYmO4IZOKia8ZkCYo
 6u2LztVsAC2FjAzEaw8tRuVuzmQhZPJPbNKGnHzVSsQKGr1eeOVz1bQp1cFb8JPJV/IqqamPT9x
 9Vcod8qleN23zCGfn+VdLuntQ9Qoo3nCHFUbTLDpC/2rwC5CqpSsGu1Ykei/0qQ2Sgv+Zys07cd
 SYC36CS3aYD7zWOBttQRcEzRpkGtDD1YVWl8NVb614Dsuz2ue9O0SZ4xOfcbiTcTIK8Lrr2j2Rq
 LdqQ8bS7Yac100aeyfDBS6JHrCfekw==
X-Proofpoint-ORIG-GUID: gqk6BYmjKx0UipH69YOsbPYcLVNr-XTY
X-Proofpoint-GUID: gqk6BYmjKx0UipH69YOsbPYcLVNr-XTY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-13_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 priorityscore=1501 bulkscore=0 malwarescore=0
 clxscore=1015 impostorscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110026

Create and insert or remove the etr_buf_node to/from the etr_buf_list.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-etr.c | 94 +++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h     |  2 +
 2 files changed, 96 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index b07fcdb3fe1a..ed15991b3217 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1909,6 +1909,100 @@ const struct coresight_ops tmc_etr_cs_ops = {
 	.panic_ops	= &tmc_etr_sync_ops,
 };
 
+/**
+ * tmc_clean_etr_buf_list - clean the etr_buf_list.
+ * @drvdata:	driver data of the TMC device.
+ *
+ * Remove the allocated node from the list and free the extra buffer.
+ */
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata)
+{
+	struct etr_buf_node *nd, *next;
+
+	list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
+		if (nd->sysfs_buf == drvdata->sysfs_buf) {
+			if (coresight_get_mode(drvdata->csdev) == CS_MODE_DISABLED) {
+				drvdata->sysfs_buf = NULL;
+				tmc_free_etr_buf(nd->sysfs_buf);
+				nd->sysfs_buf = NULL;
+			}
+			list_del(&nd->node);
+			kfree(nd);
+		} else {
+			/* Free allocated buffers which are not utilized by ETR */
+			list_del(&nd->node);
+			tmc_free_etr_buf(nd->sysfs_buf);
+			nd->sysfs_buf = NULL;
+			kfree(nd);
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(tmc_clean_etr_buf_list);
+
+/**
+ * tmc_create_etr_buf_list - create a list to manage the etr_buf_node.
+ * @drvdata:	driver data of the TMC device.
+ * @num_nodes:	number of nodes want to create with the list.
+ *
+ * Return 0 upon success and return the error number if fail.
+ */
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes)
+{
+	struct etr_buf_node *new_node;
+	struct etr_buf *sysfs_buf;
+	int i = 0, ret = 0;
+
+	/* We dont need a list if there is only one node */
+	if (num_nodes < 2)
+		return -EINVAL;
+
+	/* We expect that sysfs_buf in drvdata has already been allocated. */
+	if (drvdata->sysfs_buf) {
+		/* Directly insert the allocated sysfs_buf into the list first */
+		new_node = kzalloc(sizeof(struct etr_buf_node), GFP_KERNEL);
+		if (IS_ERR(new_node))
+			return PTR_ERR(new_node);
+
+		new_node->sysfs_buf = drvdata->sysfs_buf;
+		new_node->is_free = false;
+		list_add(&new_node->node, &drvdata->etr_buf_list);
+		i++;
+	}
+
+	while (i < num_nodes) {
+		new_node = kzalloc(sizeof(struct etr_buf_node), GFP_KERNEL);
+		if (IS_ERR(new_node)) {
+			ret = PTR_ERR(new_node);
+			break;
+		}
+
+		sysfs_buf = tmc_alloc_etr_buf(drvdata, drvdata->size, 0, cpu_to_node(0), NULL);
+		if (IS_ERR(sysfs_buf)) {
+			kfree(new_node);
+			ret = PTR_ERR(new_node);
+			break;
+		}
+
+		/* We dont have a available sysfs_buf in drvdata, setup one */
+		if (!drvdata->sysfs_buf) {
+			drvdata->sysfs_buf = sysfs_buf;
+			new_node->is_free = false;
+		} else
+			new_node->is_free = true;
+
+		new_node->sysfs_buf = sysfs_buf;
+		list_add(&new_node->node, &drvdata->etr_buf_list);
+		i++;
+	}
+
+	/* Clean the list if there is an error */
+	if (ret)
+		tmc_clean_etr_buf_list(drvdata);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(tmc_create_etr_buf_list);
+
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 3a6484998530..4bfb3db44482 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -461,5 +461,7 @@ void tmc_etr_remove_catu_ops(void);
 struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode, void *data);
 extern const struct attribute_group coresight_etr_group;
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes);
 
 #endif

-- 
2.34.1


