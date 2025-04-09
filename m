Return-Path: <devicetree+bounces-164945-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02520A82E08
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 19:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C7B81B62FBE
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 17:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF83E27C87E;
	Wed,  9 Apr 2025 17:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFMpF1AF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C64427C171
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 17:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744220925; cv=none; b=Bz4QWN3hzhG4AE/EazQD7uBfjIhb0sWfEC4am5gVCC//coErRuL/HroGY7Uk4bEqtMkUUe2ojUPv09zJgXkd0YY9NoVek/G1UcRwP9ujdD8+BauK+WyJp7rCTTl7bLlRIPj6+j9ZU79LfcdXN0FvEn5kC/b0Ztmhu6Fkvrs0mTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744220925; c=relaxed/simple;
	bh=xHMrp8qNO7tQrgEjD1Y8BRuZnIp5Xons8bY+VaR7WOU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=s5rB0aBFfFx9pQmQlUWM55NWoW5blXBABabfjP534Fl5G5qVUXXPNN5D2fsJXhNEosvRR8oHB/GUYUON3nN84YnB6zbU+zSNDGwJEyjqKkLP1/PYyUf8Qu+XFY5kf+aex19m3NhipYqleDboPUVA6oCzsyP7WCCpJREHAvrpeBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFMpF1AF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539GuEL5022892
	for <devicetree@vger.kernel.org>; Wed, 9 Apr 2025 17:48:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OoIwOCvsPp6Maqmzq2QbjdipyauVWuYRAJ0nohLBhgk=; b=WFMpF1AFRu6gZsaN
	Lll4eub/OHXIbQjgsVsiBWLjXxHZBJcb0CaK/5M+lSoBHkQGpa8qOeBAHnI8K63K
	q+HK2+BLp+7XR5ZFtvLRr8AnPxUmrVjU2OhPphBPle7eZbboxxK2KiAlpnOR5PjI
	cSOshyeP3dy5FhKSF2QtPw5hnD2DwNwGItuKnwN/dByIm3s1BbY+nmANFgxqTZME
	U0HBV7hdMoYrmn8U4DpAuUL46/4Z5xsRDpKd0PzZAQbeK2CY/cneBibZmZIw4M94
	uipz1rzkFR3H2SS5Pcb5Z+/2TglAUpFH5/mrm1nmuQJPfA2IFqNQWslf3jZjs+sH
	t480hg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd04cd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 17:48:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22650077995so100915595ad.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 10:48:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744220921; x=1744825721;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OoIwOCvsPp6Maqmzq2QbjdipyauVWuYRAJ0nohLBhgk=;
        b=MtAX546MhcPdcPscJx9BHEU2h2UvNGh2lqgXZfgGBumFLd16ceQbsv0mMg4ctI+FvY
         K05jP6wp4vgHyWG0PdH80WAQDDTD62hj5YHoSiOF4cKLY91xIQVXrW3SipvXZmjM9fpr
         3vkhEuXOpZccOtnM3LvLlIDfBd8x5RiWT9rODA3VjUvL/5LPY0UliR3gyCPmfpls1TIe
         xtqr8L2Abr1/g+vyqM7v7rrnDBIvf6DnafJkj+rAjImTGCvXDEi5zww70Qko/lO5zd62
         pZGCG1M1epR2NdBk0Cx3w0FrFJEX8Ql4cfGIiOOwg1sAPyo2JFHAyRMztZ8G0KZgA9iD
         yWtA==
X-Forwarded-Encrypted: i=1; AJvYcCX1ArMhN/pf0+2i/kS/LYdwDTbTvrP+MZtIwYbpqDO7g1DAGbP8qTWu3hzDNBA/Q1+kbtkfeieiCrnV@vger.kernel.org
X-Gm-Message-State: AOJu0YxGM6nWJq5VaxdVDUlkPa+w5PE0FOi7KQ9NxEtRRKACpxpYim9q
	E1/LFG/zxDj6cKH4k2TS71zwSBhiY+LqsD7SvQcBrdcGZJ8yEF/HvGedvPAKTf/IAt8a0mByXB2
	IjRRoBFbVVSw+DmlcOMZYFCHWYAywiEfqim2/fU6G0V/Gz6fHV49G7295xau9
