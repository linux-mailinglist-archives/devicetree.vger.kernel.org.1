Return-Path: <devicetree+bounces-218755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E79F7B83CA8
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:28:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DF75188605A
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:29:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F2CB303A2F;
	Thu, 18 Sep 2025 09:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DyLKNwBR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA6E302149
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187702; cv=none; b=mOcwUp7+ftsthczOzPYvU4gk7qjUh/mkyKXB7CyR2juEOiOzx1f4bT2uwAHy89ofQ5QnmTeT8GjHVhyXzOhrfwWGA0pTSaLC0Su8/oAXxfHPN3ZqAu9twd8ThSyVox4o+nccNi236Q5bLSKfFuBoAMwg1fd2NnvOT5hs1S7zMc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187702; c=relaxed/simple;
	bh=SVm+2JNVOaU5nQkmgsxMtzbT+R/HyCvs1JvnOMf0qQw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=XM/JChQptGKYCf42/N5NPsxjRMXtcxJpotnkXW0Vco7hRjBaHu7hNt4z/lFnIncc+izRRNCbPDKyALLrPL2n0lMmlpK/M6pbZcdE5/ZgBkzfUglJJGlRJWyyhy6NFWOkD2nrHH9pn6HMEAOnO4TeWM3w4QxmDhqoNvIvndbkYyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DyLKNwBR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I2wSXa019633
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1ub3GQmzHl30Cut+oVDM/HIiblWbIkzetyqoTDLdfgQ=; b=DyLKNwBREmnF/Tsc
	W5KF8310aGNbC5TsLw2I27+jSN9kFgrhTsaO1feckjSFYzSkgPcXoSBDLt/bviQW
	iTAgRBB3ngo8qh/n4vXJ+Whw2zqOshn5yqpj+FT4ZEgTPNLk2MqF3/bAHm9TkKki
	2UkcEuc0B+YE2NvFV5UjcpiHRI2m6V9+v0vyZBU9oa27Z0Hy/AKQg5Rt58S7b2qZ
	ZS22o1S+oJzZ6iP1ceb8YQQN4T6ltgXEcpv9N9P2mw8JR6zFP9g8ZYLH1HItrA4Q
	ILj+Di2UdqPvBMOt+Or1O2Zf5d/sL6dh2zLy8oqON8FJxyzluChTZiErpbViWB/g
	xz8zug==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy1wts3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:28:19 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77615793f06so845312b3a.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:28:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758187698; x=1758792498;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1ub3GQmzHl30Cut+oVDM/HIiblWbIkzetyqoTDLdfgQ=;
        b=dDgdo4E2pZ6/noZXK68k3gyrxPyeClp8UbccnV8ImTpYxkwmvhExCgQtadtzL6u3Zs
         gIZjEqkLjxrieMVIdxYjCHIBC4yxsw6u/37T10I9AN2HkVRPgTQjTuByYcrUzRN7Q565
         OXie7xK5+ZWQR8vWWHGUUx8HTiiRLPOF5YDz/EKSGnLP484NEfFjaxO0LGP6jle87ucH
         wY6QjcgdjFrjHRwVXDNXjb0ujTeIEmXck0CCOFRfftxrmg95asJyAgMVN5X2DH9lmWDv
         iDtHk6PHtTfRpVH9hXCM+lL3bu2gJV8oeninm2JTsvlxGe+RP2RieRz/jrULTtH4Jrij
         WJ7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVDifBi5DpYKFev+MuUSan7m6FGG8Mw4IwAc10dh0CTao0SP6s/pBVfeGk9GUqJ4w3l3KvU7rveZbMb@vger.kernel.org
X-Gm-Message-State: AOJu0YxJrAE/XmhIxo5+ewbs9l4011uOVuSlimbfdUhnbueDuvBaQdBc
	kTc3lnSawykYrcKIDxiC3s3fvwGsOOPEMbCE7fGOwsZ7A8MLmRXg96p/m+JZcZFO1Wesr/Rws4e
	fN7KkWE2u+9LZ3lb3Z4bFssY8TQqCK2NkitY3wK28l7yFSlDxlwzReXCD5l+QW6QS
