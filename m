Return-Path: <devicetree+bounces-199708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A0CAB11BC7
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:10:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AD55AC3FF1
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:10:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 09B842DECBA;
	Fri, 25 Jul 2025 10:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CxEHMxWs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C9F2DC32B
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753438106; cv=none; b=nuityFMmFdNfvrPVqms5T8dOCzyJJBMxwLHo/vRnG07u7WOGmdq7jjBagi2VQVCpwZVtFak8VOSQCX34D2FRcghqEMU/1EWGy42/ZPb0hv23MJkVdDh/7Gon24XD4urL/NU6EjqKSiHkBuNRe6xvUUCcPQTG29j1Pxavc1F/p0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753438106; c=relaxed/simple;
	bh=MlUhyGdVnh8kU2bXiSAS0ogGhDUv6OxnQL7AC037lgY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=p5u4IhA72f0Dqi3Q3vBJ2CRzOaFcdoNY002MAmXNoQbrMzs7Wa813O/tTjOoAC+eTwthyCvk19LeGOcciraGFf7ichq0Spy92OpvM4C4Sw4cwnFiUFxm1ZAZWFp4PXeNwY92YlZt/QFP5F39DAf37PRGfFvzAG2aTZfiujSQnq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CxEHMxWs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9PDh1003687
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iwVty+8EPpT
	8rhXCALbF9loLMkW446LKfXLUZrsgr4I=; b=CxEHMxWse1WCK9wBxDV9iQM7wTg
	VFNZogTvcgdq/U31WLQ3dyK2D4QIfI5f4hr+u7hewdXFstQgGieekWtU5b+GzGae
	Vu32wjNnI5jEjl2cj4oLoJd9n7gp7/Vtx0sTpvut3bR8seBrMtOM4WmLQoNizGBG
	zF6DZxUzkcqGhkEsM5Uys/xeVCTJUlfW78p6V/Q3DrKDwqVtSXo4jNH6vBdpHp3s
	mZylXggVW7z5Di3FT4Utg/09a1JnNMeXtl7gqnkTBA/pnuQvBJohzi8ZoQ5XeOM8
	yNuIOYbFVs9TH3j2ezsUMbR7WyT7WDSP7m8Sm+ONG8dwrarFvcgeXgS1ZZQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2xhmh2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:08:24 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-313d346dc8dso3290625a91.1
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:08:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753438103; x=1754042903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iwVty+8EPpT8rhXCALbF9loLMkW446LKfXLUZrsgr4I=;
        b=rCmT4lDWAFzM3GSe2IRkcfcOeyfAiepLiI4K1fAqtmhD6PNNnKqdGkw2H5JD4QpGfm
         QAzaOXHq/mLUHUzoE+4TrIdPpChu/drsCzo8WMfUUtZw9dFfMIPUhhKFtldVg0Xj/aHL
         MuV1AAMWT5uYFwMzKjbbaaZxYc/WQMAXND5nacadqrUe/iA/6MeagkYPNXPhWz5RxH6o
         maUV0GxJd3tmzvW8Fby6eRRPL1S+55yDcDU8MdH28Jw+XWjw7IBfjO6sNmerAHQxBwIu
         PqteNp7dFa68gqLN5SLunS0jAcHGZqIZvRHPsC4PjWzhmVFMHMq5Hhyk3x71NmXsqCkA
         tGRw==
X-Forwarded-Encrypted: i=1; AJvYcCV8PRGCvPDVi1gpQ+/7bqiwhZ8pQc1QeDapDc/c2Cra0UR4JrwGhlJrNv81KrkznJKgUr1KGNgI6I2u@vger.kernel.org
X-Gm-Message-State: AOJu0Ywj3RWH7WNdg+tlUuaEDgENG/RkdFCwVLLVF1lcsjM1aP2dPjJx
	x/grbatb02XIOBKCCszZucZVZXHEZf89sbrxCrh+KcjEqFkOuHPFTeVGyNO07Mh+uy+QfFqnsQy
	R5eiw61KR3F3CreZReQZ6mZIZvO55sjnnQY36GZpGNInHG5cXJVrvYcbrrMXyFH83
