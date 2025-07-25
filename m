Return-Path: <devicetree+bounces-199709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 73603B11BCE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:11:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C4457AC28DE
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 715042E175C;
	Fri, 25 Jul 2025 10:08:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CDNvYbQc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A562E2E0B5B
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438111; cv=none; b=BaSzgLLDOc4Xelq38Yvljr2drEQ5H1i0IsXXATaZVqHZDJFRzARHVBCUIqkDMFfABEMryNm6qR/U53f4mr+k3qnqbPUHCa4h37GXETXmZnuxw21P5kt1Clzu++YfJLb/zzTG8STeFiygfdjpmHhi4prcSnVKqzL0WZE4PF4iNJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438111; c=relaxed/simple;
	bh=NKrL4Nj0hmLJqCwJ6NvEZ6ylEwjfPqZkyrHkYIg9VmY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IqnsArU1xqZCtvM4R2u5QTtqpSL8QILgVnRs90hTTOgmC2HPEk1Z3+5AlW5b2c4GptKj9whyOZ9fQE74cEelvhq/jENmgGOH5XNveGQRIbhWI6Kf8zvJ8YOj/f6CSDegJyAZU5fBSUNTLrUw9mW2C5r3JQpWTN6/gbgufxcdQws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CDNvYbQc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P91LVr026725
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iioHZAmwo6h
	VI3zR7ywnoptK7Vb4ysh42C1NxdoaAPI=; b=CDNvYbQcGhtKLx9YYOO5H3V+Rtq
	c98QbHIIIwjm5AUAo/pudKMnvsbjfahJr6CsPc9XFLGkLU3Q0D1PwwlQS419TWgT
	XopKBIMU5AUrdi4dAc9NpevFtCG7z0sunBbXl60m/ffddRhxSy5JLqw/Mp5VIIGQ
	Wj6UqKq6ZNSmrVyQV51Vr3Be8RXyhF3WqVhL6ZB3n7zWnR9tQH20AJbR9khJNF6f
	hh2ELWVzGXc62FmMsE1lLcdR6r7hI2atoQzfJ3oUaTfUVg+8sOc2rhl8J3VRsd0t
	v1Z27QvGHOmAaQfMZi+T8Xic2qSUeISxAKLfIHgY1/rL+eYvkpIlsBvCq+w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2u1ny8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:27 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2356ce66d7cso31479305ad.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:08:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438107; x=1754042907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iioHZAmwo6hVI3zR7ywnoptK7Vb4ysh42C1NxdoaAPI=;
        b=EOzSlNZJ/L6B+3pNizjORSjFmiTY86tnBHirwv64CLTf0U0/A1UB/3mylHNm4RX0xF
         SjApa4ZKmba2xdAa78vRSrK4eG+HzXKfYe7EctGbI6KsN0vsNQa2kQOW+1cMVhkxo4E2
         3fBrH4GAD9QEK5gT+xMr1T9P/KsXDUfTzKIxQrGmXoCo61/VeaJ66K9FHayKNTBzYsCP
         GH9XJ1qGXG1rGpzkuzsYIZgELPrmWnxi4aBLZEv9WCmRLglxf00SUuvgc4xChkkgCEzi
         C4oWFMMdsPXVhg1lEkDXxRuI6ytSvwSP9Swe2dkoeHNBV+thrMDNOaDGuLQhSuIM96Ne
         G9aQ==
X-Forwarded-Encrypted: i=1; AJvYcCVX38SkW9aXbSOxHFL7N6FtHwLWUTxBN69d1EGokhd89Cb8AYvTw1adc9nhgENwmwW6FUJf6u0uNgFM@vger.kernel.org
X-Gm-Message-State: AOJu0YxVu5nw21gOf4h/nhb/r/D7j3yZkkRWOHHkl4N4VqHrmeqdn0Fr
	h3CCV8+XlEqMxwdskUbkjqFJkD5UySNuhef9nKwqujMzCRXWbEt52PNmJZbmNY5cWyCb6b4GXJe
	enTwuDaN0a62n0kGsWjcHTpDM7q9sN2ZziNiZzPRaoSnyScejD9y1xANAkhXkAwNh
X-Gm-Gg: ASbGnct3UQbFpid5+3l1Q4bFc8DS3tN5bwnj8Fzv4pbTba3VmaRx8NdmL3kq/VXr843
	JOVQR79l8yiD1882Kk7dyfSkC9ytB1pau+fWNGC2dtoj0FZYdUtLUh3TV7ysQIwplbycX7wrq/Q
	Rbb+BJcRaTs+nWd5KFlDCD/elhYA8cx0Y8X7eKoXBUYOn0yGz99/dMUk/nLO3QIexzRQ8O3S3Mk
	qv3yNS6/Qg2HMfT/iEC9Gw6j4bvrEhPE/hO/ro798o0t2DWPAVE2EjQHW3J6W2J309vLHez4BNj
	d+jCWMSgJLecOfZAd2S65QiMthZlOU9FCBUYszxK2fl51MbibXr58aURdcWU4JsVdn96Pdn83S5
	Ye6P74NiI+qrXic+UUSU=
