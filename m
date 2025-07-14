Return-Path: <devicetree+bounces-195879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 047E1B0371D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1880D1892994
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EF522A4CC;
	Mon, 14 Jul 2025 06:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HfS+iyOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A75F8229B16
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474691; cv=none; b=T0WX1k9ymeymuwQYdx2ZXA4tALsUUtrVN/8uqKdbg8k0pX4y+D7xowhoXY0fvDZQRdmq2a0Z4scSdmgqWhF2wiS2l492lcorolliovSrl8oQPW3mDNIhAryvwRS52a4WjB42YbYgf/xF8FWldgkgDEuecyr9BNJ1r34MSEjkmmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474691; c=relaxed/simple;
	bh=1b7rvw56Mctvyg+F2hGGn2xKS9+q2PZD+8BFDtHftYQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=SCYKqLprf7cQiW/GsDAi6K9/DlNqpaGbAkheCde9kpCehTxt79gkKBuLK1hIiFF5aGRo1sF9Kg9twN7lPhWqH488Vke+iMUX54DJ/bRYeKmYYyq40LvL9qjsyVHGF80cVcJ90kH8nq+7Gno+46hkqjmDfY+am1EPy6sD7wh831c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HfS+iyOE; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DNlS3l032669
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=AXLNn+wjGkg
	SdDfX67QxF5l/RNz39oJDxLQvREZpRME=; b=HfS+iyOEMqpMEBJv0AV3xStaduT
	YXA1i+SJdLVUuV14+/JitLchm+N2q9ujnayRhe77pye5mmQ/FvvMomfTGKCUyyQU
	5A+jBSG0EDpwpDVWLunZ1iv5UPsZzIYY+t+Z1+9HyTEV+Q+t11sekxG7s/IyhL/H
	dxCUA7tLA49Lgd15cvf80ifat5mhYnQgph2wAuWFtBIaUq3JIQ3ITcHzkfa1jCAx
	q7xevMOvM8O3NCJk093NwAuTMeF7IMwrR+ULKXTyPrcv28k+vR1WAWtwnmdp1K9C
	uhspC7et9g7/uviuUvkBZfcD47tCBxE4a8THkjEWhQ9TlEAbYw9O03qLuIQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47uftmbgx2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-23689228a7fso58331765ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474687; x=1753079487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AXLNn+wjGkgSdDfX67QxF5l/RNz39oJDxLQvREZpRME=;
        b=CKxyPorE3xN7iopqLEeejrEaG8w54Es1mIA32nOAGH6KSJAZXivweaNceSqStgmxZR
         O1kTs78kS3Bf4NjARIguoOIUPLuSWnNnVC5QKvvqBZs4wUQFs/U+ERIbJMp3+Jm7WkoU
         0gDlFVACpbdWlcj//0Xd86fnZITItPSwEoOITAtQ2bPVUvKzDSiwJi3h9Lemierc+G8i
         7miywEHVN97vGpzFmM20Hc51RgKPOIr5e9WIA3mv5tcq++vHxqy64H/zg1z11rU7GqSm
         s7ktGBdbQm+GO7KdloeQ8gkT7CfRq/7BvURJusCGCDvuqUJaBtjlgHdaA+BCug1a9qDg
         0Fgw==
X-Forwarded-Encrypted: i=1; AJvYcCWjoMC8XhHKegViYzHMqYOzhvNYwjswoAtUTSh7PM0DttXlJt45AVM3PlMjrVYj+eq3kP4FL65jPkkp@vger.kernel.org
X-Gm-Message-State: AOJu0YxqPwBifbfhwfReeeIpHHm6ZihE1ba1sJfgcDFZXtmtowSmvpb9
	b3iCMluoGW9mGVzwUxzIlFfK0MPgw25DyCoeb5wEWPhrdmmUUmExuD9Rh8jFfR++OqGu7HqNVTG
	xCnJOkc23zr7BRyB9OZoQwZ1xxPLDstm2ViHbxLu11GU/bqSTVqQWcAtjjeFqqlRx
