Return-Path: <devicetree+bounces-251881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EE614CF7E46
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 11:54:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E6B473038F66
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 10:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A853B329E60;
	Tue,  6 Jan 2026 10:54:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Z8BqB94g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KxRuGeL3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9EB132ABC7
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 10:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767696866; cv=none; b=uzW7B3okBSl0JjWoDSH/SladoAOEdU1LPzxhhZUblVUfnaXzZitZjHlx7Bi1na8RaVTJyqTpYpQJsWDViiBbuBTinWX0MJiK6DT9sPp1ogdB2cuJjyUt0ZS8NnsDTI5krZjfkqc1YUoVLexnHegNyAKcrMoQXKGV1QqDw0DOBq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767696866; c=relaxed/simple;
	bh=1ByE463mdCG1T7PjmuZ9Q33uwxoCP8/d8pmXMHtpnNM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QFulEcRuLanXcrGoNn0Fs60uBTU8mH112Q1imkfiaKpPsf1CSpy6Uqc1Intx54Nl1yI7fT5HYmwzNGbnsPI/bE8ytTq48kTbfDo4gm2VZldzBx7Q4UKz29bG/kyiJQVvqykUctyIQn9fM5bnBzqkfaocAaZ7YoPWP0WlzrOxmU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Z8BqB94g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KxRuGeL3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 606AiubZ3271952
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 10:54:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=SKQTUfictNk
	Nw5HfdIRn36bC15XbXeG6fAOAB4uOOBY=; b=Z8BqB94gdsIiAsFkequuAXuhnf4
	kT78mgF3It5Te/PSbM4WeYAmcKM2FxQnHGmQurEcVJDp1L01QdyJNU5SAJNmKzw4
	z8/qHkH9hUIVQNYT2g1KX8GpUxhIwwRqa3CliS2TCe5mJvr6TMJpNkqGeJ7PMfHJ
	1CWWFF+riybzCOn5L98ppCPJTWgaUyGGonSHGvSXTaXYtWjQ9NZD1CGBzBaV6zr1
	OG+Yhfijteh4ZJ7gXfIMdu42vp8qCd4Jn8P5+7Y7fYIq/5dnnoUVlRXj15MSqYn3
	znrNkm5AtqMvgtLbg76+At8AT72IRDjomuhTmNliQsn9YuqmUr87Bz71jwA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgfv030q9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 10:54:24 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7c7957d978aso1103704b3a.1
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767696863; x=1768301663; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SKQTUfictNkNw5HfdIRn36bC15XbXeG6fAOAB4uOOBY=;
        b=KxRuGeL3/Y4MASStCBZugaHqQD/f/mrW5qNc4+39eo0aaweuxhSjhL2wkXVvBRSbM7
         dqynh0Wgkp67xy9CvNe+vCg/fKJ2PEusoBzD+37pU+Lhllx6ERWqyyfkGocihnE6tFB5
         /lWFgf/XvPGluyjadgEgZ77C4vgbYxZOQs3Fw1kflJWt5WShKzR+T6Il4QyJPXJ/Gf4d
         QwzXWw/jCI0YglYuq5eK3bCJOgY64JsF8o8UeKwV5Vc2dtwHF0CQSZXF6dDvbt4V/v8S
         Wr3Ki9cV9gSQDvsQWZARWLhMjBxNfwXBwiuYUdavsGD/DHstmXdIYkfGf3sQ4Phgb4Gy
         OVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767696863; x=1768301663;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SKQTUfictNkNw5HfdIRn36bC15XbXeG6fAOAB4uOOBY=;
        b=XOYFmuFdrYjkqhdIUPNdsFLM3mzkouuSkL1e7W/s5tmJqAaceqNWOvJo5TAz8b1Ppp
         YS+8t31ALgWhFhmOijPbyt+6VP2umtXIphvvUpqW/6rw0niWiW/zy2uc95J+PCm62PZA
         iV8/pmtQWpeCEX7hXVw4xwMg44Psem7cEbrAN3u/NivpB0c9K4WNJ3fRQuFeJCmFJlWx
         4u2FOu6AiFDMNeJ5sWn7FGuL/OLAtxVIjtHb23pNZLVgV4sanFm+dzmpaJTEgEQbVtvp
         ODNhZd06Ms6tW26rHRM3lDb1xI7cR5vXFi+glvhSV7L+I428ODWA65O+7gVRrtXlcJHS
         eyHw==
