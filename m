Return-Path: <devicetree+bounces-162151-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D0487A7739D
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 06:43:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D09253AC40E
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 04:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08B5B1DDC28;
	Tue,  1 Apr 2025 04:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M9O2IJyn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7193E1D88D0
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 04:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743482594; cv=none; b=X9CMaVZRCJN1ZhRUEZH4xvhEGJ5P0spFhCC1+q66pprkFHHSCLkTdS8PPzTM3qbPgWkEfNSRHcwRn4WZN2fbQXDqcgFK/99P7dlLbCPdi7SaiqRcBJKzL9ED80ZkP1iSn3hOCMzHkt2VOWc4W4wQVavWqtELfFbic+PHWd4c2qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743482594; c=relaxed/simple;
	bh=2UXuX1AMMSWXufAarokzPiIVXoyWp7dxY3qIHpMjNV0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=sQtKUrpuaB5aMXvtN7+gamjVDuXodx5iOStQRdI87DBzLF9uzPFSxR2MDUEbE0Vnq9enWclgEwI5kb5Pr/i2G3D2D+PoJMKrHZvMdEEambufXE+PqLg8Q08g4fgjoK01HukfqOQ5Mb/ks56fxObKYH+Nvi0skRhSQp6BgG0oPnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M9O2IJyn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52VFD26g001275
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 04:43:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JVIxJwxtqh/xBODLl5IXRK6VBOMqf0w0YODMOA6QzRM=; b=M9O2IJynXFoDzenr
	pBNT31zm7s24cADWSAflMeDqnW95lxcs8fw9+DHltGD0mHkAhfmrp+mX2NTwYmB+
	pWK5P9L9cLnuWDCiYqzisQAKt+g/LGRg3v0WPgjOtHWs2n7mtgInXl91v3IYCpDC
	MpCpz5pcLtkO+UuHJd2JFCZdNFAa7ZWCO/fQQoGOoOEXnsuxaiwzgK3tN/A36ewU
	uRAO9J/rpQ7+A0gin5LZRjd+yBCdeUmBfUDSeGrOdDT5BTAwb8CJSsC34I49ouuj
	KaW3ElrrbzruWHJLQiLnbqiuC2DCmx15s1FeVN8ymyhLBjTcS0s1tRj420NE6WyT
	LTdz/Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p67qerds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 04:43:12 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-22412127fd7so73051095ad.0
        for <devicetree@vger.kernel.org>; Mon, 31 Mar 2025 21:43:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743482591; x=1744087391;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JVIxJwxtqh/xBODLl5IXRK6VBOMqf0w0YODMOA6QzRM=;
        b=IV4GUrLifCNGE8yyNE6ZJg8jpwu+9InmZ/Sy7GlzmY9oedqykixOvBQKcPpgM/Snf+
         6+m/p3srogDFV5SsiXM95UW+YIAZF93S93i2w9gZMGW8v4ENbpT6MqGHbEdClqWcVEWB
         bzPo+v8fuiubkj9MPhkxAX1G4EM2BbSsUTFT3p0kPSOmQUexkh0/OrdW8+hodVsIdsS8
         i2W7nuXOpfmhuiAqfxOHZntUSLgru1yPYXb7mgyUDifcFNRb23I2tFH8pqlawI4ToNZv
         R3/PWYvZrIk0b6R+ab6c17+5RmZw5KjJCRd5mDw5X48O0+iLukAMHwOPVWBYOeFzrENL
         kUrg==
X-Forwarded-Encrypted: i=1; AJvYcCUQeY2zaBCRCKCf2RfSoVeQesUYvTVTHnzTlRA4/1tAHdqMHh3kVZ+pii6XLa12sfTPDo1TZpNDMP8A@vger.kernel.org
X-Gm-Message-State: AOJu0Ywa3nCnddbPQSlXCDccO0I0VUW6YlCJMxd1bKfPn1fkxp4BYNcH
	W3qILH3sFW2CuhqiPsAeiEgci3b53itb+ztMutYNV2yLDzoGEQdmyMmGQ9ouTSlol/+IVUxpA4K
	pasylIaRDnPdo0jULfqBQJT2cjjmUko3Cr7m9o1rj4tV8Qy7n1IPjj4vjqKwS
