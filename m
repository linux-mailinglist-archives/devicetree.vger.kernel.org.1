Return-Path: <devicetree+bounces-254374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C089DD17982
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:25:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2409830692AF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A30D38A72A;
	Tue, 13 Jan 2026 09:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RNPd4v69";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PyLSD3tM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C12638A712
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768296049; cv=none; b=dl+C6F9kd+XABOtYWZGfrJH7XFyfmx69YVisMQ40Nq+A0v2IkzB1lKhb9MwpdSWKTVko2s3bwIWOBDqpyHOD45hV+0Ba2DBNDT2xCukdAk/QEiWY2+w4JJ6IDrCDHI1xbSYoGFmMD/yInQDaB2fYhk4rfZ6nvifhEXOp7+ajqgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768296049; c=relaxed/simple;
	bh=cN7BDHfjPmZXLVddZ+TKRBf+/XOJmbxfkY4V1X7n8bw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=m0h5pv8jF2O/CaLg8QwJgwcI+D8vDJMtbVBHGyQAzVVaT69F6xLfx76ihGijLh/EDedjzbzaQUyXNb26yfzuFrIhPaAkEJJPGS250/h5V5An23DONNGJhZZNPzStmQ41arseDzb/sipHqE9AeQDlB4+LEsE7ic+Pst6KNdGPY8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RNPd4v69; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PyLSD3tM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D1th2S2752099
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ql+pl8KOPe7
	yPuMFFW/Jv1V/1/No2AKB0sEtQ8Virkk=; b=RNPd4v69VFvo9x9olYpXXvcRHjB
	POI6HpO9d0HgHblmpZzjQsfW7gmR+7fw6X7Tq9tXiX0gcNQPyYq9SW6ujhFXVdJ/
	QC7Q3AbI4+JkDt3y2tpDSh29F7RFFV+rzRqHGgMfPGLxe/OhPaBvcaMqAWJwlE0T
	qIZUUb50eCGnhqc24TXjzI6vzhWKGKKHuGIa0KGE7ou7WUUBXOmBTqcr9WDz8XDG
	ZpwVr9GX0TP21oWg5KpDZ97K8mH/ysIl9y1awTNulsmFJli4SfadNtkmSg+xQJwP
	e6NPTXPRNsUUlSxr+cCE20zrh2x8YxnzJukYI6IHOdAGYIvmPq5nSi6F9WQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnctjs5vt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:20:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0a4b748a0so38710555ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:20:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768296032; x=1768900832; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ql+pl8KOPe7yPuMFFW/Jv1V/1/No2AKB0sEtQ8Virkk=;
        b=PyLSD3tM2+slhWOfvh/sou1cvu8KTbVZllFCZt1uzjxnu1uMDB6ZlcG3Hhxun7GCCA
         N4Vn+EUFUAhSkO0p9+j8Hk36IiNf0dphv7OcbURrQQtN0mbhMHiHWY7tl6Z7kK4y14Dj
         7WrIVy91LEMJYUuauIV42iHD6SpemhujU4N/KA/oyrrSkB7RMcpZtNKCMWqXrF5K9QvQ
         dR7IndP43cCXkjH/997mZrmkeAyRVHqDnoFjEmY/t5QC1WEcWGtn9ZqMVwHL2FvNwZcj
         vHl6QGa/GbNvMGtGA2+Xj5s9DdxRy3OBepZpyYBC37RyFOCcoI6WXXN9JwVpYhfGwD4L
         TRFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768296032; x=1768900832;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ql+pl8KOPe7yPuMFFW/Jv1V/1/No2AKB0sEtQ8Virkk=;
        b=t2WzOClta0691VRDOXgnMoOwTq//Y6tunUqHDo5YMPvaJRyqYLwNbmKX9s1HUVsQ7O
         sA6t8n5Y+/wwrd0wG08fqIBl9SitAWh16SF+70VKCG+fuF6PH7atEs7hBfCIIgvWzqEO
         o769X4AahCJ5WysjeOAcw9H/QGHo5ywjIwDFo6nIYkptSG8mUI/FsBONfprl9AHUmFm+
         TwH0SupELhjQjIHbGsh6BiG6pPCQjV53QeNXWn1uLFfy1ND9F3q9CdPBWOLhJW/uwcjI
         I2ZtJzghFatkaKYJ6OQfpgFs3xVc9sUY5bx0y405i2CIoIRQS8gh68lX3dqrDWiFYKKz
         xO9A==
