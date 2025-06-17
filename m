Return-Path: <devicetree+bounces-186621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 74619ADC995
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:39:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 30B477A7F9E
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 11:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FAC2DF3C2;
	Tue, 17 Jun 2025 11:38:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hCuaQv/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D915F2E06C5
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750160316; cv=none; b=ijJFnQqxIHbwCqcT+B0qJr1/oL1j11CdSJHF3KT70DdvRoKNrNd+P8S3Xno7EyDy+TsAuSBtuxr6ZhODs7NcntG+02enZSr/R1jh1mXicbj4tViounQjASv0NVM5D62g9VpejWSnVUhA68+5Yif43K1LZRNnXRfINMKhcR3uarA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750160316; c=relaxed/simple;
	bh=brLDESc7j8Xvw8kJMxE+CdpCwp0UetudobrMvY0p6W4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SphJyfqAO8InN94+oi9lzyx4esFTZ1AJyyDLCYu51GKl9dmqTsxlwuvqhDOkZ6acYt2v+5tdoYvUpnzevb5IcEA/xHg9YpGOAyO1VJRHxvy99gntusBWQhXzV4ZLijb3BTAz6k+PVnYikS36T/lxa9aQgfgkTktz3LCKH7dXRmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hCuaQv/C; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55HA1T4I002309
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EQU/i1PEJ2oC/VA6iFohz3Ei2DOQCn7VlJRNhC/+2so=; b=hCuaQv/CQmDbFgCG
	Ssx4jQP4xThwkhbDERyZAGVRPhOqGSv3UcgziKKWNWQeTAW3/UMmFXUr6oRU/uTK
	zOeAhmBnzhjeg5hiy78s7+RnPmGs1ETlHeujOhLSgDq//Pj10/01KVgikPxJXWz6
	0ZO/h/sSwJY8i4hUpUYyikReVEGwZ1jjl3DYaKFbaeiP//0dw14LW9UqFFG2LPlU
	gbX2uNRuwj1MDPcIaro2sjtlFeeyxnrGY7PC5BPiOJChIKwqlMkJ8Jnyq/TaCwFO
	UpIum2697GBkbymuHlLtR1vi1X1dK8Ogypfamk2C86YcMnk/Stt4HLsDcnUYm4fV
	QvPrNQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47akuwbjx5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 11:38:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2355651d204so47351955ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 04:38:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750160313; x=1750765113;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EQU/i1PEJ2oC/VA6iFohz3Ei2DOQCn7VlJRNhC/+2so=;
        b=sWw2vXMUNnKRSIAhsjIMm618WYiH7jSE8xKQRpEcxZ9HkL6pAmgcGzMDUNDSyyZR03
         c7AsSAc5QY1Keb74ogW73DxaDsCLlY2L7L1z1wwhQQnNrQ3aOkTVpdXXzoBECgZVL5SE
         s1esCLKTyFIRtKWeuSOFVzihsQBeAK93qjYRotVWDmsSV1m35GoRM4BxC7qb9Ng8vmw6
         Ib86d5LTgBWS7b1bpGJ1WP+Pkf/XuevULrBmNv3RU+zqVqxu2FxdJGd0I6j9B/x1cd7b
         Sliory3zE0JJ/xzGsap8Bd62BEbFH02lYf6rhxC2hT3SyksF3INv8BpwojeK6hFWMUdX
         1m7g==
X-Forwarded-Encrypted: i=1; AJvYcCWJgwDqsYaqL1+vvdaQIQpfCwwQDB30YdAJpcYCgwFqR6904SZL6WBRIpXTAx8/vQTbyMhjCDDUZ+MY@vger.kernel.org
X-Gm-Message-State: AOJu0YzrFjvpm/kNUNIam/plthd9M+mCvXfm1h7eWv3UyeQZQ5zkg5Ra
	455XPQpKX3NDkknse3tQZdYSd9p8Eaa0AqOrjgDJ3cGz0lANEB1ncSmPHenls8JhRiKc0WJqLWm
	EdWdR8N1DlM/Vg4qIb+cXssCTxA9OR3yWBrFGWmauILC4TruP+R18clYVIcxwPvgV
X-Gm-Gg: ASbGncsHa4pJaNX0jXxPsiu/WohdFhO9YTmWgwgmiZk4U+3UBdq7FQyDqX51IKbD4bm
	XyyCp16FhwzkexEEEm3DgknRB11Ps6qyXkSYUkxooET+8NW71CMTmgFwxyieSwzoV8viXbuE5zX
	xYJWa3hf6VsXrznrYpnrAp+yfKQ34ZMXWgh1VJV8H+wrpSAjBZ0pRz0yOIYfEbbOxJZRyHMDduP
	eLDiLCTU9Y9y9XmirKm8xNxi7mUy03JWvmuhmqYAcGj2bzotRamhCmk8L3PMsceyfeB6u06G1Rd
	EzNzoC42BLjBDSrP3spsrLIa7B6Xh/UmaWwbTlYj+VMpQ9w=
