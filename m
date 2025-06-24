Return-Path: <devicetree+bounces-188829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72337AE5C6D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:05:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1E467189759D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:05:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12D123C8A0;
	Tue, 24 Jun 2025 06:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TyhHVy5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441AE239567
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745092; cv=none; b=J9lRDbUkRRLdkLYekcgvOL7F3VP8pJKgTFAYxZZDdNZa05XiM6CHcdvyvhyAXy/L8vew7rs1tSfZGLUS8qulzbq5sJ9Kst+ImeOup6PY8tgSdeRkiqXdr6yCjW3jy3CKYKZAjA/NFm+J69+ZfP+lUVRFaPjHT/tExPpJxv3+xxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745092; c=relaxed/simple;
	bh=n3EaXaaNhWYWmkdCOUG9x+pdcHBoegUPElZCXFPVc0k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FNcRYvJ/OQkWRjLWvF3h3EOpMzV0NsIQf9HPHdWJ6beY1e4rCcq4xh9WtUH4uJd0mFPqCaxcQKCEJg8ijlnBhyA8qElA0s6R7JhHLi9VLxtC2HGaKI65tZj4H+vSdx+/EOZaiWK4gGnKJaikTiSKSeIKOqi74QDy2TODB8E+Jy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TyhHVy5r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NKlEB8021903
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SXDZmqpfj9O
	i17S+KvFoTK0GaAZ2Kfc438E97avizmc=; b=TyhHVy5rcxyPvLe/sRdeKCTKrzN
	qRApGnsNnaQf/VpGRLGJ3oUoWTW+DYHp6U+l7V+Flfx2eHPBQ55pPZdfAbgoz+ud
	Cohw3Ebp+ORsQebZD3culedijJ6er9q8F+7JV2D3CRQn4O1ohiLNMF1UNGPqCe5H
	voC96rCJa4PRb3fs8iQ8vuHG+65M5Gp2fMhBRoUlqZFyumsyejebSdevU9w8oYkY
	nrZwPo9z3zo56l7832wQh9ZNZc78zZwBR+w02RRij6k4m+A3xEsYEGHvg6+AdeLt
	X6Etjs3m4sL5Be+WF8r9PkwwqeDS8ZI0AZCjCYiPcsQoY7iWQruZjlNzX/g==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f3bgb0bt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:50 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2fdba7f818so5805131a12.2
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:04:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745089; x=1751349889;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXDZmqpfj9Oi17S+KvFoTK0GaAZ2Kfc438E97avizmc=;
        b=YMTngv39RFaq0Rmv8dgp7wX3vZYDlGiEFecdGinVkkM7c+3do6/ppKj/JYIE0xZwgU
         Y/Suo4Qv11fDk54sFOpNdIG3jH+UjXVjBJxgKHaBhGPDbP9DuF0uqz6eLifEM8UCWC3O
         DMmok2PDNZdA6ls/b4kvbMQ1OGbPkaFVYF8jsiC0GBgToev98PvAZ+46PoF9JNRwtTGT
         x0eKb4dAwJCqiDA2BQ+OznM1jC9v+I0Tv5y/++X7y9NALKuoDNmZHXUGKewbjMWEsG0m
         n9YZYCjrmgHU9lZPk1h8qcuRi5OQbloXEOKTLJI0T4Mbl3046kuuClNws7cYnk58xPs7
         huPA==
X-Forwarded-Encrypted: i=1; AJvYcCWz2OpkQXoV8obsHfqoFkFnFFmS5kO2JHu0FMzsDtDgfogkgkuMDBWV/+ryDbffNxU+Crq+qHaAdnUM@vger.kernel.org
X-Gm-Message-State: AOJu0YxVq6lKjJ12TIO3rU+v/NtO1K8L2otw4VQ+mDLb4mpPPZSsLTYu
	y1AtokAEjfGQ3FSnmc4X/C+8QJhsdHdLRH8KozglbxG3FTZMv9ud4qBW4KNqocKJIL4a9IsCoG/
	tnWp96BYTRQh+nrJMmf0U/wSA8j4H/9b2yYkNOUEyJNlbd6BE4Swm2IVihYOEC1qK
X-Gm-Gg: ASbGncvxHPLYrRb3BHS2IKNL+7D+5pB6Dsmn2cUzb2mmnvdIBUbrj0nQXmVYYGHIVCv
	u35VU0JZl9cJAcRsZ+wOsDWn4Mv4Hbx7ArlxJ/4Jx3P2g+BJyvF3hnXnlnO/y0nhL6dHhM7n2Jz
	DxZgQGtUOTe7Dc0Ibap+OgKDUmVvO2JMSz1cyTbh0zxAaK4XPEqk9JtykWkwzazVyP8ESJVc1sW
	OsLnhMLd9qugzVv5wPD+/+o1rTULy+mB6Ii2CLSG81iN/ExfaPDkYXLJJDFD9djT9NthCXtUErG
	hOXKHqsMR1wIw+kHyJW12HxyqvYoN+m/J/Wc4VEXabKN7ZRy+GlzK/gMO/7PEIJfv8A2SCUFK38
	keg==
