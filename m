Return-Path: <devicetree+bounces-221183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 119DFB9DA9B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:37:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6DFBE2E49A3
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE9D2EBBBF;
	Thu, 25 Sep 2025 06:33:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tuupdz8O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F422EBBB8
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782020; cv=none; b=CKx/YiyVoiS1hVylUyhb2Nc6bMnlVLKVChiqeU/kYvM3Y/kFjYTQzQBwoNEga7XhYsmHr2fu5rS0uPU6r57dKQgYuyWq/Sxtah+DBWqBKcUjGMx8Z+mptBy4s0Q1y25WtIA8we5ZmisoOkuYIyxfav9tjA+lPwOpc1GuWcQOe7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782020; c=relaxed/simple;
	bh=0ByBaAtNUicSKEoYgTLZP7f79bhHaD+AnUFmHZjk2hM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Y1T82vhj4LCTs+0vS0UwtWmMlN3VDCZYMaxLAaK8GwZqLbUr140D2yAQj46syXZUpYQ7egj+FCxqgHyxT4hqCwLbAUpG6JsaQC882HdhMEinAnTABLD28wYderWDp4TXDCB9KliyIb6nd8B9R0eAhzqpAX0mCTdrsysGiHGF+/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tuupdz8O; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0Kf1D003961
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Y85dl0qhn/qWZkruGbGchDHEq8jegQjlHb886r0PTP8=; b=Tuupdz8OfPLU/9Vr
	qR5kNslbbE0rN+1aaIQj944dIXPJtAUbuwnFsamvDR2+L0eaTXcyi44PpR3un+NM
	7sEZi+LMUmK4vX8btFySeDxmeS+oKynUPxz/GfADv2WKSRZK+n/erQcSZXCIvrgw
	Ai3UJMV+OBSaPltgLJqM4Wj46H+BRwcMLBB/6g2wscb/GhR+xkPGd/JlcK31GVBe
	6HVB1Bf1G7Usd+TXDx9vFTs0M2m3xshEzi7dI6TxmXlO4/LwNHbrr27Ssi42EgBu
	6S+oG46ulLizpTff0MeYQV9HcCQrbLQGGE+R4Mp0gzABxeoubSoR5Na6k1HIWjCg
	4S6Qcw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jqh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:37 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-268141f759aso6300285ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782016; x=1759386816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y85dl0qhn/qWZkruGbGchDHEq8jegQjlHb886r0PTP8=;
        b=JE6cCRoEJNAU8UPYnXtIrLfwguC6jG7yFRwexPWnsnaDHz5k6URUbkek/MC2UXpdkm
         5tUfw1dOoM7pXD8nkbIMWQzDmaf5tIRkIZ1kwUNPv8ezJuuNtGpOit/QLKuMyIyrpzhl
         zyeOYcaRh5CNP5v349FFBfZTzX9UjdqEDF7D1rg9CIvVK4Xrldue3pK4Ze8UlxUxVqNx
         GzdweYRqMIsZ116lCIixGE9634WgbK0d9zR9VEi/hj11oioP2yM1gKBXAY7KTsGdJJe6
         tPm4d04Hjy8j36koFf4fnJsFVrpUQeDfrosgtvI5r9MgNfh0Fe4cBH3utAl0oRJCJlLF
         UChw==
X-Forwarded-Encrypted: i=1; AJvYcCXONNJd+cwO2q2eQowRQ3m9MMHiLnmDNEF//Rb5smDZP8U39gTZ/zekrW2NxA2iPqyt8y7k3SX5lL+H@vger.kernel.org
X-Gm-Message-State: AOJu0YzRsIVj3fe6wKXCzgyoPJRZo6nkU1II1ci9+r445ZNa6TH28Asd
	FT75u0WPrO+YaN6s6mQ1utyyJiXNQjm+IoQxXb9bmMKywr2gyiHKApwiGf9d9V/Hv0o5/lX9evj
	7M4VVcp1rjQfnt6ODWu97cCOXz76jSuzUIIUchkU5WOq5rPJYAV7kJtbIr5TehsB2
X-Gm-Gg: ASbGncuprG09phzgOjyiNnQpfBG7rBfIIL8t0i1yDjhGtDGyXZ1LeBXLM6YPEopzwFq
	RNjCCvrTtH7KV9Q6/2TdC2bWVkRxx3u4DPPOKKc07bIH0JBgVHT3VbEN3InZxxsVwz/l+abcJgT
	EjSs4Q7s2Oxvik4pSZlRqVgi3OTdOFd3/JjAZj6wjCvKZBTxcrj4RVx6o2wEODETcRryMFsReMe
	pj/wqQTYPfJiVlT73iaqbR/XYoyKVmObtUUuxwC74Th9v49YXLiBVIb3im1mFIyp36oCjvJ7rAM
	B2W9kPF6RxIFckvJoLXDjce8CCI92PpmMURExawCIyxbCAN+9dSGO9UgMeg/ASGwFZKsEf9Q5Rv
	9zvLsalWJHFUOmUCKO6j778amxomZ/lxIxMBrG63w4uOiOcoiEmwwh4f6XO4S