X-Received: by 2002:a17:902:c943:b0:223:4d7e:e52c with SMTP id d9443c01a7336-2366afbe6afmr203685815ad.5.1750160313049;
        Tue, 17 Jun 2025 04:38:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE++6Ees3Mo4W44WtoWs9cdzfeKqP2l2DbU25wjvCk2GPr9SbJvaj/ch2u+TTBWMlqA4BVj5Q==
X-Received: by 2002:a17:902:c943:b0:223:4d7e:e52c with SMTP id d9443c01a7336-2366afbe6afmr203685355ad.5.1750160312486;
        Tue, 17 Jun 2025 04:38:32 -0700 (PDT)
Received: from hu-msarkar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2365d8a1919sm78246895ad.66.2025.06.17.04.38.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 04:38:31 -0700 (PDT)
From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
X-Google-Original-From: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Date: Tue, 17 Jun 2025 17:08:19 +0530
Subject: [PATCH v5 1/2] phy: qcom: qmp-pcie: Update PHY settings for
 QCS8300 & SA8775P
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-update_phy-v5-1-2df83ed6a373@quicinc.com>
References: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
In-Reply-To: <20250617-update_phy-v5-0-2df83ed6a373@quicinc.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com, Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750160301; l=14843;
 i=quic_msarkar@quicinc.com; s=20250423; h=from:subject:message-id;
 bh=KUMG1YKg2wbsedJd2txCToIwI44vWj4fG74fluLby4w=;
 b=Krf6wOpD30OZ0vqz9WMR6e+BksiwKTWxYsZIAzLkM1D4zYGqp8ZP9OXL8E7KXA7LK8InqQyaF
 TDDsCnPhjzsAEWYBH+wrLUSB045PQLWHrhIZZy6k9oVZ+G+jPqQqOpT
X-Developer-Key: i=quic_msarkar@quicinc.com; a=ed25519;
 pk=5D8s0BEkJAotPyAnJ6/qmJBFhCjti/zUi2OMYoferv4=
X-Proofpoint-ORIG-GUID: esuBsh8ib6YLESfOuShoib02Q8Xpiozp
X-Authority-Analysis: v=2.4 cv=He0UTjE8 c=1 sm=1 tr=0 ts=685153ba cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5DODS05Qq6CApmbB4pQA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: esuBsh8ib6YLESfOuShoib02Q8Xpiozp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE3MDA5MiBTYWx0ZWRfX+zKIulSCAJ3r
 PrQBxP55ntH8/FuV5/Y1RaeSJSXLZd6gnjve5pE8yAAmuT4D+NSNBHdVSJ+g5EznMsM2avG1rlN
 OabCHx8+3TY8rifH4RJ0xQqFQ7AzLLS/+XIoOZo1Fx+nOCd8mM89DW2N0DVecDJuxsGCPSkOFBA
 dj5AhAkulaHKSwfp13CNwoBXoY5M2KaxL29o7nzvGjUEW4YCxSo0wp+zSvW8a20ZiCer1ZotMah
 arowTp4A4shnby7cq/br7/WVSW1gvOqwH/Pxc1XVMmhUnRRuVyuxJQ1vJr/VA2l321O4SnHLG5Q
 Xifvn46M24XYAH9d9s7QV43NUR9b/xXKF+F6oXjqNhJg6xyqMniyP+ByrMQG/76uBhqwhPrHhw8
 4bTv5sAzqrmCWf/+34ksd2OzFpQEw7mkZa/bwNzZmJgf5AyWOe3lmahkI8q6AcpSqTnmz220
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-17_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 malwarescore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 phishscore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506170092

From: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>

Update the PHY settings to align with the latest PCIe PHY
Hardware Programming Guide for both PCIe controllers on the
SA8775P platform.

Add the ln_shrd region for SA8775P, incorporating new register
writes as specified in the updated Hardware Programming Guide.

