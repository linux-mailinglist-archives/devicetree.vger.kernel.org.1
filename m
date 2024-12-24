Return-Path: <devicetree+bounces-133854-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8836D9FBEFD
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 15:11:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C009B1884716
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 14:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127A11D89E5;
	Tue, 24 Dec 2024 14:10:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CKGOS2bU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4795D1D86C0
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735049450; cv=none; b=ahSxfT9A0rIW0n4AguYYk3dhL+cE8mHuc6PJfXFZBE0c7g/XuP70IynO5L1ViqirgF6M5FBCHP+eeGQQx2EOh6SNdOy99rHJHojjRT8IJaYZJ1eCaCvOrCVln5LRcBStUzULC+OnaVe18DDB5yXb6rZ4okm37gHR9rgC/jvmq2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735049450; c=relaxed/simple;
	bh=Xw5xh82M6lqdr/nghSYHfW5cBYo0ON32Tui2FZ35TfA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=erZVhVDzkFDoyTEH/5Ms5JnhMcQazwjqWBYeUGShjO4vPVW7AnBgXq/eiwLyWynBhjMb2rf9+gBCXoEmoCyH06krrYkr0Dq9E/wOgXsGwhrJ+k4C47G6sjReU05yJRF9Ny1LW66MNV9iJyvEijFouYQcc9oO4k5t5aIPEd4Fd0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CKGOS2bU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BO9ZgJP007946
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:10:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	btH923ahnbPdwp6dWib9PdG9Wrn7QfWHcRe4kSFbGB4=; b=CKGOS2bUm1Q6NdwX
	AvhVhlR574EJazVDZ+795oeCrarSR2l3bruLuamdkM/MvjW2eeS1EZGLFBhZCALN
	YWjw/RVsAh31JBzJHDyvf0A2gQiDB9BuoNHcPYq4dOLkMwmeDwddQi/PcKPBj1po
	JkkUW+bzfLWqCroSNaXH/YJsiz58KePh0b29frN86YOGL0jgfMNJh70ynAZYwKWS
	NIO2VTALN132Byr4EqISgWQssswlYIkT3WsrZkOef4UJEqcTNN+BHHYu1I2upHyq
	8ZljqK6Yy7F7D7icUJ6AWov7/Occ1xARaiyVxm1LPooCNJasauKivk4fvg4BeCw/
	2ame3w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43qtf89dhv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 14:10:47 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2162f80040aso49682405ad.1
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 06:10:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735049446; x=1735654246;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=btH923ahnbPdwp6dWib9PdG9Wrn7QfWHcRe4kSFbGB4=;
        b=n577CvTeHakX0v1JuzQAibgZUhxfzMaEPSGOQhGBFiIV+QtahBZ1ntNd1yuf9fOX8y
         g9sUZ8BNqZYcG5BNGaimr8WqPC1p/q08IHwmTn5B8wh6wQ6BBXoFt9FLLtCUMc/2KbAp
         i/XP801Ggy82D15pD7HHjshVGiV1KVnyjKvcIaPaOGw5nRVdfJ5+W4egcjIhpdS7TCMP
         o/WtlLSQtmgTuOmh2FBI0s3OVRCLVLw4KrJlSxmDaChbabqCw1qM09xkRwRpQNEJlk7B
         ZHvvg5F1DHbKtw+mQbyQBKRmKW1JMayRizD5M9WwI+ZsJf4NPKPNPdokYt4+BUoKNDet
         FyGA==
X-Forwarded-Encrypted: i=1; AJvYcCXjNl9mKapA2tPBYtl2Ptus1Ta8qFiSnGJrlBle8zHwlNclkxgDG0LdkxCZKu/Rxb1gw/4vXt2S470b@vger.kernel.org
X-Gm-Message-State: AOJu0YzOTzjugkU07AB1GJDJKG7ehEZ4igAzNPUzZor7coootugzZiMs
	vNcDGxdvVcgVS86Re0uV+6eFF/yVHSgyb9lPMDxE98tfEKRsiWmgpmbVioL/belBEyJkXUXJg0C
	gFDz+BqL9xBkJ9305/3K3xCBaNpxWEaBJHrTBjIdq1sB+nvH65M/KmCSzKHaM