X-Forwarded-Encrypted: i=1; AJvYcCVYI1hFKI5vkzM/T/iuSANLgzlxlr8WUTnvyFJAaab1Uj7jSoqpOcSHA6J5JRmI91qcYI71IkcgZGN1@vger.kernel.org
X-Gm-Message-State: AOJu0YwZgRamYaBE+mTMNYZyC+HHVFta1E5BVIjz1CVNeNToNbRJ/VkQ
	02NvxRolmBElwRAsStdDHNCM8ehOCHfzuS9jNvSXOvKQQJEP/NPzWjBNnqkdF/XXNQdCa6zbd3C
	sdfs5i14Jxnm5TlGYAqlVn/Mk/r+zwJ18pbM5fEX8G043zEXDSL3wPWqwecWuDvGy
X-Gm-Gg: AY/fxX4Hu7K+lkQK2I3luyMdJ7kESqEljwlJ02p9L7gmi8kbM1kb3VolA0+YEj+iLwD
	2OHLW7x7CAZI4NKlb+VRWKiTLIxzQZtpMD07HwcZzgib1NbV+TbOyHSvdBK7tVmeopfVTCIPSUX
	wzi9osh36aPmFfyjDfj1Q3U26ofq5drDFoZ6CfBz+qEDzBt68YOtzU//2yP0cRYWdCc/MkiB/p7
	xG0JyTaMRGctQdwUAvC86Pj5zSD0MGU6q8N3u31Aw96TEQO/pnZZcjGwW6Z/ogHE8+lpwDYGZPu
	RJkprKUOPprF/annbiysWV/l+U0O3yTh5yIMhLdgTAr2Z0OqH6l2mlLKAyBtmj9Owb2TPy9S11C
	sMz7nXTJ6QL+HbZBakjjCR6AjZ+ya+ZdE4UkbeMlRY+zycleiKndd148OYAmf0j7/jfDv7Eo0sb
	DFRyKdGLmyhzQ2ADQr2t2WIKikiLIM4p0GftuK6f8=
X-Received: by 2002:a05:6a00:44c8:b0:7e8:4471:8dc with SMTP id d2e1a72fcca58-81882ddc524mr2791520b3a.61.1767696863395;
        Tue, 06 Jan 2026 02:54:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG72f5rxDkoC6aaKTUgEoqI5/CVCVVOf+UAiixMJtOO1RFiWqbCVO+gHS445KabZNNCEVBosA==
X-Received: by 2002:a05:6a00:44c8:b0:7e8:4471:8dc with SMTP id d2e1a72fcca58-81882ddc524mr2791501b3a.61.1767696862888;
        Tue, 06 Jan 2026 02:54:22 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819bafe9b98sm1855121b3a.20.2026.01.06.02.54.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 02:54:22 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v9 1/6] firmware: qcom_scm: ipq5332: add support to pass metadata size
