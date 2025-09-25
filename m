Return-Path: <devicetree+bounces-221166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 674A0B9D9C6
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:31:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 41846177969
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:31:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDA3F2EC08C;
	Thu, 25 Sep 2025 06:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NRymTrTa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3FA32EBDCB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781779; cv=none; b=hEPXSoEuwR5RvdtUHZ5yMUoafCi9Dgis2e/AQOEOHg53rp8SSLJ/Zq+w+fKm0nW8omOOq9PMjFdQFFCcf5suWJRs4uLy8THVf/VvorE/jX+litKMoXroxaGio9Z8yTcXAfJYSD+8bdIzGxx9Korf8z5Toy4nwsMnbzIJraiCJpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781779; c=relaxed/simple;
	bh=uBpyNXxBek34lXoKZHB1xpUK1S6YGoyCu6EJBXVQ9MU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=fLU6EONSYQN0+6eV5a2mjMHu/rGcXZErfuejNLi/dyhhxC1xQayQ3wdgMndVWEy9WbO+uh1EAeu3k4lagLY3BMUKYConp2SgLPdOYp5fi+SuXbVZT27usDQtaCaBVl5wpGkhXZ7p8CXfXCk6+1OU7+jbwAfqokGxiMh0MP7jacg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NRymTrTa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0rHJT002802
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3Kj8zpXnqTa4oRX6rrL1uXULQtmQx7l8fFyKB5TkaB0=; b=NRymTrTaVbTqwIDA
	ahXZKTCphI17ZXDXkuq6iv3filsdRoEEQXlGJ8V0PkZuBpLppV8WGsfISpCz/fAv
	AldXlofCIfIz9ajP27cJEgR4Kk6QSX17/tDhrC4JZKmO0zPH4Xqv9yoP6JbLWYDL
	zUqjffn/dCA/cK+2zhNF2EklVijOM0eoer4Ua3U8j/1NUBhqSUprJO1QEkpFg6kX
	O0nGqHuRhC3ce/3wpwZSiZ8SLH+jw74n8KI+RKE+N9Ed8aTxqPNR2W+PID/kKzdw
	D+LISo5nDiF4cncYwxqXOL2J8xSHooEvM/z1XMAiCCim/aOY2fpOUPqS8jfB8agX
	n0O1BQ==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1j60-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:36 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-781044c8791so326649b3a.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781776; x=1759386576;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3Kj8zpXnqTa4oRX6rrL1uXULQtmQx7l8fFyKB5TkaB0=;
        b=HdZN4Hpp3siLuvJHz/cQE4VQo0pZ5SuwMfDYhYqrr3iht3UQvggRUBvFGikoAdS5Jh
         nfDTFepkkDTO9xxqJ/qqXsGfgqPXsMrnTVi9yaNpm6R2GcVBTLW91/7z5FLXv417OTaW
         das68QYk+HGkY8UpOLYm9oZlUd1OlLTd+D6eNPTq5w3OQsLEN+KKc4hKq9k9Q7zTFFLP
         4rsANG7imDT50hWMizOjCPJMWOp2M+OX7P57Cr7e7MwE5dz9FB5UV9U/h0sFvqNtvH+1
         jTJno7TDKVNkjJEpnoXXa3gm8LQu6aRWsA+5RJR/zzLHRVpcLJAkAYZIWX3UfGUFYUxe
         uzEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUh3xsYDs4MU4ZXse2ydDmW+4CkdqZpvmbSqb2fDF5TDRaCkwrPbtKtkkgRysAQkoOr8Ganw/0nTj0B@vger.kernel.org
X-Gm-Message-State: AOJu0YxtWPCMTOz1/WBUqtChIjZb5xH4XKWL0jCCUuZnBPX/ybIJjZO4
	1U9N+bhzo5mkaxXTIeW4lJjsYHa6C1gDzkbQ8XBTFEH/r6D5uHcBjroUfpxV6B2rUIk3DX8TnS0
	M73yjalb+A+kp7ASLY5zQx9ELxL0Ta2j+8V5exGIlKx4a/ncxwNObreW/JmUAu+IrotvqcSwS
X-Gm-Gg: ASbGncvPv0CGiAxCzHwuPlANlmUsEsaNxCWX8XYBQdq2a01uy8GpaXfupFWvUmfkVrA
	1/3FziJZtl3X5A470Fa17iMk1zCIrkScvE/OzWjdf4bY5HaRcFOHJxoo9GpN8QM4LuPlUE7ZnLX
	hnWjS5kw+y2IOk5vs5/0N+YCoZg2JgAmtTA1/uu86II3ki3DzDrHygPK8G5gexvtSj9L5iVMV6Z
	Gnqg+hw2danGBPPKLtGWs8uTZlXrWH7/dKMz1dwuBoVeMWSVgNvuQu/ZobnwBs7L0izH+F2OuVE
	hm+n/yYO705yntP26HWsobzx75XOVVQua5ajrLQmq8dCl/fjAVWaCxYt79A0yWzWD1QEBCtM7Z0
	Ji5pgbZtixOoW0YqWu4XbOEXSUbc+MorXPA6Z6pr4/ZPOv/l6RhJIoFqhkzs7
X-Received: by 2002:a05:6a00:ae17:b0:781:802:45b7 with SMTP id d2e1a72fcca58-781080255aamr585830b3a.12.1758781775926;
        Wed, 24 Sep 2025 23:29:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFL5HniixRjeNZsKDdR3SnJ8q5xPlBnuviI9FZhv0rIK1xC3ldyzmknTaSHiKLvhCp4H7O/qQ==
X-Received: by 2002:a05:6a00:ae17:b0:781:802:45b7 with SMTP id d2e1a72fcca58-781080255aamr585799b3a.12.1758781775512;
        Wed, 24 Sep 2025 23:29:35 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:35 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:18 +0530
Subject: [PATCH v2 12/24] arm64: dts: qcom: Add SMB2370 pmic dtsi
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-12-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: S5k-GPzyGURBl9w8l2NBrNIMtzk-TQE8
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e151 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=SyH_bpr75tbjU19HRJsA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX4IVbHS45iSI6
 3234aumPShBYiEDoTL4o/L7+yvymRWOlzYeQ1jLJ+06wp+h1+JV4KnJQCDIP5OppwFh8A3dM2t9
 WS0RlwJXKDHzYLGYnO50odUOn3kUl9HuUXn2BHI34cYJPEnUdiOJ1cXFnBYv7wWfXmcBbt6vmLG
 n64p5SUSMQQ7lTGRtFCHYfFlt4W7v479XZD7AeitaWqLdtyOp+2fQPpfX06IYe3Fjt4KAMpTYdy
 a85aIVOmTVRbINNQ5Ft9/IyR5/M5yveke4EFUaMiMgDEzk9+FgreojTVsMN2EXDC2cAfvEMi5kN
 Xq8XJj0ax/KqoR3IJ3+Ym+YZocERuukejRAQmC2YBAI000xStLAFf/N9WKzXdYCc8INOrkhbPau
 /DrJDbcg
X-Proofpoint-ORIG-GUID: S5k-GPzyGURBl9w8l2NBrNIMtzk-TQE8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

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