X-Received: by 2002:a17:902:e891:b0:236:94ac:cc1a with SMTP id d9443c01a7336-23fb3179530mr21392145ad.27.1753438106762;
        Fri, 25 Jul 2025 03:08:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYXuxwAizhGCHBsUFAQoY3a/Si1ZEE+tQGtHTUl73AhqAID/L4Somkm1pNUofePJE1ndnHaQ==
X-Received: by 2002:a17:902:e891:b0:236:94ac:cc1a with SMTP id d9443c01a7336-23fb3179530mr21391735ad.27.1753438106353;
        Fri, 25 Jul 2025 03:08:26 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:25 -0700 (PDT)
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
Subject: [PATCH v4 03/10] coresight: tmc: add etr_buf_list to store allocated etr_buf
Date: Fri, 25 Jul 2025 18:07:59 +0800
Message-Id: <20250725100806.1157-4-jie.gan@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NSBTYWx0ZWRfX5jFaQ26286qH
 vL+E1tqyK4HdqHoW7WjlWXoeeuZIQcDJHF0Mivb/g0Tg7Q56WgLdY0V2a7K7PmqHv20tNLD7MFw
 HAN0d054sO5WNMHnwNgv2LDy97xz3c/nxYP080wbnI8zJwA68wa2Ij1h/frpB/XPRNw8zk3d/AG
 VGohrsmcMmqAbirCy/ssAVF60qW98G+lw4JlDl3DHUvzmW5TyaYSAD4fYiIbkBccl61BCQtPoHE
 M5N64D8tM8GM4E7X5YjaGg8mkn/PLv20Sws9M68N4BrPSJUCaAcAG+tjQRjtc3Zi2UKCxPjWWUM
 REeV5mepEATsR1LYlVeP1+3GFY9Y7GnFFSyy2rbf9ZP2bRg8DboTl3+c9oVdqxspqmIpxvKbn25
 4JJ0/FpncxdpP9MEKgPsEWp8O7QTTOVxYbP0PyLfd6n5+xS0CVmBYXNZ+Nq74EARcM9LSOR+
X-Proofpoint-ORIG-GUID: Uz5lPsZXes490pHy_E30pVlvCKjj8NeA
X-Authority-Analysis: v=2.4 cv=FcA3xI+6 c=1 sm=1 tr=0 ts=6883579b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ORm1qb0EFYpRwVLUulEA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: Uz5lPsZXes490pHy_E30pVlvCKjj8NeA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 adultscore=0 suspectscore=0 impostorscore=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250085

Add a list to store allocated etr_buf.

The byte-cntr functionality requires two etr_buf to receive trace data.
The active etr_buf collects the trace data from source device, while the
byte-cntr reading function accesses the deactivated etr_buf after is
has been filled and synced, transferring data to the userspace.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c  |  1 +
 drivers/hwtracing/coresight/coresight-tmc.h   | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/drivers/hwtracing/coresight/coresight-tmc-core.c
index be964656be93..4d249af93097 100644
--- a/drivers/hwtracing/coresight/coresight-tmc-core.c
+++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
@@ -830,6 +830,7 @@ static int __tmc_probe(struct device *dev, struct resource *res)
 		idr_init(&drvdata->idr);
 		mutex_init(&drvdata->idr_mutex);
 		dev_list = &etr_devs;
+		INIT_LIST_HEAD(&drvdata->etr_buf_list);
 		break;
 	case TMC_CONFIG_TYPE_ETF:
 		desc.groups = coresight_etf_groups;
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 6541a27a018e..52ee5f8efe8c 100644
--- a/drivers/hwtracing/coresight/coresight-tmc.h
+++ b/drivers/hwtracing/coresight/coresight-tmc.h
@@ -208,6 +208,21 @@ struct tmc_resrv_buf {
 	s64		len;
 };
 
+/**
+ * @sysfs_buf:	Allocated sysfs_buf.
+ * @is_free:	Indicates whether the buffer is free to choose.
+ * @reading:	Indicates whether the buffer is reading.
+ * @pos:	Position of the buffer.
+ * @node:	Node in etr_buf_list.
+ */
+struct etr_buf_node {
+	struct etr_buf		*sysfs_buf;
+	bool			is_free;
+	bool			reading;
+	loff_t			pos;
+	struct list_head	node;
+};
+
 /**
  * struct tmc_drvdata - specifics associated to an TMC component
  * @pclk:	APB clock if present, otherwise NULL
@@ -242,6 +257,8 @@ struct tmc_resrv_buf {
  *		(after crash) by default.
  * @crash_mdata: Reserved memory for storing tmc crash metadata.
  *		 Used by ETR/ETF.
+ * @etr_buf_list: List that is used to manage allocated etr_buf.
+ * @reading_node: Available buffer for byte-cntr reading.
  */
 struct tmc_drvdata {
 	struct clk		*pclk;
@@ -271,6 +288,8 @@ struct tmc_drvdata {
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	resrv_buf;
 	struct tmc_resrv_buf	crash_mdata;
+	struct list_head        etr_buf_list;
+	struct etr_buf_node     *reading_node;
 };
 
 struct etr_buf_operations {
-- 
2.34.1


