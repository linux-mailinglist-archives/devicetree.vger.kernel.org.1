Return-Path: <devicetree+bounces-168042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F765A9139E
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 08:13:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C72853AB054
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 06:12:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB08C1F3FE3;
	Thu, 17 Apr 2025 06:12:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UJM3GWka"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407D71F416D
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744870378; cv=none; b=hGvK81KN39MTsfk3P/dugWd3KiRe5eIqDNNIf0jwuGVrCjAcpT9l3eEyvF3Dz5Ft87NM6NcHjoYlXd8mKY0mmyEkpArPY19bV43ilt7RiqN4H9anlCRsyYQnJs/a7RSKGpXtQii8FBYubBiaIfzDezUuWHVTpA9sBpLpTKjbDr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744870378; c=relaxed/simple;
	bh=K6JlKN4Lehfeo7/IgjBbBJZ4i/sDc76rVOVUFC0wEk4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Cv1jEBrdLQTnOLHOuX/xMJcW+sE++2qnICDkeicssl80k2vXqrsHicU2m82V2x7ecW3hYSkZFWwDkdOzdH17ue7MEWWRYit3fN0yGIqd+9E3CV0JlJ2GuepDnUfeE2buZIlBBUl6HKPnSLpP99Y5HTw93nl/3rg0dbHFYBSP4Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UJM3GWka; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5l7rv009482
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=cVdY2Xlz5w/
	QgZdOw7KOmCcBvgh9bp3qa2yY8aPT/pI=; b=UJM3GWkaYEARHv0xaoxXXbWUvTD
	wQZ6uuKwzPUtznjna4oqc3tZoTaW6EW4KpfAgTZ2DT9/mAhXwixM5UATVP+pjutd
	REZny30L5JKd/ot3DO1+2y5d+bw7ercoQ/P7k1Wv6d4Jt0ShcQHSseIum6mg9ZXX
	vTy35Q6dIdEj9QfCw50gkpQAcLI/Jksw8daXPKMuwt9Ow9GmozcURjyMDS7oXp5E
	5Z++59xG7DzED+0V+ylCWZDAHNu5MAuhxcwJwKFFQUEe9dEkm1MfQ0VFB9eLD8gQ
	cr7hap9QMdvhyfHUgFGSUQWnLY1E359u6vIn4xEJGKCJKQJ6KPoM0t0Zp/g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygd6nx71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 06:12:55 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2242ade807fso8163325ad.2
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 23:12:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744870374; x=1745475174;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cVdY2Xlz5w/QgZdOw7KOmCcBvgh9bp3qa2yY8aPT/pI=;
        b=TvUiBZri/ehIwi9c3tFCHMrtm6dncRGOUWEga+21WRVfOvppMtpPAiwT5gD0pspB6u
         T1FNVnk5UWNAt8dT7aAo5/xT3EStYvd+met1AZ2Nq/reCmTjrPGSLSr92pM/Y29k8cxu
         4mgaT2VzF+GJQCe+TQsb+cZ/HcAl0OP0+3it6WaKTyJtqnI2i9P6IpC1naQd7G76B2cv
         rAqEVNgZQLxTWIgcznx+kVcH2HTxa1HtRrCLhrbeBpPNX/4AZGi1Ja59DszGTIJsejTX
         lt18qdBhAN+NbkPTfH76zXdkWwjrwCD2M1ZIMNqcywxjDN1eANJr/lIOu10Fa5fi3Zul
         1rnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeLV9DDFcuWO44m5T3Ri9cF9HvlvLS9M3yxI/PCOgGH99NHYfkdCrEF94ys+dMW+stGVbWV8oWkZxO@vger.kernel.org
X-Gm-Message-State: AOJu0YzIXc0vanPLHxRBKMHpHE3FzLkZE6XeMq17bMVo2XlYJkQDZA0N
	b7MTK1oQv5FFu+GsEkkTLkCvwj8n/HvWvp3SYimCHx1G13jyCtIz3IryuOzcmZ/zPAmGv4sMb8d
	FU9KEr4Z8D84KercstcbxPDc24GSBTD2mT8YaO13UcKSxSeW2mJhy6YO9cxoU
