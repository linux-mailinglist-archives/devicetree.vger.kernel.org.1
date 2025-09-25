Return-Path: <devicetree+bounces-221162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D933B9D9A5
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:30:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C8DD24E1AE9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B082E974C;
	Thu, 25 Sep 2025 06:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hr/zeZSq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E763A2EACEF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781768; cv=none; b=OdCOtOY52MMkFFP+OoXrmHQNEfLWo1iVJ2o12u3Ak5UWkDXxvzVT3hSBeR6rzn7EP7G5IRHTW2RzkkvXqxnnDnHMVf2lVXoS8h2OcDWAupX0IOl25Jw6PEGN3iTMPSYidk18K+f9ukDm8Yn2Tbz1VmVtu0ioFz1FAT/KCjkRBHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781768; c=relaxed/simple;
	bh=gQJ2ZTluSPl0btbHY5JBZLmKAc79qMYc1ayPNK0oRzo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JKYfkeqjMfI26l8M0T4EpErlFGeejbviE7gwe+YVyaveCs741dGmoJjCQ1LDpB9THVkWuxBI3qY7DBsjzP37Tr8XUPInHZGdKe6dZ1EuETBEHjjbAXzJj5gPCtDs0l7NyAVRRLG8pEo3287yZ0NXG4OKaJRP1Uvbi+qm4xxpul8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hr/zeZSq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0XAES027477
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yYpcbaYMx/nDHjUz0/6uYp++ThN6Ho8R/IOjzK2L/PI=; b=Hr/zeZSqSDgxV8AF
	TeO4UHX28Wz9bGgU2fajNjP1rjMphkYgPzay7OvlYgrBgqaQm3RNRC1TNuPIcxji
	K5ti4X1u39wG00TRmGNn+Ptnk2dwiEHMRIKDSuT6g79Fgw/qPwVjPIGdfcyCoems
	52P6RlQE72GmPmuFAq0lHtOX16D0CLgP5CvyJVxQ6QkVbM+5UDqwlKSQUjRv+M5T
	EKbWc1NEPGwwmG5pmbNSCGuZXhZal8QaASa0N/QS8OWqYZOZyHiUuG4THEQTR6PI
	NTMKh8q8Tj5+y5IwCl+yH+Q5C7r6JC3DVegYJgLEW4W1Swo6l+OSke+hJkLC+Jj9
	UZgzSw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv171m9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:24 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-76e2ea9366aso590741b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781763; x=1759386563;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yYpcbaYMx/nDHjUz0/6uYp++ThN6Ho8R/IOjzK2L/PI=;
        b=lVqg7aN9xDlvEx6DKUtYlA8VxcpP3kH7GbEt1wawPK3ofUauDazY6bN+7Ej1ocBUP6
         dzOEzrUoBPZTJyuYx5iOHAUPbd+z1Zyw/4LBkpNoa8gBuoheX8Hp+tKrdxvkp+Lmfd88
         GoUeguEeYL91Q2YE85Qml55FDbx53Ic+o1d5gIpnjkOMcybrZbEMEvs82Kj0G5zJCzRq
         03OdbIV0pZDXm1INekyWSTG0bwUttz6vvL1cFMdMTbb425w6RqO02MqkvJ0263HCIC6u
         q5v1m524srNu3n77j+R00AbhcI5NnMZOOjBAAqPVYRvwFHosS5bDfDhfe49rg8Ltu/Lw
         cSsQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLZSMy88vkkNGNCkDQNp/gMlybgGBRO+DWDnoEKBNH21uot5TR8c4Z9PL/1KquPVYR1UT3VtDMMrWO@vger.kernel.org
X-Gm-Message-State: AOJu0YwSE9VtbS360VU0eVlXQXQQZlqZI/DgrrUh6+P1mJD4ZuFNDNDP
	KKFuvJ2jlkZAM7+3wCIaggNusN8Mi855YikHfQ39lIywUB9iWt52vmpv6PlOfXcFV95ZuyT0yrk
	1Jm20TisqR+2P7fCF8pZrKhSYRS8BVj15pdR7TV+nr0MAXHotXvRUnHx36Gd5PAiF
X-Gm-Gg: ASbGncuc0vL1sgsCTuyic/tUsmwYhAoLyiYDvKqSjHQbR5Y2y7edjW6DpvuEW97ZXbj
	dXMN8umL4ZHVS8c9YBNM8Xd9l5qoZl4xsyHu8GSHGayIR7wtKSMsW/7r4Fj3ux2rX4hNHiQbR/t
	JR8g9G+F7Csengp8xFTGaW0gAsV/mQTQpIFkyr9B06Oti7Xh2krXBYbyjO9kgKOCVLFvjHhib6V
	epX1K1ZK4lPh5Q55ETPHwna+NTN5UFl7lpIK5qfHH7rCURPfHiOw3x3+F5HYK20ScPee4Fudktb
	SnNoSg3JEb+SUfeWYLylrEA4tM8OLesJa6csWODvkw6JWsuLcL35Cy+BUv5VWJsFIaZsAhzvnmX
	CoPEcg/lAtUnODEaGRP53UCMQyNfmpViyIJGLuSC+BITt144loyc2egv2ZSiy
