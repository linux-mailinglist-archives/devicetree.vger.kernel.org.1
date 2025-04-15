Return-Path: <devicetree+bounces-167196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 036BBA89A2D
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:31:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D2211890D53
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:30:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0FD34296D34;
	Tue, 15 Apr 2025 10:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UVc1ErSS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 785F1296D23
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744712833; cv=none; b=WyPpfCpzhXI9GnvXONXDhWnYAd1o1Vau8POXK63X0g6mGhU6Yc/HCcjWzlo1xgFZkKqdJ6Qn1uh4/oScKSaoOVYAiDTlQe14X761oE7bu5p6yZELzwUKscvE78wrBvbLpi0neFt8sSYVzMW+6t7sNlzUWbMlSAWSM5mgaGsEsno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744712833; c=relaxed/simple;
	bh=ExRCskER0Ooe2sZxLWt69kOwY75d6MXO6rptuFBb9BU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ut0in2qLN9oDZ6ci7Vx/l/U3ri/FQmGeTdLXi5dGTK3SQxQcFN9GSHAf3MXkiyGxDzN3PSMr2yCk0AIjqeV7rmBWWt9jYL5mGlGrT9n2gGaZ/c0Rbpxljbph36UaK+enRe9Io3shF9AKwO5W6OPvk69X2ul1X/AgTOglhKAKsq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UVc1ErSS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tRvB019159
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	s5tSqoC8uxz6c//NI2xfb09f+iWZ6UH3CKMghFgT580=; b=UVc1ErSS7yHWjxCs
	nn+4cM7sQv+HQRpjF/gAHDYXSJRifdRRbMbfqAxoypVGL95DGGaUslaoB3hCOF3i
	2C+EpdPsWIvvl6PmjUQn0Gi1jSX3PjCo0qAzjw8MwDVA+5++e2+18fiJE7FPowUU
	c5pLIS/tVZMiYUIzfHNAx2JpsTdRS6Cbzi6MG58QeTD4hqBkZpgIzk4nPiJ4e6KO
	bMpToYcH/PyVS3xJpV346nXZzlV7GtaQ4mab9cB8GCyBTleEqIpcBenk5SUwcgbj
	uhorMhTeqDRjKQHhd2LH0XtpzCOGJX+Yrkf/evbAxZqAio7Tye37n9jxry/Qsak3
	IQ0Snw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjfmtd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:27:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0a3ff7e81so971800985a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744712829; x=1745317629;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=s5tSqoC8uxz6c//NI2xfb09f+iWZ6UH3CKMghFgT580=;
        b=oCR+yBg6ZXdH6SUkh8phzBPEV1rE2dUbLqpGxV46lxIIMe62VVgI1YT/F5Xuismqwd
         1Oy7YwfgwUr7/XzmjvaRHbHSq2nXw5BngnxVWQGv0q92Av2HyTYu0KDaKvbthPqxr/iq
         SUI1BgqLGhfe43oiRUiZd1MMgWJjnIrD+3hf9Ga5xtGKyNPZuR62S2mIQDyZ0kjFXySo
         daQFcf7v90R5yFh5bGUS3fl9lkR4GLkgIybQQYCcYxwSC/ssKBFqAdHV6z90bmSDkjMx
         Ae8WM6Jv6x50uZb0KyK/CQqHi2ciIJs1IEZDCfQWMpRuFOCx4ogk9MorLp2tXP4GBkfH
         vdBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYOKXzZDyG/fQ5dIFOMYpZ0x0xYpezxf7YT9jJ4JKa5XAxGBtahF9uMgVDjstYNY+hclgRIQfncuVz@vger.kernel.org
X-Gm-Message-State: AOJu0YyqoWujM4m+qr2wXOQrVpn6X+j5oVESKSXGa80rPsUvbzJ3Eu09
	NwzCJr2K3BrrKUp7R7zhALJ/5Rhjwztd44E7Y34HdDjLhwOHOJs2FD4vPJ9IansCHsauj++8HzY
	LGwBKHomo/ZZYYgmgQM722Z1Q3tYCR0licBhEuKAUArszZwXNvpe19Un712qR
