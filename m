Return-Path: <devicetree+bounces-198464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86134B0D17B
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 07:52:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1DB73BCA46
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 05:52:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911782BDC31;
	Tue, 22 Jul 2025 05:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nx5mRCWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD712BDC0C
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753163477; cv=none; b=e1yu7gG8w+Rn+wrR6RFgyrhSegkeB3uaJqe4Bk0kvzcJTgk7lygyokeWPZ2KY1+YJQDVR/Psjcv66IgHV7MVKZhZ8rGoV4gziXITVrwWMxbRixywRCUhWarjKwJv/WJTyScc24rMlyUGrR9BgEl8VXEzF5sRSZylp3D3WomVgDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753163477; c=relaxed/simple;
	bh=fTMMTA06o4lkJj2guzIP5xMxKYNXa0aJ8w3P5E5azJI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cN3sD5lkL4tYAJTl8qJKbg4G4BJwIPk19ZqHZb4I24aSBQ7T9rUC3zwr/lNHuA6uJRdsoXPIM4GDL+ePs61dN+05ljN+YK8QFDQtSeXMdIk0E9+6t7fi6NPxR90j8axN2yWAxO+qANwl9FrrHDHxjqybN6Nt30WFLsS4KYZ+JBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nx5mRCWZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LIgf0Q009366
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/fM93q1i8KP
	dFu/Eb9eZ22v8CRUxpDzk8wH51GcIwTs=; b=nx5mRCWZdGDJLpV84M15VEx9Y2L
	ZuNv/9PFYGqOpVuPxfyvejtLEPo7s/Jb4iwPQ6O45Dw99Ln4MdEfMXFAIcm2PgO+
	q8RIX1tbD0BPch9vRaTiQsW4UaXO3fK6AhqRFNlqXqDjQlc23CfLDjgV/vMuJaLJ
	lEeksQi7kY/oEXC7yhJU7zgtcNsMBpg1bCdqyfWaUkcDLonYc+CNJW4Ta4xNMxsY
	KKNGRQQf+JAVAAXjD3RDC30S0SNWHbavSQJbzHDgxFqSuI0047mhOoWsd5VG1NTw
	UUT3n2Rz/GpdC6Ah6YfQ3X+wpllXzQtDSsnp6T2xXVShAxij811uRXmag0Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045vxk2b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 05:51:14 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74913385dd8so7295733b3a.0
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 22:51:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753163473; x=1753768273;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/fM93q1i8KPdFu/Eb9eZ22v8CRUxpDzk8wH51GcIwTs=;
        b=E7qHy2mr95HIcnSVRfqeSLmL87pleQnTRNxvs+kSIonOgZ1xxXJIJUxxMapDJIbF7Q
         ipLjWhmzgKLDCnlL3ZZKc2vJOY38EmcUjyyZZMAxPFaGXeBxVYYn6SbyuNF0FrceuJ7M
         A9H9O7HJ3vzqOe8VODoa79nILRrD0dd2irGJvNf2LSrf3hxKkqrb6eBkfxotwHiz9Erm
         wMqRbiIQ166JOZEQyyvYWQHT+4J5PhFyYMGKNxHfrtN/ETGnjNB6tHDK7R2phK/q5sAh
         04UKuBea6vHsyhF12a3DDjCefVIYk9VLMOemZAUFZJpJw/YoLffiVTwENf3fiD1BmOLC
         xQgQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5N89Pe61AvTNl3V8KbkqiHuIndsbrt/cKy8oKwYlqqgtG7QxVpV2y60SDEp3B4evWB1lpk1sScm+y@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7f7PrsLymZy8dygv3mEVuDGcdyFgYXEVDzfueOGYHV+vAZsgt
	6I0Po/F/B2YuKmTtipyZEgCoZbfY6hDA0h392O6077ipV0VUFDUKuGNGMfFpaekWVtSW8GX43dc
	bLhB9G9Ix9DtYr1pWjZycva8DgTaMuua6xRY/uMjB0Fclv3YjVPKt8GwPkRS0KUVu