X-Received: by 2002:a05:6a20:3d19:b0:262:22ff:f018 with SMTP id adf61e73a8af0-2e7c593529cmr2766515637.26.1758781763473;
        Wed, 24 Sep 2025 23:29:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxo5LeMeioyJuwiummPZdVoPbqv4zt6qWSmdXrcD9wR88cYa2xcnvU+gin0rC3c2sEIb+1Og==
X-Received: by 2002:a05:6a20:3d19:b0:262:22ff:f018 with SMTP id adf61e73a8af0-2e7c593529cmr2766480637.26.1758781763073;
        Wed, 24 Sep 2025 23:29:23 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:22 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:14 +0530
Subject: [PATCH v2 08/24] arm64: dts: qcom: glymur: Enable ipcc and aoss
 nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-8-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: CE4pdvHP65EVxO6SfXaBqkthJrU-3cz1
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d4e144 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=f5wZDNqicMbGYsbpI58A:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX309PvAGQI+Ki
 XleEDaHR4NtUexdedMZqYd6o6RVos0eaaSwYMvOgXXsUeNSfQMDFr/9MbQK29r0oup/DUd94toy
 hUKzDR89+Wq7XcI8FTTJPxFP0U8tMgAiaMMPwuh1ql3fwIT863I4xsYT09GR6S80yEfk6kHwlyC
 S+x2fPks/ClwRN7OCycDYhwLG42dIbvnnIkvNL/uwp2YfN9E2X/NCVTo4GSAcd1Bzg8RDOyi167
 rC39/3usApHmZ+vnkL3+9G9OCjQqc43RqeDwmxbNTeC0ghrhq44mGaJxVKXtD1S3ren5mB9zy9m
 /AdwDa6Cf44wprNu5DN2ijii59tYzNDvRpJtzEvM1jujbv9Yqof3QyDRyoxO/uNLIZsk4/ONG6l
 w+wZwRSS
X-Proofpoint-ORIG-GUID: CE4pdvHP65EVxO6SfXaBqkthJrU-3cz1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Enable ipcc and aoss nodes on Glmyur SoCs.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur.dtsi | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur.dtsi b/arch/arm64/boot/dts/qcom/glymur.dtsi
index d924b4778fd37af8fe7b0bceca466dee73269481..2632ef381687c2392f8fad0294901e33887ac4d3 100644
--- a/arch/arm64/boot/dts/qcom/glymur.dtsi
+++ b/arch/arm64/boot/dts/qcom/glymur.dtsi
@@ -11,6 +11,7 @@
 #include <dt-bindings/interconnect/qcom,icc.h>
 #include <dt-bindings/interconnect/qcom,glymur-rpmh.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/mailbox/qcom-ipcc.h>
 #include <dt-bindings/phy/phy-qcom-qmp.h>
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,rpmh-rsc.h>
@@ -2536,6 +2537,17 @@ hsc_noc: interconnect@2000000 {
 			#interconnect-cells = <2>;
 		};
 
+		ipcc: mailbox@3e04000{
+			compatible = "qcom,glymur-ipcc", "qcom,ipcc";
+			reg = <0 0x03e04000 0 0x1000>;
+
+			interrupts = <GIC_SPI 229 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-controller;
+			#interrupt-cells = <3>;
+
+			#mbox-cells = <2>;
+		};
+
 		lpass_lpiaon_noc: interconnect@7400000 {
 			compatible = "qcom,glymur-lpass-lpiaon-noc";
 			reg = <0x0 0x07400000 0x0 0x19080>;
@@ -2572,6 +2584,17 @@ pdc: interrupt-controller@b220000 {
 			interrupt-controller;
 		};
 
+		aoss_qmp: power-management@c300000 {
+			compatible = "qcom,glymur-aoss-qmp", "qcom,aoss-qmp";
+			reg = <0 0x0c300000 0 0x400>;
+			interrupt-parent = <&ipcc>;
+			interrupts-extended = <&ipcc GLYMUR_MPROC_AOP IPCC_MPROC_SIGNAL_GLINK_QMP
+						     IRQ_TYPE_EDGE_RISING>;
+			mboxes = <&ipcc GLYMUR_MPROC_AOP IPCC_MPROC_SIGNAL_GLINK_QMP>;
+
+			#clock-cells = <0>;
+		};
+
 		sram@c30f000 {
 			compatible = "qcom,rpmh-stats";
 			reg = <0x0 0x0c30f000 0x0 0x400>;

-- 
2.34.1


