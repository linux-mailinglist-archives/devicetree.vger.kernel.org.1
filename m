Return-Path: <devicetree+bounces-221191-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF98B9DAF2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54A32382403
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:39:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13B572F7AA1;
	Thu, 25 Sep 2025 06:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OyTDdLWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BE52F6562
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782042; cv=none; b=fOF8nndrGnQcMx9speGN81DSawKjid8XU/R47sT6RAaOtPzuJuInQe++NsTkYcwdxk6SSshe73M1St9Bl5iw5SmNy57s7DoskrcN07aHxrzwIa4sLvdKaeikRoVe5YKar/ujbg3clRiAg76R2lpRuILPP03Rs+lEWctJhzzGWW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782042; c=relaxed/simple;
	bh=uBpyNXxBek34lXoKZHB1xpUK1S6YGoyCu6EJBXVQ9MU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T6mBwdFANpXUuyfogf6usIuiam7nCMJROsIGYDkF0vOBn//EyXMVgeUO3m9Gve3evxpCkHl1iG9WA6Rt+KCyTEWrJc00ZlTg2bClvvNgh7zw5fs1oyoajJ4YMu13frVBdzwMiuj+wH/3/sdGlqNF5HzCnr0o4BHR8FOwqeVLRbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OyTDdLWN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1Rx4E019931
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Kj8zpXnqTa4oRX6rrL1uXULQtmQx7l8fFyKB5TkaB0=; b=OyTDdLWNRyJpLFEv
	h4nEJ4PiNatMEUfQpInyFBR28ciRoGvk+OudJKnw7QuPtXjG63cFboCdHiYANwzB
	akgvgmV/BX8MYdTqnq5FsfY3MeHzWSEF3cPJJfSeZv9CPRIHu/Pvi/qdj4pt29vr
	DSgxADBX3lxxfxQP9MPvMRKUsU9v71ZVDijG+NCw0vpYHD8NBZNtVi4Ain2ZzrX5
	hYmrOXJmOKFIeiCf5oqJaMJ4cZReZj9P5K1fGcUPD4GqDP1eGtlVJ2QQorITWpHP
	5IAA5SLUDUIytj+RoeQlWg7+mPo0vJ3H8oVj/vl1i0WXMuxcYkuog8sar2D/q6uU
	aXtUoQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe08x8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:59 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-26983c4d708so6169705ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782039; x=1759386839;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Kj8zpXnqTa4oRX6rrL1uXULQtmQx7l8fFyKB5TkaB0=;
        b=qHsC+JqHkhqCvnukzgaYV8ITtosPvdQcEPZGWgrDT4M+bPv0UArYUN3jsW1jhur14S
         aM2+IAc7yd+OQkGIq6tm5gKgXZ2UNvx/Q27+bMRhx1uHU+/xtQGGykLVKyrT9jyHGdza
         fdKVlUfHcjESfiWLiT08qEEbDufsQfbyNF5m6jr5GSIAg845cW3riKLDSGbMjkmqL1ce
         onpQM3CylqkQeUvhlk6ycOLG6ju0w8wv5jueQ0s75PrVDtJ8srlYGNV2/qe65SiS9xwj
         EVt/5obH4CK/nmqVH/MsounpTGXB6FAfSJnPvANNTuo47pLJQqMpRxrIE9KswP7OrAa0
         0GOg==
X-Forwarded-Encrypted: i=1; AJvYcCXgg1KcRGDXeCp4bwichCf8BML3eulnHFcF89X7fcl+vcYqBf44yC1zanBKoY6Kq5mbOpYoZwFvR0tB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyo2fndi1ZZv8CXsGtFQR0VGSATP8dZnV8NevQrN+dQm54XlFQ
	EZbxmTD9G4XmG+2iL44N+rLU2uTNklhQO6WbElJiEz8mmfnISCGYc35yw7PUctvL1LTUw0shJkC
	1AKbYsKTQXdMPOLX6IL54pvWLtxUyhyG8eyWGOWdVDPdOCJXleVW9VZd6qIYIQZ2s