Date: Tue,  6 Jan 2026 16:24:07 +0530
Message-Id: <20260106105412.3529898-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260106105412.3529898-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=e9YLiKp/ c=1 sm=1 tr=0 ts=695ce9e0 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=uWiwPwd6ELW8fYEcJRYA:9
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Gpwjx9vtZlhBgNHOTCTHtc5s04IZh3Xz
X-Proofpoint-ORIG-GUID: Gpwjx9vtZlhBgNHOTCTHtc5s04IZh3Xz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA5MyBTYWx0ZWRfX+Mu21TsaTjrX
 ztOQLoh0T/EAhBc9MhrfFCUmx3t71NYgMlzg8ZJai9DlPtdTbEfgO5IrI8nCUCE04/km8vXUZ5w
 OTUDrHA+t0MEwLVAUAl3i9EWBk4aSpf9Cm4NO3i7HpFuLwM3bqJfEE+vmwaf9hPdCt50WIJ3dXj
 PD7oLvc5K8Uq/lqSbzpLC1yan/vY7JXpD3L/yevVSU/UyeS+p5mscLtvy/5ES8WTIAci07vKS55
 cwZ63P8qMILqQ+gUD+fNyhIUSNVroYUncMMK0TFpBMl3kv5rsMwadfJeS0wQNYzlA3q+YmHTLxn
 Ua94FmrWSM+Vf2cPQyBoVlmKFg7yO7cAthwrBwbkqUPJEE09ZQYZEdk6LXxtUOqRcrXGTQSpWb8
 yuan2mgoZ6B6WsOMPukG1gIPHPdXZ+d8cZxl1krGTW0EV9yyU3H6rw+doSvGG7rDs+N584F7jz7
 KlyW9IMQVeyfYzt4n6g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060093

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

IPQ5332 security software running under trustzone requires metadata size.
With new command support added in TrustZone that includes a size parameter,
pass metadata size as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v9: Added signed-off-by tag
---
 drivers/firmware/qcom/qcom_scm.c | 17 +++++++++++++----
 drivers/firmware/qcom/qcom_scm.h |  1 +
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index 1a6f85e463e0..c970157f75b5 100644
--- a/drivers/firmware/qcom/qcom_scm.c
+++ b/drivers/firmware/qcom/qcom_scm.c
@@ -583,9 +583,6 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 	int ret;
 	struct qcom_scm_desc desc = {
 		.svc = QCOM_SCM_SVC_PIL,
-		.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE,
-		.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW),
-		.args[0] = peripheral,
 		.owner = ARM_SMCCC_OWNER_SIP,
 	};
 	struct qcom_scm_res res;
@@ -617,7 +614,19 @@ int qcom_scm_pas_init_image(u32 peripheral, const void *metadata, size_t size,
 	if (ret)
 		goto disable_clk;
 
-	desc.args[1] = mdata_phys;
+	if (__qcom_scm_is_call_available(__scm->dev, QCOM_SCM_SVC_PIL,
+					 QCOM_SCM_PIL_PAS_INIT_IMAGE_V2)) {
+		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE_V2;
+		desc.arginfo = QCOM_SCM_ARGS(3, QCOM_SCM_VAL, QCOM_SCM_RW, QCOM_SCM_VAL);
+		desc.args[0] = peripheral;
+		desc.args[1] = mdata_phys;
+		desc.args[2] = size;
+	} else {
+		desc.cmd = QCOM_SCM_PIL_PAS_INIT_IMAGE;
+		desc.arginfo = QCOM_SCM_ARGS(2, QCOM_SCM_VAL, QCOM_SCM_RW);
+		desc.args[0] = peripheral;
+		desc.args[1] = mdata_phys;
+	}
 
 	ret = qcom_scm_call(__scm->dev, &desc, &res);
 	qcom_scm_bw_disable();
diff --git a/drivers/firmware/qcom/qcom_scm.h b/drivers/firmware/qcom/qcom_scm.h
index a56c8212cc0c..57d63e932f62 100644
--- a/drivers/firmware/qcom/qcom_scm.h
+++ b/drivers/firmware/qcom/qcom_scm.h
@@ -105,6 +105,7 @@ int qcom_scm_shm_bridge_enable(struct device *scm_dev);
 #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
 #define QCOM_SCM_PIL_PAS_IS_SUPPORTED	0x07
 #define QCOM_SCM_PIL_PAS_MSS_RESET	0x0a
+#define QCOM_SCM_PIL_PAS_INIT_IMAGE_V2	0x1a
 
 #define QCOM_SCM_SVC_IO			0x05
 #define QCOM_SCM_IO_READ		0x01
-- 
2.34.1


