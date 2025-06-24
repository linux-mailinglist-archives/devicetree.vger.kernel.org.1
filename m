Return-Path: <devicetree+bounces-188830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFC1AE5C71
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 08:05:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 903AD17D1FF
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 06:05:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A64E24500A;
	Tue, 24 Jun 2025 06:04:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iiNcGhzM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E28A2441AA
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745098; cv=none; b=qOlnDp7gOvZy/878LgweHW6YuVWxQolHAq8av0U8T0vwplM68eX/BMByzeFghqXhmfR78UeC4LBMtl808HCi1G5DIdb4MHLCCSboZcRmnE+tGnnbTUTJbwJqqxWDYYSAo9FSLdrl9mIzMXlLs4PqWTvLhbyfRFS1lXID6zjgHo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745098; c=relaxed/simple;
	bh=klaYK/ndNGf2Zd+yYu/jis1akITo3BCwGWiGHVFp7+s=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RGt4H6tHkGVq5vU9Oil1DfqFmSXqfBoDtJPvdn1p4/wIAKDxVzJoUJnRvSg0EqFhegfSXyqe0qruyE2YqOdju1S6I+eZu6QWUp43OrVX5Lwfx79pvrTZqPnBd0TVAavnC3eq72ensXF9ePnonHp0Oe0eO2bq7HAWU71i5CK2vws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iiNcGhzM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NKliXU014954
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=NEd0bdzHNq+
	BYGf2pvWM9XNZngsnetWAYruQNmk3PFE=; b=iiNcGhzMZ8TS0FOfsVcLD+w+QEb
	bYnUIlEVPMnkQer7sJIXA/g4O3nAMq+vRVN2LfghQvBn0D+V0Zj3E7t+jsD5L3Pw
	Mv5mgFPXD2sGGEYcySuu1SIo+WIk6O5FyOftob7y+yc3XIoIV/wtGWETsrbF+iH9
	+fQOKeRD03d8SAngv2gMGTikDy92vbeX9NCe+oSRtNLTI+DXgdKPRVk7UppuKmuQ
	7/u9PFP2g9Qs6gkrw9JKlvS4fWiDKIC0l6JlyRZHjXwZhQQN/yhtGv8cshH7zQGP
	CAYMjFSfK4Fxh7Q0ILpchN5fcp/L0YqnQU+ckd0afAfRKS/Mk47OLq0PsWw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f2rpu5pd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:04:54 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-235c897d378so661205ad.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 23:04:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750745093; x=1751349893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NEd0bdzHNq+BYGf2pvWM9XNZngsnetWAYruQNmk3PFE=;
        b=fe3kD8S87MtdEKD9dg3W+RC7XfZ59G2OKv7KtPUZDjISxv8JmBNr4IUtyUeEtJAHF2
         b33v3nTsomefMJgWKUTvwr8p4tjpMXSkRiZa+KxpgdqRQ9bFYfLSvqunxTGQLtrGZBjV
         j6rWNb0xhl1qzs9SROO3lGaOlMiPIJiDcXOO2Kb8bt1e/fmfRBM8B0QyamfZOb8eKpIR
         F+UV7Plnx/jb7ev63f5P9L2mf73Cb8+DTyWdUsaufjqFm0IiGYCkBWUErPvNH/yhaR4z
         LjtIidObGWdxHUCk7llrn494iAWuQ/c+PvAzxFk4yMekP2FY4GjEXgUNcQnU0nbyQKJV
         4tPw==
X-Forwarded-Encrypted: i=1; AJvYcCVeN90W8b2MNowFqEAQ1r98j0++MDHDw74BsHAalT/Wmgu6BJ/tbJWNACgTXAnSO2dQNSCy+Ejq+8Ds@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1A+16dU/hsKTW2yAzm1VSUpHq7MNxwxGOZrjJ3Xcbz+0ujFCS
	x9Qi1OTgkM4a/t/MQSeMOD3bfFvUvNEfETB/h8W5FU8k5IZbZYXywXH/zL27nEwUqHFQX1mWm2+
	EiALi929cL5L6iebnlpmmOfSOPhcb9KlRx1iemS0iweanUImSkr9Al6MvWFYy7ELG
