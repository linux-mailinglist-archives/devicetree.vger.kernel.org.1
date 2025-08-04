Return-Path: <devicetree+bounces-201556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BE674B19B82
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 08:18:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E032A177528
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 06:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35EB07DA6D;
	Mon,  4 Aug 2025 06:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMhmlB2d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9BB227E9B
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 06:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754288325; cv=none; b=CN6gFLze/H4DBkzhtq0iPWTaVQMGnXC4IhfCgmZromcjXbZtlsPfxCHqCXOMu57P1REFbQN7/MWsfTT/SbVYfFm5QCP0pctdDGhDH0Kgdb331Sn+/XR7ltRUlzW3DDKU99n/EePWCxjgUVYr0vx7Apzd2IYpa8BK9zt+yRuAKjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754288325; c=relaxed/simple;
	bh=Ul1dVZpeOTw7qaiph5ZpTsDcTs9gmOxaff1msl2kru0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JO38NLI9t02swqTGJw+MRS6aOTO+aBSf69UGV96t0XGlOC/iKMneRvJZ9agFaAAgBIapZPbaq+iGT6q2fY0DRN2fXhPxRZ93sfsVhhKdBHsoxKsYfxzb45cqyIh5CWSbU1sFAXV1iM2JMwJQErk+hrdGHQe3FjYVfGM4Fdrtt2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMhmlB2d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573L08oZ031047
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 06:18:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rRAvA28iaBx
	d6Ygxlq1Y+dMf1EQJkDMl/h16ZgOVLds=; b=TMhmlB2d4RpZRRgxT6qcgLlR/jo
	XcnDWU8pBCeAPHCuZPZmm8Nmo0omDOLkkWsxKKD4ffauOpRG41AR8BdfHNCg4l1s
	LejBL8vCxw8gYarCR7mWjzkMjlNVdsnXEMORQFPTAkPFi9cCs5LHIyeTDkK+lxvb
	tftfuqd8GWEWYSPyXRhu04tdwZAPoja14hySckw+NrQh1HQvHt8/PQqIzCfaZVmu
	wozRckjGYGxVcT+bQRjhZvxutoGGR1nfTQRtJbAGAq4NB3iuinrlCRX6cHfRP4mE
	B6AvJCgkg9uiJtCArJozswQgNLPkHM6uNjVz7k1Hx6CNJ2kKx+m5c5Cr8ig==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489bek3mu9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 06:18:41 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-240b9c0bddcso31840495ad.2
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 23:18:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754288240; x=1754893040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRAvA28iaBxd6Ygxlq1Y+dMf1EQJkDMl/h16ZgOVLds=;
        b=OBDpzrbdBI/Cy4RunpOOXy+AqwAP9/fmJpTKRN39zemWJQ8jH+c6EXHsQQO8eYZY8b
         ajh0ZSGNkGkjit9PbYHND+WLMXCaOx+dSf1BjlrF+0a7awAhOl8PcoV150p53QgTNYl6
         81xvC2SiUr/OCF0p6yqv50sfp2kCwJsooDYR3A0cckIAhWZzs1fi883mCWxNwTO7uSii
         /MZEJvmRYjD5v+3AeRxRDUp+z1yMuceLfn6IVxSFcSdU55uXFHn/nXSZR0y9qlJouNrc
         D2qz7u7qc9iUsvUlwbukQRGR7m2mOUwyU2MWIuIU6huoieUqsJ6Infi4MK59dwqn5i/K
         vy0g==
X-Forwarded-Encrypted: i=1; AJvYcCUEm2EaRjLtsrfi5Zj45+n1s1rAf8f3Jkw9ebNS6J2fwLyPhmqXJkn1u6PMqNx73jRLxEEwe6M2AL5i@vger.kernel.org
X-Gm-Message-State: AOJu0YwEfLEpr6mmn4MeG69vUc/Jpy1pTWsyiAcrS5phHwoFRMBMH4gt
	7JvZKd2G0y4seFfsysM+RvDFf5vmobHTeWjQICLDlQ02eB5hO+9YY8igm8rR2Kpg9/J0hkcJoDs
	2gLNBuP1rm5PUtr88WcVPCBRzSFkChlMwUVi4ic6D02rzc9hpwXu0OARSKNhXYp1+
