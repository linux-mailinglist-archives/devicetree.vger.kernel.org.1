Return-Path: <devicetree+bounces-245744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AFACB4D85
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:13:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1697D3028F68
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:11:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D894222257E;
	Thu, 11 Dec 2025 06:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HTkJrmAr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="S3u14t3r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E6FC28C2A1
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433509; cv=none; b=YtdDoab/5LYUte4/wk1Apq3buZ/MsV3VHR69NK3OeWnBoVeJMPz4C7r2nGQsI5VBrcQPJvEf7SOOKNMIWObhtrTInYhIeCk41VvW948MmYGmoUzlupfFUTJ+Q0TQWlcuDxkF4qt48nHnL9cZDWFF2dBkIksjoCO3PHnUNvm4qTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433509; c=relaxed/simple;
	bh=DQTHwrw5ZG2QGJ8ed13ET3tSu6napM1SixB2aelNLzY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pQtyLE6TVxww0MpN4oE4rh+/UmUL3xHbejpzJKCVxCiFxasX/xuaRztDRFBSWR+2sqRMUg+Pv9C7mD9/SeumF/rPR732r5aQxbGYbQxtFvhRF+l9ah8BHOIBl81edlKaSAhIzOZ/OqAr/fdUXQYrqJzunuZV7WsvQwrkAFIyqFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HTkJrmAr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=S3u14t3r; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALROBx3701204
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yJrhvTjKt1gwCDmMIJvxf5jwPN8hV2K72Dpp7uCkoXc=; b=HTkJrmArXClaos7w
	JjNQ7XvcPeP15C4UtLIUu/Qe209BOCYhpdXS5z8zcKMZG1JHkeu/5sXDKKpFSyYB
	VWtNOeFGNA0h1qM2m9XthzunymYW1lJ8vh7NB5lhOSOM1H+k6GJcLrJoC7xKGepe
	iQZnu0vzw26jXpHIwo4FKW1DcL0pKEzLc0c5ruRAZxzod7LESH93B9st97j4ot35
	9Lo6n3gorcTQdu3rfAhMxxJO/EuYZgzB/SLpiGcI0PBjM1BplMWZZBpCjKJhLlHy
	sKhUcL85vynIU30/H649kOL0VdSsfAjbSJ2XTtKHJ6qwv5z45CIFyfa562TpXB9Q
	Iklxfw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aygsx17ve-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-297fbfb4e53so4346035ad.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 22:11:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765433506; x=1766038306; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yJrhvTjKt1gwCDmMIJvxf5jwPN8hV2K72Dpp7uCkoXc=;
        b=S3u14t3rfAeY2nmJJbzgx8v9VDkbr6YIwxl8EjoCpOiveOqpNkYZvB+r3+DEgFBct6
         kxj/AXbeIffgkCEJDZgeu91EJIqui7SMmcKhFC5z1m197FnL7dkZ40EcfBEHgyNWAkvq
         b5JMdPaZY1pbUxrEIIckTaJsyoHGZ3CqJmVVaOka8jSub74/H7giebqzyys8+EBlp0Qh
         IS8yl6WFstWOjwLhaF3+NDC3SqJ+Ioq0JXyGk0R6s9hAvswfppA56ulN09S7LSSuG0ry
         VO2A2CQU6BjHdV79bp+Sc+wmgC9GRs8rhWI3fMi2JLa1j8I2r0LRPcWo6kAG/YsQbs2a
         1nOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765433506; x=1766038306;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yJrhvTjKt1gwCDmMIJvxf5jwPN8hV2K72Dpp7uCkoXc=;
        b=YiAkzW29kJmXOrZo7hRa+wfSsxUXTMZn9JvoJKEoi2L5yvSTwWhliR7GwfZewcMP3W
         30uu+ObCizI8YwmtWxW09tXvzym9OxhNsLsNIA1baW4aqXj7RJmpHXJwcWN1SL9vPQoq
         KRahxe5tTgPcSJOyqQrFggrXIWoeW8sfEsm3bKSonMQrPXUMqTa+/g9ytJWcfmbdPpGd
         w0K1F/RFbh0NJvihfCLj9C9wgs9mPu76xT25vJRJRRtfuwk0p3DtYDH8kODWaBi9gwh3
         sNOSvEAZr+bKHZLcMdiWK7/adXtfrxz/N7/60+Qlcc/3J4DP3IcQjMzwSsr0jXiNGRgS
         RQ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXfXbSodTQJi4k5UOFwxRHnNdlR+lq+WvnlQegcGOZpPl54Vo62pL9/uKy8tpH+oRNN5Iu/qu/mxoke@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8jbZ738LuZNNu1QCe7uEVN4D/1i0fmm0cizuEG4RteIOEDboD
	9LVjKWrNGK69N7nIkmAAOf862GPOxSEjEA0eBjXEPysaajYchhJX0nh2MCd6KjgR2B04MleNPCF
	hVfCZBRQFI8xrFl8aDBS8+zjEOCZaxDPq6+Si7HRqeVDSUD8KhMu/AFTcEezthv5c