Update pcs table for QCS8300, since both QCS8300 and SA8775P are
closely related and share same pcs settings.

Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c           | 89 ++++++++++++----------
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h |  2 +
 drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h      |  4 +
 .../phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h | 11 +++
 drivers/phy/qualcomm/phy-qcom-qmp.h                |  1 +
 5 files changed, 66 insertions(+), 41 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index ab90aafb313e6e759c0f88589013632bb6277807..cf7122a2b8bac3af591daceba01be1bb791c53cd 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -2639,29 +2639,29 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_rc_serdes_alt_tbl[]
 };
 
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_rx_alt_tbl[] = {
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_PI_CONTROLS, 0x16),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_PI_CONTROLS, 0x07),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_CTLE_POST_CAL_OFFSET, 0x38),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x9b),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1, 0xb0),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0xe4),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3, 0xf0),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B4, 0x42),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5, 0x99),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6, 0x29),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6, 0x20),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9b),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B1, 0xfb),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0xe4),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B3, 0xec),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B4, 0x43),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B5, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B6, 0x0d),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xf3),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xb3),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B1, 0xf8),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xec),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xd6),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B4, 0x83),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xf5),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x5e),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xed),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xe5),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B4, 0x8d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x7e),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_PHPRE_CTRL, 0x20),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_0_1, 0x3f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_AUX_DATA_THRESH_BIN_RATE_2_3, 0x37),
@@ -2680,12 +2680,12 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_rx_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE3, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_SO_GAIN_RATE3, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_CNTRL1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x0b),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x03),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQU_ADAPTOR_CNTRL4, 0x08),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_EQ_OFFSET_ADAPTOR_CNTRL1, 0x7c),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_IDAC_SAOFFSET, 0x10),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_DFE_DAC_ENABLE1, 0x00),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_GM_CAL, 0x05),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_GM_CAL, 0x01),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
 };
@@ -2699,6 +2699,8 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_tx_tbl[] = {
 };
 
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_pcs_misc_tbl[] = {
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V5_20_PCS_G3_RXEQEVAL_TIME, 0x27),
+	QMP_PHY_INIT_CFG(QPHY_PCIE_V5_20_PCS_G4_RXEQEVAL_TIME, 0x27),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_EQ_CONFIG1, 0x16),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5, 0x02),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN, 0x2e),
@@ -2711,11 +2713,19 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_rc_pcs_misc_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS, 0x00),
 };
 
-static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl[] = {
+static const struct qmp_phy_init_tbl sa8775p_qmp_gen4_pcie_pcs_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG4, 0x16),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG5, 0x22),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_G3S2_PRE_GAIN, 0x2e),
 	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_RX_SIGDET_LVL, 0x66),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LOCK_DETECT_CONFIG1, 0xff),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_LOCK_DETECT_CONFIG2, 0x89),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_ALIGN_DETECT_CONFIG1, 0x00),
+	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_ALIGN_DETECT_CONFIG2, 0x50),
+};
+
+static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x2_pcie_ln_shrd_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_v5_LN_SHRD_UCDR_PI_CTRL2, 0x00),
 };
 
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rx_alt_tbl[] = {
@@ -2739,27 +2749,27 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rx_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH5_RATE3, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MARG_COARSE_THRESH6_RATE3, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_Q_PI_INTRINSIC_BIAS_RATE32, 0x09),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x99),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B0, 0x9b),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B1, 0xb0),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B2, 0xd2),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B3, 0xf0),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B4, 0x42),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B5, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE_0_1_B6, 0x20),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9a),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B0, 0x9b),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B1, 0xb6),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0x92),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B2, 0xd2),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B3, 0xf0),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B4, 0x43),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B5, 0xdd),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE2_B6, 0x0d),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xf3),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B0, 0xb3),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B1, 0xf6),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xee),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xd2),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B2, 0xe4),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B3, 0xe6),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B4, 0x83),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xf9),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x3d),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B5, 0xd6),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_RX_MODE_RATE3_B6, 0x7e),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH1, 0x00),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_TX_ADAPT_POST_THRESH2, 0x1f),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_FO_GAIN_RATE2, 0x0c),
@@ -2767,14 +2777,7 @@ static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_rx_alt_tbl[] = {
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_SO_GAIN_RATE3, 0x04),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_UCDR_PI_CONTROLS, 0x16),
 	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_CNTRL1, 0x04),
-	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x08),
-};
-
-static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_pcs_alt_tbl[] = {
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG4, 0x16),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_EQ_CONFIG5, 0x22),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_G3S2_PRE_GAIN, 0x2e),
-	QMP_PHY_INIT_CFG(QPHY_V5_20_PCS_RX_SIGDET_LVL, 0x66),
+	QMP_PHY_INIT_CFG(QSERDES_V5_20_RX_VGA_CAL_MAN_VAL, 0x06),
 };
 
 static const struct qmp_phy_init_tbl sa8775p_qmp_gen4x4_pcie_serdes_alt_tbl[] = {
@@ -3191,6 +3194,7 @@ static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_20 = {
 	.rx		= 0x0200,
 	.tx2		= 0x0800,
 	.rx2		= 0x0a00,
+	.ln_shrd	= 0x0e00,
 };
 
 static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
@@ -3398,8 +3402,8 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
 		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
 		.rx		= qcs8300_qmp_gen4x2_pcie_rx_alt_tbl,
 		.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x2_pcie_rx_alt_tbl),