X-Gm-Gg: ASbGncttaY7EdBhg/5mIx/6maSFdKM1kqBxoI+N0a2AZPI0yi1GAkYA2flfLt/apI/E
	1ZW+fZUhQ3GE40Na/QYjVAKBWrdSNlJjO1Pgzrp9iLKEr51iHhPMfMlm96u4zJ1pGrTCQ7v0F5l
	RrXne4YV5wAd3v3MdXZaeLcxdaoPJIsO49T5FGD5hgzEKHcJcpBUK5Po7MGm5wKz0Ekp4QewupT
	UcPY/TFQ1BTndIUMkyAX4ZxJeG4ujLmKthcri3IN+6E5b8tcIFQG3jlpSId/y5MsBF50c75OeB7
	A4HhqQv4s9bLqw78xzoO1PVeTBbge3Xjj8a68cgr+P3MCNo/wx179+9uefDvKy6Xnq7epXy3RMn
	QUMYMCCiyPK3SAye81RWnqBkFYH2x54lo4FI=
X-Received: by 2002:a17:903:1ca:b0:224:584:6f05 with SMTP id d9443c01a7336-22c359742d1mr71015485ad.41.1744870374438;
        Wed, 16 Apr 2025 23:12:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPhQFbsgVqQATdvECdaf4CnkQYmYXwZ5Oi7KEqji3xtIABf4UA/Dkum/8ctsbZxFsAROasGQ==
X-Received: by 2002:a17:903:1ca:b0:224:584:6f05 with SMTP id d9443c01a7336-22c359742d1mr71015165ad.41.1744870374115;
        Wed, 16 Apr 2025 23:12:54 -0700 (PDT)
Received: from hu-gokulsri-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22c33fcee11sm25159725ad.191.2025.04.16.23.12.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 23:12:53 -0700 (PDT)
From: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
To: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com,
        gokul.sriram.p@oss.qualcomm.com
Subject: [PATCH V5 1/6] firmware: qcom_scm: ipq5332: add support to pass metadata size
Date: Thu, 17 Apr 2025 11:42:40 +0530
Message-Id: <20250417061245.497803-2-gokul.sriram.p@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: jNvXWDxsR6keb0SGQqaBrI8JVOM-gvcQ
X-Proofpoint-GUID: jNvXWDxsR6keb0SGQqaBrI8JVOM-gvcQ
X-Authority-Analysis: v=2.4 cv=ANaQCy7k c=1 sm=1 tr=0 ts=68009be7 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=uWiwPwd6ELW8fYEcJRYA:9 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_01,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 mlxlogscore=999 suspectscore=0 clxscore=1015 lowpriorityscore=0
 phishscore=0 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170046

From: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>

IPQ5332 security software running under trustzone requires metadata size.
With new command support added in TrustZone that includes a size parameter,
pass metadata size as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Manikanta Mylavarapu <quic_mmanikan@quicinc.com>
Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
---
changes since v3:
        - corrected arrangement of variable assignemnts as per comments
          in qcom_scm.c

 drivers/firmware/qcom/qcom_scm.c | 17 +++++++++++++----
 drivers/firmware/qcom/qcom_scm.h |  1 +
 2 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/firmware/qcom/qcom_scm.c b/drivers/firmware/qcom/qcom_scm.c
index fc4d67e4c4a6..456e4de538b2 100644
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
index 097369d38b84..0f40e5828a67 100644
--- a/drivers/firmware/qcom/qcom_scm.h
+++ b/drivers/firmware/qcom/qcom_scm.h
@@ -96,6 +96,7 @@ struct qcom_tzmem_pool *qcom_scm_get_tzmem_pool(void);
 
 #define QCOM_SCM_SVC_PIL		0x02
 #define QCOM_SCM_PIL_PAS_INIT_IMAGE	0x01
+#define QCOM_SCM_PIL_PAS_INIT_IMAGE_V2	0x1a
 #define QCOM_SCM_PIL_PAS_MEM_SETUP	0x02
 #define QCOM_SCM_PIL_PAS_AUTH_AND_RESET	0x05
 #define QCOM_SCM_PIL_PAS_SHUTDOWN	0x06
-- 
2.34.1


