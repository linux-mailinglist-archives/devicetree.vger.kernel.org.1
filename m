Return-Path: <devicetree+bounces-246406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB8CCBC862
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 05:57:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 82051302378F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 04:55:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2295631ED90;
	Mon, 15 Dec 2025 04:55:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gd4Cx1lM";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="N0IcB4qF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94831280D
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:55:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765774503; cv=none; b=RIvlDH5gsAaLUGGL71xOrSStu8WUMNUK1BvDCF+eAFNgYVieoUHAqVzddQ4xxCwoJIVJtX9aNot0j89i0Gdvc+rIzqIdI7BBMpkPeRPZg3x4y6BaJ1DxX559iEkoP4j9hKPJBVtiXS+Y+4KeJg60kSUemDf8mbOlLei3WkdiEXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765774503; c=relaxed/simple;
	bh=OtI43I9uh5Dxj4J6JYHv+KXNtGFs6aWMCpVLpoCkE6U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eXP1COzEBOG7tROo+1oHbbM4IG/w6kqZmamVb5yRZSpwl3AaTsnEteLdmMQxeiOt26/RchNRmODcihz0Wd85FPrZ528GVrzlPAGn3LLS0RQNW3M6HdtpN5UrYUVHpIOJkrU2atcnoHdZN+c2GEdv45ZE9DL3UMxDikIqu+HQFow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gd4Cx1lM; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=N0IcB4qF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BEMS0fG3264681
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:55:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=XCRRoZX5HFKwk0TtzOQqIO+LFtD6GUuisWM
	F/z8xudo=; b=Gd4Cx1lMtf3MaMJDukQb/83yDPwwIPCoTwjAb3eUG1yiHp0eLY1
	vbBB65Zs3joFElIkKvTVIfODlpujZt6LlzWc50kn7Hnrrc0PQHAotGpyWR8NCX7l
	fWp9cPx4t6WTeW9Ue9Cynztg2WuBkyLyO/gO1eZmZaxThgPkBt5UEC37McPJ7uJp
	dxbo8VATTmjVeuJ0HwmivHoAJ+ETFYHVjawLxFPcbV5FoybgzQb3X++9/4xMsVNw
	qHN4F7HTB6Uq1gqufkbUORt0X5Osswy+w4PRtxQ3eyWp0MVfOClF21n6hxdqEi46
	OV1NeASkoUlBPY8uYTodzILylvV/iXhlSLg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b11dsb66y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 04:54:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7e1738754c7so2180974b3a.1
        for <devicetree@vger.kernel.org>; Sun, 14 Dec 2025 20:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765774499; x=1766379299; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XCRRoZX5HFKwk0TtzOQqIO+LFtD6GUuisWMF/z8xudo=;
        b=N0IcB4qF0bT0H7vZSADW2nWuewyzoZTFuYJeKJvzJ+SFy3qZdBYr6XIRvB+InHxa6z
         iTBgdEVPpkKDYecMOsb29fd0ghbyNcOQMw6Qk6NuiCpoBx0yC6FKv948Hg74e/z1L3or
         twTpS4KXasTULXNMtFn34uBJLqXbToj3zMDGGyetxN1pCVrLFBhZXJ4Wu1TJyEkX4p1T
         9QAi1Ro9NRA/Qnt6qcajZ5LrnKcHIsJWB2uXQA/hckKdGMGQCQPAjDBuo8nYQCmGmMTt
         v5Pkte+Y9Rh144r0xvlvgyj9m9M2qyKMqIjH+qfne3tD5n5XHht965w0S5D4AmKn2VaQ
         lKtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765774499; x=1766379299;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCRRoZX5HFKwk0TtzOQqIO+LFtD6GUuisWMF/z8xudo=;
        b=Ylb3X7VZECdyBZHNryWcWg6L7Mm76pcdtRmoBz2ph2mQLhzt3RM05I0yFeUOocdY5j
         0T3KsreqlUVLXU26LMGMrU8d5jgxweuR2SmNKAHRa9yNsnKiIWKtCYJuzuxzev8umvku
         K5TOwkBZykJQ1jb8AJkRQMUvplWFu11CgGXtGLNVblVNz7fD7UT52V6szLZzXXET1/ot
         683n/CpjvncvcBRzUpf32DiKfVkqrAxp6mQXxN/ZuPjeHtOnq/8sqqDJF2i8dcTQLDxF
         qyVDyJas6JIQXTkImQRAa79YJGatdcMoEy4oK63TNtbfcKCd0Ap4XYlp4b8rb7e65UYe
         RaGw==
X-Forwarded-Encrypted: i=1; AJvYcCU2mCIwxeY1lnFqoD5nAentJMfVYQSmuTVmu2vhdRH4y+WUT8y7wRXUSXeIdFFr9onV5Pvs85iy0HDp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4mE9gX+YvXxYz0s5y62kPnzpLWELF9aAVny2NUUv7d2beAml5
	prrP3jttD2z3P2AHxO3frBdhVJ6jAvGLGVAjHroxdjwgN1M7oyupOINbi4KWbLp26Dq/Lq8b/MO
	CMEHDGjGX1HzIZWRuAtaKY9t/EPpEBdfvHRNA3YniKNNdcfH7PpqBOOIfo5DEGgMJ
