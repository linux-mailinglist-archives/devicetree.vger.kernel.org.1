Return-Path: <devicetree+bounces-195883-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE20B03728
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:32:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE6F41895403
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:33:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92350231825;
	Mon, 14 Jul 2025 06:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YI696kbs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D783230BE4
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474711; cv=none; b=Mh21ppazwd5EMl5FZJock3FIlTavwc4zNIJtqD2FjJ2sBRmKEjikQGhOqqk9jCBZQj1d3eZMqUUWWDI6YTUcrQI+zcha+YknWfXZm74Ga/M4uW4fDjrvK+xshXR5KmVGy5OS14IBRjf9uYFuUpqPc2Abnsnzo8ma9/L1oZH9DqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474711; c=relaxed/simple;
	bh=KepZY8zi4khOQ+LkoB9ldagpD9linYgqNDUu7qBt0Ug=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=b3Jll8hdIW2oiLl/1Szi9SjGr+iMg6F/3FAK/MiKZ/1jrXv5pf/b3go+z/IW3q64BZXobXv3YU5og1DXvU2GZFTahCKo+limzPXwBKsYPjIE4qIb0IW/xSjNxhKGf7lbp9hU92VZfZ5IGEFR257KOLNSnHEHemFhQN6qS7H9/o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YI696kbs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DN02bS001306
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=gbtexVl8cn7
	s6dLp3Pk/zhJx463eI0itM2/mzeX7Ixo=; b=YI696kbsIJuZX+Dyf4Y4ffihnwd
	85P4spZnLOkx0480WJIsrVbwll0QaFrEa9q2G3OYF8kBU1UxYmc5ojUj/zQcR3Iv
	sWnE6t7Ua3ihnPDTX3WeUnZtzBLmQhSxsyWzI5n15/vFrhCxe+laJNoWEBbQmadM
	9E1ugX/6ZzWIoZmOJwT1YWfXUjNQSCsfxbtdNEK4s+F4n5uALRhgmz/jLK4H4xxr
	OgOv6hHi+hevH1JAdDG17Js7eXVxhChkBm1Ne2LDtI+Pjc06laFQIR4oSsvGEnC3
	p2MbjhWhHjDtB2ExaIwK6JagNRAxNNj276PpAPvIbwXERFlwwPxImf8Ym1A==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ug37uffq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:48 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2369dd58602so38151855ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474707; x=1753079507;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gbtexVl8cn7s6dLp3Pk/zhJx463eI0itM2/mzeX7Ixo=;
        b=XC2qL+gCNin7GmGHOfUHQ81DQqfFn2ILtLp9B683acjtr9eIgY3V5tZZaSabPJTiZN
         w7r/LO6wgrTXHOLvjfaVu+QyQfFwndvAqlhzi34LqZyAc3eS/10Nre3oQu1Tx8R3lJfk
         BlCgHBBOjB/JQbQQEbLThAFHqJZyJolEw84v2B7uhuOrRoe+7M1+QnYpJllP5osIzGuG
         XYyz7g2ImosVwMB9KV+3n4ElQdEwj+UlrgFRhbr+wJ6agNj1xSX097+fWEVQewF/p0TI
         U9cGHAkL23tqHZARsemULTBoNrcdRzi+kwVpcCw9FgDbW1rrNPZPKSdZQzavEqu6cRgd
         Ghng==
X-Forwarded-Encrypted: i=1; AJvYcCVn22q+2b6uDXl/4QThcQZ9AaeS+bUKxQhZ5IVIMqWLw7O0b1jYKh6/30+WOfCfwj3TgB2JGMRKa2eh@vger.kernel.org
X-Gm-Message-State: AOJu0Yzd/yAOi5yaxOF1SibMkp6jlkz4inVxDf/TY39xdQba4NEsl9VS
	Vdta+d/AR1LjRtSUufVyLLZFdoKO1dCCHIlVBLP2OokHiJQvTreRcHiIAJq0dnZ+rYhZlYK4N60
	sShCEWy4OB+aVVu4UrzacVpQHtbYOLyoVy5rZxGN+Jov5aTEF3VryqKdqCePGlUve
X-Gm-Gg: ASbGncsHNhMOnguqRpdGGBr2457UsVjDYD8lgmee+fsm29tkT/isc2OzA6/Oa9+5d09
	iN8dv0SkNsnJcDLo8BIwpXpqdosB7qQGNblLjD7zqcSUbKwpj33qd+ZdrRlN2ul4CzlzQcgDoti
	O2tbLq16+0eupXl9NVd+aWLe4XQVt1+17vRKo2TMiASA5hm3xEVs1VzAwsgqsY31qi2gA+NuKh2
	Rs5G3nRfo6qx/j5qj9aESt6/xamcOOaOEjEz3lyUwdeROy3jz6TlxvpI7mG03PjicLpY8SsQGTu
	BqE1Y/J+YMNJsWPiK/aC+sbKckJw2im5Lbmul+v96PPA9kabI+Q3o2pIt3iG8hhxUeH/FhuCzux
	TS5PnREeiggh8/m6zjW3L
X-Received: by 2002:a17:903:1a2c:b0:235:1962:1bf4 with SMTP id d9443c01a7336-23dee1a9a28mr154868365ad.14.1752474707450;
        Sun, 13 Jul 2025 23:31:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEj4rbvGnNx+fx3MCBznDJ6E+aV9dfiQvxQXSpTlh5YwlHL8v33E80+qeMS7LmY2WziB5yZ8g==
X-Received: by 2002:a17:903:1a2c:b0:235:1962:1bf4 with SMTP id d9443c01a7336-23dee1a9a28mr154867985ad.14.1752474707024;
        Sun, 13 Jul 2025 23:31:47 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:46 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 RESEND 06/10] coresight: tmc: add create/delete functions for etr_buf_node
Date: Mon, 14 Jul 2025 14:31:05 +0800
Message-Id: <20250714063109.591-7-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfX1b/qCC7KiV7A
 sof7XqQkmQaxnmd1EBXOUhX+EovaaOkZgz4paa6VPCzH043UGmCJH8/+0wNMbOmBSRTeS1UESjR
 NkZPMYTa33/w+oJYyX3digXVDCzO289Mzd88sH967UlU4EQOZ4D3LlnEuAvZ01UIwHoNUL9aIfC
 d66yTFwT9YkHhUR/3GrHPkJvqz4X4lWzIhWeULhAFn2GFPg+WKlyApHtn8lV7OEPbyIqtsQ0avu
 dFadZ5C88wPlNhtiC0teICiP8qIHDA4OWe26k/AD7HBtmrLV07zodkncWQLZJLfLTOoFPpj5FJT
 Hg2RgK6KIPjBrmV7Y4ILwtnz1YYARuGFcTXJ6daO3UWDpE9nxNXCP5oMBp1Fqbfw6DqhlkVHH/7
 PjQxsrkDL6JSCP1n4LpPd6jArTKgn36e+cFt5PcIFBVNEBZia4y1VvI1R97FCj33x8g4u1UU
X-Proofpoint-GUID: ho41E-jjQli2i7LbwIXlT8s8BLxiKGRq
X-Authority-Analysis: v=2.4 cv=SZT3duRu c=1 sm=1 tr=0 ts=6874a454 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=k3jFKW3szlTOC2bxmxAA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: ho41E-jjQli2i7LbwIXlT8s8BLxiKGRq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 spamscore=0 suspectscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140037

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