X-Gm-Gg: ASbGncu1K1N4F4ElwS+gagmG16F8ABd+pIpBCIWnks2B6MWIYaxTE2NPzOrrDuqEVz1
	xM30Z6ORdlHBl0g1WrviiHlKQCchbn2QlxeUggoiAe/nqVj9SETJeFY5Wj3ylxxCIwy/Ho92owX
	Y0KkQ7/BOurFV+lzSZOEnzs93f8maFvCVbOD2FsfqVW24d+wngWv3ag6Dy1MhWV3uDfPBi1Dx1P
	431rMVJd0MB6qPsTJkMacegEfB3Ul9LDzTkRg/+ycEFkmc3mj1IFK9mpRwBcuyl9m+sCSMI+xGp
	P7VCSUS8++og/2TCamXW6SPbPrDY2CZ6NZhOPkSVPYEuo7+UwR07Uhst3sjUg4qNN0XKb/hZ/2f
	1Nyye5P/O0I5mxAe+sHJ8QOxznw==
X-Received: by 2002:a05:6a20:939f:b0:263:b547:d0c3 with SMTP id adf61e73a8af0-27aa47743cbmr8198934637.36.1758187698268;
        Thu, 18 Sep 2025 02:28:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdk4fIjvqrYrgerXEHulOA8AzRWcolrxLfECXiV2TjRAx9Q4Tf5SWxS1d+nVx41RCe/t/EvA==
X-Received: by 2002:a05:6a20:939f:b0:263:b547:d0c3 with SMTP id adf61e73a8af0-27aa47743cbmr8198900637.36.1758187697744;
        Thu, 18 Sep 2025 02:28:17 -0700 (PDT)
Received: from hu-kamalw-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-77cfbb79b81sm1819205b3a.10.2025.09.18.02.28.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Sep 2025 02:28:17 -0700 (PDT)
From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Date: Thu, 18 Sep 2025 14:57:04 +0530
Subject: [PATCH v3 4/4] regulator: rpmh-regulator: Add RPMH regulator
 support for Glymur
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250918-glymur-rpmh-regulator-driver-v3-4-184c09678be3@oss.qualcomm.com>
References: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
In-Reply-To: <20250918-glymur-rpmh-regulator-driver-v3-0-184c09678be3@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758187677; l=10504;
 i=kamal.wadhwa@oss.qualcomm.com; s=20241018; h=from:subject:message-id;
 bh=SVm+2JNVOaU5nQkmgsxMtzbT+R/HyCvs1JvnOMf0qQw=;
 b=Rh+hrzxz+ag0rqPhTlhTb5GF9OBc/F1IFA//rz+NQEF5V53AFB/9Ml18SwH4E7/BLhnXqH32+
 nsnc60Tz13vCQl9hhf7nS2gm/3CvMq5SCN6WF0jDwwBS0Oks7K1dYQD
X-Developer-Key: i=kamal.wadhwa@oss.qualcomm.com; a=ed25519;
 pk=XbPE6DM5/mJi2tsiYwMCJCZ4O5XPMqColJRlGVcM7Hs=
X-Proofpoint-GUID: 6OYLMOqHDXyvn437eU7fpsggxVuegvh3
X-Proofpoint-ORIG-GUID: 6OYLMOqHDXyvn437eU7fpsggxVuegvh3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXxMBvPXU8sQ+t
 1KcRxTFvAaWWIrKSFvSAKuL/Watfme7dIdFJOMrbomN4NtnztFSDzwQmb+mRVVwa3AEn9ks9kpd
 htxLHAeHv3I1thCVIaUnvpykvgRN7OTC6MPqxaQ1IV0v00/JySFImi/e3BxJ+l5OBxAVH/Z8O/M
 0Tx3kJfiS49dh6ZBSziN40F8JqkJi2okhzRBKI+RWamMP34zp/FVj/uswy5xptzwPMSHM/qfIg1
 4Veypf4ZXe45iJm9xRdYrQ6TtuJSoaaR7xHZY7NtZrFFsuOWFo9vczvDTkl+ea9jM32M8jt2RpG
 Z48Upb7ilgtxPZAc8DO9wu2dEH3zYthGjLMCU/NUstwSGaTi7Rszlmablnb+R8gEzcxV0OphJvk
 TnzBcWIW
