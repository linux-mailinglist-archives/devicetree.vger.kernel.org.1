Return-Path: <devicetree+bounces-188836-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14D05AE5C83
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:06:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EFF3E3AF719
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CD33253F20;
	Tue, 24 Jun 2025 06:05:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y2Io+6Kl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC39A2505CE
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745128; cv=none; b=GRTxDHJEl5UtzJ0X/qzqw8w+fgHRe1Di9mNBF2tarzbGQVFMSirv60rLR52MLc8xCzEFqsI/ki+WZ045f6HKmZpwF5ULIFOnprGxgOJpJMvXMYEReHdXLg1HXlnDK1k0D9PRnJX09xrrpbuQIY8LOD48TQOdYYm4eJw0Dk5sB4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745128; c=relaxed/simple;
	bh=KepZY8zi4khOQ+LkoB9ldagpD9linYgqNDUu7qBt0Ug=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=fCyVTfx0oVhJMjgBs8qaJ0gsbjExKEhkHr9bX5D3kilGnFpqQXRZEaswLZtwS1c/r+RpUUzG7UEI8daqN9l1sAJtoPoEq0C2ceJ6QWv3ES1GqXC327AEDTkF4YQGegRnqKOrBX8WPS/TUG2DJc5bVod78zmBFX82Ni7nvsKxITk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y2Io+6Kl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NKl36m014571
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gbtexVl8cn7
	s6dLp3Pk/zhJx463eI0itM2/mzeX7Ixo=; b=Y2Io+6KlVtGgDnl8eTkmBjbzuiD
	vusDMEAoAl/dEprcwBUvXhP1l1zht8LOP3KcxwxSRVOXEVSGgUoBtjE1FOkSiTzJ
	XOxU5gyGVt5lLG6i/1UjVPLcYra480HMDUzd+DLUkgjngUQSP5ruWibU6pOAgqMj
	H/rsq0JBoTafxJL3EMumuOlnP897x2xWj3ozSmHxNb8NkC3VOlOZCpR7X9TJml2H
	mtFF489O8ebMCwkzgOz9bNXKHIFW5bYFqlS++4ZloxpvNiA5AkELs2/hM9EP4U8L
	GnDwG4JKAemJvjfZh9Ick/w9clactHXhGjV6TtSHa+8piM1M1tj829pk6mg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpu5rh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:25 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b3208a7d2ebso1856974a12.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:05:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745111; x=1751349911;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gbtexVl8cn7s6dLp3Pk/zhJx463eI0itM2/mzeX7Ixo=;
        b=AikkNMSayQjGrzYkGMZXmpe6TDEYsig4ByJZFIEIp/FObXeHJiQALxnkVd0NG5e+St
         TlYuH2+aJjyYUokATMpp+Elz8z1lVd6sWL4lBeAGVBB9RkHD5aNdEuFvAM/RCh2JCvPU
         8N5G60Jwkjzj2eqNG2t47INoUwa9pD9gZuw+r6Qwx3RtstteTTAmmOKYpRJbFzt57rtx
         drURMfM5SSgbxPMg4iUW77uWoMlLW93j2ci30ipZ4VDQWoZDzXY+4yNcZDB73XZZUQYQ
         OGcNubW3T0oLItbAspai/nqWjhdeih+jH6uHTZ5urw8lklT2hm0Xe0jzCOJIXPvXEpiA
         39Og==
X-Forwarded-Encrypted: i=1; AJvYcCU673AbcZ8rj3xvxLmEOBYO9hgL203pldWff3g/o9GXX6yp5+PcDTMYYWlHFUV61cxvSF52jVQuiPHf@vger.kernel.org
X-Gm-Message-State: AOJu0Yy65h1lErFq3YGZJALvfO9Jwswg/hiekPTWdTJ4dndKB3hqrZjm
	szdMxnfAwPH6fTrIyu7lBW5USOvazTMGRmygQhR8coJh6iK8uy6cUhdQPacq/RIwMtXjvOEht5J
	L15hwNezV8Hlz3mpQ0Jz91Rdc3pa3pSENsYinD3pAmSUsIbrd3GZjG3v3C7UCDWQI