X-Gm-Gg: ASbGncuRw9tmYqrnAZaU/oLybTAHrGCG4YE6lzpc7zOOzfEcC0Esip5XlGl3LIhP+tg
	HtF8jeOUeVu9M/Blskag2rbR9nruu8EQhUnICtkaCgADDVroqkFabSvETHw5uMWwVy3LiddAkRH
	8ePa4qEIjcnuLiLE7tAqc4MAiJwcnDGeeMyorFIBGTXVj92zVBI3u78t12uTanH3QKHHQMubsQz
	8Fh+n4Ntd43PH2l64aguyI5I+zjVvIKVJ8nTEOY/Qh50dbb/+4NCYaxAIPYX0BTB+/c6KVbNR36
	DN0D3h1C8vb37HKxQZybfWlvTPYshakemZIXM6dfBZnbxsuk/M08bs2jpr3t9OdeINhlOvJb4D8
	IClE=
X-Received: by 2002:a05:6a21:648a:b0:1f5:9175:2596 with SMTP id adf61e73a8af0-23811056550mr39836322637.13.1753163472768;
        Mon, 21 Jul 2025 22:51:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG3beq+fmJywgf/Xa0N3mG61BRItw8qpChxjX+xPRTi2WnO0kWo0+PEqBuEWBurrwnFSzqvUA==
X-Received: by 2002:a05:6a21:648a:b0:1f5:9175:2596 with SMTP id adf61e73a8af0-23811056550mr39836258637.13.1753163472220;
        Mon, 21 Jul 2025 22:51:12 -0700 (PDT)
Received: from 2603feb0d442.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-759cb155e0fsm6669136b3a.71.2025.07.21.22.51.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 22:51:11 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Mike Titpon <mike.tipton@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: [PATCH V3 1/1] arm64: dts: qcom: qcs8300: Add EPSS l3 interconnect provider node and CPUCP OPP tables to scale DDR/L3
Date: Tue, 22 Jul 2025 05:50:39 +0000
Message-ID: <20250722055039.135140-2-raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250722055039.135140-1-raviteja.laggyshetty@oss.qualcomm.com>
References: <20250722055039.135140-1-raviteja.laggyshetty@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=687f26d2 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=NfiDZElyWYjDabnAXtoA:9
 a=zc0IvFSfCIW2DFIPzwfm:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: OVH-ktdfctts495OVjeNSvRKiAi4HFGL
X-Proofpoint-ORIG-GUID: OVH-ktdfctts495OVjeNSvRKiAi4HFGL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDA0NSBTYWx0ZWRfX22ogy1J1KKl9
 cd9oVP0T6vg94b5lur5S3nX4BtLerndcby+Ex4cDtbC2qVzeUCxO8ui8xhVGKkTHsuvkSki7asi
 NJhaInCVd1cBwxTF2FhZZBU9Gy1m5EwaiCmtPc9xIV9MVM9jrO9RCSo1cj4bbi6/WFOzIvE4/b/
 xIVWJ5kdHNMNDwgzkvpU+DdTY/aynw6Q2J2fviAtgBZ/7anzeKkZKYk4SjFwPRp0OitRkiVW0z5
 Cnqy2ZqllJGvjsmddbal6WOuOHB3vpViv2/LGamMiBQ3CzQ1a5foemsF/aUc0AeiAgVlANbYYMm
 te+iW7xKY+e+w2CGtoW7TUiyOsUfYu5zsZkoie6rglePNA/suwgb5tBT8AgigCqtoPS7IfQo/6H
 pZ4ehsA5khPMeUcv4tR7NeLDPzvRSn8lyD5kpd8HXc2r4xOpaRJJbWAYNXcCRxvYf0/+1yv2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_01,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220045

