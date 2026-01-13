Return-Path: <devicetree+bounces-254419-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D76D18062
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:29:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 1B7DB3019051
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:29:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E53638BF6E;
	Tue, 13 Jan 2026 10:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bffAnplp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XnCkiaNP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B38238B9A4
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768300118; cv=none; b=tlElZWpMLsupnyq6kPw3ilLDTeipwtqpsaPsLN3vOTCgEUhyLSGryPBWNg7flZw3tTiANRO+nfYqCAL79j4Cn5rGsnERSiMOwaJ582MeG6xzThu7cYh2ConOIbcm1L79G4c0QvOyMQidahWyUrCRWXhkWs0basKyAEpp7+8P8mA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768300118; c=relaxed/simple;
	bh=6mMtc5xJf9aaSBo0jlfi1EFAq546qQQijdCjuCH5GdM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=pdZb/3FULVdEWg9IBkKVh2lagps48fZagPl9rBwSBGv0zHEDpqh4Ff04QDssKl76Pbjmy/WItsb03j7ZU/aNAFpdWJTocjJOdLWVppiQi9JrlhVCC8MZfZONb2CSzdZf3CM/oUyWxWZz5VoVVzZq/AGsM9HzuWmhBBmrF+K0MdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bffAnplp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XnCkiaNP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DA5j4h3798433
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SofZ7mdfxae1YBje0a2PwPaNyBz8Q1ao9I+p/9f9P1U=; b=bffAnplpQaMeZ3F3
	szRC0On965/YU3AXwRPRTkgXh9u0CW4Z58eMe9WqFBAEM+Wf1EMssTjnpJB8jCjo
	22X6waPlQ42PY26oliwppKuqI6xw43C3KxFa8g77yyzbOFLZJKzTo6eVBpUzRpWq
	PUAg2O9CNxoX6QPkENwbC95SjL0dB8tH4ndclbPx4ZWv+Fg4DmPms86u9SQ1ZfSG
	l+ZUm4kUEE+otDPz56rZkeu8z78TS+FyzzOc6EQSwf+7nzeNu0esbJdFD03NMVs0
	NmKXlI9WyLaV9iNxGoKzEAn3GLRzyAs+P4YYH2jossqIAdapzhDICj/Sf4JkCw7/
	8iZN8g==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnm0dr2cs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:28:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a0bb1192cbso68739515ad.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:28:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768300113; x=1768904913; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SofZ7mdfxae1YBje0a2PwPaNyBz8Q1ao9I+p/9f9P1U=;
        b=XnCkiaNP58qIeMamwN///zJYwxhnv36cdVoopnW5iKDFg7jckW0B4MoolCqBhhmrnU
         92jkFABmLb4veg02oW6lUEslpbeI1Wt8LUlnZ1Si1gVkvAvD8O/AvY4hvqOLSP5I/qTC
         IvOLemf4OymduabvzkFtGOwsbS1u741uh4V+fXwXK+3XLneURvytJoDEkNj0XniSZOgt
         jnubF7QRlgEtJQfxfbt8iHOAld8MDjykNCFXmluCPue769U/f6x6nmG6sVWD8894N/tf
         VBNo6FoSCpj2Fnfvgd55G78HZsqbwZyx8XqwWW4ffqoujshHVJT2usyQTGx50CdcjtxK
         Izig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768300113; x=1768904913;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=SofZ7mdfxae1YBje0a2PwPaNyBz8Q1ao9I+p/9f9P1U=;
        b=r1GB33nDBAdXTKKwXzI6lakxwNA9pjm8xkwVbGchvv8Ht21AMNlC3dJiCsmKYHTqIU
         KUkwZ2gzR8tyoutwtT3CpeYrEPwMHb1USpWEw+NliOgsmkI5pqAUbckqjp9pU6+Xuag5
         NSKeoGku6fpDSqMwY2Z9Zoa07Cg3PRPHR+4c2awtEIp2ZL2W0RYAd1hgWL4f0ObT4W92
         ppSGAqhrNtG+dwc6YJnfnOJ5Hf9wi3PY3ycgMyKU4xgiDZScIqrvBoDUx8wnJtCl6v3Q
         2l7Vi3022YIhgnKjHL/UBbLrrhq5etpr5jRBj+llO6olo3c0oJ6iIo0jtCIPcpetldWm
         t9TQ==
X-Forwarded-Encrypted: i=1; AJvYcCVyK5z5aHEmgRryU0eAyDkwE8gQEs1hFsV9MmcEXp0gdvInft3N6e1Eckwt3F0ezLx80vUwhbfq5P8Y@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6lBSJR0k1m/00ha35Qo4PXc9o8xsFdNGXmc4OPIIqjB1uhpcG
	Pw/+K+0OUcLHpELeqtuCPfwMx92TqdiigGfU1M0Pxj8gUIaHzHb4K7EDmQGHgzEqRcKSSuoPvgo
	U6g2bvEukq799d4jVHhqg+j2lYdk41IyfYOMJY1wyFs7zvcvLR1M6mq4OathYIuUS
