Return-Path: <devicetree+bounces-206311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32566B2C053
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:27:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 680577237ED
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:25:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1E232A3D0;
	Tue, 19 Aug 2025 11:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KTdS/h/a"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A4632BF3E
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:25:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755602706; cv=none; b=HAIp7jdZsc2aomgQXL6v98m3yrAmhC8usxKxtIEoM5Obs1lE5+xKASKV5Q9t2DaftwiEFgY/HfB61xm7NgIPENk/i5mhY81NFbC01JRGFEMmUTGklB8fDR2FzSzhLNVZPEKJduJKiUoe4La5H2tDkNnbR1eYsO+8vmjbD2vdIbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755602706; c=relaxed/simple;
	bh=tPWWVyCTWRXEYnYKUUoqFrp5QD4cC3uM+8GK+oqKBk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=C4KWDVvn1GRcUAq71Sc3JoCESLBzy7jkNKGBMLBicFQHV0jCt9iEbM3P+7xiiKr4l4BmbZLaEB6OigpRabuvZoz33B6Y4ICgWlQtlgsKrHFNTe+SQMGjVA2E0MyNne7GQ0eVNppI9JXmaLG9B/QkzYdu/mP6djn49505GDSQVMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KTdS/h/a; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57J90Wqs021733
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:25:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mS6t9R8MhHGEHCu5gVY9vvZZ+OU5TObUI9277uydciQ=; b=KTdS/h/aQPUcG/T5
	qT58zMM3iPHtwExwJt5wCit85IHN3rg/c+4rO+xaxxLN3HLw77/WwMvMAeZYPksU
	acie22v3bWBDrJFy6LWnRhNGZUUbQMyIZBOQL7702w/iaCB+6dY5RbARfejROScx
	y0qRJkmuCMOpocLjDxBkePy6SHMMnFhPlEPYIlnKFr2gXj73vneuQV3bFUQ/OgqM
	WRyvc5BbBJbvbzHgQQrLi9M3iHpARgziBHZn3kbkw4q8ERJisjnw4gX7kGkVDdcp
	8tKdBNulqO9P18XXgAvZGRFvUZsQGLalcj+zBAbM2hz9BMSbpsFDktQeORx3MQmv
	AYaL5Q==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48m71ck1c1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:25:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2ebafe0aso4405117b3a.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:25:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755602704; x=1756207504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mS6t9R8MhHGEHCu5gVY9vvZZ+OU5TObUI9277uydciQ=;
        b=e+LUVn7+rIOJRVbwCE4Vcyu+BTe6//W+bELN4gqWM0aGm/i4d5rcB6Ap4TVU9zch5N
         cu3ToU6BqWeXsP3Pu0Ltz0pDOLRpnhUYAVwu9N/kNCSFsmN1+/2vFnI9IJtjjGLMfE8A
         q69BFWSmeQ8tT7BOgB3031Np5RWcTYThRMjXJZ/LpSxbCeDuvY+vFzQuh4WcDrX9DU4y
         b0/4a+nr4Vt8kIgyC+fIBnTY6eEIhkDBRJESyjTt3vK+jzmaVoFHoakL2J1oalYZvxok
         y7y/Z5GQI9JakHF8JYjfMsx2chkQ4YsDNUFRLfrVTceIKSTH9T9ovoe/SBQJmT47SIsO
         8FoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVbGuYIBGBD3CpxdXwlu/5WSOOGpRbFOyNlXu47fa1ewX1ZAZd32g5cScBpVShCXUMl2FGcpSYgjMij@vger.kernel.org
X-Gm-Message-State: AOJu0YweAEtGmcX1TlASVWCzVLQpcxrbkD7CNB5OXXPae2lpPy8M81Ch
	sP5hrvmBwmfLMu0jEvMolD4f6t3h3IrccBI6fZE22IjB82nNyWzbVnE/+agsnTZe6wEVHKUqVfK
	UxkkEISfYmuwsztFv7RKzSDLG3ZmgVk+eTz4haX2a2lqjkVSzyff/5pcxqBmpe+0N
X-Gm-Gg: ASbGncszuSeQeGTvaGAeN6+M0q/MAA17oogYlsXHTdGg9ZV3/4sOyUHic8CoFxshLrr
	EwK2Kuxx8NmyOQQmMqW6l+ux+BvVwGZedu8V2MZ8YJIHopKtIaIy37q8wjRf3l1icbVgsPnVVNp
	+OfAdFN/pV+0QrvXF1/9OWuG+huG3KVUn6va0/LF7GKl1yX529LUTh06aSnd6SkXQ2a5SRBE/s5
	VeLgbiTezfknqs1JwVLOYbPyQATb9n/ClHkfUJaLrA2JGrCxp3pKGhOXvY0k1Xc6fErwhvx0BGv
	0ygk7eFDnc1O1p0aSmpIMxf48udGig+NnDeDLXhJjWT9iYtWcUvkdZIPTKTA01o=
X-Received: by 2002:a05:6a00:198e:b0:76b:f2d9:c760 with SMTP id d2e1a72fcca58-76e80ee2326mr2968842b3a.7.1755602703501;
        Tue, 19 Aug 2025 04:25:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFMqIUlrol5LRuocCJfIHzaBA6/77BPSuMjkCwUZ2O+nEb4gtgs0D8lTv+dWXddXteUJsotpA==
X-Received: by 2002:a05:6a00:198e:b0:76b:f2d9:c760 with SMTP id d2e1a72fcca58-76e80ee2326mr2968816b3a.7.1755602702974;
        Tue, 19 Aug 2025 04:25:02 -0700 (PDT)
