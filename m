Return-Path: <devicetree+bounces-162018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2BEA76626
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 14:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EF86816BA8A
	for <lists+devicetree@lfdr.de>; Mon, 31 Mar 2025 12:37:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3E4B1DF973;
	Mon, 31 Mar 2025 12:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PthI0wqO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689681E7C01
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:36:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743424614; cv=none; b=klH95hB5zTpDxJRM3FP/eh2hc7jfk8POrNl+OkqUyS/BpuprsjlSjXWq1L8nCA2YBBl23tO1I8z5Z+lFePTAqxv4MoN8xyfdEIfXfeq4HcLGArofOEIrq8ykpgqrrL8Ojc13vUnzCZm4HnG/VZrf5oYr+ceY0eQ6FXS+AatMqhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743424614; c=relaxed/simple;
	bh=Dzr0qnc8JnT7dQ0k6PPSFu0ZcdJBOIL5xzMBM7cAgAc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CFbkHdSc5aOP2kypMMu56k629yphrn4S/E8SmUHqHooxLRyXzFSHDSsa31SxLX/vQYQGASumWfnNnchvB2TB6sAEsqKM+89Xs8/R/+OIWy0E4h94i5vV7Xk4w1MXq6YyOwiW8BjvrwHpDq10g1JSjeBHDG7PqKxOLVlGmSP4gq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PthI0wqO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52V6kkI5028046
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:36:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=k30iMLwMo/0+DM3hlaLHBR1SnIbtHyncTdb
	CRrXmPYw=; b=PthI0wqOpQ3eMLKZKLYE9bcemFqe1I3gcqmiI9GVckdcP/DcMSe
	JxPHwrnk1OZvEisLdsbNUALSL5PcWIL8kPZ7HLO1V16wjxtKJlrr6/lMawatudOO
	THd7RGNyVZwuD+nMGHZBxoz1YKMhomCh3u6N2hQUL+p9OrAHlQqHFXhJZ3rsnz8h
	XsiMtWp5N/H9qZjTzvlqBj3RL6fWj4XZFWcqTn3pLf5mvtznqzt6FS+4TUaGBw6F
	Bjd+iQfjXHraNRbKRLIaH5srfEhgxKR9n+CglT1pA1e/pmLn2idRLbS1qq9K4QJ6
	FfDsUtooIYmu8mYdd5nB7PnR0BGlXiWmMZw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p86kmk55-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 12:36:49 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2255ae39f8fso99302345ad.0
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 05:36:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743424608; x=1744029408;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k30iMLwMo/0+DM3hlaLHBR1SnIbtHyncTdbCRrXmPYw=;
        b=cxhRk7D8DMyXw4CUYzygjsj1juqWxmyyHU8+aP7ZgzTYDgADMYpx3CTSnFq45LwkUf
         RH9WxAeT93YedyA8z12sKSvEOS9M5yNyz7r6e/P4XdNqhRUAd3ayP9dcEFOgiN14s+rq
         +fxK5bzpmvtRgZS3twuMc3Fs0Pj4HU6xIkglcQOUS7WezvmksUiYh8eIdODGuRORnQr9
         GMSuG/+LZP4K6SXX7uDC5OuoWWlfCanNvN9f/LXnaWGeBbUSLuYgVQAX58Azs5gJzokL
         a3guXslu153hYipEx//C6ZIoG5H2IGby0pcNIm+luCie+6+ma6tzweRueY0JPh9Jmq/n
         ylfA==
X-Forwarded-Encrypted: i=1; AJvYcCVaItO2jFAwlgtfKg+slTk/wfxUgoNhbyHb3PT0Pn1qX+z4QzLeKNlhjigLdQUCMrLV/ce9OEm5Czjt@vger.kernel.org
X-Gm-Message-State: AOJu0YwkogAN5U5pWwLw+b8b6N3OkejnGK9mh5HPqNFTV+MopakUXCkO
	hv311O8wOSGy5I6vBtQDmh4u0YFfOuVPj3yk2mtTMP/KLo46Qb1DlLCJqQdJzqVQ/Blbc91FgUQ
	fpWOJ8qCjg08ZgV6MF24MY/iM2bdeQ2buVUXGEFVLRY7d440xzGTf3+6EmuZq