X-Gm-Gg: ASbGncskG1mnBEOvdMTdjxgSqhRQ1ZJPjUy+yS5I8RHH2zvBofuRvGwZhntUUfAROzI
	WAxRhhKAVyTnGO5X533yWAyMVAvk+7LiR60SwmtxcZnJ5w/r51s+2uC8AX1AIj4M50DlCqxhxIY
	i/RBQFKzZHzMk0uY3hFNa9u0CWzUZFOCqN+BPXu6cDq5jpUiFwZcvCueb6e88bikkzcxtj052Cw
	zimjfK4zUa6cPnOHHYY7qrV3vQljsDh5zr83cRfmFYNegFR/kpuaUInIhiXQL8YK8+VGAeOcYuD
	41VexFgKP/bddD2QVISP3SqVrP49h1lH4DJeuWYRed3CM0asns7sb5ZedWw4dxfUm6x5HYvG79b
	NVLI5SF6vFbtVnAe+Ex7PyMjMmPDnj5mxPgKZavHxrlJLK0x6ZcvfxddxTWtu
X-Received: by 2002:a17:902:f64d:b0:259:5284:f87b with SMTP id d9443c01a7336-27ed49d0965mr28719545ad.16.1758782038766;
        Wed, 24 Sep 2025 23:33:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEp683rEPgCw8NvSk1RJU72jidt199quQvoOhetoHVrSwP2pinXYMmPcugbmk4ZmPCU9x8PAA==
X-Received: by 2002:a17:902:f64d:b0:259:5284:f87b with SMTP id d9443c01a7336-27ed49d0965mr28719235ad.16.1758782038289;
        Wed, 24 Sep 2025 23:33:58 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:57 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:20 +0530
Subject: [PATCH 12/24] arm64: dts: qcom: Add SMB2370 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-12-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: rqw6ZcAK47okcAmhCm-QJDy58vJCq5uc
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d4e257 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SyH_bpr75tbjU19HRJsA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: rqw6ZcAK47okcAmhCm-QJDy58vJCq5uc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfX0Qd5OvIfG/Iu
 2ZUYOXyzF+haSrGTaLH0Bgwbwgcgk4VYcWXNplVog2/gEyAW8jSlPw8domx/jtO3wVo05PkK8+w
 4oVHqQZ8YUGllAcyK42KzBn6Z3t5hRk8Id8293Tn4v3VORLyuHtMVysOxXXE8JJkb8jMIbnyH3X
 W9leieB4Nou/KfQqFvMee6QCMeAPqBWMQSNhXLb63nN5uS6Jry4jo4660bTe0fU7hws9x7uQYyB
 05CKne7mbTKBXHjMN7beECYG1xOQlOnFHEAiHG0RV5jVqixa+EFJEcH0cJwn6G/n5yVH6cNujVO
 LovxCkFX6JcjAol6WTGBMtInOebNeZNbfqsHZ4UdkdQr84hGhP4ylCSHaQ+6Dth7PMlnqpHI69J
 ONHdULmK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Add base DTS file for SMB2370 along with the eUSB repeater
node.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/smb2370.dtsi | 45 +++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/smb2370.dtsi b/arch/arm64/boot/dts/qcom/smb2370.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..80f3fdae5705044b5bd422ac3fc3a6fa6b0fc23c
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/smb2370.dtsi
@@ -0,0 +1,45 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+&spmi_bus2 {
+	smb2370_j_e2: pmic@9 {
+		compatible = "qcom,smb2370", "qcom,spmi-pmic";
+		reg = <0x9 SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2370_j_e2_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2370-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+
+	smb2370_k_e2: pmic@a {
+		compatible = "qcom,smb2370", "qcom,spmi-pmic";
+		reg = <0xa SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2370_k_e2_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2370-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+
+	smb2370_l_e2: pmic@b {
+		compatible = "qcom,smb2370", "qcom,spmi-pmic";
+		reg = <0xb SPMI_USID>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		smb2370_l_e2_eusb2_repeater: phy@fd00 {
+			compatible = "qcom,smb2370-eusb2-repeater";
+			reg = <0xfd00>;
+			#phy-cells = <0>;
+		};
+	};
+};

-- 
2.34.1