X-Authority-Analysis: v=2.4 cv=cf7SrmDM c=1 sm=1 tr=0 ts=68cbd0b3 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=9dvOv8C0H7iFIk4192MA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-18_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0 priorityscore=1501
 spamscore=0 phishscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

Add support for PMH0101/PMCX0102/PMH0110/PMH0104 PMIC voltage
regulators which are present on Glymur boards.

Introduce new LDOs & SMPSs under them (PMIC5 subtype 530 for
both).

For these new LDOs support a new optimum power mode(OPM). In
this mode LDO will automatically switch between high power mode
(HPM) and low power mode (LPM) based on the real-time LDO load
current. Its operation is analogous to SMPS AUTO mode.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
---
 drivers/regulator/qcom-rpmh-regulator.c | 188 +++++++++++++++++++++++++++++++-
 1 file changed, 187 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
index dfb5bf5b72a1ee0a9a87b72c7baabd52779819a3..0a561f1d94523bf479f48e8c2062f79cf64f5b5f 100644
--- a/drivers/regulator/qcom-rpmh-regulator.c
+++ b/drivers/regulator/qcom-rpmh-regulator.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 // Copyright (c) 2018-2021, The Linux Foundation. All rights reserved.
-// Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
+// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 
 #define pr_fmt(fmt) "%s: " fmt, __func__
 