X-Received: by 2002:a17:903:18e:b0:234:9094:3fb1 with SMTP id d9443c01a7336-237d9a7321dmr269830885ad.35.1750745088733;
        Mon, 23 Jun 2025 23:04:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHGFVEgHMh2e65wgJoSytM+YbUXaFUdaLymaIwIAsqFFbJ5e27Dt9FJEOhG05p9+rpg/ktWw==
X-Received: by 2002:a17:903:18e:b0:234:9094:3fb1 with SMTP id d9443c01a7336-237d9a7321dmr269830575ad.35.1750745088368;
        Mon, 23 Jun 2025 23:04:48 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:04:47 -0700 (PDT)
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
Subject: [PATCH v3 01/10] coresight: core: Refactoring ctcu_get_active_port and make it generic
Date: Tue, 24 Jun 2025 14:04:29 +0800
Message-Id: <20250624060438.7469-2-jie.gan@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 8OLV9WI45kJOWNoiM-zDFmJenwMMnGhJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MCBTYWx0ZWRfXzQIs4G/6dZEb
 BW7egLbZze1uaMq0SFdDSMK7t0H5Xm+FCAQ51QlSWwb/fBAPOrMP3UiBxJTIaWlERH0crebVrtn
 1mgH58KSCLrVlpnX37GPxMpH1ZbONSmvdlTqK9kTkz4pNIHxHyBiypddMmbFX5JA2QOGqCKqjVv
 UERqrpTvmh4qUAUJg/pOWP98UAz3cx8NwxEFjmEZy59JBSm0z9yZDcgSb6gkP1JmDa62FCnqg/Q
 OwH++uwKQhlHOBby8fXS47f4kbu4a3sStxRofT0MqA+zQdrbJLyGUM98oWuxuwQ3XJe9GEcMiCH
 x+Iy6p0AMvDBXpm5TSgmqxdnyA/OARoF5NxFLAxItc9u0XqirvoCI+TVjAafGTU/UoXBf2h8hC+
 kqYEGeaF75rwvyjNPRpNgPjcwxzC0CGCeGxQD6nIlqYO6Z+8r3LH7WVOI0V9K+5dKUyIgHmJ
X-Authority-Analysis: v=2.4 cv=L4kdQ/T8 c=1 sm=1 tr=0 ts=685a4002 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=UMME_An3wchvczm7DuYA:9
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: 8OLV9WI45kJOWNoiM-zDFmJenwMMnGhJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0
 spamscore=0 phishscore=0 mlxlogscore=999 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240050

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c  | 24 +++++++++++++++++++
 .../hwtracing/coresight/coresight-ctcu-core.c | 19 +--------------
 drivers/hwtracing/coresight/coresight-priv.h  |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index fa758cc21827..8aad2823e28a 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -579,6 +579,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_port_helper: get the in-port number of the helper device
+ * that is connected to the csdev.
+ *
+ * @csdev: csdev of the device that is connected to helper.
+ * @helper: csdev of the helper device.
+ *
+ * Return: port number upson success or -EINVAL for fail.
+ */
+int coresight_get_port_helper(struct coresight_device *csdev,
+			      struct coresight_device *helper)
+{
+	struct coresight_platform_data *pdata = helper->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_port_helper);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index c6bafc96db96..28ea4a216345 100644
--- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
+++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
@@ -118,23 +118,6 @@ static int __ctcu_set_etr_traceid(struct coresight_device *csdev, u8 traceid, in
 	return 0;
 }
 
-/*
- * Searching the sink device from helper's view in case there are multiple helper devices
- * connected to the sink device.
- */
-static int ctcu_get_active_port(struct coresight_device *sink, struct coresight_device *helper)
-{
-	struct coresight_platform_data *pdata = helper->pdata;
-	int i;
-
-	for (i = 0; i < pdata->nr_inconns; ++i) {
-		if (pdata->in_conns[i]->src_dev == sink)
-			return pdata->in_conns[i]->dest_port;
-	}
-
-	return -EINVAL;
-}
-
 static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight_path *path,
 				bool enable)
 {
@@ -147,7 +130,7 @@ static int ctcu_set_etr_traceid(struct coresight_device *csdev, struct coresight
 		return -EINVAL;
 	}
 
-	port_num = ctcu_get_active_port(sink, csdev);
+	port_num = coresight_get_port_helper(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 33e22b1ba043..07a5f03de81d 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -156,6 +156,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_port_helper(struct coresight_device *csdev,
+			      struct coresight_device *helper);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);
-- 
2.34.1


