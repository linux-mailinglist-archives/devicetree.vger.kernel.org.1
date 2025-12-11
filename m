Return-Path: <devicetree+bounces-245742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A2BAFCB4D73
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CCD433016709
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:11:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46B6C283FDB;
	Thu, 11 Dec 2025 06:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ElMS7GCH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="L6gKAPJ/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BDC1F4611
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433499; cv=none; b=ASWCBPA/2cw4OSOG8MsVUwrzlw+X7L01PubS/C5ty59knNe0esxwldCmyxo6uc3DVlEk8LEg4bn3U62Yk5KgVbTGyPJ4j6pzT/GULgGvi97bCBs2vkAKvurW6/ApDxZjtYjM43hzEBH0U4ZcKUPvYCcLqKzxxuy9i/JAirV0Iik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433499; c=relaxed/simple;
	bh=x79EOx0VHbHe/nWXls6UDtNS83yDuFtih92LzPbC2MY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F4AMbNAcrYmsAzW6RNdTaoUVP1zJhB3C4wv5MKXONAEMGyBKDg6dMw5kJWhjg630bXtvlmwuD2nDdB6tchCuJ1+aZvqt4yT/zHD5KZ1O3lRfYkWG7uzARaauiwlNo+KjkK7BnhtiS8TG0WJRXiVxW0vK5f8Dx/F8iUX9Jo5lc5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ElMS7GCH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=L6gKAPJ/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB32sNI3683323
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=; b=ElMS7GCH9V2NN20v
	UjfaBr6dwotk2cyymZgw6NjUcYo2cM8nlRKfmX/k3WNYZQuDmqedoB5d/WLmwxtv
	pMoOIvn4ULR6xU/DzBz+ntckwWzx5pAlPevjRMmFjvElWyeGs0Dfls33ExFOvRKo
	cLfed7IV4skiBnkbhpgglHc1kRcZyYLa4+Kix5fTqVqz0xHRTPTOsnfcDzo0czYZ
	g/QS81oHoND02CNnpZWznLN+d3YEI7Ji26Eweq20svagQg90vVbvco4l0peFphrg
	v7hyPJSEs3cF05gM9TmrhWgfkSn5UfzO2gNJNSMLyVDcBJT0Nur/vJnFyvmyuifS
	vKnBEA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aynpvren7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:36 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7d481452732so1161646b3a.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 22:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765433496; x=1766038296; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=;
        b=L6gKAPJ/fTjVp8QbaqvzjoDk2pFsE9ENPKO/JFCuIYsKwRPJ6pYA0LNljx8FD/cQfp
         oU6QEfQ6o9VYgAGqwNpUjn0rjVJi4J+CQW8kI+XvKmmEfQPyOLllXM8JmDklxAmdmu5a
         1iXqeC9ghz0pLFOXj1fkgVI0llMlbNr13OfDoCQf/N4BWVb0TeCP6kp9PP/cZtiBYV1z
         vl2HySqXgDIblP2aAE4l7uFp55jvVXA8ragHmlhG8HUqPINflSaGSIs3PHBPGkwWu66Y
         sZc6Ek4OrnRF/N89VPI56nihwKqXzDwAq5qgq2Z9qFVmpU3sEeck4oBmplkVPOk1wWjr
         E0fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765433496; x=1766038296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TjPxjq1G/MyM9wZuLe71IZ2aZxQ93j8UibxFtFmopSw=;
        b=O6j7tu7DIUM/qJWoD+tX+DTugOMFPTnWAbxXMBcEGB93Vou8ljgUbneq5y3myEPgbu
         0pG8wTrKER4Nk2w1M+S53E1jqP1uZEXuQh2J3/pPmvLf75A4V36YX9NFfHHBJ0O1OlWF
         be6PnCnQ3MkLp5Z8t1Z1HbxioCDXe14Zwe1wRISBjYmkJsJgGCnEMvjEqMvNYQi3QDBg
         E3RTHSLZO+nXVMqoks+z6Yd1yN2oZQpIE9ajWBtAQwYVdVA7dN4roc8sQKU4YrSGxVla
         xMWGa6Lm88qSo/B8VljXt8RQetG1H8tks6wx6tHyL1kl+fp2BHV/R28L3GWM2D4KlX9i
         R9vw==
X-Forwarded-Encrypted: i=1; AJvYcCV1gxIpTlXpgDcDp7CPXsmGl9zbVGlzkzuU7asZveaMMbM7zdMHnnxLfdNp28zTMwPfHvDd41H7x5bi@vger.kernel.org
X-Gm-Message-State: AOJu0YwL5bB4NXnJwBfZDg04NimwHH7zKxRf62Yj/8pRhnP53kK905iN
	Fl7vggpJl0guiA4HUPVyjuRjNWZDfnbbGgD3TmDJsFOs3VH9QnsHtenXyx71YEYCU0Mi2Ug4MZx
	sC6mvuvsNhfZj7FIFvmECikf2PiLTo3OlZu9GhRwPdSp68jUclFaHjLacwXv8650m