X-Received: by 2002:a17:902:d507:b0:278:9051:8ea9 with SMTP id d9443c01a7336-27ed4a496efmr27909445ad.40.1758782016358;
        Wed, 24 Sep 2025 23:33:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERNqL/XYX2Ig5teLxMMtY/ABx0dDuTlU0OfYiRMxqecem6Opx2k2u8DPVToHCqfxEsSIuQBw==
X-Received: by 2002:a17:902:d507:b0:278:9051:8ea9 with SMTP id d9443c01a7336-27ed4a496efmr27909155ad.40.1758782015869;
        Wed, 24 Sep 2025 23:33:35 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:35 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:13 +0530
Subject: [PATCH 05/24] arm64: dts: qcom: glymur: Add cpu idle states
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-5-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: P3mahIOyhBuKs3VCjy4efmV33eGZVvIT
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e241 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ITxuB3Ybzs-vxhr1UFYA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX6cMSS/2eiO08
 qBJc4KevMrC4zJJJfBbRwuv5hrVQ6WxeuwhTJRd1SUOfNIaQlkVZGLwIVEcv4MpGkCZfl62/UPz
 JcH63Ih65pNy9vD7PUlA8C4hZ+YtvtPXLeVuv+rt09D1M5vn3i4kR2+TJ7snKtIfL5Den1e8DUl
 QqQrThZIrGOkSJ0XH63p99DnBaBA/nPpxWVDRQUyCgX3HgAZeU+IrPrClYunVzz9rY8ws0jlXHM
 rvwZs/JRZgquoALy/t4GIo96WkZiKgElaI5HzxtXjvU4chnPPrGtLnVbMidiSjaYceBc81K0x2f
 QsHBTO4acsmOxAG42N3TkSmHE4VFIL04OL5xUuRDrjOLZz2VFt5n+3Rd+9CxABWC7tYeAR+4taX
 izxN9sQ1
X-Proofpoint-ORIG-GUID: P3mahIOyhBuKs3VCjy4efmV33eGZVvIT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Maulik Shah <maulik.shah@oss.qualcomm.com>

Add CPU power domains

Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 235 +++++++++++++++++++++++++++++++++++
 1 file changed, 235 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index 8674465b22707207523caa8ad635d95a3396497a..66a548400c720474cde8a8b82ee686be507a795f 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -46,6 +46,9 @@ cpu0: cpu0@0 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x0>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD0>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 
 			l2_0: l2-cache {
@@ -60,6 +63,9 @@ cpu1: cpu1@100 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x100>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD1>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 		};
 
@@ -68,6 +74,9 @@ cpu2: cpu2@200 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x200>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD2>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 		};
 
@@ -76,6 +85,9 @@ cpu3: cpu3@300 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x300>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD3>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 		};
 
@@ -84,6 +96,9 @@ cpu4: cpu4@400 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x400>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD4>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 		};
 
@@ -92,6 +107,9 @@ cpu5: cpu5@500 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x500>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD5>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER0_C4>;
 			next-level-cache = <&l2_0>;
 		};
 
@@ -100,6 +118,9 @@ cpu6: cpu6@10000 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10000>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD6>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 
 			l2_1: l2-cache {
@@ -114,6 +135,9 @@ cpu7: cpu7@10100 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10100>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD7>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 		};
 
@@ -122,6 +146,9 @@ cpu8: cpu8@10200 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10200>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD8>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 		};
 
@@ -130,6 +157,9 @@ cpu9: cpu9@10300 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10300>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD9>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 		};
 
@@ -138,6 +168,9 @@ cpu10: cpu10@10400 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10400>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD10>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 		};
 
@@ -146,6 +179,9 @@ cpu11: cpu11@10500 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10500>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD11>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER1_C4>;
 			next-level-cache = <&l2_1>;
 		};
 
@@ -154,6 +190,9 @@ cpu12: cpu12@20000 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20000>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD12>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 
 			l2_2: l2-cache {
@@ -168,6 +207,9 @@ cpu13: cpu13@20100 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20100>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD13>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 		};
 