X-Gm-Gg: ASbGncuZwj7KwDQ4e0Ux7WIXvs0TY+vp5VyNkoWRjVN0qn6xVSJyTa4KSZo0Rb5rTZj
	jeUiDKkaAkA0GYEG1+/ndrC3YM052TMU2M6K/z8r0yIJkodLtD4nKhUamH8hLA2KD17+ND8VuGL
	7lYJ1e+cZP4WmA6Wr4xvJ8po20KxQNK2P5r03lHoWATIcHm33JEgGuoqwUjHs3yfYn9cDnh159x
	apap/EbnoK7ANyJamdIKocpo0Lmap2osNbVsIXdGouI7FB5CO+llqcLywOJHAACnjIohiE2ZlPL
	aKi2f0ylFnY2orchZ8chgSjnSxG/VPL4SM0qD22FJiXTloKE7LYZU8bvAAi9uIwyE2jPOFUiXFy
	Ggg==
X-Received: by 2002:a17:903:2a85:b0:235:eb8d:7fff with SMTP id d9443c01a7336-237d986d5f7mr223070785ad.28.1750745093288;
        Mon, 23 Jun 2025 23:04:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHoXzDNPCywsWid/86csyo6/oaM8zIDmOlMe4ad7FzFQmavchj+MmL8XVQyf1Oz3B2TnpP03w==
X-Received: by 2002:a17:903:2a85:b0:235:eb8d:7fff with SMTP id d9443c01a7336-237d986d5f7mr223070365ad.28.1750745092828;
        Mon, 23 Jun 2025 23:04:52 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-237d83937b1sm101371455ad.52.2025.06.23.23.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 23:04:52 -0700 (PDT)
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
Subject: [PATCH v3 02/10] coresight: core: add a new API to retrieve the helper device
Date: Tue, 24 Jun 2025 14:04:30 +0800
Message-Id: <20250624060438.7469-3-jie.gan@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=NdDm13D4 c=1 sm=1 tr=0 ts=685a4006 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=Bv2r1u00ER1ubdDhqu4A:9
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDA1MCBTYWx0ZWRfX70tCMwWw0bjT
 P4SVB7csnHM7C8wZ12wwn3EOgamr5o5OCPlESRmTMwz4pj2uUw9ZuzqIcUgD5TZT0tnZ/9/cfpJ
 dMmOdgKTV+3IdgQBQIoMPTzRk2vbuiJMbcAESKvo5MwEpaR43KOVd/5Hv4izHfGuHHlEEuYWeJr
 OhgWGJ6jjCvdE0ExBSEVeaU+ovIGvxP+SUwdIz35iO4joqBk1BoBulIrfX83aDaFkT/Z5sPuRhz
 GEWqsYPHUfmL/YDV1F4TszMXiy4Opw10gKcT4niZBIch+MIarWVDYrtV4Mw/lPMVP6TewrV0MSK
 7WILuDD3lHy5tBWC+c3DB3/qK3TYvJQJ4lX6lxvgxQXxqkiggkug3DdN49/DintC360KNvniRAG
 ee/hAOU/Y7IHqFKWdLshsyvJ/1JmdHfI4PMx/q2+ZCm5FFbIIaSPFQgudW3C4eVLx0ELZbpN
X-Proofpoint-ORIG-GUID: orvIubbypqYSnJ21nZg1acyJxRDY2UDM
X-Proofpoint-GUID: orvIubbypqYSnJ21nZg1acyJxRDY2UDM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_02,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 phishscore=0 priorityscore=1501 suspectscore=0 mlxlogscore=999 adultscore=0
 clxscore=1015 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240050

Retrieving the helper device of the specific coresight device based on
its helper_subtype because a single coresight device may has multiple types
of the helper devices.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c | 30 ++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h |  2 ++
 2 files changed, 32 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 8aad2823e28a..c785f8e86777 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -579,6 +579,36 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
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


