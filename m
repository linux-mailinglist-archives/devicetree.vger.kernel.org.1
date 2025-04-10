Return-Path: <devicetree+bounces-165108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 33053A835CE
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:35:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F7647AEE7F
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 01:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4275B1D90DF;
	Thu, 10 Apr 2025 01:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="paeU4x0r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71131D5ADE
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248853; cv=none; b=XfVMrds80uvT4lSAlCPXB21Mr/l0OWruglop6xDRb/4WvWTy/+9YCqnsF7aHB1y/nABAjkyn7jlSJH8WQUu2PFBV6HeXw2TA0YZt/+PGPo3uIHvsABb5gw1ZHTmp33QXEilir4kVsmFaT56xO39OoKW8LVAM+N9I2keNYmnA1x8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248853; c=relaxed/simple;
	bh=+EADU4VGExLgeSXK4lwo+fjfE4pV2JIAzUIFT8TnNTw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=cX/0WR+raWi/PnlRY8q9MVdcxoAoVQk9TqAWGQ0Dla8uRwDgLLx9xkbjOke7P9FztXsIFREw159o0mRbfqKGrS07OGzXTdMw4XT3X8y3GiClUmP0ukw/yu1nfrFEkE47+rte4rAasrXlqzw6n5MXDFRWcnIaKTZT+u34HKS2GQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=paeU4x0r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539HE6fb006880
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Y+3FfrSNBC0
	rnW/pbZ1shOcvb9E0aupV7QcxaMUAHKc=; b=paeU4x0rLxrFhPoGJrczRk4OJ2y
	Pkw0tFRnIMmEg5h/98A/+VlOhzFrX52SRBH18x5nchp3RFQ2B6ceiKBxxrkBq3bv
	mBNbC/10Fbx6Y57QLE6fggGW7O3fEZVrunIUVkCI8+H/VIOTaKGrRv0Eq5W8JVqt
	ifqzInGkFFmSsVlArb3+7HNHrH7NlDrN4EzoquEdTTSonuwXqeARbbP7+yC6kQKW
	zuk6e/EsrtRLEx1Kf1ZnntZAF54mag1bU0er2pGZXcXPHDqiWWVlM5AXkinFuts0
	hvRMU8amlUKkS/qs/G6ZByeg5ax9+DBHa21vRRCLcnU02boa0P7HvJtWOOQ==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twg3n6vu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:34:10 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-af5268afde2so115841a12.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:34:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744248849; x=1744853649;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y+3FfrSNBC0rnW/pbZ1shOcvb9E0aupV7QcxaMUAHKc=;
        b=moriA78IdkW9vEfQ7VIcC386sApwdpR7JzOpTnDwFuuSlzUZfVHggeZP0bA0KbvSas
         x/mdrslJikrRCrNDK23qMSLL9pccc0Z72qxpA0+RBdOdhAnJdKw1X9FrWBYweXvIZaXr
         6lobrJ32A572awMPH1OUAqTiXih5ImWFPJfY2EvhANjkTs9de5nyNulxsn2ycx5UkT2y
         das3l3DnM0QlayOuHMf3dtRcBlK8uTUdWIfSSHoEecaxIa5mULzqvls5cXUwfTCnUkKB
         lxUlmOqLDFgPPrEii/tm9BGZA0YRuxUKil6ciB4Atd+Cifmu3Dxg4c7iQv6W5rLVTYE0
         8tBQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6j1kGaGrTOEDMl1t159d/82aaJbTpvbuDYSxo3ue4wFeRrNSAlRtYuaAiMyLCOGXsvdqXhQgsmAWx@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9T9/r3bRjEFLuAzVrX1hjJud+jZrFbMLHYsUQpfkjOjj9DVqZ
	tv7h7kvtyspa4UMlowCUtM6ba50gBw6WAeEqjv2Ar9Lpht9l57F1DfRIB9L67JhE4JlxSVshE38
	Bgoa8O9Nn7o59tM9Dt3afMKccSinxkNWGlgPj0SGkRN+sVMWMlcTfT/rEeQsa
X-Gm-Gg: ASbGnctahoicFWUCalGAf0q07K1Ow4hAArFp/ksSih/KD2Qd/R7EbDjCRyifCixFRsF
	QxBZ0i+5r3Lh10Sfatj+pAPB25L+/361d9YqTzydcQMxaR9OuhuPFrSc9LU9ek5MuI793zkUpYk
	J3/2gpbEzDmoWGtnocczO0O/kvQP2zOdwb8DgLtkW1ueduh/Q0xHP/eoW55Y06bCiNE9LehFK4C
	DMHmWkKtpaDBpdG5AsmhkPdGJqqLJYAUxQdqdVXDPcmZPL1S6gtYCQH0e+Ey2iyZqC3RpRBaatR
	CHdUruy7puIuybMR4qgLLYMTY6YSG83SE0LZntpyzYHHUoxahD35vOtbN37rdVpBny/apkw=
X-Received: by 2002:a17:90b:270b:b0:2ee:d7d3:3019 with SMTP id 98e67ed59e1d1-307e5972f0fmr1174649a91.12.1744248849114;
        Wed, 09 Apr 2025 18:34:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE7MCKoesf/io0c1ClAVPtM1es5MKBzBPeISdJZK2T+emvkEbwBgOvPufDeyPNVn4pVjc0MKg==
X-Received: by 2002:a17:90b:270b:b0:2ee:d7d3:3019 with SMTP id 98e67ed59e1d1-307e5972f0fmr1174618a91.12.1744248848735;
        Wed, 09 Apr 2025 18:34:08 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb596sm18801815ad.220.2025.04.09.18.34.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 18:34:08 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 5/5] arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
Date: Thu, 10 Apr 2025 09:33:30 +0800
Message-Id: <20250410013330.3609482-6-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
References: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: HEJGPRsWK4_9gtwuTX5cri7s1z3vwwkG
X-Proofpoint-ORIG-GUID: HEJGPRsWK4_9gtwuTX5cri7s1z3vwwkG
X-Authority-Analysis: v=2.4 cv=I/9lRMgg c=1 sm=1 tr=0 ts=67f72012 cx=c_pps a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=wB5yJZRArZ6K3lEFQq8A:9 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 mlxscore=0
 phishscore=0 suspectscore=0 mlxlogscore=729 lowpriorityscore=0 spamscore=0
 clxscore=1011 malwarescore=0 adultscore=0 priorityscore=1501
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504100010

Add interrupts to enable byte-cntr function for TMC ETR devices.

Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index a904960359d7..b091e941aa21 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2427,6 +2427,11 @@ ctcu@4001000 {
 			clocks = <&aoss_qmp>;
 			clock-names = "apb";
 
+			interrupts = <GIC_SPI 270 IRQ_TYPE_EDGE_RISING>,
+				     <GIC_SPI 262 IRQ_TYPE_EDGE_RISING>;
+			interrupt-names = "etr0",
+					  "etr1";
+
 			in-ports {
 				#address-cells = <1>;
 				#size-cells = <0>;
-- 
2.34.1


