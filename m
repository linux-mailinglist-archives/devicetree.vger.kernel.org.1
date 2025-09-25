Return-Path: <devicetree+bounces-221194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB129B9DB10
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:40:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCEB33824C4
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:40:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA1B82F9D8A;
	Thu, 25 Sep 2025 06:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I3d/0jBt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380A52F0C7E
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782051; cv=none; b=eWYPseIGfc3pJz1jQANpSlaNXdbwsavzsTTMcz4yAL4s9Yo6cdAfOlv/9RS5EUkSS5hEQrS5tpYC5emkMhCP5yZylgC67OAzuV5Tn2Ay8qStJtX7kIKhecF7Wn21Hn52e33ClHCn+Y5QOdD5AwCE+6PxSXiRf7T3aET/Trls+hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782051; c=relaxed/simple;
	bh=yedJEEqL4ZUtTo4ypXp6TiEKX/zqnJ9N75AqBUCVR0M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=nONyOqyqbx5YFUUaa0dY2TYn/2H8CCt7ysCwh3auXcm0JAay3fY/HttaD12ZoVjtgi4mVDqEnDWc0dJ7ruTqCTFkIP8tIS7HjGn1oZikUzeHyS5yCREzpVPnfn225KdjcvEOlp2aCPFTZeWJ2uYLliGVgaTVd1D0hn3zHMCeKTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I3d/0jBt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P4aWs4027688
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M+AtpvCg1CmpAe9sYGyWQJouaSiovRLjPzDEo50wF9Y=; b=I3d/0jBt86AqBxzc
	t24PNTRjUmNhpRlQ8ynOBwPJieYujq9GIIwsE91xzS6DAuRs9N9YxygtthLAn51i
	3dThV63mQF7pIwitdXiMj40qkf01Vi7OWHpA5g4dgsYHL7AhxXY5HqLyjx/O5xIz
	JvnenCEp7utn7irzfnP0v4z89SUoFDANLsOK2eWlU8DFm9UDz9EF6WBoigUPT/9e
	5WYTrlW3EFT2xqboDwvYo1ZgTgUEbreY+QB2LslmTW0dOBDJ7QczzBuhYZbIrZ3E
	qd6zvJHtlqmEAjtP0w9xgkyTQuiiUsIqD2bc8mGHY/KFPX8TDbe+6jwTDwCEtd4k
	nwJvSQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49cxup08w3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:09 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b4f93fe3831so832502a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782048; x=1759386848;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M+AtpvCg1CmpAe9sYGyWQJouaSiovRLjPzDEo50wF9Y=;
        b=PDb/wPygdQ2DTlg7cfUR321IN4y5X71K8uvG58hHpIZvkWeWbnuMD+DpPLScpO+NH6
         bLV4VuyXeHBezPIGozxt+JJP2xCeL3hh+WTaszKw/cggAWd1WnBWg2kEx40/ojjtd0I2
         bWjKuUnbCPkgnrZdNHilgw9gc7i2BCQmSQuNdgXuP6b//KT7GPrA0Yi48ZYtp5xhRZhw
         wEblT/V92VC6f5nNfSW1Vc+AKuC6zWSxc1h7hWu4NPP/N/eP9Kf3iVwgycNBTre3Cr4v
         5z3JboaNgllXjqVBgdL5Cregf1qcXVWILGtP5CtEFMZUOdcW/TRzSFPYCJFvujRGyFFn
         yEQg==
X-Forwarded-Encrypted: i=1; AJvYcCVL3+8i8COAFb1gMbQRvDw09n93jO9Al3UByCZybNt6UDlbj9qNioe/vJWQ2Whlssml+hlM4y4wjqqh@vger.kernel.org
X-Gm-Message-State: AOJu0Yzc769Q2lMhZpds4MIAF20Yr61WCx5+lcyXra0jn6WgDT2hSpoM
	iAwGHpzkVhVEfJxsXdqGZQAcNihHMLT7luTPWggMYxSM3iYTTfjYzOZ+Mj7P1tstkkZdilEAi/+
	a4qv8BwwKtVnS5y49oiTlAdEa6vvz1p+jMpJuz+ryiY8IinSawxane+j3AzWpMak6
