Return-Path: <devicetree+bounces-201539-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E7AB19AF5
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 07:06:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C5DF01892B80
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 05:07:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A920225779;
	Mon,  4 Aug 2025 05:06:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WyCviMyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B00225408
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 05:06:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754283989; cv=none; b=kRXBAjRN5k95kHorcRI6NhvpXMfTqWYj++SiMrIt9MbjOcBatTQWwPkLMf16XFwoRg7SVo05D+mHXVHUWbkkEyxYlJ9Tk1Iv+532ZazZhJl729YZNrXR80H3o3bCijOXu8A3R/+ns/7bqpjiJt7HSY7/xH4yBYrDz8VRthWJ78A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754283989; c=relaxed/simple;
	bh=Ul1dVZpeOTw7qaiph5ZpTsDcTs9gmOxaff1msl2kru0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KxQVI9SjHi3mIUwjaVZ7cFtMKLfF2odvwLqvAjsAfm/Icayhi35dQhrblCT6rLy0tG0wGIYNEkLKHvakzjGR0Rv8SE4qqG0pwdXnGti5EHGZq8yD1MA2KFEy9TBl8dZjoynV7we6s5pGKaC5q9BgNaxOCPoErHlnbYzG6A0hS5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WyCviMyr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573Nmm8e024383
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 05:06:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=rRAvA28iaBx
	d6Ygxlq1Y+dMf1EQJkDMl/h16ZgOVLds=; b=WyCviMyrpzJcpnJwG1Dnh468KUU
	/vrD70EZH6FbNpJl1zTo2P5Wl0kFHuqXOHwz3aKuaURfYB7cjUzrmiF6F8b7BKOi
	GmLLZrT3yNaGacOFWpDCKmM7uP+c5jM4jzDAh9jyPALubkhwPhwYjl1fO08m+kdm
	8sqYcQHZPtxD9cOobc0/yGM7Rgn5QBQbuOHQ8V4tNOKSStG6V5fXVCxLtEy++BTW
	lzd0J5eIHPkFLFpqi+0Hy7bwSEmapXkVas8RURDwu8a3ue+nuLCBKdYhP0H450MU
	dPGusjX2jcBboadQQbQsvm5JQmH6O/gJ2ZdAiH1bP33g76GHSF2U9DtGWYg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 489a0m3jpd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:06:26 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2369dd58602so35069735ad.1
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 22:06:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754283986; x=1754888786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rRAvA28iaBxd6Ygxlq1Y+dMf1EQJkDMl/h16ZgOVLds=;
        b=o9OGz63KXDaTZ9A337zqGLGbGPg2Nh7lLFSyMV+vtE5KTjlUEqcD6+t60ai7dNwpaQ
         A+6FAN3+FM61CFvctU6HbP0i3I4xvcVT/CPRgFxSgWeWQOizbYTA/wZwQFC3DztlL31L
         1uhCk9P+wr4NxycM11oUdbBKFQ931Q6helmictEJQD+Zk4Gu/3o0aAcFgzh9pkriSLVM
         P1DccF+Q8Ia/5JNKs6ZoML0P4j19zZKlWpDHeV3V4ArZgDj4D6r7+D9C4Yo7Qy8EfRO4
         2SCisgqSWPsM7OSR8TUdtus3mKD6tMiAuwaNNM4EDPTtmFon0SgX1GGwyNEdEBnt0j0z
         H1/w==
X-Forwarded-Encrypted: i=1; AJvYcCU411qUqxzm1RvDpTFuvX7Mn080qm/3GpdZgbsHCmxB7ahxyeQCsu6GDYI4X9fCYoZl08lvtB8+vp3T@vger.kernel.org
X-Gm-Message-State: AOJu0YxnYXMSWQbIVyQqMbBx6L6m8WEnKo3zBum6w3TyoFDri7Zjb2zi
	xcmyxSPDZWRPZyBiHOPhwajDGZ28akfBhyr1EYtd6nxQELbV9HVks2Z4+JpepIb+DBkqq5kCY9Z
	8Ec9OO3/ft5otvnsxyYNisUvJaYRRE88u9x5r1PaXxHebmgb3NVzNTwxP8Y4eBDl1