Received: from [169.254.0.3] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76e7d4f7cdfsm2202258b3a.63.2025.08.19.04.24.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 04:25:02 -0700 (PDT)
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
Date: Tue, 19 Aug 2025 11:24:47 +0000
Subject: [PATCH v3 2/2] arm64: dts: qcom: qcs615: Add OSM l3 interconnect
 provider node and CPU OPP tables to scale DDR/L3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250819-talos-l3-icc-v3-2-04529e85dac7@oss.qualcomm.com>
References: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
In-Reply-To: <20250819-talos-l3-icc-v3-0-04529e85dac7@oss.qualcomm.com>
To: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Mike Tipton <mike.tipton@oss.qualcomm.com>,
        Odelu Kukatla <odelu.kukatla@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: A18MkMOPh7dugyWYGU7Wjka7HazUunoa
X-Proofpoint-GUID: A18MkMOPh7dugyWYGU7Wjka7HazUunoa
X-Authority-Analysis: v=2.4 cv=IvQecK/g c=1 sm=1 tr=0 ts=68a45f10 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=D3nHYB1hGevEbxyc_hsA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE4MDE0NyBTYWx0ZWRfX9quexCvvG9LU
 ndnnMiySDlWBQ7IQA+9HhMCNhlvBeI/ePFM10KzpmuRZjqUWQl1KZlgoVY+Q04fAl+ZATGMbq+o
 Hib1z2G5xUHll1ZPE945bBVmD7677uFEyTiWhlAxeYSh1M5BXnAXw6oNgEU4by1zsZO7l/z51+B
 n4fpYY39jyKGG+/2zE5s4GCMeKI08bYsVNKP40fuaaK7mzD4JdfnFzk/t/kDN/KsllqG5+ztmuD
 F3Kc0C1drZJ9MPd/7XEWcvszX61esOIAcO2JIzOyPjrB+YFDOitCDUXFZMVj6Zqfa4tJngKIzo/
 eyAcQvC839zrHsH96EYcZTkVIPS+XFIdvxEeFJUt5Au3/TX4/17Bbs0KnQI0E2o10yC9w2y5Vp9
 EJjALg+6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_01,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 bulkscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508180147

Add Operation State Manager (OSM) L3 interconnect provide node and OPP
tables required to scale DDR and L3 per freq-domain on QCS615 SoC.
As QCS615 and SM8150 SoCs have same OSM hardware, added SM8150
compatible as fallback for QCS615 OSM device node.

Signed-off-by: Imran Shaik <imran.shaik@oss.qualcomm.com>
Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6150.dtsi | 148 +++++++++++++++++++++++++++++++++++
 1 file changed, 148 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6150.dtsi b/arch/arm64/boot/dts/qcom/sm6150.dtsi
index 50cd9275e4028eb8f689eae215bf47a9e06d4cfb..44b52276804799790473e6058cffb2cebe57d771 100644
--- a/arch/arm64/boot/dts/qcom/sm6150.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6150.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/clock/qcom,rpmh.h>
 #include <dt-bindings/dma/qcom-gpi.h>
 #include <dt-bindings/interconnect/qcom,icc.h>
+#include <dt-bindings/interconnect/qcom,osm-l3.h>
 #include <dt-bindings/interconnect/qcom,qcs615-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
@@ -39,6 +40,10 @@ cpu0: cpu@0 {
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_0: l2-cache {
 			      compatible = "cache";
@@ -60,6 +65,10 @@ cpu1: cpu@100 {
 			next-level-cache = <&l2_100>;
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_100: l2-cache {
 			      compatible = "cache";
@@ -81,6 +90,10 @@ cpu2: cpu@200 {
 			next-level-cache = <&l2_200>;
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_200: l2-cache {
 			      compatible = "cache";
@@ -102,6 +115,10 @@ cpu3: cpu@300 {
 			next-level-cache = <&l2_300>;
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_300: l2-cache {
 			      compatible = "cache";
@@ -123,6 +140,10 @@ cpu4: cpu@400 {
 			next-level-cache = <&l2_400>;
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_400: l2-cache {
 			      compatible = "cache";
@@ -144,6 +165,10 @@ cpu5: cpu@500 {
 			next-level-cache = <&l2_500>;
 			clocks = <&cpufreq_hw 0>;
 			qcom,freq-domain = <&cpufreq_hw 0>;
+			operating-points-v2 = <&cpu0_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_500: l2-cache {
 			      compatible = "cache";
@@ -166,6 +191,10 @@ cpu6: cpu@600 {
 			clocks = <&cpufreq_hw 1>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
 			#cooling-cells = <2>;
+			operating-points-v2 = <&cpu6_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_600: l2-cache {
 			      compatible = "cache";
@@ -187,6 +216,10 @@ cpu7: cpu@700 {
 			next-level-cache = <&l2_700>;
 			clocks = <&cpufreq_hw 1>;
 			qcom,freq-domain = <&cpufreq_hw 1>;
+			operating-points-v2 = <&cpu6_opp_table>;
+			interconnects = <&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>,
+					<&osm_l3 MASTER_OSM_L3_APPS &osm_l3 SLAVE_OSM_L3>;
 
 			l2_700: l2-cache {
 			      compatible = "cache";
@@ -239,6 +272,111 @@ l3_0: l3-cache {
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
 
@@ -3894,6 +4032,16 @@ rpmhpd_opp_turbo_l1: opp-9 {
 			};
 		};
 
+		osm_l3: interconnect@18321000 {
+			compatible = "qcom,qcs615-osm-l3", "qcom,sm8150-osm-l3", "qcom,osm-l3";
+			reg = <0x0 0x18321000 0x0 0x1400>;
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


