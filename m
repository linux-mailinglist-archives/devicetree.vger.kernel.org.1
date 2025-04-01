Return-Path: <devicetree+bounces-162317-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 659C0A77DEA
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 16:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 17FFF1670B0
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 14:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50EB2040AB;
	Tue,  1 Apr 2025 14:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N4q1mZbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D4B1ACED1
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 14:36:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743518189; cv=none; b=nyjI3Uv5n2WuVBlJjCMjKzaduYQ4sk03/M9P/15SUVOzMiFXGgPL4ePXRUt2qk1ouBbNE9QIyYUldYYvmn9b7ui2pO/qfCAb7mHhEtHFFPQIeAOREkFyaSifSsZy04XHOiq6MXJWYllzG/Ao+jj2J6bpQdevghgm9PKw2cjKgXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743518189; c=relaxed/simple;
	bh=5+8qNAjK1pa41tBTijO7CL4ICZMFSpw7xaF265SfJvU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qlGlHM3XOwZtdqfndxMXxqCwJojZUjVRZIHdZnBtk0BeRwUqnwkZxzinMDHreJpREuuccvZ8zdeXa+My7hRYCpP/947PNCZFcvWqvxPddvjTU7ePzBhD6IiVS7P/1ULbNZG2crtpAi6GeXYe/Jn9ksy5xe3liOfR1YE1DlvKzkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N4q1mZbz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531E0oZ8024528
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 14:36:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=MksskaDKku2
	iDxOHXT4ruPYEUUI91bIugktx0ml57gg=; b=N4q1mZbz1Lz1agZl98uU320urxl
	xLTUFX+33mx83h4q7lE98yGu+ljh8FsLdrAHpkphWc/JM7MOSogpNfN5BT5JLLJe
	n3E1+BUPXlCBlg9W5vxaan67ZgCdSiPV8Nq7fjrNCUxE71LHN33Orb8DXpbDzm3X
	sr9MsOSGaW1+mwcBa/atqSQLQTUq/EA0zLd8MmdlGHEc4mOTqq4QnHyq/2l/x8Nu
	KB830c/qV0IY1O6teK9dE0tY6bBDCu9ratCr/6zgiScKql7KHhk9HSCNe3zo+dLr
	LxyHpogDoqEKVD1S5cOQiMwZTGOn9oGscIxaKuAqdP/QJ5Iivb7XVYbOF8Q==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45rbpysc17-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 14:36:27 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2240a96112fso180917955ad.2
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 07:36:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743518186; x=1744122986;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MksskaDKku2iDxOHXT4ruPYEUUI91bIugktx0ml57gg=;
        b=Ewuq3VSMEm/SZYVYt8w9Alf+vSXbhJXEjmnu784e92o/3hlLpuXzeIS0dXeOchvW/Y
         GH9UIpzG8Cnhzmf4CV+BTl4YyPVo8nJ6NiKn8hEC9qFdSnKM39G6q3IVbG/Xr2MwSZKo
         2zpFw8pS9sO8Pr8VyXFss8vCCT1SUTmDseS8774yjhFo8jQexI8VuJDfxUhBRRr6avxz
         UakS2jRGuwsX+Y4KSvjPw9iVywhI0T7bwCXlvosygo0aJcZfXEZUQEh01q/3G18K/fVW
         XO8XncLf3lwSdgImsmYIioWg8uxaUVfhCt2Ng7obRMoXdVkja6yd5f8P6Kzukbe3Tl9T
         pPaw==
X-Forwarded-Encrypted: i=1; AJvYcCUZDmHB7+T7PisizHQgPMtR6cfK8RWhorQbzjO1PhPll8As/sLShos+MLI7P2696dQrzx+6TY7K45nw@vger.kernel.org
X-Gm-Message-State: AOJu0YypGI2A3Kr2Sjxv2gUUz9w16pokwqRR4N+wGw+t6u7D73e4NFyy
	LTIRjJzS6ZmKi8dZuYMazGYbTlgHDECUDUUuH7uktjI5dT4xAzqJOh7XH4nN3/GLklJ6CiNcyh8
	4iYCBMpzaupSZA92inefwmP9KykJBhAI39C3QeCi0MC05CmlfQX42g5K6SGqv
