Return-Path: <devicetree+bounces-234670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 442A9C2FABE
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 08:40:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1DA114F7FA4
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 07:37:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 190DB30DD2F;
	Tue,  4 Nov 2025 07:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gRLFyKFo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a+G1o+bU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7901730B504
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 07:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762241799; cv=none; b=UXWrD7po3lw2qCI6qhuVqHbD0HEHbEqsjsCjeYq2axOHUUEVyS6E6dkKHGgBrZUViVdXSjFVo8UMpE+u2RXrAP3+VzHFuZ7tAIKBSVNoFeljldMaRQap/CWbqXRwoaANoBsh3JoTlA22fvzkl4RVEJK6mQ7yeodyyYX9beA5Jx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762241799; c=relaxed/simple;
	bh=IgJd8v2AuQ5h7J9K4ztsTFSTdDzPjtfIhiy/ExbSkDc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bLNzM3HxzhQu814d6EYmfHF6VCxtqLvpyQxHoOv4VDteEEgb9lGOiCZ5JSlz50gDGKUoeEgwwkrHGg9i/6praESmi37w8HfCqSTEVzv0jAvjFoK0bjEFGH4MdnJMtcQMbG8JLMRcJC0E8BVvpkKYvTOeofJi4Rz84i7cHjMWsVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gRLFyKFo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a+G1o+bU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A45GNP41060068
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 07:36:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gxFt64IACkHxpr/2thDxM/WcQ6QkXbNtppEqSKeog5k=; b=gRLFyKFoedAq0pny
	j06WhMdkTlT6XFOan6NBY2X0VZVP0BbPGITo6OkZlsbCvuRtNXPtt506MWGIOtAk
	gUeyqBllUx1Ei8HU7xtM882kHbDgXZyMlfTWn2Uq44l6C+/5iSI0BWIB/qLZZ25G
	Bu3iwJPbVkiMKHXgq+Df0ZyuGQ7oaFni22mrOTgWq+h4lVo+c1eFYcRBk+XUDRsC
	1VQABnvu8kRec9U++WSomA30ETBA0YiiQk9pl+vvfgeM+uiDCSJjQSgUBV0+bDT/
	TzMl1dTvJWaHU2Qb4njbpYS/RssbvEQ1JUBkO2UqxXdA7cOKJDQj+ZdAEQ7PQlF2
	ZRzubA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7b6prbfq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:36:36 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b99dc8f439bso2158687a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 23:36:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762241796; x=1762846596; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gxFt64IACkHxpr/2thDxM/WcQ6QkXbNtppEqSKeog5k=;
        b=a+G1o+bUgNW8p068995cRol32wUn36wHZNFPSGcg/4BSHDNSPoHBnImNEA+4DyOSDM
         hVxTIzjrxIYzXwyYLAxZ8jmDK5jpSzfTx5oUTfhdFfQJCJNcJ5ML9Why+K3mlO7k//5W
         p5d06cqFvl5MDrcEsVyx6z6X5BAuDAJL6HIS9gQiqez45k5fBW0lv/WmPWg4U2iD/8JP
         Qr6tHs/1aOhxKsDJn3mhdc7V0qwWFUmt6G0bhWFwPnoJiHvJdpJneK7JT4wKGmMWjToI
         AOhp5W3F86QY0V8E+ydG8BZ5Ogby0B+UeJMnfhw0SR7rBsVbYUX5H7SDL/F9AirWQFqW
         wEOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762241796; x=1762846596;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gxFt64IACkHxpr/2thDxM/WcQ6QkXbNtppEqSKeog5k=;
        b=c0Xr/OJYf277BRl5czPpxYdfZXQKKE2lDRSAy3ZpFh3CCTZOf8VXnDDdIpfem0MFbT
         y9E9rHVNAmvVe+Zj6rA+H2U9chrYspuTADqOsVS6LxxsVwnSK8G3MmP87QgVjQb3Ck2o
         ZKRkcDtrPZ67cNfeUdvLwhGRdTolypJ32qAcNAmw6RJqdY2bA0HOHjI8llB/OhzEp6j3
         xzUODYZ1DLDvQS+MHt0Yzb7egQqhLgFYTn7/Jz9+G4PygfSM7LyRSiyTDpiYEMdcDZT4
         xdOYqLvyhGk/aOl2VuHoEAqUAxYXsjnMB8GCA+WUZMdzdyY6ATEfgId5GXqv9SaXiYwo
         Lnow==