X-Gm-Gg: ASbGnctYtpf5pM9MstG4JfrzbKvdnP/bmnLiKnRuZL8GMl50y6EbNrRwwtxE140MDl7
	3W8NvWTZEYzjxzUIWgGZyoD9yrU5A4rvR7Sjht1r8P4VvmE0yIRqYeXTMISXf94niGFMJDvD7GR
	wBzNOlMgc+FfM1Kk1Iet0BtUk6wakoQwtxk3te1VSHzlXOYv5ETM08p68gtmsaVQgK8uUGNw2is
	ngAmI2POi3uLViaIaVuREZhIv6jJ5YXcCFERjqT2TXPrWz3Q/ta/GR3/+lJAuALSujjn6E40/3t
	w//cHWtvUkdcBgmrLLYNv3UmKNN0XkUEejOaa6pUB2X5dkBMjoY5g0FyIUMTIBk4eQhZw2IJbu2
	+cb4=
X-Received: by 2002:a17:903:1a6f:b0:234:c8ec:51b5 with SMTP id d9443c01a7336-24247356230mr131570095ad.53.1754283985532;
        Sun, 03 Aug 2025 22:06:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpOOQvlVH6nFPP8utCjukSMyzVv08HQLDEblBTCrRyhJpR4aqOo+5iN+aSbXqu4CeNn50Q2Q==
X-Received: by 2002:a17:903:1a6f:b0:234:c8ec:51b5 with SMTP id d9443c01a7336-24247356230mr131569785ad.53.1754283985128;
        Sun, 03 Aug 2025 22:06:25 -0700 (PDT)
Received: from e0cec1fbb194.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1ef59b2sm99705135ad.7.2025.08.03.22.06.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 22:06:24 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Mike Tipton <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Subject: [PATCH 1/2] dt-bindings: interconnect: Add OSM L3 compatible for QCS615 SoC
Date: Mon,  4 Aug 2025 05:05:41 +0000
Message-ID: <20250804050542.100806-2-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250804050542.100806-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=JOM7s9Kb c=1 sm=1 tr=0 ts=68903fd3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=bpSexm00WYn9fMQEYZEA:9
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: 5-FQOFHprwWlXTeKVevEQBK4REnvsMOV
X-Proofpoint-ORIG-GUID: 5-FQOFHprwWlXTeKVevEQBK4REnvsMOV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAyNCBTYWx0ZWRfX/7DXywhNTvTm
 rzeKzd86TlYTRRugyaQ6VT9OdIWC42S/TsQEt9j2I5QWwDPk70HrOEYuu+gfUi42zPBR6+Na4YP
 cNMMW8D3QPca8hG93mQpuw0ug60RYRqH2QZSnHY1QRpKUdl/ZE19Cto1yYxI85d8ck2MIpgw5/o
 wWZasDtgSQeJwNakybMUKYSiiTvP3shZnlY0oQc0+JnsAqwNq2pGFpFPHTWnPCGx9Vw68JAYT3d
 fgyxJdIgLhX3xte2fEf31zFmbn+gX01V2BsVGCp3bkaYuT2eV4sgDO9mHM0FqZZMdHvCReFQtM/
 E6gIczAch3niF8AlJ68sNB0J/t77I284LzUL04lfxrJlRI3Hd8DZmeq1ZbLbm2ZQ/wUSgIBz1Ft
 A+yzCxMwBA51TMLJYifIwdj03u5pQOIPGckUtf65YenlL1YAffGsqbIjV5OZyLUXbxX6a8Sh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-01_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 suspectscore=0 mlxlogscore=999 spamscore=0
 clxscore=1015 priorityscore=1501 malwarescore=0 lowpriorityscore=0 mlxscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040024

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


