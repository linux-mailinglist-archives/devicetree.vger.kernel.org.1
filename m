Return-Path: <devicetree+bounces-203626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F59B22199
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:46:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 30C1A6E6B40
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59EB92E8E02;
	Tue, 12 Aug 2025 08:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZT3lTJhA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35912E542D
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987878; cv=none; b=cRN34DGUJyfjXOfLn/3gza7sCe3GW4JEWwy/QFTXWcppqKHQevQQ2Em7KuV6Qn8yUXQkvLzIqqs6BYWmk0GYCmrXOlv0am/8hrB9frtLQgEZvPyuVKKeOIqxnyD7nouo6mVkHJPPRgpvK6mO51a48XH/At1UwDoikZtBlnRIH1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987878; c=relaxed/simple;
	bh=XGiX4Gfca5hhkZ5WBB5kzoN3+KaO9zxGm+JxwB+Qnqw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=CeXODUQ9skbV/j4IbZiBYU1x6FJWtAze3S6HOwvR/ikXm08pwAqnOzyhSIE07y6NEWW8JNI0FQYoVvuBxVG2U/1ky+SWSZf7NtM45j4BCFENYszHa8Stz+K8ALNn/VUd5M76sxhkoyX/cPpPeMW3eJzgkWAT3/uSp7jv3O0sNFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZT3lTJhA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C3mQSs006181
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=x1IUpmlclQ0
	9bHbCcAYuy6OSpZ8BPA7QouFBaqx7SR4=; b=ZT3lTJhAaIKaH4BVqDqRNS0xXEX
	lFUrMOzmBpNorqpYX2q4LRTIkcj6NzzoQ7sOVX+5ivF3sbaqGs38RgNEGw1H3p/+
	B+8WvrCrl92OGiCbcQRtTFf7cYZhz+xep2u7r8np4k8WNgiXgw9S1DA+Jjsgt9fj
	U0OGPBw2NkkcXfCrk/dXpNE9grpf9NMmmNUp5hHpRzRHLHjUXSs+4+yXG0P4W0mv
	YGcGvtzTSRmuibOfd3HSzc3plNTDAtlKB37weNjHMsAoRcqyPs7gWAJrreyTwihh
	3w4BCtOtPKiQwiszSen6ATR7NNIrKLdfSlqHl/o2NCSiRS3jzFYZicuOedQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fjxbaj39-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:56 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-240012b74dfso38741045ad.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:37:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987875; x=1755592675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x1IUpmlclQ09bHbCcAYuy6OSpZ8BPA7QouFBaqx7SR4=;
        b=J2BT2Y6Akr+kxFUu2RZ0k3KlxOVqmbekA4eC5JjZZ4DAlGGXbbx/cPMnki+TSyELgp
         P120C9h5FxEXVacJ0/GxDmfiPlD5sLFTo1sMjX+kBzyrNTl1KPDDg/plvL/wrpgiq1UU
         ojitsDY0GP8+/AGe6AY+biP6/SOz9nVQOaSL4yCncd4Mn82RJ0c+pR8Eod5SK46tS4EF
         FP09zdFLyfHL9nLAELypTUd0NMksVcPRhNA6RXEUUZBmjQZ7n2MprLOI/ixQdAVAjE9f
         vNJmkeaQdoCZK95rTEVD+C77zPE13XjF0sxV+yj8omXdkGM+Vij1tfD48BD33hvQG2Ja
         e6vA==
X-Forwarded-Encrypted: i=1; AJvYcCWsm1+JEVzy76LXIk9EA9i3jrOMdQuFC6fYv6bvopLDKAeKE+xAQcC15bIPIfM9gOEDpjr2LtFAW3xi@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh5AMf6SoYvfuGCRtrbplL8vyKtMK0KQTssKDGn2mVoZnHsJP6
	DjK6AX3CxcCREun9kCokuaXN4zIPZ4gCwa9WJ0wDTNHvR1aqNqG+hwtrgY8kbLAAVFIdgPnbSzo
	clFXvgG4cLrPv75Wqh3j3QSEubY+zurnkZ5gEp5pj6ysT8qiIrYz3Us3/SrRFAp/T