X-Gm-Gg: ASbGnctLcBw7ej+NfaGycFa5QCZlqnUoIle+tKpaclY0kLe+9nyOYoFdEXbNq2wHqf+
	Jm+t4+fEBrF0/GweVa4Rc7Itcc74myxhj6qpalmjL2DrP3ejHs1c43tv0P8CkwCTLPgKVcwB3Qx
	4DHpK1G587qPgQrRQ+Lz8R+o0BiLzt8D9oKtwPrt2ZWXaehqe80lXHCTyVpJkcFGgNQ60ILBOoW
	WXfCHXS7PzBUkjVyAhoRDaEy24ivgxdMiW+OILlcHxI14D1NLBZFBKJpFvpW1DX0NFzfKReBHpA
	T2D+xYwv+g/Dva2wbhyauESiwgtwiaXs8p3RS0A34UkT+FufnbQ=
X-Received: by 2002:a17:902:ea0a:b0:21f:617a:f1b2 with SMTP id d9443c01a7336-2292f9f981amr214456845ad.46.1743518186244;
        Tue, 01 Apr 2025 07:36:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWUx2PJF9wXGATPSEV4j40VJQd2/URxblcTyWdLAy97uAlx0NykMjOeo8Xtg5mfVsBlrbuuw==
X-Received: by 2002:a17:902:ea0a:b0:21f:617a:f1b2 with SMTP id d9443c01a7336-2292f9f981amr214456325ad.46.1743518185690;
        Tue, 01 Apr 2025 07:36:25 -0700 (PDT)
Received: from QCOM-eG0v1AUPpu.qualcomm.com ([2a01:e0a:82c:5f0:74fa:12d3:5d67:6ddd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2291f1dd292sm89006355ad.185.2025.04.01.07.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Apr 2025 07:36:25 -0700 (PDT)
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Loic Poulain <loic.poulain@oss.qualcomm.com>
Subject: [PATCH 1/2] arm64: dts: qcom: qcm2290: Add CCI node
Date: Tue,  1 Apr 2025 16:36:18 +0200
Message-Id: <20250401143619.2053739-1-loic.poulain@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <y>
References: <y>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: VNVp-QTmqrwEnTImWsGVCHnRhjRJMWxc
X-Proofpoint-ORIG-GUID: VNVp-QTmqrwEnTImWsGVCHnRhjRJMWxc
X-Authority-Analysis: v=2.4 cv=ZNLXmW7b c=1 sm=1 tr=0 ts=67ebf9eb cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=XR8D0OoHHMoA:10 a=QcRrIoSkKhIA:10 a=EUspDBNiAAAA:8 a=gjCkitBQ8UzLeNF7HDgA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_05,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 lowpriorityscore=0 clxscore=1015 mlxscore=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0 phishscore=0
 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010091

Add Camera Control Interface (CCI), supporting two I2C masters.

Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm2290.dtsi | 44 +++++++++++++++++++++++++++
 1 file changed, 44 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
index 7fb5de92bc4c..927dbfe61e4a 100644
--- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
@@ -646,6 +646,20 @@ data-pins {
 					bias-pull-up;
 				};
 			};
+
+			cci0_default: cci0-default-state {
+				pins = "gpio22", "gpio23";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cci1_default: cci1-default-state {
+				pins = "gpio29", "gpio30";
+				function = "cci_i2c";
+				drive-strength = <2>;
+				bias-disable;
+			};
 		};
 
 		gcc: clock-controller@1400000 {
@@ -1603,6 +1617,36 @@ adreno_smmu: iommu@59a0000 {
 			#iommu-cells = <2>;
 		};
 
+		cci: cci@5c1b000 {
+			compatible = "qcom,qcm2290-cci", "qcom,msm8996-cci";
+			reg = <0x0 0x5c1b000 0x0 0x1000>;
+			interrupts = <GIC_SPI 206 IRQ_TYPE_EDGE_RISING>;
+			power-domains = <&gcc GCC_CAMSS_TOP_GDSC>;
+			clocks = <&gcc GCC_CAMSS_TOP_AHB_CLK>, <&gcc GCC_CAMSS_CCI_0_CLK>;
+			clock-names = "camss_top_ahb", "cci";
+			assigned-clocks = <&gcc GCC_CAMSS_CCI_0_CLK>;
+			assigned-clock-rates = <37500000>;
+			pinctrl-0 = <&cci0_default &cci1_default>;
+			pinctrl-names = "default";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+
+			cci_i2c0: i2c-bus@0 {
+				reg = <0>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+
+			cci_i2c1: i2c-bus@1 {
+				reg = <1>;
+				clock-frequency = <400000>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+			};
+		};
+
 		mdss: display-subsystem@5e00000 {
 			compatible = "qcom,qcm2290-mdss";
 			reg = <0x0 0x05e00000 0x0 0x1000>;
-- 
2.34.1