X-Gm-Gg: ASbGncvhkvKwmRK2uV4Fb/avKnzm4Kw20tJ4ugQ7vnTRSz/zbYDcTkIKLLZJgayNQCn
	IKrOCRl8We9T5xSih4AlXEG0k34PuOvB+NqzgmDOOT+6l1TbqB1uVSb5VddjSrZh48hUa2JxN4p
	IcX7vkTyS5dGB/20/YNvqloPkDRj2dlibYE3BK7kHddiUysS635juAFoD8c0DWAzySfi3eOf2A6
	7fyW6CwaB0sugkZY5lhjDx1LcT1twOiKBgWZOvyny6jRgKadr2hOyevFZvYnOPiYAvgdQ3zqjxX
	R+nXoAiHNUPMnxnrrYc9+LoJU8D1rXYvofYVljNGaMmM2ex5VNeCrajoqVaE6Lz/GUJywl6uyEQ
	8Ex9tb1xzEsSMRBiDL9s=
X-Received: by 2002:a17:903:4405:b0:23d:da20:1685 with SMTP id d9443c01a7336-23fb3065804mr23647135ad.4.1753438102567;
        Fri, 25 Jul 2025 03:08:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGAiBJTC/djKisNS0F0AMBhg//Vc5DrCNPe8BoJTA4OkfqBJrdGCh9t/rTtPqfvIB0yiXT9g==
X-Received: by 2002:a17:903:4405:b0:23d:da20:1685 with SMTP id d9443c01a7336-23fb3065804mr23646345ad.4.1753438101895;
        Fri, 25 Jul 2025 03:08:21 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fa48fd29dsm33641435ad.176.2025.07.25.03.08.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:08:21 -0700 (PDT)
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
Subject: [PATCH v4 02/10] coresight: core: add a new API to retrieve the helper device
Date: Fri, 25 Jul 2025 18:07:58 +0800
Message-Id: <20250725100806.1157-3-jie.gan@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: c9mXI9cdAbgbwQaZtiIl40ILlzXg76MT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA4NSBTYWx0ZWRfXzwqhJ7eyk+Ep
 RMmMFKNJSpLUWzMiJkQdtaD8N4md5Yel9LzsNJQM1fsbkKupv4m+E/5LxkMHwUEJc8AhbSbkYYb
 Z48VKWpSyp0d9gvlgMXSHi1n+IZJ1vKcKNJF06MsCgN2pr/fDAbhtvpF4lcLuXrI6xb4mCS3VKh
 EPGCQybQCcM8+IWZS7dlCO6Rn9YaE/6U9bp3NFVTzhxf/52w2UcY6fiOddZec3G/B3QfFIi1ksy
 tBLKFKCG/AsWUnQ7NrpobhMYBzMUZ6UMA5tQj0ktVfkpwUWcK6hXDlV3d9/1pOUJiIiPO4YQ8mU
 LSwqhs8myIg1yfvsqtJvFDjwulqj2bDpZecoJ5KkqA6aU5+g4FpHAxqznA6GuV+E6RxTE4pYZIS
 t/pdHyBKmi8XdC3n7Z27NBbukZNOwoBPG1Hw8xe9LAXDB+qJD83b+g4NEumPd3hO2py9hWxc
X-Proofpoint-GUID: c9mXI9cdAbgbwQaZtiIl40ILlzXg76MT
X-Authority-Analysis: v=2.4 cv=S8bZwJsP c=1 sm=1 tr=0 ts=68835798 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ViBFXQGRTvhYuEXyb1sA:9
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0
 spamscore=0 malwarescore=0 adultscore=0 suspectscore=0 phishscore=0
 priorityscore=1501 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250085

Retrieving the helper device of the specific coresight device based on
its helper_subtype because a single coresight device may has multiple types
of the helper devices.

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


