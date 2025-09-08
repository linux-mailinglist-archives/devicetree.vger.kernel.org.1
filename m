Return-Path: <devicetree+bounces-214099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DF773B48266
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 04:03:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B36C2189E485
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 02:04:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7B9421CFEF;
	Mon,  8 Sep 2025 02:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QwrBeEeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C511E04AD
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 02:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296969; cv=none; b=XMVhrRXdmIVtG+SNQsSComx6kyrGNa/TBNegn3h6iAqoUO4tps5wNa2Ugs/mKh9kWjuGqlSBgbyuuky9afiedZ1jJUBXCK8xT0VDlSLse8kjkjUNnH5nKnDzNyQ6cHksmh5caJuWWBND0PWrQYe7ORpgYZuP4K5YW2xipN5cW0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296969; c=relaxed/simple;
	bh=9ZOyPv6bhMLRODUqaJ5ztJAwxo4d0yjUaaXYVxTCAts=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DN1TZCTb5VZi58fe9sz8Qi9sJpw1iD1Cx3XGTC7R2EVepbCAyVaKuFgjh9CVeGovXVTmJCsrYfZvZsLViypPq+YmCkBWW9yB4/mdkFDhJIB6lB511dAbH8q1anueHcZOa7W8gQlyPJGgZbfPd5UO/mOTaRuHLJZgkuhEVYklSV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QwrBeEeg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587Nd5Zs027446
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 02:02:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sa1G+6fQ53tFpugkuIt/tI8SnQtTsLjqcg2Jm4DIfOQ=; b=QwrBeEegAs9RlE3n
	Md82rc2JVOOIPmeqSrHxqcWm/Ou/cYbUrlkMW2/oVBhgPo3loP31DiAhm4J0Ljc5
	TLdCW6k3FAkkDTHMbzK/a0ixRTzpErrs32YeiQVdZi3LzZGVM+Xw8sLdO5aSctOQ
	fXD2iFRexTZSqq3dF7cQLgVaHme9TYK0qPA1n8cqdy/CyoVGelVh3bxGHUiCVb41
	7nHrAoXBnNtmmyjxjqd7r6IHjBSmafSNcs9lYoZV7OdO5ElsCSJ7G7hzLLdUH/FI
	iCANYapDTbmNM53F9IVh3yf8iFMExfhFbv7HmX+m29mwzJm8PIIor0cuEvOHJUPs
	TIYr6A==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490d63aw6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:02:47 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7741f6b939dso2353257b3a.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 19:02:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757296966; x=1757901766;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Sa1G+6fQ53tFpugkuIt/tI8SnQtTsLjqcg2Jm4DIfOQ=;
        b=aAv3gOzDG9RT/c+951FuORzeJma/w1EselJLNaKWP5twN7/Fj+qqMkPUVe5PQRWJAP
         klppwDjvIDIyglBLkdF0FnZ0A9U9/pG7NeH5PzvnmLc3SPAQLVmah549sEVniXEYvuTf
         36qEtPccDtZMvAWyfSn65bFMLQO7S7Ej+M03jk0R7Xq4fmSvpGZALogC0s8m2QJIMYHy
         kS83XpLwR/k0yXPIWYJNn2DAa8LTAgATeaTJ/iObenex5+KX7SysZ3G4jsBlWVgWFVdD
         j/nuCuBQbmFBypp34KeuTGQocOq68iMNxOuLBXe3FtlX4EdqpYZpfh9iSsGYLIlCed2J
         yk1A==
X-Forwarded-Encrypted: i=1; AJvYcCUl3UmvD0NaXwJ+8NegVR0GtU0Je4bHD3KPQDbUvtEppxCG7gxCBSSf2fHpcEXCUG+jLPqTeHL11zKU@vger.kernel.org
X-Gm-Message-State: AOJu0YzRdVj+tP//Rpg5AUv5K5qiXenmEUkSilXVlAXvyQ0RqE/9PUf6
	Y8zdQ2HYslxQf4m9BbhHE2S1REn2eT2bkpZ8DF0haSfzRAGGCNOYSYvPfO3GTvk4+JhoGl34d6u
	blhcxgc1Pxij+u2rYU2EpsIPSu/XH+rFP3n/pU6gmTcVAvjiePVWeFHF3Kfg1aBXa