X-Forwarded-Encrypted: i=1; AJvYcCWTvEGbyAEvlbhYuuYQgtkybCPBrTUByqhZDv0DsdrSz7eA05tiI8ktbfQrDdpmRD+js8SOz7k4JBps@vger.kernel.org
X-Gm-Message-State: AOJu0Ywblod1njtAOMQskyBof86t78KJJqrN7UtwEyWFD9ps9bXdsL0P
	xOg+UE2x+uUDDf0jWymQocp15TVQPsjHSDnrabLOlM0RF7eKYVkeUtaKElP6a1nY3fTOXwwP65p
	eIMTf93VqoHivARi3h3TIKURuYGuLydv3PK+5/Ncj+mUQnXevxA/ABjsuu2kXmH0A
X-Gm-Gg: ASbGncvuPToRjDCS/QcpPlC+dIy1VJNllNNAAyMgdKv4DnWvGOc3nXoGl0lWRzHsZHa
	DUer7RHIt6TnLebhBri7+AN8Md3LUaZbr+Cj5LOfIaOSrfx5sPd+0T1rY4N1g8xdPEiQa5IraU4
	KhMbPtB3+c7gbZ5P1qxtMU3KspNkqHKgiWyZVV5sFpTC1f4mN8s9gyx+yyecs94yUSWaeNqREhr
	XKLKyErkpm+hl1+j3tljfdQaNvDuNgllcM/LLOxd00ngQIA8dfx4C+WyTLVhZYbW7XGz192syG5
	tx24JKlKDA3vCU7wqLBQCVxLAMioPaBWaj059OMxD+/7c//WWFEpz4jgamVYCqQAgfz+0i8yzM6
	RydDeB3pCbScB6lOsaNS4w7BLNA==
X-Received: by 2002:a05:6a20:12c5:b0:340:d065:c8b3 with SMTP id adf61e73a8af0-348cbda98cdmr21785733637.36.1762241795990;
        Mon, 03 Nov 2025 23:36:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHVkSheBD7jeuhilirZUvz4pmc9UWEEngpenb1X47kZBC/NHbiFgx/oUSc1WlDbJCoQcZtLog==
X-Received: by 2002:a05:6a20:12c5:b0:340:d065:c8b3 with SMTP id adf61e73a8af0-348cbda98cdmr21785688637.36.1762241795309;
        Mon, 03 Nov 2025 23:36:35 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3415c8b5cfcsm3484367a91.19.2025.11.03.23.36.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 23:36:34 -0800 (PST)
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
Date: Tue, 04 Nov 2025 13:05:47 +0530
Subject: [PATCH v6 07/14] soc: qcom: mdtloader: Remove qcom_mdt_pas_init()
 from exported symbols
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251104-kvm_rproc_v6-v6-7-7017b0adc24e@oss.qualcomm.com>
References: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
In-Reply-To: <20251104-kvm_rproc_v6-v6-0-7017b0adc24e@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
X-Mailer: b4 0.14-dev-f7c49
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762241765; l=3481;
 i=mukesh.ojha@oss.qualcomm.com; s=20250708; h=from:subject:message-id;
 bh=IgJd8v2AuQ5h7J9K4ztsTFSTdDzPjtfIhiy/ExbSkDc=;
 b=Bm73j3i+o6j4OtiPbLXW3vsi+2tK6G8GxXt4XDvXWtTLtZ0RPvKnvXAKzDcjI4gh7aR/NX9zz
 Mc341T/9vnQDSyCvfDJ6rMSwdQU6/A0rOHkKsXOYsaJqDbbFOWbk32V
X-Developer-Key: i=mukesh.ojha@oss.qualcomm.com; a=ed25519;
 pk=eX8dr/7d4HJz/HEXZIpe3c+Ukopa/wZmxH+5YV3gdNc=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDA2MSBTYWx0ZWRfX/S0ZzedxE4Fd
 mWP7KKjaMT4mTyBAgTUpJ6Dhe81sY/KQhUyT7xDzolvGUb9wnXhXYAXZ0Whgh1ocNOB7PBWKc6q
 Mq/zUsek/R7n+lBrPMnTj2492XXzkzca4HUAiGJ3Tp2G+eX3rJDp7VxRin0cUtESluWoS82xxqQ
 4AEzzxgc2b9e5TyHN1O5/foBDYfeaRqcKJRJmGNE6godUoSqN2uewC+f7kUjrkU4AYWhjgOBakX
 w7zYvg+JQ84Y3PYulbjfHGcesa+Z9HIisfWlpGllfQZpKTQIzC9vO9Zyfznw60TP4WDUdyiolVO
 L45wMASoeATxHxrhlgdxTjix/6rM2nqD1Xe4X9gAQVsj+mVl/sSzfjYWUbQnFgI/kVDhZztbrmH
 dWOCqb+5SthBHI/sgz/sZG7V0Bo/QQ==
