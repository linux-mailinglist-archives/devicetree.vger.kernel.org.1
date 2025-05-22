Return-Path: <devicetree+bounces-179389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD91AC0141
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 02:14:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F7179E5CE6
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 00:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5B67464;
	Thu, 22 May 2025 00:14:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XOwByoAD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34665383
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747872881; cv=none; b=MKQ2AFxFmuI/clPPK3lkni7gQkh9rJHxQj9qIZf1nhwsghCmq9Jo6R+9f0d2zj/Htc5vAgM3gV3U8MlI5e2CJdr5FeSe2dL3wW7iSP0YHPYeoISR3kQJve7r3OLBbYkK8/zdHLf6TGHkYfzHp9qW8vcyTF9Jqrp1TorE3UoBrLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747872881; c=relaxed/simple;
	bh=ivanWCDxAyUNMe++VyZ7GD/aarva+/WzhjR97HqQYr0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=GPSmRmtvDgB9grZGmBzUUmtC6PfFdsZmxZTgc8rF897SHwlay5UD0meQge9yvWW0Ia6KukcinTLfcDyJLcYnnjIUc7HOIWdXdL6THqGpaBYBdcJyPnYQ7rFcBu+B1tWcFZ1TfaG0t1c7geBaXIFwZ3/ug9lNAszfNxi1ttutHIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XOwByoAD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54LIMAoS001325
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=FZ7KZa0KoNH
	4FU/NXhvLV/fsJzac7wy5NniQVOsYewQ=; b=XOwByoADN6FkAhDCF4uHDHqW474
	grzxxJmPlanTriqR4sVnpO/y+bV8g+o5/SPAe35J6QEu0O+/irlOeANEM7GA7Mue
	cbabsEPNV8RUVvTV/mMcAim/Ik4iWziPhQv1RkAyC2ObjCGy9Xj2jeM5FeubTSlb
	pfrlwOLvocCOQs7eK++wwpHGZlAp0dRbrQ7JHzompvQXJ4iwZ5ZvFFxclylHda5E
	+RBFtZXNQFc0+9IuBMekfX7h4c8Qzkbl8rix+BQnQzyHPlUFu87a3WJuwBnYycOo
	SHLVnMaHd57Rgq+VnYBToU4GrVDGV8I0JqMzm7mMMsazeoM6CHeOLfk+SSA==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46s95tjw1c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 00:14:38 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-30e810d6901so4696951a91.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 17:14:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747872878; x=1748477678;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FZ7KZa0KoNH4FU/NXhvLV/fsJzac7wy5NniQVOsYewQ=;
        b=TZBUQB8c7tU1Zy5I2KzCrvATBlVXJkVVC8GyyqP9ApLPfhci6fet8tX++wbn/vuANT
         uXP5ninbNsSRJi/P0EHNXu87a2U3ujvqW/GXaGDrcF/yrjFI0xKzuWNvGEoitDXVnbqy
         UOrwSWB4ff8UUkibHXpV0VXDjEpDy4yDRsHF+UR21jSDLotd81d6vHT+rmabq6TulLYv
         WrCUpS0/wk/KpR4mG5RaHzhCJx4arp58S1GAI6Y0SBa9dOPyhsOe/8w4h3+rPD4EA4Vi
         4MM60yBvP2abCbt5NAcCLmgr56/xBdOmxjSnSCU68GLxVCUjb2Hs04PVvBWIE7tS2EIe
         RlWg==
X-Forwarded-Encrypted: i=1; AJvYcCWbalwGuoJ6xIHPSkwynmEyoIocMmGL8HTDkanlHKuKFJcJC8ztpCNfLnSHz5+QhdcS5pum0xtxEiO7@vger.kernel.org
X-Gm-Message-State: AOJu0YySo8xk1S+UfxHxHUz8vAD10UjwtWT/KmhhsEG+yEI3rVODnAIk
	eTaTCsY9WRvwxL5vVcKvM32N9gvBe4Z8+gBlWi1x9n+d36mKj/28eixvkVxxHdBkb/N4yoE/KPB
	TNwB+UNUAYSzQLQlbc3t3YoVkV2liIHk+0pgegrBqPqoM/YQ6tckTWIL9XWWc6N4y
X-Gm-Gg: ASbGncvDMsBP/rzeHZ6m0FaJ4+jBrpgRKG8vhpwiR3af8leopmA/fMaheGioiccYz96
	E8CujDfY4E53EkGJ60sKMj2lwkQMWsT+FigYsiuU+oWDlYFEf4vWI2G+G5Mq8IdsCa/goba1hpE
	qHQ5s+l0lH0VhDtgppcAUATDLZD8bEId3sV3GlHxhYJE3BICIvD/Tspxx0cc5sl8yogkflJkNJE
	gzKAMgio++It/HL7gppXWJlASYdf+jLJOxLQUzDbJjn2D4iJe9928HRtoais+6uNEcjLg2NF/7R
	qENMHTFTqzImbasQ50Jk/p6IAyR1uz4kej1LEEfq2PJpZuZQlxu4PsRWL1DZ5g==
X-Received: by 2002:a17:90b:4b0f:b0:2ee:741c:e9f4 with SMTP id 98e67ed59e1d1-30e7d52af9cmr35158307a91.11.1747872877615;
        Wed, 21 May 2025 17:14:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIhxrvdKq2jpiMU4/Qrc4I266FB6s0eWca3c5BFMOwa8ldeGp7OH5zlEgYlmPG0aNtuKZVsA==
