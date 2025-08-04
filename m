Return-Path: <devicetree+bounces-201555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC8FB19B7B
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 08:17:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8395189719B
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 06:17:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3790E22B5B8;
	Mon,  4 Aug 2025 06:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aT7hYFmr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6390A7DA6D
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754288255; cv=none; b=nXsv+88cLSA5CTFgaflBa/I5BNSu8x+lTcsuyUFgovL9FO/XyWL6kYVbQTq7+T4ffAlU0Wep7pUNruKUmMnFb5zTOJPG+Gn9AcwF1t2u2Tl3XlIvhkORnuydiSzu7cA/dTdeF/llkDvkI3YEifHtiHpxAK7JiKjmFkVWLOay8vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754288255; c=relaxed/simple;
	bh=Vb8zSFeny9Mn5Mnh5tC6qBnhcPG/9X4otYwJ8MQHApU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o5592XjwzI8smCf1zbtkdSwqJ+dwi5azeS7gsVc/kv4hEA7+vOqc54eUcjCN5kEJXTigxy77qdAOnxaSzL52JCnnxYpDtzpIm8+YTwSZ9/l3zAsAF9d6o1/8FLLjFgf2IXslKfeCOhAP9zFHjbK/jxkTt6K9EH+15mS+/Eb4BB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aT7hYFmr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 573NL4OC012382
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 06:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=50GtYEJCfQ/
	Uqag1R29mtHEPwViuyqpM/qEJkSrzU7c=; b=aT7hYFmr+tVABZw0E7+9sqDEWA2
	pmvjusWYDmdq/5c0BZbTRhsPAyZ29SKVjGCcLhJpCeO3aP7DAFTyoK3a6eWEzahI
	wjcu76mahoBDPs/SLz9jQGuTVlyvMwM0SOH4cQa+/XATCg4Q+8rRsXLVYg8FCZXU
	aE5IHZyMXdatTGEkzbuotuL952O7n8SnN+zgts+pWjgSs2WkBcP073wlyES5gXKc
	8K92Lrj0bjRlpTjDU80ugMRucdg0/ncYu52VV29C+ItVy1drJ5h8z4RHOAihYQiH
	FNlZbCdb+ATZNmDySy8rtARr0kyFdZKELd/55bQwpRiJCPgUXcJPh5lTCxQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4898cjkwx8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 06:17:32 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-240908dd108so32352125ad.0
        for <devicetree@vger.kernel.org>; Sun, 03 Aug 2025 23:17:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754288252; x=1754893052;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=50GtYEJCfQ/Uqag1R29mtHEPwViuyqpM/qEJkSrzU7c=;
        b=b7TdXWmAPPqKn/K1IvRWhIDzNHBJtSV2lwp73m5gG2rOH8//12gW2ResD2S4vr85vh
         vqVlLN+3S4/KfPRT7Cthu6twuJAXTHIL0XW3EC5GJCfnyNsiDqaZkySmiQIY77ylcH1m
         35g1zG++7ZYwj8fReVs+ItaWmllOKd1LbjYGO6UR2ohpTgqRzE5DFOk5S+xPE2SWCXRV
         SBV+1l4/BpNqX6d68DxUsItmEPpx8BJK776PiKJTdI6Dp3m0arfS/iuyPGWFNExk3L1z
         8XJ1P2BiaXn6SGO46Fp0oXnKrdUVbtDU2UhcNiHB6nE7OXsHjpUf75hmt4Bg6o9HfX28
         xp9Q==
X-Forwarded-Encrypted: i=1; AJvYcCV1akyx1rCfGX9ubfWJGMfMo7zgqIzM4yUx1s27cPcC14F4p3pYH1+RgWkqIawuNBDk7Mlp29FCqd6M@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6E4vglep2EPaaySGLss/gmKC6339HQPdE35lz1JmVw/Ix6w0U
	xBzQa+Th+bXRuSP0f9zRaRsWtlvXMJIeJxiyTYhS34gVSyYkrGERhSz50gIipsOs/4zyaG9VkB/
	a6/n7dSTKV67L2FVG7DOJ/VjXj2l0X4i2mYHbDYxe8jkTQ3LIMyAci9WEs5UH0tDe