@@ -92,6 +92,11 @@ static const struct resource_name_formats vreg_rsc_name_lookup[NUM_REGULATOR_TYP
 #define PMIC5_BOB_MODE_AUTO			6
 #define PMIC5_BOB_MODE_PWM			7
 
+#define PMIC530_LDO_MODE_RETENTION		3
+#define PMIC530_LDO_MODE_LPM			4
+#define PMIC530_LDO_MODE_OPM			5
+#define PMIC530_LDO_MODE_HPM			7
+
 #define PMIC_ID_LEN				4
 /**
  * struct rpmh_vreg_hw_data - RPMh regulator hardware configurations
@@ -557,6 +562,14 @@ static const int pmic_mode_map_pmic5_ldo_hpm[REGULATOR_MODE_STANDBY + 1] = {
 	[REGULATOR_MODE_FAST]    = -EINVAL,
 };
 
+static const int pmic_mode_map_pmic530_ldo[REGULATOR_MODE_STANDBY + 1] = {
+	[REGULATOR_MODE_INVALID] = -EINVAL,
+	[REGULATOR_MODE_STANDBY] = PMIC530_LDO_MODE_RETENTION,
+	[REGULATOR_MODE_IDLE]    = PMIC530_LDO_MODE_LPM,
+	[REGULATOR_MODE_NORMAL]  = PMIC530_LDO_MODE_OPM,
+	[REGULATOR_MODE_FAST]    = PMIC530_LDO_MODE_HPM,
+};
+
 static unsigned int rpmh_regulator_pmic4_ldo_of_map_mode(unsigned int rpmh_mode)
 {
 	unsigned int mode;
@@ -579,6 +592,30 @@ static unsigned int rpmh_regulator_pmic4_ldo_of_map_mode(unsigned int rpmh_mode)
 	return mode;
 }
 
+static unsigned int rpmh_regulator_pmic530_ldo_of_map_mode(unsigned int rpmh_mode)
+{
+	unsigned int mode;
+
+	switch (rpmh_mode) {
+	case RPMH_REGULATOR_MODE_HPM:
+		mode = REGULATOR_MODE_FAST;
+		break;
+	case RPMH_REGULATOR_MODE_AUTO:
+		mode = REGULATOR_MODE_NORMAL;
+		break;
+	case RPMH_REGULATOR_MODE_LPM:
+		mode = REGULATOR_MODE_IDLE;
+		break;
+	case RPMH_REGULATOR_MODE_RET:
+		mode = REGULATOR_MODE_STANDBY;
+		break;
+	default:
+		mode = REGULATOR_MODE_INVALID;
+		break;
+	}
+	return mode;
+}
+
 static const int pmic_mode_map_pmic4_smps[REGULATOR_MODE_STANDBY + 1] = {
 	[REGULATOR_MODE_INVALID] = -EINVAL,
 	[REGULATOR_MODE_STANDBY] = PMIC4_SMPS_MODE_RETENTION,
@@ -942,6 +979,71 @@ static const struct rpmh_vreg_hw_data pmic5_bob = {
 	.of_map_mode = rpmh_regulator_pmic4_bob_of_map_mode,
 };
 
+static const struct rpmh_vreg_hw_data pmic5_nldo530 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_drms_ops,
+	.voltage_ranges = (struct linear_range[]) {
+		REGULATOR_LINEAR_RANGE(320000, 0, 210, 8000),
+	},
+	.n_linear_ranges = 1,
+	.n_voltages = 211,
+	.hpm_min_load_uA = 30000,
+	.pmic_mode_map = pmic_mode_map_pmic530_ldo,
+	.of_map_mode = rpmh_regulator_pmic530_ldo_of_map_mode,
+};
+
+static const struct rpmh_vreg_hw_data pmic5_pldo530_mvp150 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_drms_ops,
+	.voltage_ranges = (struct linear_range[]) {
+		REGULATOR_LINEAR_RANGE(1504000, 0, 255, 8000),
+	},
+	.n_linear_ranges = 1,
+	.n_voltages = 256,
+	.hpm_min_load_uA = 10000,
+	.pmic_mode_map = pmic_mode_map_pmic530_ldo,
+	.of_map_mode = rpmh_regulator_pmic530_ldo_of_map_mode,
+};
+
+static const struct rpmh_vreg_hw_data pmic5_pldo530_mvp300 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_drms_ops,
+	.voltage_ranges = (struct linear_range[]) {
+		REGULATOR_LINEAR_RANGE(1504000, 0, 255, 8000),
+	},
+	.n_linear_ranges = 1,
+	.n_voltages = 256,
+	.hpm_min_load_uA = 20000,
+	.pmic_mode_map = pmic_mode_map_pmic530_ldo,
+	.of_map_mode = rpmh_regulator_pmic530_ldo_of_map_mode,
+};
+
+static const struct rpmh_vreg_hw_data pmic5_pldo530_mvp600 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_drms_ops,
+	.voltage_ranges = (struct linear_range[]) {
+		REGULATOR_LINEAR_RANGE(1504000, 0, 255, 8000),
+	},
+	.n_linear_ranges = 1,
+	.n_voltages = 256,
+	.hpm_min_load_uA = 40000,
+	.pmic_mode_map = pmic_mode_map_pmic530_ldo,
+	.of_map_mode = rpmh_regulator_pmic530_ldo_of_map_mode,
+};
+
+static const struct rpmh_vreg_hw_data pmic5_ftsmps530 = {
+	.regulator_type = VRM,
+	.ops = &rpmh_regulator_vrm_ops,
+	.voltage_ranges = (struct linear_range[]) {
+		REGULATOR_LINEAR_RANGE(252000, 0, 305, 4000),
+		REGULATOR_LINEAR_RANGE(1480000, 306, 464, 8000),
+	},
+	.n_linear_ranges = 2,
+	.n_voltages = 465,
+	.pmic_mode_map = pmic_mode_map_pmic5_smps,
+	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
+};
+
 #define RPMH_VREG(_name, _vreg_hw_type, _index, _hw_data, _supply_name) \
 { \
 	.name		= _name, \
@@ -1376,6 +1478,74 @@ static const struct rpmh_vreg_init_data pm6350_vreg_data[] = {
 	RPMH_VREG("ldo22",  LDO,  22, &pmic5_nldo,      NULL),
 };
 
+static const struct rpmh_vreg_init_data pmcx0102_vreg_data[] = {
+	RPMH_VREG("smps1",   SMPS, 1,    &pmic5_ftsmps530, "vdd-s1"),
+	RPMH_VREG("smps2",   SMPS, 2,    &pmic5_ftsmps530, "vdd-s2"),
+	RPMH_VREG("smps3",   SMPS, 3,    &pmic5_ftsmps530, "vdd-s3"),
+	RPMH_VREG("smps4",   SMPS, 4,    &pmic5_ftsmps530, "vdd-s4"),
+	RPMH_VREG("smps5",   SMPS, 5,    &pmic5_ftsmps530, "vdd-s5"),
+	RPMH_VREG("smps6",   SMPS, 6,    &pmic5_ftsmps530, "vdd-s6"),
+	RPMH_VREG("smps7",   SMPS, 7,    &pmic5_ftsmps530, "vdd-s7"),
+	RPMH_VREG("smps8",   SMPS, 8,    &pmic5_ftsmps530, "vdd-s8"),
+	RPMH_VREG("smps9",   SMPS, 9,    &pmic5_ftsmps530, "vdd-s9"),
+	RPMH_VREG("smps10",  SMPS, 10,   &pmic5_ftsmps530, "vdd-s10"),
+	RPMH_VREG("ldo1",   LDO,  1,    &pmic5_nldo530,      "vdd-l1"),
+	RPMH_VREG("ldo2",   LDO,  2,    &pmic5_nldo530,      "vdd-l2"),
+	RPMH_VREG("ldo3",   LDO,  3,    &pmic5_nldo530,      "vdd-l3"),
+	RPMH_VREG("ldo4",   LDO,  4,    &pmic5_nldo530,      "vdd-l4"),
+	{}
+};
+
+static const struct rpmh_vreg_init_data pmh0101_vreg_data[] = {
+	RPMH_VREG("ldo1",   LDO, 1,  &pmic5_nldo530,      "vdd-l1-l4-l10"),
+	RPMH_VREG("ldo2",   LDO, 2,  &pmic5_pldo530_mvp300,      "vdd-l2-l13-l14"),
+	RPMH_VREG("ldo3",   LDO, 3,  &pmic5_nldo530,      "vdd-l3-l11"),
+	RPMH_VREG("ldo4",   LDO, 4,  &pmic5_nldo530,      "vdd-l1-l4-l10"),
+	RPMH_VREG("ldo5",   LDO, 5,  &pmic5_pldo530_mvp150,      "vdd-l5-l16"),
+	RPMH_VREG("ldo6",   LDO, 6,  &pmic5_pldo530_mvp300,      "vdd-l6-l7"),
+	RPMH_VREG("ldo7",   LDO, 7,  &pmic5_pldo530_mvp300,      "vdd-l6-l7"),
+	RPMH_VREG("ldo8",   LDO, 8,  &pmic5_pldo530_mvp150,      "vdd-l8-l9"),
+	RPMH_VREG("ldo9",   LDO, 9,  &pmic5_pldo515_mv,      "vdd-l8-l9"),
+	RPMH_VREG("ldo10",  LDO, 10, &pmic5_nldo530,      "vdd-l1-l4-l10"),
+	RPMH_VREG("ldo11",  LDO, 11, &pmic5_nldo530,      "vdd-l3-l11"),
+	RPMH_VREG("ldo12",  LDO, 12, &pmic5_nldo530,      "vdd-l12"),
+	RPMH_VREG("ldo13",  LDO, 13, &pmic5_pldo530_mvp150,     "vdd-l2-l13-l14"),
+	RPMH_VREG("ldo14",  LDO, 14, &pmic5_pldo530_mvp150,     "vdd-l2-l13-l14"),
+	RPMH_VREG("ldo15",  LDO, 15, &pmic5_nldo530,      "vdd-l15"),
+	RPMH_VREG("ldo16",  LDO, 15, &pmic5_pldo530_mvp600,      "vdd-l5-l16"),
+	RPMH_VREG("ldo17",  LDO, 17, &pmic5_pldo515_mv,   "vdd-l17"),
+	RPMH_VREG("ldo18",  LDO, 18, &pmic5_nldo530,      "vdd-l18"),
+	RPMH_VREG("bob1",   BOB, 1,  &pmic5_bob,          "vdd-bob1"),
+	RPMH_VREG("bob2",   BOB, 2,  &pmic5_bob,          "vdd-bob2"),
+	{}
+};
+
+static const struct rpmh_vreg_init_data pmh0104_vreg_data[] = {
+	RPMH_VREG("smps1",   SMPS, 1,    &pmic5_ftsmps530, "vdd-s1"),
+	RPMH_VREG("smps2",   SMPS, 2,    &pmic5_ftsmps530, "vdd-s2"),
+	RPMH_VREG("smps3",   SMPS, 3,    &pmic5_ftsmps530, "vdd-s3"),
+	RPMH_VREG("smps4",   SMPS, 4,    &pmic5_ftsmps530, "vdd-s4"),
+	{}
+};
+
+static const struct rpmh_vreg_init_data pmh0110_vreg_data[] = {
+	RPMH_VREG("smps1",   SMPS, 1,    &pmic5_ftsmps530, "vdd-s1"),
+	RPMH_VREG("smps2",   SMPS, 2,    &pmic5_ftsmps530, "vdd-s2"),
+	RPMH_VREG("smps3",   SMPS, 3,    &pmic5_ftsmps530, "vdd-s3"),
+	RPMH_VREG("smps4",   SMPS, 4,    &pmic5_ftsmps530, "vdd-s4"),
+	RPMH_VREG("smps5",   SMPS, 5,    &pmic5_ftsmps530, "vdd-s5"),
+	RPMH_VREG("smps6",   SMPS, 6,    &pmic5_ftsmps530, "vdd-s6"),
+	RPMH_VREG("smps7",   SMPS, 7,    &pmic5_ftsmps530, "vdd-s7"),
+	RPMH_VREG("smps8",   SMPS, 8,    &pmic5_ftsmps530, "vdd-s8"),
+	RPMH_VREG("smps9",   SMPS, 9,    &pmic5_ftsmps530, "vdd-s9"),
+	RPMH_VREG("smps10",  SMPS, 10,   &pmic5_ftsmps530, "vdd-s10"),
+	RPMH_VREG("ldo1",   LDO,  1,    &pmic5_nldo530,      "vdd-l1"),
+	RPMH_VREG("ldo2",   LDO,  2,    &pmic5_nldo530,      "vdd-l2"),
+	RPMH_VREG("ldo3",   LDO,  3,    &pmic5_nldo530,      "vdd-l3"),
+	RPMH_VREG("ldo4",   LDO,  4,    &pmic5_nldo530,      "vdd-l4"),
+	{}
+};
+
 static const struct rpmh_vreg_init_data pmx55_vreg_data[] = {
 	RPMH_VREG("smps1",  SMPS, 1,  &pmic5_ftsmps510, "vdd-s1"),
 	RPMH_VREG("smps2",  SMPS, 2,  &pmic5_hfsmps510, "vdd-s2"),
@@ -1728,6 +1898,22 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
 		.compatible = "qcom,pmc8380-rpmh-regulators",
 		.data = pmc8380_vreg_data,
 	},
+	{
+		.compatible = "qcom,pmcx0102-rpmh-regulators",
+		.data = pmcx0102_vreg_data,
+	},
+	{
+		.compatible = "qcom,pmh0101-rpmh-regulators",
+		.data = pmh0101_vreg_data,
+	},
+	{
+		.compatible = "qcom,pmh0104-rpmh-regulators",
+		.data = pmh0104_vreg_data,
+	},
+	{
+		.compatible = "qcom,pmh0110-rpmh-regulators",
+		.data = pmh0110_vreg_data,
+	},
 	{
 		.compatible = "qcom,pmm8155au-rpmh-regulators",
 		.data = pmm8155au_vreg_data,

-- 
2.25.1


