Return-Path: <devicetree+bounces-219666-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC709B8D64D
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 09:13:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3EB8017F5CA
	for <lists+devicetree@lfdr.de>; Sun, 21 Sep 2025 07:13:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78E212D73B0;
	Sun, 21 Sep 2025 07:11:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q+2A7B5t"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E90CA2D12F3
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758438711; cv=none; b=moWDQa3dC4XjYHdhqMMZwI1WngLCMMI2Ep1BcxKZQKzSTfqGw9Gib0Y9s7hS7NesYu7RyyGAym1LWfA2EbmhzTpuE8cXHMpZqXyOlv2RLWkQQQM1tk1C92oS8cEp+5mso2zH4olZOLeroZFXapR8rkalS/9dyW6v1GCSQtGSQOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758438711; c=relaxed/simple;
	bh=KOrtr9anBwhu3Lm3+yW4FXeCTQdCvH4Eo/x1eLlVG78=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F3SxCSAcs1yi1p8pr7Yf80zzVyGLpgAKtVarKtx1PWNua3b8wtgrRQuwkDVZsXKBtUKWUmIhCnTTHmzbkSXct4o7cuNFVhzpVtJt3Bnl5UYkEJlJNt6+hRW1PjOJajrkBD0y3ZiIic/xSmciKLQ/x63xdNlP35TsJl6tPyjQqjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q+2A7B5t; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58L4Xjpe003388
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5UKxEl4Tj1idU7Nm/u6DnMbzEVRNgZL4yVBAlpg8pIU=; b=Q+2A7B5td2QcFt7H
	4WnNBfSZgCaFdjeWv3RoHpGM5Wb0z80/pa7FW4qcokmr5HMFYB1ZINBi7LuDF72X
	/JdxLRW+1/uzONImOy97yBBHlf9cjNWfUA5hNcAu75ndGuofU01iS2Q1ESucBfF2
	DEbSyJpmN0j8wIJ9EnT60OJ4DIKAVFc+2pe8rxB1t9Ud30BeWACEcVz/HER2f034
	PhQWG1PRjvh0UMGd9nDgFVucqorRSLm9EpvWkBoXAivnqzGBNG+xCtl5J3/ubdrA
	q/Szc4TuOp5Nw71NhkQi4dPjFycR6ab6R2y+L0OqtfXY6lst62LPCwui0i2fF00D
	fdoshg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499neksnxa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 07:11:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b60dd9634dso69961001cf.2
        for <devicetree@vger.kernel.org>; Sun, 21 Sep 2025 00:11:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758438708; x=1759043508;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5UKxEl4Tj1idU7Nm/u6DnMbzEVRNgZL4yVBAlpg8pIU=;
        b=B2B4yQkXaigMp3zI2IXaRxewh4oDo/1rSi1CDmeyEkCrRVV+DAmGXrxYZ/OcSNAUhC
         4mq1SyUTDM5CtsU1yM6kP2IZ/XgjP/w44As8V0qC/AO0edN+OdYIArn/pHvjaI+7YbjK
         bGBle+ibJCBHnrp6Y1lVOB6lIuotM4BhZgJXvqKDe54PCmuf3eFaC5Ok63aFR5Sbype+
         f0MBPOv8ERBWvZQLQJhKwv0XJgm2/0QgWCcTouLD1hQD+9eHUeE3xDRxBfw/yctfzPCu
         qG8hCmRKJSNVa8vfu4cis56nDNQ5t48pC7h8tceykggRw+e3JrRG3Kl1c7+FV6p+7n9d
         JSDA==
X-Forwarded-Encrypted: i=1; AJvYcCWVCNn3dBFiMyQyf8+4/xPnZUbROSVYtE6/fZKh2/OKXuRLg3iQoUE17Y5CZrLIvugqEd0tW58SMLlm@vger.kernel.org
X-Gm-Message-State: AOJu0YxgpztJx2FnJnjdU9/pMxd9CK97qZclyu2jNluqf8l3Mni+Wrq2
	KteyDxEjSwuiRIUdPxhCSQVse7V82zPqPo3pZvL143XjWLumeIoQd6FWUMz9uMYbZkz4M6m+PNs
	5nVpagX53AjMSJKNdukOJIq8ALd5W3VRtfUSkzr69w+T20h4J2uuYpYkfN7gOzU8I
X-Gm-Gg: ASbGncvXtDcA1Qtqwu9Y5QKRLMp5R54IJcLykrewqP23Z1UMH7TsF6+L+Z1dH4pOQY9
	nedkO1XRlgMlH4crls11/j3riQzLnyhzKOfQeVdPvTQLqn6mrQvB/alKOnC6uujGL3fM6NsJOGV
	deENZSoKnLdzebKzTC5Cp2Krt0t44MJolRComAoDiDIFfhpsIFX1HkRYu0VFgdjNROgHfr2MRz5
	i8TnVA2EzcqsnThKDa4Q32E+QYxiU/ayWVfkRD+rYJQmZbcrElrRPLV3IRFO22X4yjOQNm/cfRh
	B+v3zyLe4WNzgh2ZE54YqZRb61GKwhmjZB19g3PRYz2zdfXGcNrMpQInonX0HQwSUQjn/gTAqof
	QipIFvc73ThdcpYGiH9sV9QKa0Sa5zJ0lF+uYyxoECnwnypP3Yj66
