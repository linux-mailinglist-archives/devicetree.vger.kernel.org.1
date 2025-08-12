Return-Path: <devicetree+bounces-203625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46035B2219B
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 10:47:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A8D3C1AA4741
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 08:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AE782E2845;
	Tue, 12 Aug 2025 08:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gufhqA2Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D209E2E2DFD
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754987872; cv=none; b=GReiMa53V4AlNb//OSFRG/rRIdOqxYX3MNmspKHPw2P96H7EoD7mwng23U6LPSzTX95cn9W+ewUMknFQcQ8ew+ZlwiarYvGYNgzZW3bw04O2w4VmvitpNfTpXTmq0gM2RKKFYlflRK2khqw1EW2VLx0gauLfiKb3zULKBQVKIvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754987872; c=relaxed/simple;
	bh=D/F4ojh5lN6J1g3jMwklYOcZ7lTVu6mETleBG8wgOTk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=PEpMsjytjeDv8NohNMesZL9omBjj6LFBEBypo/zHzcvR+Wu5KMkIPzSWNl9smHSRFK164IS4ZW/cAWMP4xkdtCOXVW6l56F735voQXTrIINCNhmLXCWD2usrbT+MntVYdpM6uGIvAs1+UWNWMS5+D8xWrnAffY3TWNNaMMPJdHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gufhqA2Z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57C5Xkxc030288
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=wrGu5dBmfdM
	mzrfdvoTs2DIE+CWt05hHpp1+g0Qaf2o=; b=gufhqA2ZBtkvBSF2b8ZHeibVtt5
	H43hsVSJWZzwVH70ZTx66iee0kXSpyLFjt+WIp2nL/iJ10+tej5R08Dv4/VDezcV
	kajiTaj4wwFt4VPqzZi7Lh5wwMxkEAF9r516yTN3ncFqMcTyKkNhez8wbYmg3NSU
	ONPJprHDkB0q2vdSXmZ5QhokpifwubucDWxGjfMoqOIVrMZhX5Soc+NomHwPOww1
	uMKm2Bk05Ar3iiqkoi1r6LXWS5PJN+6dACdhWbUCFcZA38v0KrAbkVhy6y6mWj0l
	SuVOxLx9wkq/eJ8dmitZ8AsOqgluTivUGHqAcPJkB3g9RjL3Z6b5oYh3ahQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dygmfcuq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 08:37:50 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-23ff7d61fb7so51104005ad.1
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 01:37:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754987869; x=1755592669;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wrGu5dBmfdMmzrfdvoTs2DIE+CWt05hHpp1+g0Qaf2o=;
        b=aDBApJxcCYydDF0XJ48nXUa+djyNVUQZVTC9hTYp8OHlRywZ9Qr9s0R0v2D4c7QFYK
         rvSf/cKeBwjm0HSe7Kd6CUdekZcAiea0cruJO4AGD9XusITxAb4nRCDyophZqrlWDagw
         SmS+Uq/ZE0XKZdmXSDvrXSRj6teFL1s/IhCDte3LaSEFawIe1rm9enub0kOwwapuNd6D
         UBGuvBgZxwWppExEQSeEMcW7vc5Bl3PhAbz1WuFpNqZF0G3CkhXGd0pdf74X382J2BTt
         q6Sx/JAjnMDacTgI4BH89aVQX3BhBDo5fwWZo87KfeFLKJqN+Xu/h4sGoARNL2AwMtCj
         1EpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVY55qMH32gDwkVtRMY/mA4rL1TxXm/xTMuRC33BmDZcUDOdEAY8fZHXLuu+unYzG5pLvMW3R/mS752@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo9aa8f1at3uElsU3bBNokelTUcGNRqFuAxK44bce/gosUj5xK
	2RP4sC+3zyTluiiH8tnKhz54/wNv0PpObKJsuK6Zqj1TKXTFXllyVdbk2ZMgxe+05QSya44RwU+
	yq/4wZsTMP5+a2p9e2IHC7VRAFAsYM+DtLl9XttA1XvCRGEcd80wit9QiEGWnchu7