X-Gm-Gg: ASbGncu4xMwb4wwVauUp36Ej3wpZ6hpHot7xGVh6lO8RrgJkUx69wThozdlY8c5VisX
	nR1OuSsCBkJiAv+rUIbLUvTkT4DSlcHL0+DqBGHpAeg7x9xnLmte0TNP36VsEy1RS/w/XmmcRsU
	JUQ8v8duDsOWLILuaLqe3EMAYpCIECWI0TGGfN3nvkPfsKzaV4LRQ0KpADsftGdL8GFNIANYVu2
	b8qR5Slq9ft3O6dH4epvpBx1f7gvhHmyflISfWauJCxiZ1RFpXXStr0LTxuRZB4DU/nQUqTJHQY
	55NkMdsOG6fEcjGAus2aao3qcavHd3PLWsgjCDY/gzOHosN9aOIyKU4DfjdRsllm0L8WJNqbpQ9
	xsasiw/aoluPgf4Doh7/c
X-Received: by 2002:a17:902:f990:b0:234:c8f6:1b17 with SMTP id d9443c01a7336-23dede8c3femr140606935ad.38.1752474687320;
        Sun, 13 Jul 2025 23:31:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEhuRWB8qDraxlgUCSzGpQ7hJwWY5emhcB3nOzVNA1nN8Z3RmdDgtgMiAQImDA3RGWg7WXXIw==
X-Received: by 2002:a17:902:f990:b0:234:c8f6:1b17 with SMTP id d9443c01a7336-23dede8c3femr140606595ad.38.1752474686921;
        Sun, 13 Jul 2025 23:31:26 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:26 -0700 (PDT)
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
Subject: [PATCH v3 RESEND 02/10] coresight: core: add a new API to retrieve the helper device
Date: Mon, 14 Jul 2025 14:31:01 +0800
Message-Id: <20250714063109.591-3-jie.gan@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=AI4FyeZ1 c=1 sm=1 tr=0 ts=6874a440 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=Bv2r1u00ER1ubdDhqu4A:9
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: gk7PjMAsnlINd0OitzTSWQGX7Q9na-Vk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfX2rSL/BNrM2ek
 i1mxFnTpzSQVls/ZcLgqZpu6K338lPppmn4+viph8sk83WB+gsi54OCnPpxph4LlsZUF9sqQLNX
 w/mVYBoMx5TAQnrDnhc5q1WB1ZyYNm4n99bL3QHDYjpa46cURsdMxK0B+gd0OncZzm3ANTfZ53X
 UGhzwbR0SP8J4yV85ti8sekHogkuSwJcmcqvSP/ueQMkhlQG3ncyIrJzUvc/t5FGfMJNxPJ1gnK
 vLTYDpU3MnoHmVm4y9Ln1do1XYbB5lOKWYnD/+xJlSjo8iBogzKD403vQ+hYKjsRJLSLF9ctNXW
 4vj+A1IK8oz2O1tDFUfnY1Y0gg9RuslaFbrvy60Mggw8V4TJhvolZ0cM9BPRW8+0pelL6B8t8s6
 W/xBjPR3f08LLEJ2CaiAZN5buBFauz3d8zT6Ut6RUVJ5Wx5eXVeawFjjYqnbym0Aux0OkGbc
X-Proofpoint-GUID: gk7PjMAsnlINd0OitzTSWQGX7Q9na-Vk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 phishscore=0 suspectscore=0 mlxscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 spamscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140037

Retrieving the helper device of the specific coresight device based on
its helper_subtype because a single coresight device may has multiple types
of the helper devices.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c | 30 ++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 5297a5ff7921..76e10c36a8a1 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -580,6 +580,36 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
 }
 EXPORT_SYMBOL_GPL(coresight_get_sink);
 
+/**
+ * coresight_get_helper: find the helper device of the assigned csdev.
+ *
+ * @csdev: The csdev the helper device is conntected to.
+ * @type:  helper_subtype of the expected helper device.
+ *
+ * Retrieve the helper device for the specific csdev based on its
+ * helper_subtype.
+ *
+ * Return: the helper's csdev upon success or NULL for fail.
+ */
+struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
+					      int type)
+{
+	int i;
+	struct coresight_device *helper;
+
+	for (i = 0; i < csdev->pdata->nr_outconns; ++i) {
+		helper = csdev->pdata->out_conns[i]->dest_dev;
+		if (!helper || !coresight_is_helper(helper))
+			continue;
+
+		if (helper->subtype.helper_subtype == type)
+			return helper;
+	}
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_helper);
+
 /**
  * coresight_get_port_helper: get the in-port number of the helper device
  * that is connected to the csdev.
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index 07a5f03de81d..5b912eb60401 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -158,6 +158,8 @@ void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
 int coresight_get_port_helper(struct coresight_device *csdev,
 			      struct coresight_device *helper);
+struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
+					      int type);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);
-- 
2.34.1