X-Received: by 2002:ac8:7d10:0:b0:4b7:9abe:e1d0 with SMTP id d75a77b69052e-4c074359c94mr94438601cf.83.1758438707792;
        Sun, 21 Sep 2025 00:11:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiNftRpn9KjvlSL/RDOxBX5e8nD0VvpVQBe/J+schooKFCCi+R5m7dj1MxaUqGGzQ7yvMK0g==
X-Received: by 2002:ac8:7d10:0:b0:4b7:9abe:e1d0 with SMTP id d75a77b69052e-4c074359c94mr94438451cf.83.1758438707335;
        Sun, 21 Sep 2025 00:11:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875c2csm144031e87.4.2025.09.21.00.11.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Sep 2025 00:11:46 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Sun, 21 Sep 2025 10:09:25 +0300
Subject: [PATCH 09/14] arm64: dts: qcom: sm6350: add refgen regulator and
 use it for DSI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250921-refgen-v1-9-9d93e64133ea@oss.qualcomm.com>
References: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
In-Reply-To: <20250921-refgen-v1-0-9d93e64133ea@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1119;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=KOrtr9anBwhu3Lm3+yW4FXeCTQdCvH4Eo/x1eLlVG78=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBoz6UiYddOH0h7x7juqL8KjUrr3kezSpxnEbDeV
 5Z8OUkSmcuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaM+lIgAKCRCLPIo+Aiko
 1Xm5B/9cwh1oT90s6mnxrQVmsGk7jwkEdm15qFkwklbt3suWr2TmDUrHAkdXqTgT/K/hbjJ8gtp
 +qyKdRGEWuNmgt9yPWdzENoKyutWeDFkquE5jKOlbjjnKIxSfibiMkJMK77gK9E766nHwyjiQo8
 sC3SgBqBs3BCAVQ0uXDq3TfdfjfQKJF0A1Qe+//e1NfuR/K+uRJojvLZ/dSuP011FHan/rZnGug
 FZoLmAuXzyufE6FpXSU/StCx1whgetuAeM6RXSqr6HADNFiPhS8XrtiHo8E7YyCNtRvDgaP6h1Z
 N9Ng7QG1F7S+ExTrVg4lkZSt0cxNx6fkJOJuOppIcy17xeUN
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-ORIG-GUID: QZLxSJLi8PoIEI5_LZkkBFvpSEofvTrm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDA0MSBTYWx0ZWRfXzZvDgMRzBskD
 UyBBcz6lOc5cWngNCiIIpVBvic38x1yrQhh+ZpS5+hccLU37qn1ioMaQQE5+Jf3VoG5xfpI1Ktz
 qzXVUAidlH+j5epLN1zXx038wBzkZ9zH+of9QIIppPQvbCv+3JfRXy0z+yMnR7T0I/9LOF4hAui
 l367CFqAqYfIeyPGqLzowDEjqOCn2kGMNmDpAsHQxwOeQxcQ8xPOVZr+gPzr5yH6FgovVQXcArB
 qiRJgxJCdFgj5GG9psdhJsKPltpj25eLwOpvMEGiiaEuuxWUoeBfLKU8nEtPyEtr4cnLkoqfNJX
 +fkaoGacCHUDyyEStN9budsDcAYtgbm241wVw1oHJY987LzLneanNeEOxbBe1k8YplWI2nJzYXy
 +mnOVFYb
X-Authority-Analysis: v=2.4 cv=b+Oy4sGx c=1 sm=1 tr=0 ts=68cfa535 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=XZOqtvWFhPgZnOB8h3YA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: QZLxSJLi8PoIEI5_LZkkBFvpSEofvTrm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-21_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200041

Add the refgen regulator block and use it for the DSI controller.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index 8459b27cacc72a4827a2e289e669163ad6250059..dd009569a6683a25f13b068e3e0bd8746b2ac501 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -1768,6 +1768,12 @@ usb_1_hsphy: phy@88e3000 {
 			resets = <&gcc GCC_QUSB2PHY_PRIM_BCR>;
 		};
 
+		refgen: regulator@88e7000 {
+			compatible = "qcom,sm6350-refgen-regulator",
+				     "qcom,sm8250-refgen-regulator";
+			reg = <0x0 0x088e7000 0x0 0x84>;
+		};
+
 		usb_1_qmpphy: phy@88e8000 {
 			compatible = "qcom,sm6350-qmp-usb3-dp-phy";
 			reg = <0x0 0x088e8000 0x0 0x3000>;
@@ -2360,6 +2366,8 @@ mdss_dsi0: dsi@ae94000 {
 				phys = <&mdss_dsi0_phy>;
 				phy-names = "dsi";
 
+				refgen-supply = <&refgen>;
+
 				#address-cells = <1>;
 				#size-cells = <0>;
 

-- 
2.47.3