X-Gm-Gg: AY/fxX5j7YtsqiFU6VjhLYMMB8ONAWLgNMS0BD8R0RjaAVp37qhtnzI86SBu7EgksMP
	r6nCIKKUIrT7WxVXqAN0Tl/OPoQbVTRuUu5KOMADx5xyyxjSJDSS+w4IuHXBz/sO7XkeHEud2II
	ux8UIaZRDSXHmsylnvvhjUk/BZHXBQ+F5R77UeOyJu7eMWLvZlmYWxOSqCwcKCK6oHORRx2M4nB
	LfvTCEsRtVl2xa30VRIoeW9i8R1egmUFHJkJkirfgAruPquL6UXFBQw6XZErB9Myrwog5pqU77y
	HVRC6YGVw2qtsQptgtaxS/Rd4Ee3lTxh97N7CVyoFPLhnmGE+AyoRtHgsmhuVN9gonF+TZ1OHyR
	7ZVC+bXNhwRCjdknQ7TS5uFRcavOxo5iQNm0HFCc=
X-Received: by 2002:a05:6a00:6ca1:b0:7ad:1907:5756 with SMTP id d2e1a72fcca58-7f667936b06mr11473320b3a.12.1765774498649;
        Sun, 14 Dec 2025 20:54:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjX9StN1jhhvvUIZ1mWxtutuPbVNNSt7BZMg2/9K4HOgGDP2M7J+aTFxEJGdC2uHG+izMDag==
X-Received: by 2002:a05:6a00:6ca1:b0:7ad:1907:5756 with SMTP id d2e1a72fcca58-7f667936b06mr11473288b3a.12.1765774498159;
        Sun, 14 Dec 2025 20:54:58 -0800 (PST)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7f4c4aa91d0sm11190997b3a.32.2025.12.14.20.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Dec 2025 20:54:57 -0800 (PST)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Subject: [PATCH] arm64: dts: qcom: lemans: Enable cpufreq cooling devices
Date: Mon, 15 Dec 2025 10:24:51 +0530
Message-Id: <20251215045451.3150894-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: AZlK4ezFFFhjWLbSqYlkuUREm_svKaCd
X-Proofpoint-ORIG-GUID: AZlK4ezFFFhjWLbSqYlkuUREm_svKaCd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE1MDA0MiBTYWx0ZWRfX115Y1QNdT3vr
 ty/9laELiv3EuxQYWIGtsk9taB2iR3NdjcPTCQnEVreL2RJQN9bqqRwiyaYlbXDDUpq3qVqUV/U
 PWPxsSe/+iy9Im8Dtsk9zwOjb/MSKbMtOUAnrQE+bhl2bC4tqcSr4B59H4+iJ3w+RQKp2Qf5bYB
 rn/6EUQcJzuSSSMOjUywen4uT1k7yhRisA+QcEuTB5oFsUrbzT0jMLDfRY8efqAZuuQIQ/JX9Gq
 UQjJ0IuC6FyymY50+mxWjZTrm3TM+WikJmait8M5fhgAsxkTpD9XvTRjJWG+MbI6RoHEBGNq+PJ
 +48zz342e3Mx9RQ6n21ELSQQc9j6FVq0AknZ+sWdAHGBG3X71pDePRl7DXLdhWtWQh1st3/UitK
 1ucSbva6edim4itfaSiMBfzxrrYbCg==
X-Authority-Analysis: v=2.4 cv=cfLfb3DM c=1 sm=1 tr=0 ts=693f94a3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=ZDMc2YS8df6EeW9c3AUA:9 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-14_07,2025-12-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512150042

Add cooling-cells property to the CPU nodes to support cpufreq
cooling devices.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>

diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
index f80f9b950ed5..24f6ef430320 100644
--- a/arch/arm64/boot/dts/qcom/lemans.dtsi
+++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
@@ -55,6 +55,7 @@ cpu0: cpu@0 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_0>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -84,6 +85,7 @@ cpu1: cpu@100 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_1>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -108,6 +110,7 @@ cpu2: cpu@200 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_2>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -132,6 +135,7 @@ cpu3: cpu@300 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			next-level-cache = <&l2_3>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu0_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -156,6 +160,7 @@ cpu4: cpu@10000 {
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			next-level-cache = <&l2_4>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu4_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -186,6 +191,7 @@ cpu5: cpu@10100 {
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			next-level-cache = <&l2_5>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu4_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -210,6 +216,7 @@ cpu6: cpu@10200 {
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			next-level-cache = <&l2_6>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu4_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
@@ -234,6 +241,7 @@ cpu7: cpu@10300 {
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			next-level-cache = <&l2_7>;
 			capacity-dmips-mhz = <1024>;
+			#cooling-cells = <2>;
 			dynamic-power-coefficient = <100>;
 			operating-points-v2 = <&cpu4_opp_table>;
 			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
-- 
2.34.1