X-Gm-Gg: ASbGncsGVCU+KmUI1Kww+8foGZEmjwmUXdvT5INz9bRS4owoQCfc6qAiz4YyCvJny8b
	aa+UayM6S8XEdzsY0sa7EX3GF28+7Oc0DC7DX7BoYAXEttIOPPcoJEDtezuNCxCUNWAaxKic/eb
	uVZ7ioiw2NPPVMylSwAmZAEsp/zEP5B/17sonZWFV13gwupW8afPK6iM+FRslNpFiX03dhNcoUA
	BG7WtwuOaC+cMY/8INnFsQvo1bS5bD9271UL5OwKhGU5mPljDCLUXaZ0Lo9s7o3VLu4GXxI1R5V
	JpxPKiFg/CaR3wdRuIEWoVVAZ4jAoDFFTPXmdrQr5DMZFX70J/4Ns5o9AhfSSzsdV6OXuGtVKxZ
	M5VSnJ++kDVX1+FqKEjgWUm9I
X-Received: by 2002:a05:620a:f0b:b0:7c5:dfe7:4b2d with SMTP id af79cd13be357-7c7af10c205mr2102735285a.18.1744712829541;
        Tue, 15 Apr 2025 03:27:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF01uLmiGr3ASrax9xEileS1vOAkHlnkchsCdsFQ9iPjMfaaJu4ShTHgvJtcmr/HaYofTR+Rg==
X-Received: by 2002:a05:620a:f0b:b0:7c5:dfe7:4b2d with SMTP id af79cd13be357-7c7af10c205mr2102733185a.18.1744712829266;
        Tue, 15 Apr 2025 03:27:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d5035f5sm1384005e87.117.2025.04.15.03.27.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 03:27:07 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 13:26:14 +0300
Subject: [PATCH 16/20] arm64: dts: qcom: sm8250: use correct size for VBIF
 regions
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250415-drm-msm-dts-fixes-v1-16-90cd91bdd138@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=984;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=ExRCskER0Ooe2sZxLWt69kOwY75d6MXO6rptuFBb9BU=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQ/o/k7jTwqns6fatU6pSxOV/XDx3OWyKmpd8Xey7blM3k
 2eit9M6GY1ZGBi5GGTFFFl8ClqmxmxKDvuwY2o9zCBWJpApDFycAjAR/pkcDHNK8srb7WQOWjCU
 iDWqKHTZSzunHvFUuJ3WeK5d+MPZuf13Qi4/17GW1ql89cp1muzM4sX21Tvc3W5KMItlcLRyXQ0
 83CrEp7GTZ3192tztdZk6589WnjrhZ9lctPlQC8vrqPfLJ29I2edgJpInsY334rwl4Ws6fuj4du
 3/q2f7wTRacZG7W3n3+jdO13YedI01CHqhm9J8/isPl6hQpIZAoYH8morjh6TZL6m3nHys+WNN2
 KaclMl7QmTMD1pP8XzndNyhR6w3dINpbvyjyw4PJT4yKzcZ7nwVZCXibnxuvVi4enThk+d229Pq
 tm3iMmo6orgvNuWcyEfV4D9JR2bet1Y/vOfCiavZ/QwA
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: M-8fo1IKY5V8-ks6C2L8u6_QuUaXJco5
X-Proofpoint-ORIG-GUID: M-8fo1IKY5V8-ks6C2L8u6_QuUaXJco5
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fe347e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=VtyIcLpCa2ouEs3TgwgA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=725 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150073

Use allocated region size for VBIF regions as defined by the docs
(0x3000) instead of just using the last register address.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 0425e14840c6a299aa49e82ef5010fc9ac090296..f0d18fd37aaf467516169bdb4c035617aed04e8c 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -4691,7 +4691,7 @@ mdss: display-subsystem@ae00000 {
 			mdss_mdp: display-controller@ae01000 {
 				compatible = "qcom,sm8250-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
-				      <0 0x0aeb0000 0 0x2008>;
+				      <0 0x0aeb0000 0 0x3000>;
 				reg-names = "mdp", "vbif";
 
 				clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,

-- 
2.39.5