X-Gm-Gg: AY/fxX7ij7O8hmYNt8wrsE/cIq/pikYqbelIEe8MuahZ3PBCtiowO2uzyX7edP8sxV6
	nhGlt2nypXD4vtdw/RrAUTd2tIVxBJVydHqCJkHNL6QSa5jpkLU6IPYXFN2ghcFJuFx0UbBd6Xi
	bF/j9OhPgK1Vs0+85l5p5MHxcH9iauv0Qk3YJ8QYvbt5pgkMxHhrhcx5AH5JIu6x2rwyrulMNOb
	zaareH5scar1bZ8LwXywjwL4CFEUdv7SPRhbZy71j3CoXi4vlXUdk3e34KAGG1OtQ7OUGQnxoEd
	mkts/wTwTeJ1Oyx4P9nY3MSDtkvboynBejFpBuGbGz3RiOq0fNGISVB9MjajJCjPOM5DkDet1rW
	9me3m9AtG/iVWxxtJOwvcA0lED2OK8/Srjobjwt4v1qBvVTuGTPgr2NRrNpS7ENTop6MXnxLw/d
	E=
X-Received: by 2002:a17:903:18c:b0:29e:76b8:41e5 with SMTP id d9443c01a7336-2a3ee4c107dmr195544755ad.30.1768300112948;
        Tue, 13 Jan 2026 02:28:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtBCwFIaX/jp9PbrO0cEkVLrGfU5u9Ctro/Cim54KPcMP0G5rT0IOrimXAxGEVrdzA7YDVkg==
X-Received: by 2002:a17:903:18c:b0:29e:76b8:41e5 with SMTP id d9443c01a7336-2a3ee4c107dmr195544455ad.30.1768300112472;
        Tue, 13 Jan 2026 02:28:32 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc8d76sm197125265ad.84.2026.01.13.02.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:28:32 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, yijie.yang@oss.qualcomm.com
Subject: [PATCH v3 3/4] arm64: dts: qcom: Add PURWA-IOT-SOM platform
Date: Tue, 13 Jan 2026 18:28:15 +0800
Message-Id: <20260113102822.590677-3-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=BYXVE7t2 c=1 sm=1 tr=0 ts=69661e51 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=93V5M4jBH0hLqW-x8QsA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: vxXhFXIiDo_cXsPd4XbfGRDvvFQfApH_
X-Proofpoint-GUID: vxXhFXIiDo_cXsPd4XbfGRDvvFQfApH_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA4OCBTYWx0ZWRfXyVCWSU/yCScr
 zYmeQL8CtLtcxccLZJvFZEkopY0rwt9kjVTx9McsX07qP2lV/iDcIqS/rI3RDCxM44GFA6DW+lc
 7PZ66B7OUSe4k9x6MI40F/N3t7fO+dH93xRDextDO/kboxaVi1xAYXTlWJZCIC9A1S+JjDILlZS
 FWrU/iTYf+5AjwXIcZmXENIlJohsN0QHPrBCzKelRRiKUzHyFZP14OKd6WSG2MCu5ncQ9aTZg9M
 xDp1d1Pjn54jLaAuVqo6k6l2Emt4iKlUXWTg3OYjkwSjZxsWiSByRw829mvPCkY1ItaEAM0YBO1
 U+LQlKO35uadDi8kV0+JL5iU23BOXDm/PRgDLwSow7No764td/yUYFFu+XuiXjc5BreMOp1c9HO
 /B50Pe69IKO66l3dDRfHKShuFio7Q4nLNSvKJY/eLcOiqWfWHaAKM96HO29+0+2hqbzYV0xeypN
 ozQ2c2j2W4i6Hcj5JfQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 impostorscore=0
 spamscore=0 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130088

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

The PURWA-IOT-SOM is a compact computing module that integrates a System
on Chip (SoC) — specifically the x1p42100 — along with essential
components optimized for IoT applications. It is designed to be mounted on
carrier boards, enabling the development of complete embedded systems.

Make the following peripherals on the SOM enabled:
- Regulators on the SOM
- Reserved memory regions
- PCIe3, PCIe4, PCIe5, PCIe6a
- USB0 through USB6 and their PHYs
- ADSP, CDSP
- Graphic

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 .../qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi}   | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)
 copy arch/arm64/boot/dts/qcom/{hamoa-iot-som.dtsi => purwa-iot-som.dtsi} (99%)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
similarity index 99%
copy from arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
copy to arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
index b8e3e04a6fbd..fb90beb1096f 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi
+++ b/arch/arm64/boot/dts/qcom/purwa-iot-som.dtsi
@@ -3,11 +3,14 @@
  * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
  */
 
-#include "hamoa.dtsi"
+#include "purwa.dtsi"
 #include "hamoa-pmics.dtsi"
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
+/delete-node/ &pmc8380_6;
+/delete-node/ &pmc8380_6_thermal;
+
 / {
 	reserved-memory {
 		linux,cma {
@@ -378,16 +381,12 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
-&iris {
-	status = "okay";
-};
-
 &gpu {
 	status = "okay";
 };
 
 &gpu_zap_shader {
-	firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
+	firmware-name = "qcom/x1p42100/gen71500_zap.mbn";
 };
 
 &pcie3 {
-- 
2.34.1


