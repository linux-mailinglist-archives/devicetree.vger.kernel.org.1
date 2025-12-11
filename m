Return-Path: <devicetree+bounces-245743-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1BCB4D7F
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 07:12:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7DC673021754
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 06:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 531B222257E;
	Thu, 11 Dec 2025 06:11:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BAHuHfzt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jeZtYhFr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC4222A4CC
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765433505; cv=none; b=qU6QJj7J/wC3q0xCfMMCOyr/EFnbSOSWJKLqv9uFNv0MEYgOAr8kUOPJ7C7Aavdkkec41JdLrGMMSqKjmbuh2LFM/A4m2uOvMAtmT9xVwLipK6KfvM5+g3YsbR+FPgGf9auVDNAcp8rTZ/Bs1yArT7asD97a98SNHXLU45Vc7Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765433505; c=relaxed/simple;
	bh=V1yqLgVyRYM0PUluEeNsvfvMV9kESqLqhRAs3x4U+UY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=EAdVhzdPvcCNyjnS1XNn36wlGxy6kawFeqr99l6U/H1YL0sZ9lvGUIgCQvhsck62bIhuQJ9lMngstcWaS5L4Sl6qMBZDJ+b/MS6y1XjBaTV1vONMQOydS4lLbzh8yM4J/ZMlrpOEyzo84g+QOedI0jvOjNct4/tUNdOtb0bxp1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BAHuHfzt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jeZtYhFr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BALPHPV4126669
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H37x9ua3ePA/7qaC/cjVE28usIUyXzLi30yOiv+YEFA=; b=BAHuHfztQk7DX8Vo
	+WTpDE6Q5vy1zofvvcra0c/15iJijCSGpOsJAmNeOs97IBaY1wMg8ZtgnVoObgtV
	wHaucBwFBmKI5O3ew3+Xj0exx6gqziM5zCsUtLWFUncqb4soIG7tzxOSY8nCy5w8
	Mrfu1k7Rh/bjr1r3Y3d3bGSPPFzv3kRwxFNeMSEMOQ84hIfZBLZIgwHUewb1RBcU
	kHdCutVvIkuJoj4pR5oxp5XC3eP1sRHYHK3owEsSPlIID1YIWy57QaUslWBQel/d
	zC9WcpZn38WrCH5peH4sz87HlgbYH9dAWOholV6BhgBeIKImPQpe+quHb6fNj4Bs
	dhwyHw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aybhpad86-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 06:11:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2955f0b8895so16562025ad.0
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 22:11:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765433501; x=1766038301; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H37x9ua3ePA/7qaC/cjVE28usIUyXzLi30yOiv+YEFA=;
        b=jeZtYhFrgWRXJZpr2N0XnyMZMqHCJnVOQHu08RzNkhbHWd4GtoTt+GFOCODDGLmErA
         WG2+GliLzWYmqtlthHBrg+cKc4P7SPQN9q0O0DR/hwT1JbLhOB1teZdoxCy7pbk2wH9y
         wexRROnjnqPgkigknUc3uXlyc32X7v/oOTRtILmdS+FeDclvEFip0BDe2FWAfdmHaCO/
         OOm7RaEnL/jd5C+lCaFub5egh9J5Om5wM56ngVI5YZdeu8Q+ZXNe11FN8aEd2oJQV2E/
         s7d5DW/NyQwNv4bET9lnJJvpJlz/9EdtA8jKKk+8VTL8RNaw+rUsFELC++zLePZkP2HC
         ql7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765433501; x=1766038301;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=H37x9ua3ePA/7qaC/cjVE28usIUyXzLi30yOiv+YEFA=;
        b=YZGvSac4arNztxZUgTb/xyKJmT8tkyQ3/KXEoVv44Dk/OIQ5smyla4W2Gu1+pXuoaL
         whPNwY0v76OE8vh5/ytGXFbxJ+DE7gFBpoy9sJBxDOOj14nVr4Xrr6dXqifQVviNC0Ov
         22zU8IfcpIeVGbgZYgaO5SvZrFfygKis6XUxwidqx8iZIlhvBR8Nuf6ah/i9fjSx16Mz
         QSRpOXUPA246s+vIsAAWNaO42T/1MAfG4zeTQiBNR2Kx02YW1tWpldUjhtsqu0MiDggj
         MqgTPth8b8fzDH46zmVeWfQKRV6dE2K9EDgUKdaROWFdrlZ5lFMFKXMqOTQagm0WOEFK
         jAyQ==
X-Forwarded-Encrypted: i=1; AJvYcCX7/1Koi1d+psfYWnsVXRHVAmTiXXzFHSNbrefHEBkOMEQXzgtGxjIhMvLh3/pfDO6iPn29/mTVM/0p@vger.kernel.org
X-Gm-Message-State: AOJu0YzlDmkIXqpTvT/m9Q/jmTCa7rvym40t2EoC9aGGq3Pp0i4kpQmO
	8Q5MJJw0VNJAsWbNFjzwRyPL2zOJ7AOafM7PleGaxLaCzcDSyE/A8BSvGS1BI+HpWxbzzNHDWhY
	9mQaZGNh8wb+bGm4RfeWvK+y7GMGS9SyTCE87/eaVLVBheZnTWO/xuzlrvqKb5+LU