X-Gm-Gg: ASbGncsacOcpEwLHnQ3Ouh75yxiFf+G6k14oy1zpdFPVOU9Sa+/OU3pSmyuKkqgAnCC
	8yh3IzxRQqi/SEiXvICq7yxqEwQgmI0wRDkK3jb6yTX3+C2ezH08wvnqmKFsDEgQPRHnBTzQQ1P
	NvLbntryU9YhCZFLbojgjAfuD84XOEaT5+9ie4r8+rAijOhjRAwWllXTZzz10x4e1M0Qp1KeOV2
	w/V20hWhxobepe55TwFW6USUeWYyG9wi9L0d5kntBhqddJMY8uXay68EmhccwH0WjftOkthn3qr
	fMkw3YsV36TvlGNSvs2WvqAgrLUix6OSwN9xveoMMxM5EHgtjU9UpZFLV9tFx+wkSJiMQ+iybiu
	3gP1VbzznPnZWvLpUvOp5c8TRS7M=
X-Received: by 2002:a05:6a00:4650:b0:771:e5f3:8840 with SMTP id d2e1a72fcca58-7742e4a0b84mr6365778b3a.13.1757296966312;
        Sun, 07 Sep 2025 19:02:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEy9b5ueRmogyPXkCj4ZLin/RA5hSyK7llchgmHX3Cc/3cKAgWogXXGMxrbrLzv2ZohGQo4mQ==
X-Received: by 2002:a05:6a00:4650:b0:771:e5f3:8840 with SMTP id d2e1a72fcca58-7742e4a0b84mr6365735b3a.13.1757296965814;
        Sun, 07 Sep 2025 19:02:45 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723f4858e6sm24285076b3a.4.2025.09.07.19.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 19:02:45 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 10:01:56 +0800
Subject: [PATCH v6 4/9] coresight: tmc: add create/clean functions for
 etr_buf_list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-enable-byte-cntr-for-tmc-v6-4-1db9e621441a@oss.qualcomm.com>
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
In-Reply-To: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757296940; l=4084;
 i=jie.gan@oss.qualcomm.com; s=20240927; h=from:subject:message-id;
 bh=9ZOyPv6bhMLRODUqaJ5ztJAwxo4d0yjUaaXYVxTCAts=;
 b=Ext6XQLN/vl2Miak4a6zi3Ok0V3h/UEyTz5zaNVhvOcLYXMtifEtk3eMxF/scd+Y50Uy8GxSf
 KSShG160avQD2blhk4TJzYjiKYrGLH/EM2PNXbqrQAafCaUfoSk3nWR
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=OZh7JyRifqJh4xmrcGgmwa8/LCS8O11Q+mtx4aZGmi4=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyOSBTYWx0ZWRfX2XDw4ioMfMEY
 e105fQqUagSGABOiT7jIH34LureRaWp/fdXxEvl18pS6kZLT5J9VmvvLvLOQd4nUxQHo3rh9j8A
 lyAnXHfsg0sfEy4yq6ysS2Q3Wz7IZDUm1rDdiywO2fULZoSeue3oIZQ+6q734NIrM4kAuuerNXh
 FO6ejW3Abt+ZqqbW4vRK+DUBridDB9/9p5ILFrb9Y3V2oPnzHyRd/d7c4Yk11mN/mkGEKrRDcR/
 0IxQWJKvohoSN7e+iIJPdyXWrcb2i6zdNb8sQBM9ZSW+5lasgf+aX6VBbACO8jiGXyERSaSaf9W
 8FFDj7eNulu1fbWrWLTBuexrouWRvf1UE0oD5gMRJWC3rv/QEk7dPs2XpuOdaR0WLXUqPzp92bD
 aHx2Vd5O
X-Proofpoint-GUID: ExIMBFujK9uMHsHzVsZFDzSy03-pGTba
X-Proofpoint-ORIG-GUID: ExIMBFujK9uMHsHzVsZFDzSy03-pGTba
X-Authority-Analysis: v=2.4 cv=DYgXqutW c=1 sm=1 tr=0 ts=68be3947 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=iCabL5HRm4xHoUrnq98A:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_10,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 adultscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060029

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
index 292e25d82b62..ca0cba860d5f 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -459,5 +459,7 @@ void tmc_etr_remove_catu_ops(void);
 struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode, void *data);
 extern const struct attribute_group coresight_etr_group;
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes);
 
 #endif

-- 
2.34.1