X-Gm-Gg: ASbGnct9+HGsvU0esi85PkpjCfJwhfr5ISzq8CSkBxI4qxn5CA5aZACiEQsjOWNC+Dr
	Kf8BkJMFBY1sU5+ZGlP8AEBMUeaUmreXWqOvgaLf7nHfZEz2jCFVSDrPWb7Klh2+88D++KJ4MBM
	1lwLpzW4cs8Bb49JcQ1K/hHxuKJAwfNSx01plBnt3PzcsRbm50bpKlswThbFlxQ/9CWkrClY7N+
	HXthGm8oUprkMoHMm5up/JQU2OSa5RoFL5xXyiaHQzVcQgVRtc0lic/EFn9wOW6M5FJpoM9xNJW
	KYc0zHOYB9W2mEpz8ZiRmQ6we3Yyfm6InmD9/5sX6urEuLll60Mu/j5x1LZ0yxBIfhoDoIkwwuQ
	oR4g=
X-Received: by 2002:a17:902:c40c:b0:236:71a5:4417 with SMTP id d9443c01a7336-24200a169edmr235713005ad.5.1754288251665;
        Sun, 03 Aug 2025 23:17:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEfN2UJUX+L9dSi8Tgo2s/JfDt8ZbHOrN0aP2e4dj6A+JPWF/6iQx7ag6yTrO2qmk9i2l6bgQ==
X-Received: by 2002:a17:902:c40c:b0:236:71a5:4417 with SMTP id d9443c01a7336-24200a169edmr235712505ad.5.1754288251179;
        Sun, 03 Aug 2025 23:17:31 -0700 (PDT)