X-Gm-Gg: ASbGncsdf2xWQBowIt9IdtPlalIjJZ7UVzhkIdrWZBR10BvRFE6LMSV78W26tCKAEQp
	BxViVHuMdr43JSwZWuDVi9o/FMB/daA1MiTYcOBqOGDEyeJEqRe5i/UiqTi5x2wmzkrQNskl6tt
	zkLvRv+M9JtvBZTPm2vcujSF/Z/K3iBAi71d7IE6Ud+nClZuJfMvd7zmlF/jmsdz4hsI5zbdB8z
	+BodIs0TGbPQIzvg7XQjaBeswcxhlGXUI/ZHJQ16uPQyJYQRowsf4xmZ8x4sLSfbXsVRHMVoFeu
	yhjcPSCbFglYK5/e0w5d/pF/ByNYdpGFXkhWITLl0xe6bA1obqg=
X-Received: by 2002:a05:6a00:2918:b0:736:5813:8c46 with SMTP id d2e1a72fcca58-7397271aadcmr22782812b3a.8.1743424608535;
        Mon, 31 Mar 2025 05:36:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZxMEVJhJiLGBFhY3aqJCMzujglTRVwBu58pzjXyLueJ6bzwy0y3NfyslAst606fXCgJzpxQ==
X-Received: by 2002:a05:6a00:2918:b0:736:5813:8c46 with SMTP id d2e1a72fcca58-7397271aadcmr22782763b3a.8.1743424608048;
        Mon, 31 Mar 2025 05:36:48 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:74fa:12d3:5d67:6ddd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970e2aed9sm6845782b3a.72.2025.03.31.05.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 05:36:47 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org
Cc: robh@kernel.org, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH v3] arm64: dts: qcom: qcm2290: Add crypto engine
Date: Mon, 31 Mar 2025 14:36:41 +0200
Message-Id: <20250331123641.1590573-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=W8g4VQWk c=1 sm=1 tr=0 ts=67ea8c62 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=xqWC_Br6kY4A:10 a=Vs1iUdzkB0EA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=nC9IKnKkp6U5ZcZjd6UA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: ABfMmVOGwByncZYr5sPWrxsEFMoA-Tis
X-Proofpoint-ORIG-GUID: ABfMmVOGwByncZYr5sPWrxsEFMoA-Tis
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-31_05,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503310090

Add Qualcomm Crypto Engine (QCE) and BAM related nodes for this SoC.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 v2: Remove redundant iommu streams already covered by the SMR masks
 v3: dtbscheck: Add qcom,ipq4019-qce compat; Change dma to dma-controller.

 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index f0746123e594..7fb5de92bc4c 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -749,6 +749,30 @@ config_noc: interconnect@1900000 {
 			#interconnect-cells = <2>;
 		};
 
+		cryptobam: dma-controller@1b04000 {
+			compatible = "qcom,bam-v1.7.0";
+			reg = <0x0 0x01b04000 0x0 0x24000>;
+			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
+			clock-names = "bam_clk";
+			#dma-cells = <1>;
+			qcom,ee = <0>;
+			qcom,controlled-remotely;
+			iommus = <&apps_smmu 0x0084 0x11>,
+				 <&apps_smmu 0x0086 0x11>;
+		};
+
+		crypto: crypto@1b3a000 {
+			compatible = "qcom,qcm2290-qce", "qcom,ipq4019-qce", "qcom,qce";
+			reg = <0x0 0x01b3a000 0x0 0x6000>;
+			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
+			clock-names = "core";
+			dmas = <&cryptobam 6>, <&cryptobam 7>;
+			dma-names = "rx", "tx";
+			iommus = <&apps_smmu 0x0084 0x11>,
+				 <&apps_smmu 0x0086 0x11>;
+		};
+
 		qfprom@1b44000 {
 			compatible = "qcom,qcm2290-qfprom", "qcom,qfprom";
 			reg = <0x0 0x01b44000 0x0 0x3000>;
-- 
2.34.1


