Return-Path: <devicetree+bounces-221156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD4EB9D96F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:29:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C08DC19C4304
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 684412E975A;
	Thu, 25 Sep 2025 06:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="COysLxYm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56642E92C7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781748; cv=none; b=MRwdiJ3/kFwxWx/x5t5wTzBROYNqsdYteyYG/xX9v7d5Q6yZgN9OyrbYqzFInveqNBF0Rx9dRM4Gi+alZTQG0NLwwv8Pu3bwRXvvyk4UIKqEhOrL1VhG4uoU6WRdgJX3k0B1m6WPNYE2XMzxyNMG/aZS5zh4i4QwO5mdC+xefrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781748; c=relaxed/simple;
	bh=k8/lUZ8NmYXRm+gPL26YcHRuOfJFQtIkV32n92nOAuU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lZZmpO8m3bpTOyGVyCcproRcaE7avIkDDSRdr1MmBrcVfYELgrigAZP7jR6RV3Gtb3ev2aUxcnpYAEZzU6d0Qn4KkAWrejSwQ/ozbykkfgKLJApaL+uc7h5HdO6FIActz3em7lm8CGRSYJrJ8NyMuFSMKZIF7gQlkwcPsmD6RNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=COysLxYm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONbrGx023762
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h8U5iWeRpBsKn7Vy1xPhS5J0u1ez7iSlyb86KM671Vc=; b=COysLxYmhYklZXc2
	eLSXD6x4eTeu+FvaLeNM7Nrtolx27yUsu586tTeyk2p1S1AQWk2mbyIwIT4isWFO
	LPENEkAxkos/abIoSXQTnX0UtXt6HAuQ3+qeNql4Uar9Wv/ADZXS0nj+wBkIrCMc
	RWdpSYSphyNAE/PnH8a3qiAeP4HcNxyTA3VmsfzBF8g5ZhXYqGux5hMP4/LAWVm3
	Tr668enfVR9l2frkjH3OYSnkAIw8q6nd56sSm1u2FgyEthZ/JuUrZgfaoihMGbdF
	4erhl36u5O4hRa3Ll06kzHy96gR60vb40lqcLIH6pv4pJwByHi7xk6DUwrSXhNxo
	th4dJg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0e1sq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:29:05 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b554fdd710bso427791a12.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781744; x=1759386544;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8U5iWeRpBsKn7Vy1xPhS5J0u1ez7iSlyb86KM671Vc=;
        b=tMf4c98f33XbNudjt0Zt7soV+y0XrAPnKPK6A9tG0LUNS8pWduvt1PsO/Vl7I6Mtxf
         zaWaxH4w/roSeuY7+Yrm4xvUtf4QWtF5sihq2RdQeb9ajci+LiatLVVcX2TpcXUhjD7j
         k1uLutwTRE8SiXJ4/E+c2NIdbW278Oo2NWIPukL0xILMF/g3LWP3pJrXEafj4+dJ3pnC
         yZ0TvzhKCGyRKhM3EykmwYAk/t/7VnyCFNY2tg88HRucaa1k3DiJuXlIpeoA2RhYdpv3
         mcBE2E4NohQBw1AoZJwgYBOvzdKaxvxQF+zUhPxA5SiYeK/+L/Rp1zJPrcoa/v/DX2cu
         KIIw==
X-Forwarded-Encrypted: i=1; AJvYcCXIySnptgj7b887avieoZzMuCV0ylkgzWVPTKXlewMHVy95gGBT7WhoIlXTJwfUnwHq2yH6cTRkqyxb@vger.kernel.org
X-Gm-Message-State: AOJu0Yweuo0bh/Nyy3wCJOB97q6DyElauXIybSlF2i0Ap24krPW/pWS1
	+FnoweYcoZszkD2W8WdbdDtZFjcMTtos8PQ3RJaX36ZhgujU9Hb6930xoRZBRg88MC9/X4lLzwH
	B5VDyoZFkZENM59Kuao+Ot1vVSlaWYE04DjV3YswYJn82xHKKf6/XbccyJaK5S5Hn
X-Gm-Gg: ASbGncugY3WTsSd0R02VnmG/ka4GX3kADr+Ra3RW723fDMJUbqA3SJA/wfKMnxrZvkB
	R70kQp8vw1IODWlI+9VRHzzEtxpFNw31kVAJrIBGnwbSQ5u+GF948azSGvP5PGD2VW5qzVPGxME
	sIAzRBmyUPUVMpFnOX/0j8EbNxFvtdnm6u/7JkQ7ESMMQf00RTq8Ig0EsWjRKnpg5byYvGH29Py
	2XDYNnRvQggSjSgDBSuHyi1IQB/GJiP38gM7hd0WNNh0oX0R+7IPHpxrOo8kIxYUDHeGZBMnRNy
	eONwl1ySGuwMTKGC/Scp7ddrAgLcDZ3eABUsA3CLROEX4af4L/H/y3ua8qrOZ2Mc3pTNPOdmlj4
	oTrVUYJ0T3b26i0ir1z6+pr6Nc5++0aZF9hekw2PFI/ViOSBRjE6PQ8eDhU46