X-Forwarded-Encrypted: i=1; AJvYcCV3S1rBk9LljQ5ErQzRouvmbFBETQvFmyBOIHN6XhJ1bOnyvnlvs+PZN6mKFycB/Ud1d6UiHWfX8rRp@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0+FmyiNwxrC01stE9Lljxq32m5uD1zRjaj3FbXqcrX3CCRUds
	JKKoEMW0SbZnah1WPbFWwqCIKVYCrxRA90zmAUsZzm1pOixHA5FTtsn5ehpb7AEUtdCBwDSOcrl
	2Rucsjj9SDjHlVnRwgEjKZ8DfovIW7WiHhuxv34Az0nftN598JCSlUr5b0kQcbeIV
X-Gm-Gg: AY/fxX5tUpc9GsrId1MEl/zBJdaOzwsRXBvTJ0cgeoN7ZM5UqSzNP7neviqyS2ODzry
	fopWPYwsMMyBKIPAQzPqIMuAXgHyVPP1Lg9B0YTVqwq48qrRgEyOlJ84g5grGGBmifuuUBIK5dJ
	LiNwQ8GvvSzlLplX/ulxwCavrWcQQD8ezrWKApFAUq3Qejs+LwKwncffhYsoeR+h/vW55Gc4uHh
	CP3397R2MrHQdvrBH/ry0gZTcDx3Hv1yWsLagfINhJhpHobpp4zwf791EnYRSGNjYsh+QvWG+Pe
	dBExG2cuf1Pvxr7Evgc6LdMZp/1Igi/e9s5Gr2bJC4cXgvuVNc9TZY4InbLpnowv3V1rcK8LUWd
	L7dvR517yCUflFPD8qsyFIFEzVa4uJqiIMnsYomjD69/grhr97Pao3ElC5hvK5Iadj0YU1eDJFj
	GZ9FVWiZtbUqgQ88EgNwg61PBMz6OhxCIyS5BwKOg=
X-Received: by 2002:a17:903:1b43:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a3ee49c701mr226369845ad.44.1768296032294;
        Tue, 13 Jan 2026 01:20:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHDcc+uF1WMgTDehKIFxDTK4sH15EoiABMl0DNiGHXTm/Ary3ynF0++tW19QbaX4WtGuYiiPQ==
X-Received: by 2002:a17:903:1b43:b0:2a0:bb05:df4f with SMTP id d9443c01a7336-2a3ee49c701mr226369625ad.44.1768296031846;
        Tue, 13 Jan 2026 01:20:31 -0800 (PST)
Received: from hu-varada-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc794asm196314945ad.70.2026.01.13.01.20.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 01:20:31 -0800 (PST)
From: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
Subject: [PATCH v10 1/6] firmware: qcom_scm: ipq5332: add support to pass metadata size
Date: Tue, 13 Jan 2026 14:50:16 +0530
Message-Id: <20260113092021.1887980-2-varadarajan.narayanan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3OCBTYWx0ZWRfXzFt/QK8O5P4s
 +DD93b8qILazfvFx6oKaDQSnJRgf87xA1TYWZxIJG96CL9FDDa0XyIzzzymnatTUS/LIeqF8rP1
 Tw0H27sVrd1lyK/J1RNinMqhS2z7AA49zOqx+QyA4iS9XtQeDFErhM1CNQ7b5BBA3pXODHWA+CI
 JjGRMl0c1Ce5/1RznyoD+mwZ8U/1ctTSmR9O1TnPJkHoaT+R6/SA6QEvNj/6uuP0zaN1IqC+1kF
 pPoxOj2Z/dGItUiQJdFn7vAoBSrxT60GjbZLUCht/RgjILxbDzgYc22AUpIUstUj4ODIk8DAIv7
 01r45dnNceWywfJPPpIom+mdU/1x3SYBM9YYdpOyGOGfNRJmeTLH798aBbKYkdL6pPOjwBhJaOV
 VzEoeQ7erL4obzQIR5+25PFq8fSzy3ZzvjQiab5jNRnBc/tl2lOMC1oRCl/oA2zSCWhKNWOUuG/
 pe/HspOnAY37Wzk6wew==
X-Authority-Analysis: v=2.4 cv=Ls2fC3dc c=1 sm=1 tr=0 ts=69660e61 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=uWiwPwd6ELW8fYEcJRYA:9
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: PBX7-Vdup-KEsfGkjrcP25gPlNJRtQpL
X-Proofpoint-GUID: PBX7-Vdup-KEsfGkjrcP25gPlNJRtQpL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130078

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

IPQ5332 security software running under trustzone requires metadata size.
With new command support added in TrustZone that includes a size parameter,
pass metadata size as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
---
v10: Added r-b Dmitry tag
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


