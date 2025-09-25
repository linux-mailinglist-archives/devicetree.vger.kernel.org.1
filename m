Return-Path: <devicetree+bounces-221181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63C32B9DA7D
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:37:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F8063BCF43
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 355412EB866;
	Thu, 25 Sep 2025 06:33:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L2Ya2sVo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96ABF2EB5B9
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782010; cv=none; b=egMMExzcKuftxInUsBTQr6Dz1Sky3iLNvmCSlBf4r3AsC44k0fDY1GYXx9CbM406W1EW6uYP+YI0cPjqzH3FcSSo2sCpW57JNT+9I9hPtb6bnPiZkGdOM9Gk3xvxWwnGzSd+20IMM9gN1mZNzGf+/fv9yg3shq/sfO+jI9eAAwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782010; c=relaxed/simple;
	bh=k8/lUZ8NmYXRm+gPL26YcHRuOfJFQtIkV32n92nOAuU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=at8iz8ZpKAWRE4AsPAup49Kl8Tq02WDqE+GoCR4x1ybHpiVH+TcD4smya3Ko1Y0lfO65PCPAzi8JOUveNb5i+jtDF2PIu93amWD7ehL9Kbe17OD6oNaADY+Pw3QN3TeT5pu8ttb8Kgfqdx7DQhfRMcbIXQ97Lzr3MwQvftK28OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L2Ya2sVo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1J5ld002652
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	h8U5iWeRpBsKn7Vy1xPhS5J0u1ez7iSlyb86KM671Vc=; b=L2Ya2sVoVmF4z2U4
	Q5Y6WlPnXriSAeElhX+f+cTlLEMPMX7IgYIKosN5DvnKi7drIRvK2X6cqCVrKZnR
	I5/+fzvTNXyXIEeUICxg3HtgWbP+S9GSBvaqOBOb2nJpozVfsaT9pI4GtuwBSnDG
	1vr2M7NDVo9I0ve23imjBZIZS0GeSyNdEC+HRpAzcLUBNOAJbN5id/qMPG8KVUmG
	jOPAdYRxU5UtTCsBWo2pHjU8ADyoQigx0woLYZJVCE/ptSNekeo/vEeooZzGWFYR
	PEiwo/Fm0MUCvkQguf/iEtAOpsnRAgYfmjgl4burhzKbi8B4/VF+2EwyALaWZi9J
	On4SqQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1jpg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:33:27 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269af520712so8185665ad.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:33:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782007; x=1759386807;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8U5iWeRpBsKn7Vy1xPhS5J0u1ez7iSlyb86KM671Vc=;
        b=SWaSqYdHcvXJQInX/r38i+XHU8XJxaWuZd7iLgHN0JFduTbF5I4QkjPhDmGioDxljS
         Pi3xpMI/q6MVe312hd3GZGT/aJ9Z200XSQHvTclc5RGF4Mr/Cs/e7Jv27Lbz+bgL8bO9
         Srh4jVcNe56iO4tF44pqg8ZV+DR/ncHewUfYTJGiMrwx/QOMOV0RZ2wBzj14T3WRwjEb
         DhV4CtGUA+HbM5rcvfIPWlZ9+MpFrCvosKDDtFnXZfH5Wg9hzVeL2+x+0cU8TteMOL/n
         XxtxMtjFiJYAGGH0Fq1UWbBKVtH9dF5XkuAoq34xSkRwFKTo6CvEkV114c5z57QaRfaY
         qx6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXnY6SeqBVdos3MS+33oD5gvzvem8PTCvEiX2Ui7eKdOSazck62yW7wExwj5WSgyQqxPYu56wQYkR9L@vger.kernel.org
X-Gm-Message-State: AOJu0YxlHuFM5syMnxouWKo0rcfynqLWn6zBi0HZXW9RGN1IWaT7pmJo
	bceyttGxe6CASxsXUQiuCdjf95zK4DLzsIGu71z02hDZm/BF64OrpmhJqK36iGbc/z8sLnG7Q7t
	1wFNQl8KeSZz5Bk9hQZp42YTaUfybwY5uNIbfcQawYakqDYSjd2b0VgzeEvswabbhWaPpmu+l
X-Gm-Gg: ASbGnctVvM2dydMA69nexGz2NYweg2q4pEMzdymcAdvS4wL516pOlrq/pfMtS9FqAp4
	5RpezqY+7wfyNRbGKv9k1XIlPNit+WnIV0IPHigEiSy2BGW+YVq8b5BKPNWQEsP7AgYs0sMq8ra
	oCDUO7125ZWJNdexFzjWCjxXsW3CFF+N9Y3InI4c3WPzR4vsF62OciiAjsEn4/MTavwthz04j5G
	v+D14XiHKLxbwfrl3SXNEow4rCZ2HiUnjWHk6h2MmtJPvXAOpd2YDbFw8wXSN8xH+uwyJBkeli6
	It+RqUgkR90kdVe7lwLxGp2mp7h3DDRKm+NuxKfda81vh8X1P3KJ7cOlX4Fs4hLkV37BvbIpkkl
	z2nfPrZ/U2Y0UMckhNuXjELbiAX6dmdYqXqAg19ZESrscpLUa/1Da0MYGL/hl
X-Received: by 2002:a17:902:ecce:b0:267:87be:505e with SMTP id d9443c01a7336-27ed4a3748cmr24612995ad.23.1758782006778;
        Wed, 24 Sep 2025 23:33:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbxr43vagnMchkFIiO6iZNE0uvuLG3/tVyJKTSBHe556k0oxn1FxmN9aKvZFXfNnooXpBU0A==
X-Received: by 2002:a17:902:ecce:b0:267:87be:505e with SMTP id d9443c01a7336-27ed4a3748cmr24612705ad.23.1758782006364;
        Wed, 24 Sep 2025 23:33:26 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:33:26 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:10 +0530
Subject: [PATCH 02/24] arm64: defconfig: Enable Glymur configs for boot to
 shell
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-2-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: dBLLsRxn0WeSgkuy9fDC4KL9EpX2KeME
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e237 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=aiTWul_IyTFgGyK2hVEA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX5wMn+2oCVEJ2
 dUlwJluyXhv7s8fCsmMuVwk3chpmATcmtZ0C2WaGAIzriMV+b5lgCrMgLFGHVocFKszUp4JoD+B
 I5iRG5vEgFBUB2VF3jmbu0UksBlzUSDwY0DKQEjLbGh8SSDedxFJMLlWHXGsleK+fKBolXSUOXW
 LlTYttStADyIg5JGOi5u/XpqEOPhf6RvdI+URFxdZpcsbufLzHgWg0vv1ox2PeeWupRz89MsUvO
 2aAY4GsQ8tycRCiqWgUl/Bp2oCDjEz3m0YC/dAdmVgaaPwKG0511XnzgErxqXTEQNNyLW1ZzxZX
 edDjeswoUyhueKZrdQ+vru9VlpM7Wtd/Rjy03bEtl9kgEANBT8aY31xqfLY7Af9Bh78ygpL9zC6
 oDDlvXFg
X-Proofpoint-ORIG-GUID: dBLLsRxn0WeSgkuy9fDC4KL9EpX2KeME
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

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