@@ -176,6 +218,9 @@ cpu14: cpu14@20200 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20200>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD14>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 		};
 
@@ -184,6 +229,9 @@ cpu15: cpu15@20300 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20300>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD15>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 		};
 
@@ -192,6 +240,9 @@ cpu16: cpu16@20400 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20400>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD16>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 		};
 
@@ -200,8 +251,78 @@ cpu17: cpu17@20500 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x20500>;
 			enable-method = "psci";
+			power-domains = <&CPU_PD17>;
+			power-domain-names = "psci";
+			cpu-idle-states = <&CLUSTER2_C4>;
 			next-level-cache = <&l2_2>;
 		};
+
+		idle-states {
+			entry-method = "psci";
+
+			CLUSTER0_C4: cpu-sleep-0 {
+				compatible = "arm,idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x00000004>;
+				entry-latency-us = <180>;
+				exit-latency-us = <320>;
+				min-residency-us = <1000>;
+			};
+
+			CLUSTER1_C4: cpu-sleep-1 {
+				compatible = "arm,idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x00000004>;
+				entry-latency-us = <180>;
+				exit-latency-us = <320>;
+				min-residency-us = <1000>;
+			};
+
+			CLUSTER2_C4: cpu-sleep-2 {
+				compatible = "arm,idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x00000004>;
+				entry-latency-us = <180>;
+				exit-latency-us = <320>;
+				min-residency-us = <1000>;
+			};
+
+			cluster0_cl5: cluster-sleep-0 {
+				compatible = "domain-idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x01000054>;
+				entry-latency-us = <2000>;
+				exit-latency-us = <2000>;
+				min-residency-us = <9000>;
+			};
+
+			cluster1_cl5: cluster-sleep-1 {
+				compatible = "domain-idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x01000054>;
+				entry-latency-us = <2000>;
+				exit-latency-us = <2000>;
+				min-residency-us = <9000>;
+			};
+
+			cluster2_cl5: cluster-sleep-2 {
+				compatible = "domain-idle-state";
+				idle-state-name = "ret";
+				arm,psci-suspend-param = <0x01000054>;
+				entry-latency-us = <2000>;
+				exit-latency-us = <2000>;
+				min-residency-us = <9000>;
+			};
+
+			APSS_OFF: cluster-ss3 {
+				compatible = "domain-idle-state";
+				idle-state-name = "apps-pc";
+				entry-latency-us = <2800>;
+				exit-latency-us = <4400>;
+				min-residency-us = <10150>;
+				arm,psci-suspend-param = <0x0200C354>;
+			};
+		};
 	};
 
 	cpu-map {
@@ -669,6 +790,119 @@ pmu {
 	psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
+
+		CPU_PD0: power-domain-cpu0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD1: power-domain-cpu1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD2: power-domain-cpu2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD3: power-domain-cpu3 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD4: power-domain-cpu4 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD5: power-domain-cpu5 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER0_PD>;
+		};
+
+		CPU_PD6: power-domain-cpu6 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD7: power-domain-cpu7 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD8: power-domain-cpu8 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD9: power-domain-cpu9 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD10: power-domain-cpu10 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD11: power-domain-cpu11 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER1_PD>;
+		};
+
+		CPU_PD12: power-domain-cpu12 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CPU_PD13: power-domain-cpu13 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CPU_PD14: power-domain-cpu14 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CPU_PD15: power-domain-cpu15 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CPU_PD16: power-domain-cpu16 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CPU_PD17: power-domain-cpu17 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER2_PD>;
+		};
+
+		CLUSTER0_PD: power-domain-cpu-cluster0 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER3_PD>;
+			domain-idle-states = <&cluster0_cl5>;
+		};
+
+		CLUSTER1_PD: power-domain-cpu-cluster1 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER3_PD>;
+			domain-idle-states = <&cluster1_cl5>;
+		};
+
+		CLUSTER2_PD: power-domain-cpu-cluster2 {
+			#power-domain-cells = <0>;
+			power-domains = <&CLUSTER3_PD>;
+			domain-idle-states = <&cluster2_cl5>;
+		};
+
+		CLUSTER3_PD: power-domain-cpu-cluster3 {
+			#power-domain-cells = <0>;
+			domain-idle-states = <&APSS_OFF>;
+		};
 	};
 
 	soc: soc@0 {
@@ -3927,6 +4161,7 @@ apps_rsc: rsc@18900000  {
 					  <SLEEP_TCS 3>,
 					  <WAKE_TCS 3>,
 					  <CONTROL_TCS 0>;
+			power-domains = <&CLUSTER3_PD>;
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";

-- 
2.34.1


