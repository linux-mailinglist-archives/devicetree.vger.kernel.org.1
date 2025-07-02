Return-Path: <devicetree+bounces-191975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A68AF1179
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 12:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA86E1C2594C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 10:18:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D743825522B;
	Wed,  2 Jul 2025 10:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="F5ORfg3C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D25253F2C
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 10:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751451470; cv=none; b=SFozThs9lQOxC9FxI0nBh1twWqqVnSUJaVlWn7evPW4VCuP7QXautZVgpigS5eVS08fBnxtPxSu+Ajdm0JT+gxNpVPAogyRO1Atr8WA9wbkY+7wY9N5SZeUZaNqv/pbunghV9dGV21M8mwkTqm6AoB64FWVumk+gqZhOGmZ5ly8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751451470; c=relaxed/simple;
	bh=J03UIyk3++cZuCipvWPcyyiE30k0tNvp34iP4Z7aGPA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=K4O0udBZdbbA+VUHB2YGf4JEQ/WmTWF2qx4WyJPgSQLTgJK3TGTSbyW/Y1HeBpwZVLCEGpDUSYr3BG0ns2/X9Cno+gi0TxskpRRruKJoYv6hIkP0kWt3sNR3CAzwl7Y5YCc1Ubfrw+Hp5wQAJ79lRV7wZwRO82SVEn+izCQGvf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=F5ORfg3C; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5626OQbk025163
	for <devicetree@vger.kernel.org>; Wed, 2 Jul 2025 10:17:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZI9sC05cm/3qX1MoV4H5KL3qK5OGAwku7Dmvoj6xDsg=; b=F5ORfg3CyCOJD9tP
	m+EsBNKM9A4ljp9R8RSmGn2Z4E9qgBJtGyriqrRNg0lHUsVq9uuRvPTliTyUMs8c
	dlwHxOGSbylN9qMboN3J8hrkFqvpy8um1tDU6g2zYTiIBleOnb60S39OFlM0DpcK
	ywmq0Ii6UIV8vfxo+EYO6LCfd43zA5ZtKGan3aK/9RtiDXi1M1pdrX4aBnljl5UR
	c7x/JTdyKWIdR4h6oD7mZlFmSrEYnEDcDERTT/uhOdNNlHKHHtY6OmUzhkOgZz2d
	LyIUH8uY7vZK/P881OUIyJbog/1a9pzUqS5xAurw525VpByHX+MN/uqFlK1zHLyv
	spvkEA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kd64sdtn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 10:17:48 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-748cf01de06so9676930b3a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 03:17:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751451467; x=1752056267;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZI9sC05cm/3qX1MoV4H5KL3qK5OGAwku7Dmvoj6xDsg=;
        b=FTiJul+J/iJ3OKDMzwV777ZMOMqr24yFCtRPcCGH4/uyYCeyiatTvfddpFPjaYgs97
         QC1UOwMAANunUep4kCQCHg/EFVHqnwTFrvcep5eyDDeMnaTt+28ULZSVS1Loz7Z3Y7YV
         1e1kyvLmHPGyzHAL7TOGVtac/h4z5CEv0u8J7eFKzl+3p4JI0B1cGCFTcXs8uYSGNli3
         x8DhQPi86Vl5sYieywXuqNqd8waKH60LcKSm2HkFcUAGAFsHKhqi7vMDKIJkTWExqcJ0
         7NxApWPFNViWRgRbvosNse+Ok+zKKT08KnAUvzlcBHMtAKdZLpaF3nfEkmtmC1ie0aOW
         4AGA==
X-Forwarded-Encrypted: i=1; AJvYcCUm1MzGoaJAiuWM1vESGSrqRthI1xtYKKrXhR8SkelByxIuKS33WXAlZRRfDqAEphMXnijM5yEMmaIN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywci75iAeks7nqRTbNSYUWqBVfxcAgAnAIALOemXYgYO+uLY3aa
	K5QHWxtm74zdxAEjMGqWl3GwNIf/b63f5QvOVxj0Fm+FBqMPw/0xa4XwsxZTu52kpqeatykV93T
	7cHQaupZciQ6b9uKAJ/aZG6Q9gE9vJuCwGIyEAlNzZCDFnDA0MjKM8xyfbJsAMVwP
X-Gm-Gg: ASbGncs7yrSwBKGDJfBPSw/6qbz5wrb9fd/ZZM4l8DPt1wKl8eKXKv3pBBD+TOBs/HO
	TN0UbbNFs2lCxlca/2rgQiLhtsFfhDIZ1XnmUfbzThUgXKpJM1UWyySsiVWynVGNdEP2mts3Ods
	vZLzJ7rKDm45Vw0FVRkLuHDbAGDrOE2MCczpg2Esbq0jRb3dyJQ5NG9T24ACUdymSuynYyV41+3
	hYuCWZwdxYDo5MLPGaGrWfcRRo/3N6gEbl3tGD2PJzpSD+vh3u0QzupCV0tynOVv7Bs2+jyAsaN
	9GLl2b6Y9E0LzyBDvZahdwxkwRrlrZX6Q4xwVjPTrh4ufSrQBTHDn/hPUO6VSub7XSmA4Y70od+
	lG6NkrWZkGDHyWmhuzUO7qp2OyuK05ea4zEgSa8iRme/uF7Ek/iEnT7/hgg==