X-Gm-Gg: ASbGncsvOVwgs8FxILgsr7heTodZQ8yVMOnbE2zOXHAPlZWn7+RnQf1ir8DdyywnSBZ
	6lg+FkyCOmPxkgGF2FS+1Qxrax7O/qOUOIWu8eF39LcX68bhYXIsJpJ99wS7Vxi6J79JsEc4U6k
	l6NYFZAr4VeYm+9hmy1Wn/qt1/aUsEJYvBr7pyJhDcN0KgRjvk661pWUh9f7AhxkxJru1xOdSFp
	nWOrtGeKPh2XD2QPNJS8AM5jE7XV2ALSiu+0OK59/6iFMTVXpWeWiWx+ztSLXI6Mz4qyzX9yfr3
	m+oWG2SY+bEMunx7RtAJb/mzHsSkhzvQ84yFyEL1R2AUUm6atN3Y/PegkBadyhuwyig=
X-Received: by 2002:a17:903:904:b0:224:b60:3ce0 with SMTP id d9443c01a7336-22ac297c897mr60757085ad.5.1744220920767;
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9Zec3l17hLm205zREJHoTa4464+gN4IaUuSWe5lE6kU9rHdyOfldq5vm7D/xBfbpFrEDcbg==
X-Received: by 2002:a17:903:904:b0:224:b60:3ce0 with SMTP id d9443c01a7336-22ac297c897mr60756685ad.5.1744220920456;
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c97a1bsm14964005ad.148.2025.04.09.10.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 10:48:40 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Wed, 09 Apr 2025 10:48:21 -0700
Subject: [PATCH v4 10/10] arm64: defconfig: Add M31 eUSB2 PHY config for
 SM8750
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250409-sm8750_usb_master-v4-10-6ec621c98be6@oss.qualcomm.com>
References: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
In-Reply-To: <20250409-sm8750_usb_master-v4-0-6ec621c98be6@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744220903; l=899;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=xHMrp8qNO7tQrgEjD1Y8BRuZnIp5Xons8bY+VaR7WOU=;
 b=74VSIE/7Bc7NqGuL514qL3g2azY8mMk8Lf8fxgvdpQzxf5vl9+AaSUiv7GOU2Ldi9NXWAGV0D
 VsQaZ/nOOoKBV67eMLcddN7lVBAl/zbN1AiljquEA3aWFCvLMDOkUeL
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-ORIG-GUID: sTiazy5lJcRsU1atj0SfpVxt76KNNqZQ
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f6b2fa cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=yCBuECYR7Rf6QDnvud8A:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: sTiazy5lJcRsU1atj0SfpVxt76KNNqZQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=463 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504090116

The SM8750 SoCs use an eUSB2 PHY driver different from the
already existing M31 USB driver because it requires a connection
to an eUSB2 repeater. Thus, for USB to probe and work properly on
SM8750, enable the additional driver.

Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5c85e5da152f2a9f24fd121fca427afe428438a7..a28eed0c59c2ae0adffcbeb3646b69879442ef27 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1596,6 +1596,7 @@ CONFIG_PHY_QCOM_QUSB2=m
 CONFIG_PHY_QCOM_SNPS_EUSB2=m
 CONFIG_PHY_QCOM_EUSB2_REPEATER=m
 CONFIG_PHY_QCOM_M31_USB=m
+CONFIG_PHY_QCOM_M31_EUSB=m
 CONFIG_PHY_QCOM_USB_HS=m
 CONFIG_PHY_QCOM_USB_SNPS_FEMTO_V2=m
 CONFIG_PHY_QCOM_USB_HS_28NM=m

-- 
2.48.1


