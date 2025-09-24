Return-Path: <devicetree+bounces-220932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6540DB9C846
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:21:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9F6F77B6B7B
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:19:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C65829D28B;
	Wed, 24 Sep 2025 23:19:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MwY/sVsJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F2A2BDC04
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755953; cv=none; b=b0L+sqyen/wQrWPiqu4A16uhT4V7sSHDKTGhvVEFXAq3ZGQfsB+RLtIvzm6TH1lXdfT5jTUwQRax1lfiRDN7PSM2rhFWFTZja+8tZy0vHX+d1FS1N96PW1FIgdLGJNcpxQmaCHB3AtcYyaeEBgs+AVdaaj++8W1WWpXUj7f+Um4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755953; c=relaxed/simple;
	bh=gM91KjfpF6IH0eLa0TrXrZO0nOEVZnjXw3GmCGYPcTY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=XsVA0EtcAEp0TEPbEXXvZQ5klYKBfLIK8sVFUJCLsMdcXDm+Zeq0xw+pY2WWHf6S+fI5CngFHdPQYdKkUaaL/3ezP6chFj77w5cy6N5uEngyH7LdnfG1/ynNcByoby66SS8f9ZNwF8uJjluLXrPoimt3WYZ9DMpQ0t+Z9HRBEVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MwY/sVsJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODFQVq024258
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:19:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=TZvxXC1Da8p5Z7MQXHlGe2
	85o1OSAb5AblyLBDzUI2k=; b=MwY/sVsJVD6gtds/mEHZ7zYZdaaSLO2R96JidK
	ZE9oC6rx30gptMSyiW8TONl3rz0P2Es1iQTFuFPUEyghCAShEFg84yOmEC3ESpd2
	XPPxLlhn5X7KGb7xPh661wY0jY+hupIq7Lk/cmYx7jWzIZsca+a/i1GEkeq2t/bW
	gdrmM2jVG6c2vjJeyUlxcHyMX1ufXyTCmGAc+e6gQ3r3dsBLBm8CFs9aOM8LCdO0
	XUTkOxCbGBFy2VcvECcuhPSWXRe0WP8sN7r53Zb6ZOFpM8XacA+5q2mG21zwLCuA
	p2JQLKZ1grZKKmo1HbD/EjbFKVaF8+A/QqQnYHKmmf41Z4kg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d1t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:19:10 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581953b8so2777645ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:19:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755949; x=1759360749;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TZvxXC1Da8p5Z7MQXHlGe285o1OSAb5AblyLBDzUI2k=;
        b=gbaUNBC4QA+ou82DHfnMlEz6YMq/1+iIj+IgDA5kcrhgsRrW9ui1YChNhTNCsjQl7m
         sVsIdRaHY6V934ndyiAOPCJzQH/v29tZncvJ3L9kQ+tfQqfuqmAv7BYD492s6CBMo1w/
         uSqmB+CcTzz+3OcAHCYznB98Q2rx4pvSS4GPU89mU/F0D/K4FlmX7rAGcSSXmb7ZAQh+
         KO//eKURNOYtsDxt8BUZsFOwOEfKAtD0GHwQRKABMNt7423dWewOYTHpLYITSAG0rhO+
         +Y5AiAYQxIjq0vRLruD/ovTx9hRRnE48nxG8dnBmADX/+3g5Msi3r+0zyEREtxrAuEiI
         uozQ==
X-Forwarded-Encrypted: i=1; AJvYcCVcYpLt1EKZoviKh0lbM7UPbvhTSZqBE3ptuA00uFxtQeI8VH3kKXONNO6/CPFXj2p6sTnslmL5CLQT@vger.kernel.org
X-Gm-Message-State: AOJu0YxxlV4oKLfPbEoJHIhF2kmtfsBvH/y+imS/BuuoKfYNV9U/VjkF
	OHKkdw5haVuICXxtlwO8sskyj5zEtngsZ0rcR8fP45YQLoFtE2UlZpTM5g/UT8H8Dz6/vQFFyt1
	N4/q5BssHAciwEVoa0K5PUp7m4ffsVpdwtQ8+qkjCRqBN2BeaTnmody3saoHGQYdw