X-Gm-Gg: AY/fxX4PqxXv7h481tUeSMX4K1nm/9aOMfvpm6PdeGsK49ydEQ6a4UA5qtxRw4VgZuK
	JMznHVgHgFlCdkbR+sQNHD8KSnOr5qdc8Nj89efE+/InH1F2GOH72k9EUU8YCSaRMPZozNHwnmc
	kDnYeatXeY5xnoSEd/5jhRt3we+hqdNc3gV9O+MsgbgLuqZnLxCc5D8vx92Z2N+mXgWWYfH2GCQ
	lslgtgrPXr+yZpTHXHGizmcC4PaelVJ/Sr4t6Z++8FeAfrNHrLHRYAfBMHQ6mhkMtCiDjc5P9X4
	cmfW/lBIwOx7n/3/KrRAUw+bAr2KSet9ge6M3EflFvaGmq0AwhF71bE+7Y4zN11GLCjS70XGveK
	WO2v0T5ZNLcMGi74b8SVqybSfC6q17eKeFc1VZpLYSQLeq9kB/g7aXAdsvq3Up0zjwKwcLT5H
X-Received: by 2002:a17:902:f78a:b0:29e:9407:a8c6 with SMTP id d9443c01a7336-29ec21c39fbmr55048665ad.0.1765433505714;
        Wed, 10 Dec 2025 22:11:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGmhJey7P5OEZrYWh7Wf9CUrfd97GYN8XgIXtdEl7Uj684vfnW3hEsU0thBw5cWALdWdhY73g==
X-Received: by 2002:a17:902:f78a:b0:29e:9407:a8c6 with SMTP id d9443c01a7336-29ec21c39fbmr55048425ad.0.1765433505189;
        Wed, 10 Dec 2025 22:11:45 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea065186sm11725945ad.89.2025.12.10.22.11.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 22:11:44 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:10:42 +0800
