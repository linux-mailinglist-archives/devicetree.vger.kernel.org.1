Return-Path: <devicetree+bounces-214098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DED4FB48260
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 04:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1449189D865
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 02:03:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 734021E990E;
	Mon,  8 Sep 2025 02:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+pWz4pJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8FF4202C5C
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 02:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757296964; cv=none; b=cJ7NEgWqgu1n4GNeDHiygTx2WYCFdx+YA2gWkDtYSIDQvkGTqEjPJtTpanyHM30SodxQ8T6tosUDa/ZCM/ps7WI2YxPXK23nokGKT6AMxNJeLyffsOD/3N112AlemWCxNGZB6aKbkjBuMRHJ9AfIBmq4kcZJVT2lXT/3hcWGmQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757296964; c=relaxed/simple;
	bh=J8gJ/mYXIto4Pqb6SCiL46R3ybLriqfOejLtEnfdnig=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pzYuPHmXHSUmsK0msV9qnCFeOUIEK2Uif1R9ZTkx6LCReg1EH3jX0+EyrZs6+OBsXidHERPrUDG+686CiwUZlaK9U7yhHjRoeBAdx5KBBUYNnWh+tvVk9G5eao/7AtCs0qtkSsUSdhty3R2Em98uC2xc8/NYS/BJVvVyb2ew/JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+pWz4pJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 587MbDVv030332
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 02:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ge78CRxNCocviT/6Co2pp0hTuCE9iUxm3FJF2+Bl2q0=; b=L+pWz4pJd9z19SHc
	QhZdQRRR/SitNNd1Bq80X7zjU+54Y/LdnCenKR9GmGnIgN638ZU/qyWU6zjjo3ix
	5Hb25F7SbixhEWHOY40xokMsmUl2IcIn/AtljbAogEM93GPxIAsq+ycfQcAPvqmk
	DzMI84D55YAWFmRlBYOEcrR++BJLNPbgKap8W+LuJwC8Ggt7Dm4poxsefz7BKvdV
	NKBOmsi+q3lRJsovq3Y+w4BcBNHmG7QGv99QRAnNoKyeFPfx9VbJ72GKTSo4h9U8
	Xb3vWPHR/YhrtLd3dlXL4DM1phRUI/lqmZwJQLq+GNBysyd2NA623p4dAdhuACLm
	LXfSgQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e8a2trh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 02:02:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b4c949fc524so3050478a12.2
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 19:02:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757296961; x=1757901761;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ge78CRxNCocviT/6Co2pp0hTuCE9iUxm3FJF2+Bl2q0=;
        b=Qo6izvtToHia5EY1Czbu5rotmXo6H3T/IdRg0Y0bGyQn5WrxwuxYEnWrGGsyRjdZiR
         XekW+AeSXCwd8LnAfEELI/v8n7GshyrSrZSR5L7oEwwT8C6tt5S7VcZm9WjQBV5FDvbp
         2/Nsna71X9aHxJNtzoBFIf82VU1Q/eGWwtwSlGKKJsAbKjqoi/IRfUdt2UAumSBb08Kj
         ToXH2PpQTRvxY40Wsn3epkoNhiacXIn5gj8jxZb9fI9lbKATwy9Qzg//AqsIJDZAbhr4
         zp+oVbq8zUdvTSWs9fjcFpv6lmcV6Vhbr9xlSHfaPquvqDjOexUZIHX4HXyaH4I/IvX/
         aEIQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIIRPm/L0Lr4FR6coYc9cjlbpaZiyypqsXbwE7Rns5SrtUjP6JQVLnTnQs/oYQv5KHvKgUYvRKINmx@vger.kernel.org
X-Gm-Message-State: AOJu0YxRTK1EiIXSxtxRWw8dax4QEiVQeO+z0iYiz+YTF/Ym2rP4dZZf
	027NAU4L2KfO3+zyMrqpNezSONU3871OfBp/jO28xvogcOs6B8T4duKCHSwCDhSlNIlSri/ZZq+
	djAIp2WzTK0qWasvTvSPu1kmoRHF4CxzAYT8qMurH8dKtIzCruwBIUJyfhYKalXrP