X-Gm-Gg: ASbGncuTpengSP3n5gvt3ARUF1rhThrEJT3egVRCdyoscDu4O7OoL6DV9xxTr0Tu5tP
	l5oYBdFVNb8VKW4DJH4NZou2ioo9s30+VL/tvrZAtUUAP7nKLzB6c1q9+/i6+lxjnIddrNMWUFp
	v5ggDs2jbcigR9wcFuEKXGsRqNYdcYDPGoxOa8B1RxCbvA+Bd+G7paFaaapuDyvJQow4OvH8kHw
	XcwdygSnR80J0E4JMi9Il7I4jgHSOw0YFX/yHXKlqLS9OQiYVAj31U8PbHEXNyU0EIU5PRI4B4O
	MVQgxZdm4EUbHxtB0ckArXIrxqNYWFJQoLCoGYAssvKgzKzdFEqS/o2kNEBVtm8aYjM5pgMHkHu
	xIwJmIBPw0jGGH3k=
X-Received: by 2002:a17:902:f786:b0:240:3b9e:dd65 with SMTP id d9443c01a7336-27ed4aab57bmr13504865ad.38.1758755949323;
        Wed, 24 Sep 2025 16:19:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE0g9Ol1DLkKsMps31M+yJ4FciPrXl+4Z2aimAO1Euo/GJz88L49z9jFp2vZBDSGu/BXgvxkw==
X-Received: by 2002:a17:902:f786:b0:240:3b9e:dd65 with SMTP id d9443c01a7336-27ed4aab57bmr13504645ad.38.1758755948885;
        Wed, 24 Sep 2025 16:19:08 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ae5742sm3780325ad.150.2025.09.24.16.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:19:08 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:19:05 -0700
Subject: [PATCH] dt-bindings: arm-smmu: Add compatible for Kaanapali SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-smmu-v1-1-c93c998dd04c@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAGh81GgC/x3M0QrCMAxA0V8ZeV5gHYjMXxk+JG3qgrQbiRNh7
 N+tPh643ANcTMXh1h1g8lbXtTaEvoO4UH0IamqGcRgvwxSu+Kwbeik75pSjJJ4CM0HLN5Osn/9
 qvjczuSAb1bj8BoX8JQbn+QUtQnCRcwAAAA==
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755947; l=1108;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=gM91KjfpF6IH0eLa0TrXrZO0nOEVZnjXw3GmCGYPcTY=;
 b=M77WsMOYGM4ezbvcuE0+jwkiEKDZIc5oCGJ3kWAinG6Bm2tIh2U9P2cMYSNVuetK16WO7HN15
 E0WuBxhINLrDwbwXlqCX5PI3z6xeRZuWHmUVd+MZj4ScpV0tFVAt4xP
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d47c6e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=67qX4AuaID9EHpsuXEMA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: DSh1pS6tR-Bk2erCAPBT_4VaqTlONPqe
X-Proofpoint-ORIG-GUID: DSh1pS6tR-Bk2erCAPBT_4VaqTlONPqe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX77J3nuhXUH5y
 cQ1MJpxcPjEGZYuyigTqhRrbiUOnYzAJxQyTdSTm41cDixbXy+jVl1C+maYDDXOIvob3pwPZlZB
 MB9UOoAHZAgqoAuX5Pn1yqy7rWjnn7M9WmuW+SseppPDig6tc5nSi8e2i9fpLey7Udc/SANTgRd
 0KqdQ5x6Q24DOudtQjnHGLxmgJK3hgFGVv4Kmjea0tCKXSIorj5rLKsXlX3SNUc1BYyfj+Ye0U2
 foVDKY5r0YGo33y2hWIQnkIek/3k+O4cfZ2BOgEGytOwu8EbN7YhFSUgSnoCFdJ9UxaypMMPSHm
 fIrxP2ABqD3DY/LZcOLKrM0GQLLxrxQnEqYwLrhmoJWj7W2ScKeXo9MXB/Mefm34TmveQSa6jI7
 J2YCeJ+h
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

Qualcomm Kaanapali SoC includes apps smmu that implements arm,mmu-500,
which is used to translate device-visible virtual addresses to physical
addresses. Add compatible for it.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/iommu/arm,smmu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
index 89495f094d52..261c4c699a60 100644
--- a/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
+++ b/Documentation/devicetree/bindings/iommu/arm,smmu.yaml
@@ -35,6 +35,7 @@ properties:
       - description: Qcom SoCs implementing "qcom,smmu-500" and "arm,mmu-500"
         items:
           - enum:
+              - qcom,kaanapali-smmu-500
               - qcom,milos-smmu-500
               - qcom,qcm2290-smmu-500
               - qcom,qcs615-smmu-500

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-smmu-fdfcedb91bba

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