X-Received: by 2002:a17:90b:4b0f:b0:2ee:741c:e9f4 with SMTP id 98e67ed59e1d1-30e7d52af9cmr35158254a91.11.1747872877145;
        Wed, 21 May 2025 17:14:37 -0700 (PDT)
Received: from hu-mrana-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30f3651611bsm4617101a91.49.2025.05.21.17.14.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 17:14:36 -0700 (PDT)
From: Mayank Rana <mayank.rana@oss.qualcomm.com>
To: linux-pci@vger.kernel.org, lpieralisi@kernel.org, kw@linux.com,
        robh@kernel.org, bhelgaas@google.com, andersson@kernel.org,
        manivannan.sadhasivam@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org
Cc: linux-arm-msm@vger.kernel.org, quic_ramkri@quicinc.com,
        quic_nkela@quicinc.com, quic_shazhuss@quicinc.com,
        quic_msarkar@quicinc.com, quic_nitegupt@quicinc.com,
        Mayank Rana <mayank.rana@oss.qualcomm.com>
Subject: [PATCH v4 2/4] PCI: host-generic: Rename and export gen_pci_init() to allow ECAM creation
Date: Wed, 21 May 2025 17:14:23 -0700
Message-Id: <20250522001425.1506240-3-mayank.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
References: <20250522001425.1506240-1-mayank.rana@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=QKBoRhLL c=1 sm=1 tr=0 ts=682e6c6e cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=dt9VzEwgFbYA:10 a=sWKEhP36mHoA:10 a=EUspDBNiAAAA:8 a=CFJw4oUWcMUjKlMiYBEA:9
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: 79YJopShe6WCqFb_V5VZ8YBHfMPJpDnX
X-Proofpoint-GUID: 79YJopShe6WCqFb_V5VZ8YBHfMPJpDnX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDAwMCBTYWx0ZWRfX8pBaTWOPQmp4
 Og8N2k0JHf/sku807Nv4GzjGSiWJasp8+Ney1i2+AGYYHuHjVB8rTAR6+cMoMuM5VNkhkdcFlkH
 8dKMKARrhJ+M32NFdGWaLoVrY+/Z3OJGlGGAfgFTp506uoh/ntZDjPKjUKSNzt7o2seKSqrttbv
 ebkMPGz05/1r9tFaW5pzOzVfjLF5GIsu3FxcLgvNJPZ3Odw8IognF5TLBaZwjIRBJ+zvuZ0AKFz
 69ayobyncGhFan7cAHICVwZs/TTquvmi0sbC+L+bELCpvgZXw0grI0MIolScIsEKfW3LSQ3XhS3
 ezKkpNNrSaPZQ+VLClI+ZhY0d0UsXJSH7ECnhtLIl8e0DAhJ/tV/QraDZdcoRPkc2do8C5mi7yD
 hPSIp72iFfS2Flp4TUEQR+2hrhxo8/D4fdyhQGwg2l8lgbTaqqUvX/ggwjg8bbp7eWfQebNo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-21_07,2025-05-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 spamscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 adultscore=0 mlxlogscore=999 suspectscore=0 bulkscore=0 impostorscore=0
 priorityscore=1501 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505220000

Rename gen_pci_init() API as pci_host_common_init() and export it to create
ECAM and initialized ECAM OPs from PCIe driver which don't have way to
populate driver_data as just ECAM ops.

Signed-off-by: Mayank Rana <mayank.rana@oss.qualcomm.com>
---
 drivers/pci/controller/pci-host-common.c | 5 +++--
 include/linux/pci-ecam.h                 | 2 ++
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
index cf5f59a745b3..6e68c66382fa 100644
--- a/drivers/pci/controller/pci-host-common.c
+++ b/drivers/pci/controller/pci-host-common.c
@@ -20,7 +20,7 @@ static void gen_pci_unmap_cfg(void *ptr)
 	pci_ecam_free((struct pci_config_window *)ptr);
 }
 
-static struct pci_config_window *gen_pci_init(struct device *dev,
+struct pci_config_window *pci_host_common_init(struct device *dev,
 		struct pci_host_bridge *bridge, const struct pci_ecam_ops *ops)
 {
 	int err;
@@ -48,6 +48,7 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
 
 	return cfg;
 }
+EXPORT_SYMBOL_GPL(pci_host_common_init);
 
 int pci_host_common_probe(struct platform_device *pdev)
 {
@@ -69,7 +70,7 @@ int pci_host_common_probe(struct platform_device *pdev)
 	of_pci_check_probe_only();
 
 	/* Parse and map our Configuration Space windows */
-	cfg = gen_pci_init(dev, bridge, ops);
+	cfg = pci_host_common_init(dev, bridge, ops);
 	if (IS_ERR(cfg))
 		return PTR_ERR(cfg);
 
diff --git a/include/linux/pci-ecam.h b/include/linux/pci-ecam.h
index 3a4860bd2758..ad6a6170ff26 100644
--- a/include/linux/pci-ecam.h
+++ b/include/linux/pci-ecam.h
@@ -94,5 +94,7 @@ extern const struct pci_ecam_ops loongson_pci_ecam_ops; /* Loongson PCIe */
 /* for DT-based PCI controllers that support ECAM */
 int pci_host_common_probe(struct platform_device *pdev);
 void pci_host_common_remove(struct platform_device *pdev);
+struct pci_config_window *pci_host_common_init(struct device *dev,
+		struct pci_host_bridge *bridge, const struct pci_ecam_ops *ops);
 #endif
 #endif
-- 
2.25.1