X-Gm-Gg: ASbGncvLSE3sQ4GMpdSQOzkHb8Q+JLB7twCSlCUcQ+RW6zyemlpmzj3vy/V8AgqWP69
	DjsSlSq0uK1QAJrFrTMi05GJPJ5mE2VcOyl0q+KKx04mTfNA8GHS6Ym/sEfhPvIG6QzthSkR6nH
	Nm+nuLVrfCk0vGlBKHkxvg4i+4BCPquhF5GbfZ8MN0Vpk+Ako5kBSt8rmD6X783mg7mkJexHAFd
	OwcFu+wumsdNmN2BGvTKbkOBMppR+6PATqCpNrTIbmyNiGKblajRsYxcLwwoaPE9b0nd1qk6fbA
	FeKIo9QL0r6FQiVLil061E0DV1qiO+EhwWxjmEGysl6ednXcpzPaWL80PcZ0PqmxZJFRrDaBCWP
	3rfBrvCTl8U1qOcZqffYn2ArCcCjIUAzUjYO55Yy2MXcwwDyown0Tm3827Mvc
X-Received: by 2002:a17:902:c94d:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-27ed4a492b5mr23504005ad.47.1758782048419;
        Wed, 24 Sep 2025 23:34:08 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGgrF8YXI5qrH2oGWaWVaROurOESlVDpfoWAlJYyO0U4Gqvvnt9Hj5fX1Qq40tnD437M10PWw==
X-Received: by 2002:a17:902:c94d:b0:26f:7db2:3e1e with SMTP id d9443c01a7336-27ed4a492b5mr23503725ad.47.1758782047864;
        Wed, 24 Sep 2025 23:34:07 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:07 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:23 +0530
Subject: [PATCH 15/24] arm64: dts: qcom: glymur: Add PMICs dtsi for CRD
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-15-24b601bbecc0@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=B4a50PtM c=1 sm=1 tr=0 ts=68d4e261 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-PhwRXPgPXS4kyLjRL8A:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDA0MiBTYWx0ZWRfXy8n3KajIdci2
 nYywKzfZXhxfkJN3R25ZIY9rB6wqaAZ8GPVAb9LIgjwhpwE8Eq0BnO81zbrv8qslwIOekUhXkck
 XiWEI9OJYMbyfn/XHMIKh4xlmHRL6TxdOo2l8B1sbAUe67wuyCZdKOlj1+lrWiP7S9bVVBgYffd
 tNDkMa7z8MuQZv1RYJIXL+Be/q7z4bMmz6qVgGdckgFZCC2/bzKl5FWCc8KDrqde0j9OMhMxw6j
 TfjdPm9dEQRVdDfUxowRHVzfdmPe/likBO4z4ySy6HtGEhNUuFXrtgml1tqXj+IyynTPvJ1YaSC
 bbFGknSfGl2n6/ODMm5v5Se8sFsWJD11Qu9WPhdHmT+k9vG3wvIC8a0v0edVrVYnU4vuBrwGqwf
 se1mq8Xw
X-Proofpoint-GUID: P1No-M6Mlww_Lo78Quiqyenu3UlSjv-I
X-Proofpoint-ORIG-GUID: P1No-M6Mlww_Lo78Quiqyenu3UlSjv-I
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 priorityscore=1501 adultscore=0
 phishscore=0 clxscore=1015 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509250042

From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>

Include all the PMICs present on the Glymur board into
the glymur CRD DTS file.

Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts    |  1 +
 arch/arm64/boot/dts/qcom/glymur-pmics.dtsi | 19 +++++++++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index e89b81dcb4f47b78307fa3ab6831657cf6491c89..97f6eedd7222368f5cbfdd02e9c4d87261d7f19a 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include "glymur.dtsi"
+#include "glymur-pmics.dtsi"
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
 / {
diff --git a/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
new file mode 100644
index 0000000000000000000000000000000000000000..59dcfb67a203a7c576406037377fc9fbdce51a97
--- /dev/null
+++ b/arch/arm64/boot/dts/qcom/glymur-pmics.dtsi
@@ -0,0 +1,19 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
+ */
+
+#define PMH0110_F_E0	0x5
+#define PMH0110_H_E0	0x7
+#define PMH0104_I_E0	0x8
+#define PMH0104_J_E0	0x9
+
+#define PMH0110_F_E1	0x5
+#define PMH0104_L_E1	0xb
+
+#include "pmk8850.dtsi"	/* SPMI0: SID-0*/
+#include "pmh0101.dtsi"	/* SPMI0: SID-1*/
+#include "pmcx0102.dtsi"	/* SPMI0: SID-2/3/4/6	SPMI1: SID-2/3/4 */
+#include "pmh0110.dtsi"	/* SPMI0: SID-5/7	SPMI1: SID-5	*/
+#include "pmh0104.dtsi"	/* SPMI0: SID-8/9	SPMI1: SID-11	*/
+#include "smb2370.dtsi"	/* SPMI2: SID-9/10/11*/

-- 
2.34.1