X-Gm-Gg: ASbGncuYnCleO96diu3z89S2999qbVBIhZcP0kNBLuxTRes9RLEISU/RunwPciMVlYN
	Gyt/INNoHjQsbJ2uuNyIBguWDsZHpJH34g+geO/wbVqwBg+m9LyosIPgLFnIJhYZfri4pknW38C
	S69AtcOu8ZoVnC675XjoymYrNkBxXpOR1Vo2uFrp1OQzNSFsqgpX4BEckUN0XmLsKvQQBrhXpse
	mV2XnLIEQXvfcDr8ZpRs40WxsFtOw1C3tJfTaTTePE3myXFVoXAelrnRglZmenZwDzAeuqWR4yi
	kTGX66eaXHKcl2TlGi04QhxLEOctyO1RE7gMoDaW/1KkqdVhJoPTwBM/nTTDjdEd8KV0Q2Sx4zr
	BvQmvkRZzwOqd3XVAfxcY+6AVuFs=
X-Received: by 2002:a05:6a20:7f84:b0:246:291:f62f with SMTP id adf61e73a8af0-25345d2ce0fmr8120755637.49.1757296961158;
        Sun, 07 Sep 2025 19:02:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHmxlgXwobw+6sYCcX7nSaiEH9SoZom4Tkgi5DROFCRYnQhezoOJA+JdGnUlTuZvEyeQEn/Eg==
X-Received: by 2002:a05:6a20:7f84:b0:246:291:f62f with SMTP id adf61e73a8af0-25345d2ce0fmr8120706637.49.1757296960626;
        Sun, 07 Sep 2025 19:02:40 -0700 (PDT)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7723f4858e6sm24285076b3a.4.2025.09.07.19.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 19:02:40 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 10:01:55 +0800
Subject: [PATCH v6 3/9] coresight: tmc: add etr_buf_list to store allocated
 etr_buf
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-enable-byte-cntr-for-tmc-v6-3-1db9e621441a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757296940; l=2488;
 i=jie.gan@oss.qualcomm.com; s=20240927; h=from:subject:message-id;
 bh=J8gJ/mYXIto4Pqb6SCiL46R3ybLriqfOejLtEnfdnig=;
 b=7C7yn707Lsimdprw0DZkaDMCHAqIYdRQAOXnK0GeVx7h8jA1BavXgvNmroqj+Ox8oukZ3q3IE
 b4gs6HH1T8nDbUL+jeKB7WQNVjNywsynjftCQ/HYJnMCIIOvMK2M6Wu
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=OZh7JyRifqJh4xmrcGgmwa8/LCS8O11Q+mtx4aZGmi4=
X-Authority-Analysis: v=2.4 cv=H7Dbw/Yi c=1 sm=1 tr=0 ts=68be3942 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKaT4joegMVsfAxsIjQA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: pt59KaSuKckEI-esD58ueNUIEycQjTxe
X-Proofpoint-ORIG-GUID: pt59KaSuKckEI-esD58ueNUIEycQjTxe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOSBTYWx0ZWRfX67HB6Hxn5m1+
 19vY1Akyy3CKrMXIJeRpMYiheIraDNrPOkbj9OLOT0EIZ9r1Yvby2fNaSg5rpZnZTbjxw6RQpzg
 5+uXgLQHnkAaJaIquQRqgZSN1vq4orzPq9YlArEBNwjfMzmdmtEEl2l1apvQJrCh7fhYHhJS9vL
 7j1k3FmLc2JifTbpYUD45oOa7iLh/JKLPxvzpcL+8Cs+IDQCcUQ0i3PPXP9of1hD2LMavm/cFkx
 OEaGxIGT2NUf4DKgLL3+CLwamD4Qfd3uPR7oGyd+T7ngnm7/JqtkHCxOLdvIRFETEy2iHUMJYKn
 9m9c/7VE2wlQZSahsJ4nRXraU/OYRy8f5SrTIo06WE9W1jwny8tieQF61YvhoopI6qNgDJguPtb
 iHdBSM55
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_10,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 phishscore=0
 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060039

Add a list to store allocated etr_buf.

The byte-cntr functionality requires two etr_buf to receive trace data.
The active etr_buf collects the trace data from source device, while the
byte-cntr reading function accesses the deactivated etr_buf after is
has been filled and synced, transferring data to the userspace.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-tmc-core.c |  1 +
 drivers/hwtracing/coresight/coresight-tmc.h      | 17 +++++++++++++++++
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


