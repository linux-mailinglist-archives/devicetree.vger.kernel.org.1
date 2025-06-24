Return-Path: <devicetree+bounces-188835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39695AE5C81
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:06:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9CF5F3ACA49
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:06:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256B2253340;
	Tue, 24 Jun 2025 06:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A1Bqo/Tq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2877B2512F1
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745127; cv=none; b=BwUEvMh2rcvY6/9xNHIbz+OMF/1xaxEZesWVd526UNeAktgQ99ZRdQr+yKvSzSVc4/Zmh3Y0/ACpPxi5u+ROU13hUpYNowj2J20PpcepiuP7+on2dyOnnKymShImBj6BySbvBMHONiVY7k28Qv3J8912wwmdjXYSf7SybAG8rXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745127; c=relaxed/simple;
	bh=NXbdrziIeuB5pcaSxjAzniV7Y1VF/HCxTAevsWleWaU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PVfqADL1ILFKoAo6RuKNoF4EZqihFUg6DSHOoK1JE8WNnqLZIvkLbH9UIaLAWsPt7jBytpp9lNfn4B45ozFSMiQKsULQbbgjGcy597hR+3//it5czOhqXr5e51A+/aR6VfW472CW2XmpjMzebbD3dL0DoVoFsaVCj5UvCrasVCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A1Bqo/Tq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NKliXY014954
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=pon7MrhUMFa
	eGhGyVgauqCCEFXCkk5I04yNnyLGhKTc=; b=A1Bqo/Tqq9UBD9AlarPJzaoD2Ne
	KU/qTD72PJzjaINh1EPSAlkXyd0OF+rUqA3Sw8/2qHpbVOuz78ZjNobRnXR5RtMc
	bJ0v/Jb4NaJ2jLzCM4ixTLyFe3E8XyRM6Wje0b5U83B6hJSERDt6xRdwRTVY6yTB
	C3Ip8CgEw3NNaVd+1Cd/GzVreZdFFK1Oj2PPbvIOrfasK9WuBY7GGVc1votFZj4E
	nyYaPI7BPSrRSGYkTzb5ITseMz4WL2520mB/bkntpfEu+icGMAMBk3dZ7qkrPq4R
	p+GBsiI6h60gG6QVfFAEDZMZUxRsuf1vi9UqeW3fBJSy4vDJ06xchJEwATA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpu5r2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:05:08 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-235e7550f7bso463785ad.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:05:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745107; x=1751349907;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pon7MrhUMFaeGhGyVgauqCCEFXCkk5I04yNnyLGhKTc=;
        b=NLMA4efGir3DeaE67Meg804sQWRLn5XONr8xmsTN/LBWoyn17Dwg7W5z9ZAAyk0VE8
         QvGnxBW+r9stRfxV8uDgXTFIqPHDO+l0apnY37YfI6YZ0Wkv3KHzZpAuJJw6HE1JLaFo
         u59oMX1k+H+9gc4igY06nfEUmxscHw7pH1mOgHdn2LV0PtjNEqmrLPYAzSce08+L2qHQ
         l3uA/0MGJZFjgAbe2dpW0+OIwaBYscxM8QFIWsgDaFZH1JGe9VPOy2iS++zfNugEEaBu
         xhYmm9dgyhYvnYPubYQjpmXeikwsuD+WxSSH6YpTnHizej6Vlmt/AUebGalWNMsFY2fv
         F6Cg==
X-Forwarded-Encrypted: i=1; AJvYcCUzkoA7TX3kXtOMuiYhEc7t/ddw1VE4RNguhOtpQlYm0NOm0mk72ejn8ske1e1m9HeCGwugBkojDCFt@vger.kernel.org
X-Gm-Message-State: AOJu0YyOlev2s0xRPiSRKrHwlpNc5F20A16DiThRiMLSTH+F/0wJ8n4y
	fL3gPHLtlwXc2ecQh9rKusQQB9/7zzoqt/ibkjqFfBm5QfWNnX39ovJRd0/MR5Q32/fyyMbUHVg
	tiHjAiVcicX+REuNT3s2+8YvE7Flk07YQ8fTTJNqMcPBUSsdPytr0puFSv65Wl4V2
X-Gm-Gg: ASbGncvTWSw7ohbcKMvuWttxxC9mOtoafyuiLw0W86DVfs9O1BzFLwJGN92sINGh9Bw
	v7oQG0eVS+FZERMKoff+sBpb+vfNMvGbBtDE6O/C8tgnZ5ZInJraT8OWtPCs82r7nUJXUMhRXFv
	S6fUWh0ALQMp7LI9s9c5MrUGeeqi7xjbBf38xAQ21KBuObDO79jZ261j7frJEe5JGRECDw51Dqx
	X7OSIqvPIrwppA+OCQsCe0ibnAFyrFA3fL8+nbso0RwCkpol8w/vYThdtGco01C9dwbQWlU5Bks
	+eiRySA5irDMZ2IF93W2tIUrAaxNlUR6xMEgFnAyrVmcdeklG5irvU/1rddC46n6Byxyxaz/oUV
	VnA==
X-Received: by 2002:a17:902:da8c:b0:234:986c:66f9 with SMTP id d9443c01a7336-237d983d37fmr250600085ad.22.1750745106922;
        Mon, 23 Jun 2025 23:05:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEyxi/2L5RpxT7jQrCkp0XQD4t5nbonOAsYnD3NIf9AfeQ4K63zfMYh1t30n1bwNRgtIh/QhQ==
X-Received: by 2002:a17:902:da8c:b0:234:986c:66f9 with SMTP id d9443c01a7336-237d983d37fmr250599855ad.22.1750745106562;
        Mon, 23 Jun 2025 23:05:06 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:05:05 -0700 (PDT)
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
Subject: [PATCH v3 05/10] coresight: tmc: add etr_buf_list to store allocated etr_buf
Date: Tue, 24 Jun 2025 14:04:33 +0800
Message-Id: <20250624060438.7469-6-jie.gan@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685a4023 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=ORm1qb0EFYpRwVLUulEA:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MSBTYWx0ZWRfXxsHzekVbHjUK
 /+3u//NPZ81MXxoq/bg7Z4UDnv/3qyi271f5jBkl8tf+e2D1TR3sultyoWbFpTKK+ElaRrqk0Qh
 9kZMmUY1wL48m3QwwLyZcKh1yZUWEvq27y2qgYh1JHYorkJ+DGHJDcLqdLEkJJNl086zRRqW4kk
 TWU3CiSIBwXUg8d2EqcT7CjqaLT/+29RQnhNuzDYDCUUSXeNDw+y8uYnI7ZEvvdUa2n7XlT4+np
 YiaRUW1m796jDuBBA7hKOeigRvmi/J0sZf+o6KAbMgOh1dTEK8ElGCx6Jn87Bl0ouIORjqo3O7N
 9Fk5CFb3sPixuiaOiBoCXYSBoSUowLzzXTAEbXBCrpyUJvTWcHiCrM5n01iiCzhXNYqHJqTAatR
 q0FXmEY3ORcDKKIRjGPyhmzRGfVK5US6lY5nIJ7q+cxJK+FZS/ysaVWqUftw5+eoeojeuNb9
X-Proofpoint-ORIG-GUID: 7eCUtqh6jdlpqadB-2_uT4vtAIL9422S
X-Proofpoint-GUID: 7eCUtqh6jdlpqadB-2_uT4vtAIL9422S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240051

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
index 88afb16bb6be..8531bac79211 100644
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
diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
index 6541a27a018e..f6b05639aeca 100644
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
+ * @reading_node:  Available buffer for byte-cntr reading.
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