X-Gm-Gg: ASbGncs5BNUzLxyGwFMTMy0sFH3BxR6av5n3SidJsjFvx8KP6VQIZfDmZ3oj4xkEn8t
	BVuMvuvpz0mWKuxBL6Wq2fY8Mt6i5+f6SDh549vlmV8Zn62U7or5Fg9Wd6028SMFe8EGoEONzpq
	IsZxM6qGjUe0D1/I0wiMgxZ5CNXO7wUUfUfPHf17SafSy6GVF7ELzI0Q4oHl2RMhJJ+0VSViyjM
	YNdOm7zM2Bu7zNyHE81nV0Tq3rdbA+Ul4GmK5wdr/r9qdaupvxWrIiU7gS4xkRPvGZ0jHNxPadn
	itLUPgimCuyiBYTBelaLG61cIPjDhkNgX4YrYXcDab5B0zPOQ/iedvafP3j5E/ChdBsF9mRbZzn
	ntUU=
X-Received: by 2002:a17:902:c9cd:b0:240:11cd:8502 with SMTP id d9443c01a7336-24246f6d417mr66434385ad.13.1754288239972;
        Sun, 03 Aug 2025 23:17:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGYPsjILhMmkQQ5MzhT7odrk4V2L30VI99GVEotMyVKKWKnUCGcF2rjuDKjD5PhVgLM20IrGw==
X-Received: by 2002:a17:902:c9cd:b0:240:11cd:8502 with SMTP id d9443c01a7336-24246f6d417mr66434175ad.13.1754288239532;
        Sun, 03 Aug 2025 23:17:19 -0700 (PDT)
Received: from a3fd830d25f9.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8976f08sm99786785ad.103.2025.08.03.23.17.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 23:17:19 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Imran Shaik <quic_imrashai@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH V2 1/2] dt-bindings: interconnect: Add OSM L3 compatible for QCS615 SoC
Date: Mon,  4 Aug 2025 06:15:35 +0000
Message-ID: <20250804061536.110-2-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804061536.110-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250804061536.110-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M7tNKzws c=1 sm=1 tr=0 ts=689050c1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=bpSexm00WYn9fMQEYZEA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAzMiBTYWx0ZWRfXzT8JpJDLzW7v
 6FTEg2YDfEtozgOrtWgKhHFArp4qQdNsmjtwJQqjRJ2Dk8DvTrwN5W72khT/xse/youvMYdfqua
 3LQOepsuBoUawPoIri9nED69jPWEUn16f4M22z9n9xhBVQg1BV3hX1a0KonHkVD0H8pja24Jkg0
 Ce3SP/NQmNYyUKMhbHkisMFecbAZOLhMZJaCz+u7D5sS+NL8v60QqOjHi5eziaoRxpaDyo+rPeY
 Dxh2vZwjl4ZG4tV3sAPOmGnzSBxyifHEON+aKhL/FJiMel6CPIM8R20eXBx7bvxu6aqklolVG6a
 iH1aBCeqy1qGGO6ITy55ZdtYOBOaI6gDebMpKP0H5Jt2gc5ab78faHDLa+WJ0bQ6V+DUuIl8tQw
 juqXlryq9CwXL2byqSjd4YV+L5zyBLZ0A3gkFv9bxD6Ar+5wiSdtCrKeKC9a5l8AJ0d/TGx9
X-Proofpoint-ORIG-GUID: SmQ2W6B6bRtAP7gIiNka64EPH_dRloAk
X-Proofpoint-GUID: SmQ2W6B6bRtAP7gIiNka64EPH_dRloAk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 mlxlogscore=999 mlxscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2508040032

Add Operation State Manager (OSM) L3 interconnect provider binding for
QCS615 SoC. As the OSM hardware in QCS615 and SM8150 are same,
added a family-level compatible for SM8150 SoC. This shared fallback
compatible allows grouping of SoCs with similar hardware, reducing
the need to explicitly list each variant in the driver match table.

Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 .../devicetree/bindings/interconnect/qcom,osm-l3.yaml        | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
index ab5a921c3495..4b9b98fbe8f2 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,osm-l3.yaml
@@ -41,6 +41,11 @@ properties:
               - qcom,qcs8300-epss-l3
           - const: qcom,sa8775p-epss-l3
           - const: qcom,epss-l3
+      - items:
+          - enum:
+              - qcom,qcs615-osm-l3
+          - const: qcom,sm8150-osm-l3
+          - const: qcom,osm-l3
 
   reg:
     maxItems: 1
-- 
2.43.0