X-Proofpoint-GUID: zsS1ynMWZWG6VwEFw4u_nT6uvlIxcLNX
X-Proofpoint-ORIG-GUID: zsS1ynMWZWG6VwEFw4u_nT6uvlIxcLNX
X-Authority-Analysis: v=2.4 cv=Y4L1cxeN c=1 sm=1 tr=0 ts=6909ad04 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Z4Sw7GGoVt5sTUwIiKwA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_06,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 suspectscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040061

qcom_mdt_pas_init() was previously used only by the remoteproc driver
(drivers/remoteproc/qcom_q6v5_pas.c). Since that driver has now
transitioned to using PAS context-based qcom_mdt_pas_load() function,
making qcom_mdt_pas_init() obsolete for external use.

Removes qcom_mdt_pas_init() from the list of exported symbols and make
it static to limit its scope to internal use within mdtloader.

Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
---
 drivers/soc/qcom/mdt_loader.c       | 13 ++++++-------
 include/linux/soc/qcom/mdt_loader.h | 10 ----------
 2 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/drivers/soc/qcom/mdt_loader.c b/drivers/soc/qcom/mdt_loader.c
index c868b9c416e6..13b52b8064e0 100644
--- a/drivers/soc/qcom/mdt_loader.c
+++ b/drivers/soc/qcom/mdt_loader.c
@@ -238,9 +238,9 @@ EXPORT_SYMBOL_GPL(qcom_mdt_read_metadata);
  *
  * Returns 0 on success, negative errno otherwise.
  */
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *ctx)
+static int __qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
+			       const char *fw_name, int pas_id, phys_addr_t mem_phys,
+			       struct qcom_scm_pas_context *ctx)
 {
 	const struct elf32_phdr *phdrs;
 	const struct elf32_phdr *phdr;
@@ -302,7 +302,6 @@ int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
 out:
 	return ret;
 }
-EXPORT_SYMBOL_GPL(qcom_mdt_pas_init);
 
 static bool qcom_mdt_bins_are_split(const struct firmware *fw)
 {
@@ -456,7 +455,7 @@ int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(dev, fw, firmware, pas_id, mem_phys, NULL);
+	ret = __qcom_mdt_pas_init(dev, fw, firmware, pas_id, mem_phys, NULL);
 	if (ret)
 		return ret;
 
@@ -508,8 +507,8 @@ int qcom_mdt_pas_load(struct qcom_scm_pas_context *ctx, const struct firmware *f
 {
 	int ret;
 
-	ret = qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
-				ctx);
+	ret = __qcom_mdt_pas_init(ctx->dev, fw, firmware, ctx->pas_id, ctx->mem_phys,
+				  ctx);
 	if (ret)
 		return ret;
 
diff --git a/include/linux/soc/qcom/mdt_loader.h b/include/linux/soc/qcom/mdt_loader.h
index 7d57746fbbfa..82372e0db0a1 100644
--- a/include/linux/soc/qcom/mdt_loader.h
+++ b/include/linux/soc/qcom/mdt_loader.h
@@ -15,9 +15,6 @@ struct qcom_scm_pas_context;
 #if IS_ENABLED(CONFIG_QCOM_MDT_LOADER)
 
 ssize_t qcom_mdt_get_size(const struct firmware *fw);
-int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-		      const char *fw_name, int pas_id, phys_addr_t mem_phys,
-		      struct qcom_scm_pas_context *pas_ctx);
 int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 		  const char *fw_name, int pas_id, void *mem_region,
 		  phys_addr_t mem_phys, size_t mem_size,
@@ -40,13 +37,6 @@ static inline ssize_t qcom_mdt_get_size(const struct firmware *fw)
 	return -ENODEV;
 }
 
-static inline int qcom_mdt_pas_init(struct device *dev, const struct firmware *fw,
-				    const char *fw_name, int pas_id, phys_addr_t mem_phys,
-				    struct qcom_scm_pas_context *pas_ctx)
-{
-	return -ENODEV;
-}
-
 static inline int qcom_mdt_load(struct device *dev, const struct firmware *fw,
 				const char *fw_name, int pas_id,
 				void *mem_region, phys_addr_t mem_phys,

-- 
2.50.1