X-Gm-Gg: AY/fxX7IiIEugba92BQQpEDOMa8W8Y9ikPO1sMJgtPJwHd5PErRI+23hVCNejsioJ0n
	fzPIpYDXKzmjPR5wP5v/tHawGWElXPM1qAvAZqCVsLSweEagiiMIxa+sHzPoVFHpuTMRfhCbyk7
	aOJ8e45fmpqIylD9K7dznDiOnXsfCO2Y19+7VJFiNpCMNQc/kpXZmfyfOYJV7t2r00Q3tiz4G2k
	oUrAEO69LziP6zTTZ1Y6dQdEANRC+OQLp502Vb4LiiuwO8C5v5IkQ+nXmxWDZuZ8t8YVFc7RMUl
	gmTpluMkmCdzkVg0A6h0JOjgYCCcfpjqGydJvvibrVPLEFZrk03T0iXOGEw4CEPxDNugOiKWk68
	x12XDT0B3hTGzuPSRUCObDIAfWaoi1xSGOTXUIrUVJECfBKi/NThSoJnJ2Wxg5YlJI7HqClPu
X-Received: by 2002:a05:6a20:2453:b0:35f:6e12:1862 with SMTP id adf61e73a8af0-366e0de828dmr5308169637.19.1765433496091;
        Wed, 10 Dec 2025 22:11:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFRbnY2BMcR/og395k0ubhGGjQJkENmpxSKjCoZ3XqllWWOS9akD1cLgbfkWaMN6h6ZrKAbmA==
X-Received: by 2002:a05:6a20:2453:b0:35f:6e12:1862 with SMTP id adf61e73a8af0-366e0de828dmr5308138637.19.1765433495590;
        Wed, 10 Dec 2025 22:11:35 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea065186sm11725945ad.89.2025.12.10.22.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 22:11:35 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:10:40 +0800
Subject: [PATCH v8 1/8] coresight: core: Refactoring ctcu_get_active_port
 and make it generic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-enable-byte-cntr-for-ctcu-v8-1-3e12ff313191@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765433484; l=3769;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=x79EOx0VHbHe/nWXls6UDtNS83yDuFtih92LzPbC2MY=;
 b=sagTWu5bEdNT35gpTyGdfKMRuJGqVH+fwNnNQgi3O6oNgG0bn+Zs93u6Acp8YFmnH/6Zcn2wW
 n77eva9bZwOCl4qhBVRZCRPUTa0lqxGR8cmgO3CQj+HsxQgciqmsfUj
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA0MiBTYWx0ZWRfX8PeY4BcZKw7n
 U4Oslsf9Bbu+vpdWd7/8DsXD48ajJ3s5UjFA1AIHb3WoUs4zMcJ7Jk9ANAJ6cTQ7DPzkrfSE9XD
 kcfC2vlkU5Oazgt0bUPf+zoWD1h36BPPKOTf5mwPWG6UB5Shv8HCEneTu3HOvAVZz3hClbULgL9
 ALiTDusJAGcY7vt85PZzVAuPa7yN7lR8j3AxEl6ExE8hK1qcRh+Flg3oHnQ4n7XDhaiMZPXetbz
 D0XXCF3dsK5huVim/vkVKsP5FeGjRKe6irPtxQLezXx0Etzohk/Z2lW2TqOR4xGDGVHrnKppaT2
 F1pGu4M5NssT7LyUkNiyvCWwoP4LyqNdDWzgCvjF2PNK0ashwSXHMpg1cDgkKpap9YSleI6gzTL
 metyg6ZKNDriMHtDhrxHPtHbAN5/3w==
X-Proofpoint-GUID: HieaXMcmOqKRVe476Xv_tAyyNVKSp0Iq
X-Authority-Analysis: v=2.4 cv=C6nkCAP+ c=1 sm=1 tr=0 ts=693a6098 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=qQZ2XtAyJf2dEkEvaVsA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: HieaXMcmOqKRVe476Xv_tAyyNVKSp0Iq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110042

Remove ctcu_get_active_port from CTCU module and add it to the core
framework.

The port number is crucial for the CTCU device to identify which ETR
it serves. With the port number we can correctly get required parameters
of the CTCU device in TMC module.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c      | 24 +++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-ctcu-core.c | 19 +-----------------
 drivers/hwtracing/coresight/coresight-priv.h      |  2 ++
 3 files changed, 27 insertions(+), 18 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index c660cf8adb1c..0e8448784c62 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -585,6 +585,30 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_in_port: Find the input port number at @csdev where a @remote
+ * device is connected to.
+ *
+ * @csdev: csdev of the device.
+ * @remote: csdev of the remote device which is connected to @csdev.
+ *
+ * Return: port number upon success or -EINVAL for fail.
+ */
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote)
+{
+	struct coresight_platform_data *pdata = remote->pdata;
+	int i;
+
+	for (i = 0; i < pdata->nr_inconns; ++i) {
+		if (pdata->in_conns[i]->src_dev == csdev)
+			return pdata->in_conns[i]->dest_port;
+	}
+
+	return -EINVAL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_in_port);
+
 u32 coresight_get_sink_id(struct coresight_device *csdev)
 {
 	if (!csdev->ea)
diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/drivers/hwtracing/coresight/coresight-ctcu-core.c
index abed15eb72b4..78be783b3cb2 100644
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
+	port_num = coresight_get_in_port(sink, csdev);
 	if (port_num < 0)
 		return -EINVAL;
 
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index fd896ac07942..cbf80b83e5ce 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -155,6 +155,8 @@ void coresight_remove_links(struct coresight_device *orig,
 u32 coresight_get_sink_id(struct coresight_device *csdev);
 void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
+int coresight_get_in_port(struct coresight_device *csdev,
+			  struct coresight_device *remote);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1