-		.pcs		= sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl,
-		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
+		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
 		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
 	},
@@ -4067,12 +4071,15 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x2_pciephy_cfg = {
 		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
 		.rx		= sa8775p_qmp_gen4x2_pcie_rx_alt_tbl,
 		.rx_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_rx_alt_tbl),
-		.pcs		= sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl,
-		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
-		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
+		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
+		.pcs_misc	= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
 		.pcs_lane1	= sdx65_qmp_pcie_pcs_lane1_tbl,
 		.pcs_lane1_num	= ARRAY_SIZE(sdx65_qmp_pcie_pcs_lane1_tbl),
+		.ln_shrd		= sa8775p_qmp_gen4x2_pcie_ln_shrd_tbl,
+		.ln_shrd_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_ln_shrd_tbl),
+
 	},
 
 	.tbls_rc = &(const struct qmp_phy_cfg_tbls) {
@@ -4112,8 +4119,8 @@ static const struct qmp_phy_cfg sa8775p_qmp_gen4x4_pciephy_cfg = {
 		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
 		.rx			= sa8775p_qmp_gen4x4_pcie_rx_alt_tbl,
 		.rx_num		= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_rx_alt_tbl),
-		.pcs		= sa8775p_qmp_gen4x4_pcie_pcs_alt_tbl,
-		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x4_pcie_pcs_alt_tbl),
+		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
+		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
 		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
 		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
 	},
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
index 283d63c8159338b57a5026b6c2a86e3cce21097c..951de964dc1242a15efee135266ddeb10ce598df 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-pcie-v5_20.h
@@ -13,6 +13,8 @@
 #define QPHY_V5_20_PCS_PCIE_OSC_DTCT_ACTIONS		0x090
 #define QPHY_V5_20_PCS_PCIE_EQ_CONFIG1			0x0a0
 #define QPHY_V5_20_PCS_PCIE_PRESET_P10_POST		0x0e0
+#define QPHY_PCIE_V5_20_PCS_G3_RXEQEVAL_TIME		0x0f0
+#define QPHY_PCIE_V5_20_PCS_G4_RXEQEVAL_TIME		0x0f4
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG2		0x0fc
 #define QPHY_V5_20_PCS_PCIE_G4_EQ_CONFIG5		0x108
 #define QPHY_V5_20_PCS_PCIE_G4_PRE_GAIN			0x15c
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
index d3ad5b7f54259f27aa5e97991b9d7372e378cddb..bbee68df4e143b187ae02b5148be63ef7e37ef59 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcs-v5_20.h
@@ -8,8 +8,12 @@
 
 #define QPHY_V5_20_PCS_INSIG_SW_CTRL7			0x060
 #define QPHY_V5_20_PCS_INSIG_MX_CTRL7			0x07c
+#define QPHY_V5_20_PCS_LOCK_DETECT_CONFIG1		0x0c4
+#define QPHY_V5_20_PCS_LOCK_DETECT_CONFIG2		0x0c8
 #define QPHY_V5_20_PCS_G3S2_PRE_GAIN			0x170
 #define QPHY_V5_20_PCS_RX_SIGDET_LVL			0x188
+#define QPHY_V5_20_PCS_ALIGN_DETECT_CONFIG1		0x1b8
+#define QPHY_V5_20_PCS_ALIGN_DETECT_CONFIG2		0x1bc
 #define QPHY_V5_20_PCS_EQ_CONFIG2			0x1d8
 #define QPHY_V5_20_PCS_EQ_CONFIG4			0x1e0
 #define QPHY_V5_20_PCS_EQ_CONFIG5			0x1e4
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h
new file mode 100644
index 0000000000000000000000000000000000000000..68c38fdfc1d826f1ca986469932ef6c0835248db
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-qserdes-ln-shrd-v5.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (c) 2025, The Linux Foundation. All rights reserved.
+ */
+
+#ifndef QCOM_PHY_QMP_QSERDES_LN_SHRD_V5_H_
+#define QCOM_PHY_QMP_QSERDES_LN_SHRD_V5_H_
+
+#define  QSERDES_v5_LN_SHRD_UCDR_PI_CTRL2		0x04c
+
+#endif
diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
index d0f41e4aaa855fc3ee088afc833b214277b7e2b0..6a7ae5199bba6f34d228ace15ab2b452fc0d50a9 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.h
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
@@ -25,6 +25,7 @@
 #include "phy-qcom-qmp-qserdes-txrx-v6.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_20.h"
 #include "phy-qcom-qmp-qserdes-txrx-v6_n4.h"
+#include "phy-qcom-qmp-qserdes-ln-shrd-v5.h"
 #include "phy-qcom-qmp-qserdes-ln-shrd-v6.h"
 
 #include "phy-qcom-qmp-qserdes-com-v7.h"

-- 
2.25.1