X-Received: by 2002:a05:6a20:94c7:b0:2d5:e559:d241 with SMTP id adf61e73a8af0-2e7bfc1d5cdmr2697626637.7.1758781744124;
        Wed, 24 Sep 2025 23:29:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZAruWImABltoZcRW5GQJY+tZ23nZD6YVmViHSjk2kahcGDCXA3GvIIW/CdRaNG8TLNnMveQ==
X-Received: by 2002:a05:6a20:94c7:b0:2d5:e559:d241 with SMTP id adf61e73a8af0-2e7bfc1d5cdmr2697610637.7.1758781743704;
        Wed, 24 Sep 2025 23:29:03 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:29:03 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:08 +0530
Subject: [PATCH v2 02/24] arm64: defconfig: Enable Glymur configs for boot
 to shell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-2-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4e131 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=aiTWul_IyTFgGyK2hVEA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-GUID: 4yAMGdI7tMSLMDLCgAy-tZXWuIoMYqFo
X-Proofpoint-ORIG-GUID: 4yAMGdI7tMSLMDLCgAy-tZXWuIoMYqFo
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX6b8iS996Hw3r
 yCofyVjfey0g82Vyqi2Lf6sdoPHV22MQcBTjIyvw6zavibv+4fGn4L4laruHFDyIwN5kekOjyC+
 AQPTvUcpiIRgaKMg6dbQQgHzpvDNoSEUD2s10Pa+xVHExZj0DbT3mBTTBGj2SuPsqIcSmZSlWSu
 CM6N5AXgnvBlm7VWkfQc0L0al5z8/c7bbpIkjGcibhU+TtpGmbDfqrhwR6oqB+wi6JCTZ6t/QC2
 GiR8kxOWNRWxc+Irk+ZhngYbMnrIBoo2arACXwzJLdrWv0DL6cFp/RGTnjYDuFyTUxYq21nnuZM
 9igKGCS8qfRSj0GnLaGY3oA/xUC2oveWU4SfTQJun5mlIfLho9x8F++G6zGjSilUF/ucESIhk5f
 s7WFaDN3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

The serial engine must be properly setup before kernel reaches
"init",so UART driver and its dependencies needs to be built in.
Enable its dependency clocks,interconnect and pinctrl as built-in
to boot Glymur CRD board to UART console with full USB support.

Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index e3a2d37bd10423b028f59dc40d6e8ee1c610d6b8..9dfec01d347b57b4eae1621a69dc06bb8ecbdff1 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -616,6 +616,7 @@ CONFIG_PINCTRL_IMX8ULP=y
 CONFIG_PINCTRL_IMX91=y
 CONFIG_PINCTRL_IMX93=y
 CONFIG_PINCTRL_MSM=y
+CONFIG_PINCTRL_GLYMUR=y
 CONFIG_PINCTRL_IPQ5018=y
 CONFIG_PINCTRL_IPQ5332=y
 CONFIG_PINCTRL_IPQ5424=y
@@ -1363,6 +1364,9 @@ CONFIG_COMMON_CLK_MT8192_SCP_ADSP=y
 CONFIG_COMMON_CLK_MT8192_VDECSYS=y
 CONFIG_COMMON_CLK_MT8192_VENCSYS=y
 CONFIG_COMMON_CLK_QCOM=y
+CONFIG_CLK_GLYMUR_DISPCC=y
+CONFIG_CLK_GLYMUR_GCC=y
+CONFIG_CLK_GLYMUR_TCSRCC=y
 CONFIG_CLK_X1E80100_CAMCC=m
 CONFIG_CLK_X1E80100_DISPCC=m
 CONFIG_CLK_X1E80100_GCC=y
@@ -1641,6 +1645,7 @@ CONFIG_PHY_QCOM_QMP=m
 CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m
@@ -1718,6 +1723,7 @@ CONFIG_INTERCONNECT_IMX8MN=m
 CONFIG_INTERCONNECT_IMX8MQ=m
 CONFIG_INTERCONNECT_IMX8MP=y
 CONFIG_INTERCONNECT_QCOM=y
+CONFIG_INTERCONNECT_QCOM_GLYMUR=y
 CONFIG_INTERCONNECT_QCOM_MSM8916=m
 CONFIG_INTERCONNECT_QCOM_MSM8996=y
 CONFIG_INTERCONNECT_QCOM_OSM_L3=m

-- 
2.34.1