X-Gm-Gg: ASbGnctXKSTJC7LFc5xaxQ3lVee77QFbZyG3C0+epFvQhIQn3CixaH5TJ3TiWxdIYk+
	fYLnzhcff0O7suhqkN0Kkl3WT+s/LFG6Lw+Cuo28Y0R63KhDE+V8Hfqu+G+f1ONdzn/mtkzqwaJ
	oHVQr4oHCLQnYTXgPg9lNFMJoTQSv0cZDzH5zezR372eZtCw06aYSiSuI3QvrTG35nbZ5E6gql3
	WHLu1yunpbJp04/jPSIdj8VE4Z2clombrninAbyOPyY9M+89zaCJoGSOUCw2uzjtUDVi1IWChcZ
	eMu5likNA9W4saZRo5G5+RPEivtPTLkLQIVjoYaA1mvLF0mxZZFZHIVp3EdEgli8Jg/ap4pMMtF
	NWwlavWFROeUD7ShcaOk=
X-Received: by 2002:a17:903:32d0:b0:240:6fc0:3421 with SMTP id d9443c01a7336-242fc2df919mr32672055ad.3.1754987869234;
        Tue, 12 Aug 2025 01:37:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1epWZtnF2IBB4X6gRIcAxheEo7d+5Pdk6LBydS5mLgAm0zXrYNJ+qesoW7cmIPGP6RrbrFw==
X-Received: by 2002:a17:903:32d0:b0:240:6fc0:3421 with SMTP id d9443c01a7336-242fc2df919mr32671605ad.3.1754987868720;
        Tue, 12 Aug 2025 01:37:48 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-243086849b3sm1915345ad.175.2025.08.12.01.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 01:37:48 -0700 (PDT)
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
Subject: [PATCH v5 2/9] coresight: core: add a new API to retrieve the helper device
Date: Tue, 12 Aug 2025 16:37:24 +0800
Message-Id: <20250812083731.549-3-jie.gan@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzNSBTYWx0ZWRfX77Sl60svlQZ8
 tMFQ5Ia7lZv76UqNIR73IhcPJTBjou9y5RmN9sqw2n8UYx8qh3REQeHad+hiZQdWeI7Y3hFHGy5
 w0+Mq4popKvKbKixLylnlgvsA9I+vstqGUOdG/Elimfszn6ZGkizVx2sRgF8XLFkQToDR04syiG
 g6kMrTXBs2T5rJSoeAQtneL0QGS3EMY32ibE3FYKPxeB9ZgpOEyqy6vbZbo1BJ+slZ0P/biFIYo
 E/HaJ/m49xXbiWmxp3X4adxf1JiCPa5fYJNLo9OPKUink7G2AdhdEtMw0yXGp+jqei7OaaN1X0H
 hwidXJplwKTm4+gL9kwLki6/S336OZHa52JF2jtC0l9CDur/PljIch6Sjjk8eRvZZvLDvi0rom5
 sXXhwtMY
X-Authority-Analysis: v=2.4 cv=FvMF/3rq c=1 sm=1 tr=0 ts=689afd5e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=ViBFXQGRTvhYuEXyb1sA:9
 a=324X-CrmTo6CU4MGRt3R:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: fG2-VpUpq9-KZDsuzojQs4EfUydMhK4w
X-Proofpoint-ORIG-GUID: fG2-VpUpq9-KZDsuzojQs4EfUydMhK4w
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_04,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 bulkscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090035

Retrieving the helper device of the specific coresight device based on
its helper_subtype because a single coresight device may has multiple types
of the helper devices.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c | 35 ++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 042c4fa39e55..018b1119c48a 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -580,6 +580,41 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
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
+	/* protect the connections */
+	mutex_lock(&coresight_mutex);
+	for (i = 0; i < csdev->pdata->nr_outconns; ++i) {
+		helper = csdev->pdata->out_conns[i]->dest_dev;
+		if (!helper || !coresight_is_helper(helper))
+			continue;
+
+		if (helper->subtype.helper_subtype == type) {
+			mutex_unlock(&coresight_mutex);
+			return helper;
+		}
+	}
+	mutex_unlock(&coresight_mutex);
+
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(coresight_get_helper);
+
 /**
  * coresight_get_in_port_dest: get the in-port number of the dest device
  * that is connected to the src device.
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index e51b22b8ebde..f80122827934 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -158,6 +158,8 @@ void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
 int coresight_get_in_port_dest(struct coresight_device *src,
 			       struct coresight_device *dest);
+struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
+					      int type);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);
-- 
2.34.1