X-Gm-Gg: ASbGncvdXwTodmQXG8zom77f6SlyBaqKwdYlL7C+jAuw6qLFL/Xk4uKpSaYfW3n8z7k
	Cap5tkrbtD2aWI2ZRy9BQoCyeItJH7NM5G1NBrGiEZUGG0XWYLGc/D8cT0NVcdC2Rl9RvjlU2CK
	rqKlG7AghfrPsxB4WAeX+9CNK/7JPwq+fSStCXB8a1ibrV82JiU2HQqmLka+W3oMUAx8IEtJry2
	+AuCmHbstK2sV+6HmvVtgRHppSzw6pKBsYtr3VGlk7y7xxBd490weT4vXkc1PoxbS9AfT6cRZe4
	HS6h0qhGicccOi0yQ88D6oPqhr2+MEqAJP+90iuHupq5kuamQ+ygQd8S9kJ7MozWw0w8xhHWtfz
	dmuO6nfwFsTSjYyYM7WI=
X-Received: by 2002:a17:903:1a0f:b0:23f:c005:eab0 with SMTP id d9443c01a7336-242c22085e0mr247517445ad.40.1754987875218;
        Tue, 12 Aug 2025 01:37:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSyTwItp4AzURKgkqbIXylqMcchbdJF5mW3fYQFHbXyc1v7LKgkg38a0UoXB11ZfsFFDrQmQ==
X-Received: by 2002:a17:903:1a0f:b0:23f:c005:eab0 with SMTP id d9443c01a7336-242c22085e0mr247517015ad.40.1754987874696;
        Tue, 12 Aug 2025 01:37:54 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-243086849b3sm1915345ad.175.2025.08.12.01.37.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:37:54 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v5 3/9] coresight: tmc: add etr_buf_list to store allocated etr_buf
Date: Tue, 12 Aug 2025 16:37:25 +0800
Message-Id: <20250812083731.549-4-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
References: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=G6EcE8k5 c=1 sm=1 tr=0 ts=689afd64 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=JdrPKQqGaJHjzi2MttEA:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA5NyBTYWx0ZWRfX0g77sFYobalr
 4P+Z9OS7czmQ4Oqiebg9y+GPCeBieczoKY5BwNw5zHdz7XPm5F5uhBvZgHY6kwYRPS7qNQa7Ilz
 yVXD9sDj0Mvk5BLsKV98utZerPiAmPCmEBkiQH0kzo+fv1ErxdGvZHfNXXs2CfxrRF8i7qqEO3g
 7b+24qUG+DaosRFYTargnfAVUfbjAMUai3kKvqITDEneQkSGYHgdrU2gk/Z6jgbTrxoSkh7BQ+U
 AKCofuyUZzNv7A77V4xHB0KGrfxqbGmZ1apZNm8EpWWlSbdc9Wsrv/10zJN5XKm/Hj7th+hfq4T
 AZ7/9/OfR6FqUdAJKBm6QKFd3dJuu9+WAF7mXyPH/38rMojhsKGQ2+HFrWTFrBau4TZLPvulNpE
 tvcErFeu
X-Proofpoint-ORIG-GUID: ReJfjRlXxdxMjtF6qpIX1FtH_-cfa2Xo
X-Proofpoint-GUID: ReJfjRlXxdxMjtF6qpIX1FtH_-cfa2Xo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 bulkscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110097

Add a list to store allocated etr_buf.

The byte-cntr functionality requires two etr_buf to receive trace data.
The active etr_buf collects the trace data from source device, while the
byte-cntr reading function accesses the deactivated etr_buf after is
has been filled and synced, transferring data to the userspace.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 .../hwtracing/coresight/coresight-tmc-core.c    |  1 +
 drivers/hwtracing/coresight/coresight-tmc.h     | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)

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
index 6541a27a018e..292e25d82b62 100644
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
  * @pclk:	APB clock if present, otherwise NULL
@@ -242,6 +255,8 @@ struct tmc_resrv_buf {
  *		(after crash) by default.
  * @crash_mdata: Reserved memory for storing tmc crash metadata.
  *		 Used by ETR/ETF.
+ * @etr_buf_list: List that is used to manage allocated etr_buf.
+ * @reading_node: Available buffer for byte-cntr reading.
  */
 struct tmc_drvdata {
 	struct clk		*pclk;
@@ -271,6 +286,8 @@ struct tmc_drvdata {
 	struct etr_buf		*perf_buf;
 	struct tmc_resrv_buf	resrv_buf;
 	struct tmc_resrv_buf	crash_mdata;
+	struct list_head        etr_buf_list;
+	struct etr_buf_node     *reading_node;
 };
 
 struct etr_buf_operations {
-- 
2.34.1