X-Gm-Gg: ASbGncs9c47vOtFBRs6xOGxgF8gm8VV6Lzl43biselwMj9XNp/LxtxECHbKSTGGAx7c
	PSw25GTY2Ii6KQqGihwCZ/5HRU1E8rVb0aDsSkWKO2xclEhr3dPVUESgzNXk8n6aX0XBfr+Zdou
	rx7+Gi2XwLM4+jkZE0eiuZZGpjlrQYPxDVus7NHEkfG0x06t7jFWppvHptmdfI33dXKlzGmFIoH
	CoW/Mac/lqF3XL03Kpi0oSehTIemnNEzBleilcwmkPqUhL17TZpRncBP1coN/tCGvMWwkJPX2uO
	qBWGxcqhe8NbnLO+pirzTECz6BR0Gwu+yu7mw/uWDyaCwz5Pge0=
X-Received: by 2002:a05:6a00:174b:b0:736:4d44:8b77 with SMTP id d2e1a72fcca58-7398035e5a0mr20017514b3a.8.1743482590714;
        Mon, 31 Mar 2025 21:43:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEkiKWztDqATdQNpbZRYBaPGQgHWo+VlBH9KP8WuISMtoSn2CXyo3vvSN+1gB6r7L7E3CmI4Q==
X-Received: by 2002:a05:6a00:174b:b0:736:4d44:8b77 with SMTP id d2e1a72fcca58-7398035e5a0mr20017488b3a.8.1743482590309;
        Mon, 31 Mar 2025 21:43:10 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73970deec96sm7940294b3a.34.2025.03.31.21.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Mar 2025 21:43:10 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 01 Apr 2025 10:12:43 +0530
Subject: [PATCH 1/2] arm64: dts: qcom: sc7280: Add wake GPIO
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250401-wake_irq_support-v1-1-d2e22f4a0efd@oss.qualcomm.com>
References: <20250401-wake_irq_support-v1-0-d2e22f4a0efd@oss.qualcomm.com>
In-Reply-To: <20250401-wake_irq_support-v1-0-d2e22f4a0efd@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1743482582; l=1775;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=2UXuX1AMMSWXufAarokzPiIVXoyWp7dxY3qIHpMjNV0=;
 b=eZZVwPLsgOyNPjDKIyKq15fq9fDVPgcVYf/nmmwSIFP+3mz/qsDsy2REynACuaZ/ncVN12WrX
 b0uwBygfq6fC/lAftKtrPZv7LsLC5a9+cU3u9G4Rcd98XkPsHekneMG
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Authority-Analysis: v=2.4 cv=fMI53Yae c=1 sm=1 tr=0 ts=67eb6ee0 cx=c_pps a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=_k9ig2nQFDp-gxZIyLcA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: TF4XlnjVha641id0BqOFv7Al8gPGGkIZ
X-Proofpoint-GUID: TF4XlnjVha641id0BqOFv7Al8gPGGkIZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_01,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=874 bulkscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010030

Add wake gpio which is needed to bring PCIe device state from D3cold to D0.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 1 +
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 1 +
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index f54db6345b7af6f77bde496d4a07b857bf9d5f6e..ebfe2c5347be02ea730039e61401633fa49479d2 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -711,6 +711,7 @@ &mdss_edp_phy {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pcie1 {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 60b3cf50ea1d61dd5e8b573b5f1c6faa1c291eee..d435db860625d52842bf8e92d6223f67343121db 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -477,6 +477,7 @@ &pcie1 {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pm8350c_pwm {
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 19910670fc3a74628e6def6b8faf2fa17991d576..e107ae0d62460d0d0909c7351c17b0b15f99a235 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -416,6 +416,7 @@ &lpass_va_macro {
 
 &pcieport1 {
 	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 3 GPIO_ACTIVE_LOW>;
 };
 
 &pcie1 {

-- 
2.34.1