Add Epoch Subsystem (EPSS) L3 interconnect provider node and OPP tables
required to scale DDR and L3 per freq-domain on QCS8300 platform.
As QCS8300 and SA8775P SoCs have same EPSS hardware, added SA8775P
compatible as fallback for QCS8300 EPSS device node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Co-developed-by: Imran Shaik <quic_imrashai@quicinc.com>
Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs8300.dtsi | 301 ++++++++++++++++++++++++++
 1 file changed, 301 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 7ada029c32c1..7d38ddd2cc9e 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -12,6 +12,7 @@
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/firmware/qcom,scm.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/mailbox/qcom-ipcc.h>
@@ -53,6 +54,11 @@ cpu0: cpu@0 {
 			capacity-dmips-mhz = <1946>;
 			dynamic-power-coefficient = <472>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl0 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl0 SLAVE_EPSS_L3_SHARED>;
 
 			l2_0: l2-cache {
 				compatible = "cache";
@@ -73,6 +79,11 @@ cpu1: cpu@100 {
 			capacity-dmips-mhz = <1946>;
 			dynamic-power-coefficient = <472>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl0 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl0 SLAVE_EPSS_L3_SHARED>;
 
 			l2_1: l2-cache {
 				compatible = "cache";
@@ -93,6 +104,11 @@ cpu2: cpu@200 {
 			capacity-dmips-mhz = <1946>;
 			dynamic-power-coefficient = <507>;
 			qcom,freq-domain = <&cpufreq_hw 2>;
+			operating-points-v2 = <&cpu2_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl0 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl0 SLAVE_EPSS_L3_SHARED>;
 
 			l2_2: l2-cache {
 				compatible = "cache";
@@ -113,6 +129,11 @@ cpu3: cpu@300 {
 			capacity-dmips-mhz = <1946>;
 			dynamic-power-coefficient = <507>;
 			qcom,freq-domain = <&cpufreq_hw 2>;
+			operating-points-v2 = <&cpu2_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl0 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl0 SLAVE_EPSS_L3_SHARED>;
 
 			l2_3: l2-cache {
 				compatible = "cache";
@@ -133,6 +154,11 @@ cpu4: cpu@10000 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
+			operating-points-v2 = <&cpu4_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl1 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl1 SLAVE_EPSS_L3_SHARED>;
 
 			l2_4: l2-cache {
 				compatible = "cache";
@@ -153,6 +179,11 @@ cpu5: cpu@10100 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
+			operating-points-v2 = <&cpu4_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl1 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl1 SLAVE_EPSS_L3_SHARED>;
 
 			l2_5: l2-cache {
 				compatible = "cache";
@@ -173,6 +204,11 @@ cpu6: cpu@10200 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
+			operating-points-v2 = <&cpu4_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl1 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl1 SLAVE_EPSS_L3_SHARED>;
 
 			l2_6: l2-cache {
 				compatible = "cache";
@@ -193,6 +229,11 @@ cpu7: cpu@10300 {
 			capacity-dmips-mhz = <1024>;
 			dynamic-power-coefficient = <100>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
+			operating-points-v2 = <&cpu4_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&epss_l3_cl1 MASTER_EPSS_L3_APPS
+					 &epss_l3_cl1 SLAVE_EPSS_L3_SHARED>;
 
 			l2_7: l2-cache {
 				compatible = "cache";
@@ -323,6 +364,248 @@ system_sleep: domain-sleep {
 		};
 	};
 
+	cpu0_opp_table: opp-table-cpu0 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-902400000 {
+			opp-hz = /bits/ 64 <902400000>;
+			opp-peak-kBps = <(681600 * 4) (921600 * 32)>;
+		};
+
+		opp-1017600000 {
+			opp-hz = /bits/ 64 <1017600000>;
+			opp-peak-kBps = <(1017600 * 4) (921600 * 32)>;
+		};
+
+		opp-1190400000 {
+			opp-hz = /bits/ 64 <1190400000>;
+			opp-peak-kBps = <(1708800 * 4) (921600 * 32)>;
+		};
+
+		opp-1267200000 {
+			opp-hz = /bits/ 64 <1267200000>;
+			opp-peak-kBps = <(2092800 * 4) (998400 * 32)>;
+		};
+
+		opp-1344000000 {
+			opp-hz = /bits/ 64 <1344000000>;
+			opp-peak-kBps = <(2092800 * 4) (1075200 * 32)>;
+		};
+
+		opp-1420800000 {
+			opp-hz = /bits/ 64 <1420800000>;
+			opp-peak-kBps = <(2092800 * 4) (1152000 * 32)>;
+		};
+
+		opp-1497600000 {
+			opp-hz = /bits/ 64 <1497600000>;
+			opp-peak-kBps = <(2092800 * 4) (1228800 * 32)>;
+		};
+
+		opp-1574400000 {
+			opp-hz = /bits/ 64 <1574400000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1670400000 {
+			opp-hz = /bits/ 64 <1670400000>;
+			opp-peak-kBps = <(2736000 * 4) (1401600 * 32)>;
+		};
+
+		opp-1747200000 {
+			opp-hz = /bits/ 64 <1747200000>;
+			opp-peak-kBps = <(2736000 * 4) (1401600 * 32)>;
+		};
+
+		opp-1824000000 {
+			opp-hz = /bits/ 64 <1824000000>;
+			opp-peak-kBps = <(2736000 * 4) (1478400 * 32)>;
+		};
+
+		opp-1900800000 {
+			opp-hz = /bits/ 64 <1900800000>;
+			opp-peak-kBps = <(2736000 * 4) (1478400 * 32)>;
+		};
+
+		opp-1977600000 {
+			opp-hz = /bits/ 64 <1977600000>;
+			opp-peak-kBps = <(3196800 * 4) (1555200 * 32)>;
+		};
+
+		opp-2054400000 {
+			opp-hz = /bits/ 64 <2054400000>;
+			opp-peak-kBps = <(3196800 * 4) (1555200 * 32)>;
+		};
+
+		opp-2112000000 {
+			opp-hz = /bits/ 64 <2112000000>;
+			opp-peak-kBps = <(3196800 * 4) (1612800 * 32)>;
+		};
+
+	};
+
+	cpu2_opp_table: opp-table-cpu2 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-940800000 {
+			opp-hz = /bits/ 64 <940800000>;
+			opp-peak-kBps = <(681600 * 4) (921600 * 32)>;
+		};
+
+		opp-1094400000 {
+			opp-hz = /bits/ 64 <1094400000>;
+			opp-peak-kBps = <(1017600 * 4) (921600 * 32)>;
+		};
+
+		opp-1267200000 {
+			opp-hz = /bits/ 64 <1267200000>;
+			opp-peak-kBps = <(1708800 * 4) (921600 * 32)>;
+		};
+
+		opp-1344000000 {
+			opp-hz = /bits/ 64 <1344000000>;
+			opp-peak-kBps = <(2092800 * 4) (998400 * 32)>;
+		};
+
+		opp-1420800000 {
+			opp-hz = /bits/ 64 <1420800000>;
+			opp-peak-kBps = <(2092800 * 4) (998400 * 32)>;
+		};
+
+		opp-1497600000 {
+			opp-hz = /bits/ 64 <1497600000>;
+			opp-peak-kBps = <(2092800 * 4) (1075200 * 32)>;
+		};
+
+		opp-1574400000 {
+			opp-hz = /bits/ 64 <1574400000>;
+			opp-peak-kBps = <(2092800 * 4) (1152000 * 32)>;
+		};
+
+		opp-1632000000 {
+			opp-hz = /bits/ 64 <1632000000>;
+			opp-peak-kBps = <(2092800 * 4) (1228800 * 32)>;
+		};
+
+		opp-1708800000 {
+			opp-hz = /bits/ 64 <1708800000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1804800000 {
+			opp-hz = /bits/ 64 <1804800000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1900800000 {
+			opp-hz = /bits/ 64 <1900800000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1977600000 {
+			opp-hz = /bits/ 64 <1977600000>;
+			opp-peak-kBps = <(2736000 * 4) (1401600 * 32)>;
+		};
+
+		opp-2054400000 {
+			opp-hz = /bits/ 64 <2054400000>;
+			opp-peak-kBps = <(2736000 * 4) (1478400 * 32)>;
+		};
+
+		opp-2131200000 {
+			opp-hz = /bits/ 64 <2131200000>;
+			opp-peak-kBps = <(3196800 * 4) (1555200 * 32)>;
+		};
+
+		opp-2208000000 {
+			opp-hz = /bits/ 64 <2208000000>;
+			opp-peak-kBps = <(3196800 * 4) (1555200 * 32)>;
+		};
+
+		opp-2284800000 {
+			opp-hz = /bits/ 64 <2284800000>;
+			opp-peak-kBps = <(3196800 * 4) (1612800 * 32)>;
+		};
+
+		opp-2361600000 {
+			opp-hz = /bits/ 64 <2361600000>;
+			opp-peak-kBps = <(3196800 * 4) (1612800 * 32)>;
+		};
+
+	};
+
+	cpu4_opp_table: opp-table-cpu4 {
+		compatible = "operating-points-v2";
+		opp-shared;
+
+		opp-844800000 {
+			opp-hz = /bits/ 64 <844800000>;
+			opp-peak-kBps = <(681600 * 4) (921600 * 32)>;
+		};
+
+		opp-1113600000 {
+			opp-hz = /bits/ 64 <1113600000>;
+			opp-peak-kBps = <(1708800 * 4) (921600 * 32)>;
+		};
+
+		opp-1209600000 {
+			opp-hz = /bits/ 64 <1209600000>;
+			opp-peak-kBps = <(2092800 * 4) (998400 * 32)>;
+		};
+
+		opp-1305600000 {
+			opp-hz = /bits/ 64 <1305600000>;
+			opp-peak-kBps = <(2092800 * 4) (1075200 * 32)>;
+		};
+
+		opp-1382400000 {
+			opp-hz = /bits/ 64 <1382400000>;
+			opp-peak-kBps = <(2092800 * 4) (1152000 * 32)>;
+		};
+
+		opp-1459200000 {
+			opp-hz = /bits/ 64 <1459200000>;
+			opp-peak-kBps = <(2092800 * 4) (1228800 * 32)>;
+		};
+
+		opp-1497600000 {
+			opp-hz = /bits/ 64 <1497600000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1574400000 {
+			opp-hz = /bits/ 64 <1574400000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1651200000 {
+			opp-hz = /bits/ 64 <1651200000>;
+			opp-peak-kBps = <(2736000 * 4) (1324800 * 32)>;
+		};
+
+		opp-1728000000 {
+			opp-hz = /bits/ 64 <1728000000>;
+			opp-peak-kBps = <(2736000 * 4) (1401600 * 32)>;
+		};
+
+		opp-1804800000 {
+			opp-hz = /bits/ 64 <1804800000>;
+			opp-peak-kBps = <(2736000 * 4) (1478400 * 32)>;
+		};
+
+		opp-1881600000 {
+			opp-hz = /bits/ 64 <1881600000>;
+			opp-peak-kBps = <(3196800 * 4) (1555200 * 32)>;
+		};
+
+		opp-1958400000 {
+			opp-hz = /bits/ 64 <1958400000>;
+			opp-peak-kBps = <(3196800 * 4) (1612800 * 32)>;
+		};
+	};
+
 	dummy_eud: dummy-sink {
 		compatible = "arm,coresight-dummy-sink";
 
@@ -5433,6 +5716,15 @@ rpmhpd_opp_turbo_l1: opp-9 {
 			};
 		};
 
+		epss_l3_cl0: interconnect@18590000 {
+			compatible = "qcom,qcs8300-epss-l3", "qcom,sa8775p-epss-l3",
+				     "qcom,epss-l3";
+			reg = <0x0 0x18590000 0x0 0x1000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
+			clock-names = "xo", "alternate";
+			#interconnect-cells = <1>;
+		};
+
 		cpufreq_hw: cpufreq@18591000 {
 			compatible = "qcom,qcs8300-cpufreq-epss", "qcom,cpufreq-epss";
 			reg = <0x0 0x18591000 0x0 0x1000>,
@@ -5455,6 +5747,15 @@ cpufreq_hw: cpufreq@18591000 {
 			#freq-domain-cells = <1>;
 		};
 
+		epss_l3_cl1: interconnect@18592000 {
+			compatible = "qcom,qcs8300-epss-l3", "qcom,sa8775p-epss-l3",
+				     "qcom,epss-l3";
+			reg = <0x0 0x18592000 0x0 0x1000>;
+			clocks = <&rpmhcc RPMH_CXO_CLK>, <&gcc GCC_GPLL0>;
+			clock-names = "xo", "alternate";
+			#interconnect-cells = <1>;
+		};
+
 		remoteproc_gpdsp: remoteproc@20c00000 {
 			compatible = "qcom,qcs8300-gpdsp-pas", "qcom,sa8775p-gpdsp0-pas";
 			reg = <0x0 0x20c00000 0x0 0x10000>;
-- 
2.43.0