X-Gm-Gg: ASbGncuhqXppPlyQfkvmsWjafFUdVQjUeltNOP3ts++kXs8kiprAVtjRuvfThQ6zqAK
	RNfRACUXKwjszuXB2pkTSCOnbddRUxxoVjrdtQLHHBCrqHlxZjPe1xZoDRVE8BHS+PMYYOUvk+n
	HT20LLVvclEvaqfrK9wFC66n3mpGfMtt5bfpNysXKJBfCdDu8V5xJUBG3XYr+AuDweRWse6PE3w
	69r68VoQIQ4vuFgi8eDNJXSaeTr6TcMOVXlvYFLPN4TbC77BSGf8WJ46QxCVJizqc0H4gy16Tla
	n35i3N5kIVVoNxcUCF6BTmgJNAPe/HCH3x60/C0W2X44tMtKs9M0mUnFQ1D07P9kynLSC0O3UGB
	VMA==
X-Received: by 2002:a17:903:1111:b0:235:880:cf70 with SMTP id d9443c01a7336-237d97f8c47mr201278785ad.14.1750745111424;
        Mon, 23 Jun 2025 23:05:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/6alQ8oVUf4oBoB/kDRpinRzRgdoo/fUtBrPtywrip1OTrzz7TjJGaNQaFksnjaq2AYvlSg==
X-Received: by 2002:a17:903:1111:b0:235:880:cf70 with SMTP id d9443c01a7336-237d97f8c47mr201278405ad.14.1750745111051;
        Mon, 23 Jun 2025 23:05:11 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:05:10 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jie.gan@oss.qualcomm.com
Subject: [PATCH v3 06/10] coresight: tmc: add create/delete functions for etr_buf_node
Date: Tue, 24 Jun 2025 14:04:34 +0800
Message-Id: <20250624060438.7469-7-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
References: <20250624060438.7469-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685a4025 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=k3jFKW3szlTOC2bxmxAA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MSBTYWx0ZWRfX3f8tGTYbvvw2
 jrg4Hv8LnxGN3Or7wL8HelEe0QYxNxTzjbLTzqe5Pp2Bn/UwasoreIJQHqS/S7XWFU3L0KvnNxv
 OF1BGdj/v5Kvt0H9iHDU6HsXtIQjuFt3Mh35DR0349QTdSRBsSobC0hjqQ+2CritkyYlucEqTq9
 eBbNlpDNAB1xGcGFulSr4xVWvgyDMdU38JO5QsSn8H40EHHa5OiUGiUV532f3hgIUfydA50p4SL
 pygDzcUzE9B4Q1Pnqp3N9K3K5Neg8xXJ4sM4ppVmDNtCRTVZzkk4J32guLzLThO50DzNKoMh5+/
 AEBfBe70GsL/WF05B87ohteZlry1ptypuZJ1b7LmJcKJbcLL6uvyr59dEfaq2DhgoLnMDYjuLuD
 u3g2vYtMI0A+MqGlovviGWdrOLNu0NYR/tRdUSKLOk2lrpEqbkGE3XQxfkUjVrQJWExV4LRf
X-Proofpoint-ORIG-GUID: oekdm_FqPUDWOx8P1yP32FIJyS57xoWV
X-Proofpoint-GUID: oekdm_FqPUDWOx8P1yP32FIJyS57xoWV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240051

Create and insert or remove the etr_buf_node to/from the etr_buf_list.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-etr.c   | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
index b07fcdb3fe1a..4609df80ae38 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
@@ -1909,6 +1909,55 @@ const struct coresight_ops tmc_etr_cs_ops = {
 	.panic_ops	= &tmc_etr_sync_ops,
 };
 
+static void tmc_delete_etr_buf_node(struct tmc_drvdata *drvdata)
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
+
+static int tmc_create_etr_buf_node(struct tmc_drvdata *drvdata, struct etr_buf *alloc_buf)
+{
+	struct etr_buf_node *sysfs_buf_node;
+	struct etr_buf *sysfs_buf;
+
+	if (!alloc_buf) {
+		sysfs_buf = tmc_alloc_etr_buf(drvdata, drvdata->size, 0, cpu_to_node(0), NULL);
+		if (IS_ERR(sysfs_buf))
+			return PTR_ERR(sysfs_buf);
+	} else {
+		sysfs_buf = alloc_buf;
+	}
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
+
 int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
 {
 	int ret = 0;
-- 
2.34.1