X-Gm-Gg: AY/fxX6pTNT6AOwbP+2H28Uj2A3sVap5sgbgRE3ELudLrKCAgT3YU0wzk52w8ARsOW3
	HzWWi9yHI22LJwYKnSLDLDxn6XUF+yvl3wh2Yl7QDaYSKdxkEsyGYO/mzw2OvqXUS4kjtM8h6ec
	/eIChk2XJoEbQKj8VS61dO0ZDe5lHlxw64YJHakKgAlKf6VqTpMdHS6uuI0aCGkxU8tiYEpD6rS
	WcoAk0a8Y/fjHUg+JMOX3SxuLRxQ4Y8O9BMRqlLBHXfoEBGg73w0S7etj/xeQ0Aex4jhTRFquWZ
	qMhNDvUU8k6G8l6DHr21OLFSdYBSpwzlKAw6duXqR8xh4/bAjkodkVT9VmRJNIjhZi9UVDN3nUj
	RG+6LR61/InOzep3nsHvutkgForxfX4nE9h+BhwCtX3fd3E59rYO9oF9vWm7QKZbjFyZDXLVG
X-Received: by 2002:a17:903:1547:b0:299:dc97:a6c9 with SMTP id d9443c01a7336-29eeebfe83dmr12700305ad.20.1765433500945;
        Wed, 10 Dec 2025 22:11:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwYgKqzGeqU7toBB3FXsS20/zU0kWSROq2OAeA21VHW7Aj231W3vxDpdsEaA0jyBj4HPae/Q==
X-Received: by 2002:a17:903:1547:b0:299:dc97:a6c9 with SMTP id d9443c01a7336-29eeebfe83dmr12700075ad.20.1765433500442;
        Wed, 10 Dec 2025 22:11:40 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea065186sm11725945ad.89.2025.12.10.22.11.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 22:11:40 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 14:10:41 +0800
Subject: [PATCH v8 2/8] coresight: core: add a new API to retrieve the
 helper device
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-enable-byte-cntr-for-ctcu-v8-2-3e12ff313191@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765433484; l=2705;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=V1yqLgVyRYM0PUluEeNsvfvMV9kESqLqhRAs3x4U+UY=;
 b=8bi2aJgwsd3U0FCI77yLrfMBwxWS5FP25X0Ek9isQ9rjD9FpLTnLlZ+eJ5y7aHJ2RNUNOBFFk
 6rOoVUCe+mICa+ydcW1naz7MEek9HQMlbNOYZ4gaZV32mTlwUl4sMTy
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA0MiBTYWx0ZWRfX81ijhS7Sn93O
 +sNq8vGB6JFoP8w9wn/bLFiKDVsg7gVEexatxNJjrvBXGWGDwaDw2FhZpW5/FSO38KdAjqof7GH
 mNKAa+dDuEmv1PTC2PnYl/VRJ42DD9FV+IP1QtAN6tMuJrPdMbvw/L1fHrnDIq4jPMOJW+4rgWE
 g6fK7uEseIEHo/Yjirb1ScIHVC63MtvcDVXkk7wtO5PrEk/4AWeMZrjmAI2tIHTGWzGLE4Xa6RJ
 JDBL3k3+J5tsWObhkQ/bPf56uSaXfHUQExcXoXN5o8FOlhgbxNUBsWmi3zdkRIBblj5Bopdm8SK
 JgpYi6kMokzPV6srRRHKM+YFnh2adYDwscjJLxR7h2iR+iGHxUNBy4VdH9dKwYEwafukkSRz+wB
 7R3wlPbjhxW0czywUsx9ZAUQweM4IA==
X-Proofpoint-ORIG-GUID: 7sGTgw3hrwE1s9T4p5Vwm4Tg8BBODemg
X-Proofpoint-GUID: 7sGTgw3hrwE1s9T4p5Vwm4Tg8BBODemg
X-Authority-Analysis: v=2.4 cv=LJ9rgZW9 c=1 sm=1 tr=0 ts=693a609d cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=AzIya3-Hz0U1LB2V40wA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110042

Retrieving the helper device of the specific coresight device based on
its helper_subtype because a single coresight device may has multiple types
of the helper devices.

Reviewed-by: Mike Leach <mike.leach@linaro.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 drivers/hwtracing/coresight/coresight-core.c | 35 ++++++++++++++++++++++++++++
 drivers/hwtracing/coresight/coresight-priv.h |  2 ++
 2 files changed, 37 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/hwtracing/coresight/coresight-core.c
index 0e8448784c62..667883ccb4b7 100644
--- a/drivers/hwtracing/coresight/coresight-core.c
+++ b/drivers/hwtracing/coresight/coresight-core.c
@@ -585,6 +585,41 @@ struct coresight_device *coresight_get_sink(struct coresight_path *path)
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
+					      enum coresight_dev_subtype_helper subtype)
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
+		if (helper->subtype.helper_subtype == subtype) {
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
  * coresight_get_in_port: Find the input port number at @csdev where a @remote
  * device is connected to.
diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/hwtracing/coresight/coresight-priv.h
index cbf80b83e5ce..8e39a4dc7256 100644
--- a/drivers/hwtracing/coresight/coresight-priv.h
+++ b/drivers/hwtracing/coresight/coresight-priv.h
@@ -157,6 +157,8 @@ void coresight_path_assign_trace_id(struct coresight_path *path,
 				   enum cs_mode mode);
 int coresight_get_in_port(struct coresight_device *csdev,
 			  struct coresight_device *remote);
+struct coresight_device *coresight_get_helper(struct coresight_device *csdev,
+					      enum coresight_dev_subtype_helper subtype);
 
 #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
 int etm_readl_cp14(u32 off, unsigned int *val);

-- 
2.34.1