X-Gm-Gg: ASbGncuLvPjS1KKQh5Kg4Q5e1+m08+5ViHyjIpkt/RoEoTgxGCFOqZle5meYSMZjPav
	X1j+wCu3Y7HS3Vb1r4Dc2GpehDJx+a9XR1HtHZU97JE4mUhjNe3hIcKfFC0TWxMt4QDwmlxNxeY
	c8VgiMwjqscRAERoZUrnfl0K+QG6fur79AmgDL44lQMVvttpKK6CBl3pSg9Nq9wrM+QU/kakoNM
	e9NElJ8BBkotTO5FmZcCzmmt1hSW8s7uLE+McH4V4mKMun/e3QLqhO1hfaf1X+0wE3M/ZgI1uDq
	iexEDpfXpHtkZWNr
X-Received: by 2002:a05:6a00:4487:b0:71e:744a:3fbc with SMTP id d2e1a72fcca58-72abe0957d8mr24589148b3a.21.1735049445841;
        Tue, 24 Dec 2024 06:10:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEDqis4LkXy5VHJ0HegLCjeJKr7+Mw7vi/WgX+RX9zCBHdvxftli3uQAVEKHL28nGypxkG9PA==
X-Received: by 2002:a05:6a00:4487:b0:71e:744a:3fbc with SMTP id d2e1a72fcca58-72abe0957d8mr24589110b3a.21.1735049445432;
        Tue, 24 Dec 2024 06:10:45 -0800 (PST)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72aad90b8f5sm9691216b3a.194.2024.12.24.06.10.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 06:10:45 -0800 (PST)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Tue, 24 Dec 2024 19:40:15 +0530
Subject: [PATCH v2 1/4] arm64: dts: qcom: sc7280: Increase config size to
 256MB for ECAM feature
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241224-enable_ecam-v2-1-43daef68a901@oss.qualcomm.com>
References: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
In-Reply-To: <20241224-enable_ecam-v2-0-43daef68a901@oss.qualcomm.com>
To: cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_vpernami@quicinc.com,
        quic_mrana@quicinc.com, mmareddy@quicinc.com,
        Krishna chaitanya chundru <quic_krichai@quicinc.com>,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1735049433; l=1616;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=MfhniBxtocnuTilX1vl9/3VUiJ5IIq5lqt/LvaduY3Q=;
 b=/vxSocfEw7wTbjMJRMiQJH6JoPvSAAPGA4gzAeueswEJpneKJCePMZbPk5yOko/MuSmnrMpQO
 +3r3ZdGGa0KATFu/D+cadzRY/o0e5m1eKIBVS/dEMG41EuzHAcsomOx
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-GUID: GwIBhiUX6lUTIdG6pFJRFfifAQ8NX-NB
X-Proofpoint-ORIG-GUID: GwIBhiUX6lUTIdG6pFJRFfifAQ8NX-NB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 mlxscore=0 suspectscore=0 mlxlogscore=881 adultscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412240120

From: Krishna chaitanya chundru <quic_krichai@quicinc.com>

Increase the configuration size to 256MB as required by the ECAM feature.
And also move config space, DBI, ELBI, iATU to upper PCIe region and use
lower PCIe region entierly for BAR region.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/sc7280.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 55db1c83ef55..bece859aee31 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2201,10 +2201,10 @@ wifi: wifi@17a10040 {
 		pcie1: pcie@1c08000 {
 			compatible = "qcom,pcie-sc7280";
 			reg = <0 0x01c08000 0 0x3000>,
-			      <0 0x40000000 0 0xf1d>,
-			      <0 0x40000f20 0 0xa8>,
-			      <0 0x40001000 0 0x1000>,
-			      <0 0x40100000 0 0x100000>;
+			      <4 0x00000000 0 0xf1d>,
+			      <4 0x00000f20 0 0xa8>,
+			      <4 0x10000000 0 0x1000>,
+			      <4 0x00000000 0 0x10000000>;
 
 			reg-names = "parf", "dbi", "elbi", "atu", "config";
 			device_type = "pci";
@@ -2215,8 +2215,8 @@ pcie1: pcie@1c08000 {
 			#address-cells = <3>;
 			#size-cells = <2>;
 
-			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
-				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
+			ranges = <0x01000000 0x0 0x00000000 0x0 0x40000000 0x0 0x100000>,
+				 <0x02000000 0x0 0x40100000 0x0 0x40100000 0x0 0x1ff00000>;
 
 			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,

-- 
2.34.1


