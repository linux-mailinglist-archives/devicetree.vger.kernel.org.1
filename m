Return-Path: <devicetree+bounces-199710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EABCB11BD6
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C30A1CE1705
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:12:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A4D72E7BBE;
	Fri, 25 Jul 2025 10:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HluR3SDN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F2A2E889F
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438116; cv=none; b=isVC9jIGO2RlK6IeL1EB38zZjRjxlpUufpEv7A/aO04P3Ogesa8WM7cepDsS6lwTeNnffSpL7Q55nMxEDGgFKHIUu2pWGvggUfEohmKq4NFQ5EYjid0Oz6EhQqVwtdJPoox6q8pl8FGLdo2UeBJf/AoW+a3lrm/4edtd2KU4IXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438116; c=relaxed/simple;
	bh=ZyHMvwBUF1pkw7TFx7KinmvBHACKhGKFo+vYI2gFjpU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=bm5fD0hwZYvl7yc9ICTeevHbFFGoU/PI/0Aq8VBEo+W66BOiAVfNKcKhAi3VWuGEKHzrlYoC05B1LMsa1yPuCerVo2dzrCW/KXmq4bU0PYRVNm9nDVyQgy365sYyXqO9DjkQip9mWs6NOr5zZ/PA8SN6HGauqFMznEFD1hLLLDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HluR3SDN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9TEOU025806
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=2YqOEgeLutS
	X9CVrpfaHefC+VimpWLWmNeizWKJy0PM=; b=HluR3SDNJWRBzEi0txvIu96SH43
	eH3L0CjTahw9/r6tkys2e8YoDzF1hOgQxI92V1SobmDf7/b9DUUZ5+3PPtRGSC4R
	5n9WsM4YWCwLxhqDrcwS7k3NQuK/QCMSs1/3PRkee2Akw/I8dkuEcEGQMKm7lp/M
	WMlDy6JnzjDYgYCx54faUfqxXnCLRVyKL1HxnJjMusY/j46fqta0zh1FIPhtIQSS
	aYrbVOUhaUcUqYTkGX2emBzyb2uNH/TPiXcUWIw8uh6VAUmesY97fVPABLQlH9t7
	ox7+4mP+BcgpE6I8GtdqU8MLKlXBXeMGUqJZdc7EySpMx9nRIccij+mXGOw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w30snd6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:33 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-234906c5e29so25277925ad.0
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:08:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438112; x=1754042912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2YqOEgeLutSX9CVrpfaHefC+VimpWLWmNeizWKJy0PM=;
        b=uFJ+Lsc6pFpizF1eh6cBYxdyFIlTg10FE5UNnJD9p7CXqS44Q7Ir5TFzAYTo6bL5o2
         +oNpptjk/CQ9viNiktRYR8BEpIFau9DpbVkMj+T2fcWHOSKuQs0vrIBKV9E0vPCyuWZN
         aswBbjgSprrFFu9eBoGd8INs/FBLpBEDP5xbzA5yRT2BQEzGKCEVkURyggaSj++wEtNJ
         jQ3MPXsx8b6zV3nGLTw/KFqgu4Dr/vtsizWplhNexE7cBxyCDfdrx0CTLeKDN3QqjZ8P
         JuJk0+BTMAHL1EXZXrtLf9ijEA1zOH8yABKtzhVNo2LI9KukVAe9ldRce9t1M9iNCTEj
         0KPg==
X-Forwarded-Encrypted: i=1; AJvYcCWnAt6bJwJi2BlK44CutI6K2wmm93d0YOF2XaF0mCN2M6UmF2cAg/GP2adUQz1BcI4AaonCoh7f1nOx@vger.kernel.org
X-Gm-Message-State: AOJu0YxOSI/9d8k8LQzwCHRjHEq2hwOgC/OfK6dftigNxYN3z9G9mzl8
	ikQM0hjZa2eDs9/hT/mFsR4VO0UR9oFuNQvFT+TeVIsn0Hd7s9fBeXDzRBJUQ1PJHcBLiUcIpKX
	e9MiEYG8Qkn/dWQZwxcqG1fVR+DNaHFrvAhY0oIg2UumNvbaoCybLeSmRf+tnjyIO
X-Gm-Gg: ASbGncsJ4ZCrY1LWa4Ycpw2JDyNTf4Szbqxj8Uyoo+PLIR0zuCoIhGZOhsL3vTRfBaW
	ea0DLhhHVBd7jj9VkzTI3LFHXaeJHW1QIeriMqnDW+KiGvvIqABCj7E5Va4gUIz3/Oy17tqVKk1
	3QXszStptUnJeonmUdzcrG/XHRZlK9jTVJN9fJlE4f10OOA5VRqcjqcW7IC56aGxScBElXSOCxY
	3cwgyfvLiBUpIbYH3BdQq+f+mdFurnsVjONwWHPntFSHio1wNHRpTqeRLAtODLc7XHllByBnzL4
	fpuHn2gMi5cVZ59zuoPBFBzDzO9F4wwKZtBjRS2Z8itH6hDkXKGbKGrtLlHp5N8eLYqoshxQadT
	bGf7l+3WHWAyBEMLkQNs=