Subject: [PATCH v8 3/8] coresight: tmc: add create/clean functions for
 etr_buf_list
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-enable-byte-cntr-for-ctcu-v8-3-3e12ff313191@oss.qualcomm.com>
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
In-Reply-To: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765433484; l=6191;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=DQTHwrw5ZG2QGJ8ed13ET3tSu6napM1SixB2aelNLzY=;
 b=KHUcIR//SRmrw3mm6deFgt+0KSEPsXQ3gzPI5c/pvQ5SC3KRSF/PqAfEsQTtz2AiWcOvmgPp5
 FqXVtMzprI+A6OZK9SX1hmRkFq6IH659oF6mhec6Rh67Sj3zmGYKGd2
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: Jsbi0OZ-r1sRnXEcHAwatp7QnllVbDUF
X-Authority-Analysis: v=2.4 cv=d974CBjE c=1 sm=1 tr=0 ts=693a60a2 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=AScg1gZdVb1XvqdcXssA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA0MiBTYWx0ZWRfX7zKpJtEXy3Rz
 s0VyTVaHJc6wdVjHjTUCY8YiCi/kD+XI8qYsindOpTdjjciGIjTXDC6ZoWUQVTZV7bNAXJlBtL2
 9cQGmSOQ9C7BMBYrYz8jcPWXqp24hIgEe8L3sjX10ZsVcVzowKS19WDNR+4fRpt3+5Vp4ayjMU1
 1r94bPnXkHciK7Q3rZQc4xn3dWEJSVqBIZHvC9mr1lBSErJjnx/N1NJYvZhbpFFGyTDhV6bW2nX
 +YGgDz0J0jp4aAyuVQ9CfK882A28rOLQdLxzVKRRIw2fiXbdRtNyATDg/LWQXnQNtF2Uwoig2B3
 /XsbHjr0Cs3qDvhJFIpBbDiGsFB7FSwPrthyT4Rk3zEKaUZtT3+/6cbCbUB/nxpMOcXn+8BP83Q
 a8MshbUkNF6oeceFFwjyyds+x9q4Dw==
X-Proofpoint-ORIG-GUID: Jsbi0OZ-r1sRnXEcHAwatp7QnllVbDUF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 impostorscore=0 spamscore=0 priorityscore=1501
 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110042

Introduce functions for creating and inserting or removing the
etr_buf_node to/from the etr_buf_list.

The byte-cntr functionality requires two etr_buf to receive trace data.
The active etr_buf collects the trace data from source device, while the
byte-cntr reading function accesses the deactivated etr_buf after is
has been filled and synced, transferring data to the userspace.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c |  1 +
 drivers/hwtracing/coresight/coresight-tmc-etr.c  | 94 ++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h      | 19 +++++
 3 files changed, 114 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index 36599c431be6..1ea255ffa67c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -840,6 +840,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		idr_init(&drvdata->idr);
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
+		INIT_LIST_HEAD(&drvdata->etr_buf_list);
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index e0d83ee01b77..2b6ca1f8bed2 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1919,6 +1919,100 @@ const struct coresight_ops tmc_etr_cs_ops = {
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
index 95473d131032..9b3c4e6f0a5e 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -208,6 +208,19 @@ struct tmc_resrv_buf {
 	s64		len;
 };
 
+/**
+ * @sysfs_buf:	Allocated sysfs_buf.
+ * @is_free:	Indicates whether the buffer is free to choose.
+ * @pos:	Position of the buffer.
+ * @node:	Node in etr_buf_list.
+ */
+struct etr_buf_node {
+	struct etr_buf		*sysfs_buf;
+	bool			is_free;
+	loff_t			pos;
+	struct list_head	node;
+};
+
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @atclk:	optional clock for the core parts of the TMC.
@@ -243,6 +256,8 @@ struct tmc_resrv_buf {
  *		(after crash) by default.
  * @crash_mdata: Reserved memory for storing tmc crash metadata.
  *		 Used by ETR/ETF.
+ * @etr_buf_list: List that is used to manage allocated etr_buf.
+ * @reading_node: Available buffer_node for byte-cntr reading.
  */
 struct tmc_drvdata {
 	struct clk		*atclk;
@@ -273,6 +288,8 @@ struct tmc_drvdata {
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	resrv_buf;
 	struct tmc_resrv_buf	crash_mdata;
+	struct list_head        etr_buf_list;
+	struct etr_buf_node     *reading_node;
 };
 
 struct etr_buf_operations {
@@ -445,5 +462,7 @@ struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
 				   enum cs_mode mode,
 				   struct coresight_path *path);
 extern const struct attribute_group coresight_etr_group;
+void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
+int tmc_create_etr_buf_list(struct tmc_drvdata *drvdata, int num_nodes);
 
 #endif

-- 
2.34.1