X-Received: by 2002:a05:6a00:929e:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74b512a4b63mr3001851b3a.22.1751451466945;
        Wed, 02 Jul 2025 03:17:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEowJELbiCa1g27aMvRwnyFZkhJX67qGkXj/+6sgoDLFdi9mlUc8OJntYXysxWDvCkzYUt4+A==
X-Received: by 2002:a05:6a00:929e:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74b512a4b63mr3001798b3a.22.1751451466524;
        Wed, 02 Jul 2025 03:17:46 -0700 (PDT)
Received: from hu-kathirav-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74af55749b9sm14486315b3a.73.2025.07.02.03.17.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 03:17:46 -0700 (PDT)
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Date: Wed, 02 Jul 2025 15:47:33 +0530
Subject: [PATCH 1/7] dt-bindings: sram: qcom,imem: Document Qualcomm IPQ
 SoC's IMEM compatibles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250702-imem-v1-1-12d49b1ceff0@oss.qualcomm.com>
References: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
In-Reply-To: <20250702-imem-v1-0-12d49b1ceff0@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751451460; l=1004;
 i=kathiravan.thirumoorthy@oss.qualcomm.com; s=20230906;
 h=from:subject:message-id; bh=J03UIyk3++cZuCipvWPcyyiE30k0tNvp34iP4Z7aGPA=;
 b=Vc29Gf3HfisCRIVy+1KVgmb2V83MeMBwc4+kqNklsHihBbbaMNbppKo9HGwaPNNxpDWOoYSAH
 9wc8RYEX7dCCuT9Ezm0G2udLa90G0ubvyS9PiI2V447O6L1knkHpmwE
X-Developer-Key: i=kathiravan.thirumoorthy@oss.qualcomm.com; a=ed25519;
 pk=xWsR7pL6ch+vdZ9MoFGEaP61JUaRf0XaZYWztbQsIiM=
X-Authority-Analysis: v=2.4 cv=Z+PsHGRA c=1 sm=1 tr=0 ts=6865074c cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VpYCf0uwatFdRcK0hfIA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAyMDA4MyBTYWx0ZWRfX6bbrPr9/+/7e
 4TKOGXuGMAODjD5lGicnK8Ktx63jZPW/usd8tY/xwUyWii0ckQE+qoWKPBRKjVNv/x8AgLmE7tQ
 Xla4h9Tl3zT0Sczbg5pMlCRSDKPyDlh7sE8pyUpsozFBo8lxmV6A0ahOteVO2EN6ncaEu+/GcJ0
 4JqWbNcBRHAstG/2nsFBCJPkXkuugrGfHUQDug0gromqSiHPO0vHv+6k/S7xCWi0IBEc1ZWPVPH
 QRowptp4SoL3qN4JiRH6YL+13khuhrzuLBMNY7a9HBxcAqsWCdAfLH/sfCzRTL9x+MgfJ31VwnT
 J5NjIVRG4BqzAmcWpFw5k7q7nAvBaPntiay82UESKet8/OXMX8VfNGxqxwTNJrWB2mr4cUEADxp
 RSFoGM+8JLpavfl6LXatZ04iTRuMu4EtY3GR8q4AT6iJJzXrA9jGU85vXIp9MPp0yCjTNUwf
X-Proofpoint-GUID: Belrn1eIFJityqVcFJz6PJHiVAOYMfj5
X-Proofpoint-ORIG-GUID: Belrn1eIFJityqVcFJz6PJHiVAOYMfj5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-02_01,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=800
 spamscore=0 adultscore=0 mlxscore=0 priorityscore=1501 bulkscore=0
 impostorscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507020083

IMEM is present in the Qualcomm's IPQ SoCs as well. Document the same.

Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/sram/qcom,imem.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sram/qcom,imem.yaml b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
index 72d35e30c439ccf4901d937f838fe7c7a81f33b1..48e2f332e0e9fc9fa4147fa12d9c6c70a77fafda 100644
--- a/Documentation/devicetree/bindings/sram/qcom,imem.yaml
+++ b/Documentation/devicetree/bindings/sram/qcom,imem.yaml
@@ -18,6 +18,12 @@ properties:
     items:
       - enum:
           - qcom,apq8064-imem
+          - qcom,ipq8074-imem
+          - qcom,ipq6018-imem
+          - qcom,ipq5018-imem
+          - qcom,ipq9574-imem
+          - qcom,ipq5332-imem
+          - qcom,ipq5424-imem
           - qcom,msm8226-imem
           - qcom,msm8974-imem
           - qcom,msm8976-imem

-- 
2.34.1