X-Received: by 2002:a17:902:db0f:b0:237:ec18:eae3 with SMTP id d9443c01a7336-23fb2fd1baemr22232955ad.4.1753438111484;
        Fri, 25 Jul 2025 03:08:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOLZD8/aDWH2qNW5NVOA0ligfQYzNPA7Lh5E8L4mgDT12NfGE3Hpw1sW1jO1CVrShjGA/02Q==
X-Received: by 2002:a17:902:db0f:b0:237:ec18:eae3 with SMTP id d9443c01a7336-23fb2fd1baemr22232445ad.4.1753438111056;
        Fri, 25 Jul 2025 03:08:31 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:30 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <quic_jiegan@quicinc.com>
Subject: [PATCH v4 04/10] coresight: tmc: add create/delete functions for etr_buf_node
Date: Fri, 25 Jul 2025 18:08:00 +0800
Message-Id: <20250725100806.1157-5-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=WtArMcfv c=1 sm=1 tr=0 ts=688357a1 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ILCX3kR9VMWRWyEhewYA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: DEWuhq5EnpPc5v7IL2tMTu_Jzk5js1st
X-Proofpoint-ORIG-GUID: DEWuhq5EnpPc5v7IL2tMTu_Jzk5js1st
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NSBTYWx0ZWRfX1M2U0jfj5MQi
 llYzdNZ9OpWf3YBns9urX+l2wwbbdzDSesqdVle0RO2epxjBOqVZpy6ws3ysXvePVpAnWzXfNsb
 uPgbkZkNNO64eLEO59Rsssd77uEhAlDxy9Uk5fM0FBoLliKFkLGbhTXNWSekmccFzH7FDXT01dM
 8vt/MMJCdk63vNrWHyt1SxvJ4nPNnodWqFoR6iiOnXz9/S5bTmEOMNVkboSE5OuBNnPXBNxoAwe
 GR/nrzG2Dfx48073d0q5JyP79vFkQ1ss5lLmuFpt2XxuvKRw3p5G50bxxqBA9l3kw3cVddGPYSb
 cvRe7nBBu6LjZL60sptyAGAstO/8oQYsQOHOMdr6CaYAwlfE+cqsqGW3ONDCbnNsE9+1I/8YuAI
 QPEbFn4E/X9WfdoY8nuvtF+SEt4Ic3NYIRQ/ny6oXteKeeZbQWC/sfQ3v6pajhjDlwpVwEOB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 clxscore=1015 mlxlogscore=999 suspectscore=0 malwarescore=0
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250085

Create and insert or remove the etr_buf_node to/from the etr_buf_list.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 65 +++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  2 +
 2 files changed, 67 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index b07fcdb3fe1a..e8ecb3e087ab 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1909,6 +1909,71 @@ const struct coresight_ops tmc_etr_cs_ops = {
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
+ * tmc_create_etr_buf_node - create a node to store the alloc_buf and
+ * insert the node to the etr_buf_list. Create a new buffer if the
+ * alloc_buf is NULL.
+ * @drvdata:	driver data of the TMC device.
+ * @alloc_buf:	the buffer that is inserted to the list.
+ *
+ * Return 0 upon success and return the error number if fail.
+ */
+int tmc_create_etr_buf_node(struct tmc_drvdata *drvdata, struct etr_buf *alloc_buf)
+{
+	struct etr_buf_node *sysfs_buf_node;
+	struct etr_buf *sysfs_buf;
+
+	if (!alloc_buf) {
+		sysfs_buf = tmc_alloc_etr_buf(drvdata, drvdata->size, 0, cpu_to_node(0), NULL);
+		if (IS_ERR(sysfs_buf))
+			return PTR_ERR(sysfs_buf);
+	} else
+		sysfs_buf = alloc_buf;
+
+	sysfs_buf_node = kzalloc(sizeof(struct etr_buf_node), GFP_KERNEL);
+	if (IS_ERR(sysfs_buf_node)) {
+		if (!alloc_buf)
+			tmc_free_etr_buf(sysfs_buf);
+		return PTR_ERR(sysfs_buf_node);
+	}
+
+	sysfs_buf_node->sysfs_buf = sysfs_buf;
+	sysfs_buf_node->reading = false;
+	if (!alloc_buf)
+		sysfs_buf_node->is_free = true;
+	else
+		sysfs_buf_node->is_free = false;
+	list_add(&sysfs_buf_node->node, &drvdata->etr_buf_list);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(tmc_create_etr_buf_node);
+
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 52ee5f8efe8c..3cb8ba9f88f5 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -461,5 +461,7 @@ void tmc_etr_remove_catu_ops(void);
 struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode, void *data);
 extern const struct attribute_group coresight_etr_group;
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
+int tmc_create_etr_buf_node(struct tmc_drvdata *drvdata, struct etr_buf *alloc_buf);
 
 #endif
-- 
2.34.1