Received: from a3fd830d25f9.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8976f08sm99786785ad.103.2025.08.03.23.17.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 03 Aug 2025 23:17:30 -0700 (PDT)
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
Subject: [PATCH V2 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect provider node and CPU OPP tables to scale DDR/L3
Date: Mon,  4 Aug 2025 06:15:36 +0000
Message-ID: <20250804061536.110-3-raviteja.laggyshetty@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=MNBgmNZl c=1 sm=1 tr=0 ts=6890507c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=1ISD4PbNEMn50PZ00O0A:9
 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: teOKRyvrsEXu5AC7NsANKk2AylvqV_dX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDAzMSBTYWx0ZWRfX4jDpJl34zpMq
 UHOx07+U95QbIh+f9MWQBvzoBpJ/pO3xkkXlOghGJTeeGTdHU7nTT1n9ps3orXeJYQrhmbG3Uia
 1KDMja6AwVLofWewrK1FAE978y739ZV9V8U8BzzDxkyUohrR50yudqeul1iOY9UdQWEQaUtaSrg
 eaniIi8r+JXwHvbsf3LUaJTYZAKRxOUKhdGV0bE06hvBZeLuS8Yrm67+n7JLFkFdXQqMBs5fk3H
 /rTt2COtgO+iLEtEJ6s1GPvQGReYFlSAbtB9jTRGg7rVxB7DoV7nDgugNTyvMDpCMoWTqt822Jx
 5aZ3gYXFBbFVV+1KOsF4KnsaUD/0JZrx4AVIQUOL1dSENtf8U5Ys47aikAaYVyWc5HTDLhyJ7CE
 WcNtuRIdJN1+wblaN1IVyvBq8+shzhOQwE6JRTmgvG/VQtvu0ontcuR3VhdvwbNqzFwOdCo/
X-Proofpoint-GUID: teOKRyvrsEXu5AC7NsANKk2AylvqV_dX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040031

Add Operation State Manager (OSM) L3 interconnect provide node and OPP
tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
compatible as fallback for QCS615 OSM device node.

Depends-on: <20250702-qcs615-mm-cpu-dt-v4-v5-3-df24896cbb26@quicinc.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index e033b53f0f0f..d81e7daf9b5c 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -33,6 +34,10 @@ cpu0: cpu@0 {
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_0>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_0: l2-cache {
 			      compatible = "cache";
@@ -52,6 +57,10 @@ cpu1: cpu@100 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_100>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_100: l2-cache {
 			      compatible = "cache";
@@ -71,6 +80,10 @@ cpu2: cpu@200 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_200>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_200: l2-cache {
 			      compatible = "cache";
@@ -90,6 +103,10 @@ cpu3: cpu@300 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_300>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_300: l2-cache {
 			      compatible = "cache";
@@ -109,6 +126,10 @@ cpu4: cpu@400 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_400>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_400: l2-cache {
 			      compatible = "cache";
@@ -128,6 +149,10 @@ cpu5: cpu@500 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			next-level-cache = <&l2_500>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_500: l2-cache {
 			      compatible = "cache";
@@ -148,6 +173,10 @@ cpu6: cpu@600 {
 			dynamic-power-coefficient = <404>;
 			next-level-cache = <&l2_600>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu6_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_600: l2-cache {
 			      compatible = "cache";
@@ -167,6 +196,10 @@ cpu7: cpu@700 {
 			capacity-dmips-mhz = <1740>;
 			dynamic-power-coefficient = <404>;
 			next-level-cache = <&l2_700>;
+			operating-points-v2 = <&cpu6_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_700: l2-cache {
 			      compatible = "cache";
@@ -219,6 +252,111 @@ l3_0: l3-cache {
 		};
 	};
 
+	cpu0_opp_table: opp-table-cpu0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-peak-kBps = <(300000 * 4) (300000 * 16)>;
+		};
+
+		opp-576000000 {
+			opp-hz = /bits/ 64 <576000000>;
+			opp-peak-kBps = <(300000 * 4) (576000 * 16)>;
+		};
+
+		opp-748800000 {
+			opp-hz = /bits/ 64 <748800000>;
+			opp-peak-kBps = <(300000 * 4) (576000 * 16)>;
+		};
+
+		opp-998400000 {
+			opp-hz = /bits/ 64 <998400000>;
+			opp-peak-kBps = <(451000 * 4) (806400 * 16)>;
+		};
+
+		opp-1209600000 {
+			opp-hz = /bits/ 64 <1209600000>;
+			opp-peak-kBps = <(547000 * 4) (1017600 * 16)>;
+		};
+
+		opp-1363200000 {
+			opp-hz = /bits/ 64 <1363200000>;
+			opp-peak-kBps = <(768000 * 4) (1209600 * 16)>;
+		};
+
+		opp-1516800000 {
+			opp-hz = /bits/ 64 <1516800000>;
+			opp-peak-kBps = <(768000 * 4) (1209600 * 16)>;
+		};
+
+		opp-1593600000 {
+			opp-hz = /bits/ 64 <1593600000>;
+			opp-peak-kBps = <(1017000 * 4) (1363200 * 16)>;
+		};
+	};
+
+	cpu6_opp_table: opp-table-cpu6 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-300000000 {
+			opp-hz = /bits/ 64 <300000000>;
+			opp-peak-kBps = <(451000 * 4) (300000 * 16)>;
+		};
+
+		opp-652800000 {
+			opp-hz = /bits/ 64 <652800000>;
+			opp-peak-kBps = <(451000 * 4) (576000 * 16)>;
+		};
+
+		opp-768000000 {
+			opp-hz = /bits/ 64 <768000000>;
+			opp-peak-kBps = <(451000 * 4) (576000 * 16)>;
+		};
+
+		opp-979200000 {
+			opp-hz = /bits/ 64 <979200000>;
+			opp-peak-kBps = <(547000 * 4) (806400 * 16)>;
+		};
+
+		opp-1017600000 {
+			opp-hz = /bits/ 64 <1017600000>;
+			opp-peak-kBps = <(547000 * 4) (806400 * 16)>;
+		};
+
+		opp-1094400000 {
+			opp-hz = /bits/ 64 <109440000>;
+			opp-peak-kBps = <(1017600 * 4) (940800 * 16)>;
+		};
+
+		opp-1209600000 {
+			opp-hz = /bits/ 64 <1209600000>;
+			opp-peak-kBps = <(1017600 * 4) (1017600 * 16)>;
+		};
+
+		opp-1363200000 {
+			opp-hz = /bits/ 64 <1363200000>;
+			opp-peak-kBps = <(1555000 * 4) (1209600 * 16)>;
+		};
+
+		opp-1516800000 {
+			opp-hz = /bits/ 64 <1516800000>;
+			opp-peak-kBps = <(1555000 * 4) (1209600 * 16)>;
+		};
+
+		opp-1708800000 {
+			opp-hz = /bits/ 64 <1708800000>;
+			opp-peak-kBps = <(1555000 * 4) (1363200 * 16)>;
+		};
+
+		opp-1900800000 {
+			opp-hz = /bits/ 64 <1900800000>;
+			opp-peak-kBps = <(1555000 * 4) (1363200 * 16)>;
+		};
+	};
+
 	dummy_eud: dummy-sink {
 		compatible = "arm,coresight-dummy-sink";
 
@@ -3624,6 +3762,16 @@ rpmhpd_opp_turbo_l1: opp-9 {
 			};
 		};
 
+		osm_l3: interconnect@18321000 {
+			compatible = "qcom,qcs615-osm-l3", "qcom,sm8150-osm-l3", "qcom,osm-l3";
+			reg = <0 0x18321000 0 0x1400>;
+
+			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GPLL0>;
+			clock-names = "xo", "alternate";
+
+			#interconnect-cells = <1>;
+		};
+
 		usb_1_hsphy: phy@88e2000 {
 			compatible = "qcom,qcs615-qusb2-phy";
 			reg = <0x0 0x88e2000 0x0 0x180>;
-- 
2.43.0


