Return-Path: <devicetree+bounces-221174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2557EB9DA1B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:34:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 48DD7161F03
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23DAE2F1FF4;
	Thu, 25 Sep 2025 06:30:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DJ8Uq/XA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799782F1FC7
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758781804; cv=none; b=kvVCfNQbFh0/vb7R5OlgmqnFAga25SP7mGKjhYg/sKutIS9Y3adyTWGMvvakKhDnyeMyTjCU6uTl0kZVsUX8qyAJIJMAPfPadCISHCy2Atr2NiG4I00XV+9qNrQ8jKbDIIMtZi3b0XR7Ks/vetRtyW3EafaKOn1jll2AvqqmYC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758781804; c=relaxed/simple;
	bh=TpwtaDCgHlivPpLqL9/Qjhh1d5fBRL34j4LQ0tY0CRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MxT1F5HwIhqNbbffXhdELqsTx5Jkp+omKIyOBhFIfQJcfNMn5o8eJgKWh7IgThFLP3b9p0wiJ/NjLkw6ChOerv2QJwnBZNBjJuRDMiIbfUW42yM31KC0/Unfd3DkfTZ2Wu9EBkBYfGdZW3b90AzEIPtCWRzTxhcgmz1sUsOgOtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DJ8Uq/XA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1J5lI002652
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zftByufi9VJbnQvCiyTLuLuPz4flDxNwxk0G+B2C3oY=; b=DJ8Uq/XAp8RTqRr9
	uQQ8uJuObHJt0o9qzuAiuAbCvcEnNuTAVPDTgihkypwLiJi+EeMZp+Ky+u0OKNMk
	HGl1l+G4aruSmpDHAWE7isE6F/8nvBRCJaQdcnvVrv484/97nu7M0IY2l3zT5eo8
	Hl5bKua96hUDN5ZRA6kswCV2ILEVpBWBXzWuKCAydUkhkujMfMrFcX2YhvZ0bY81
	1tKdMoX+KA/CYav6PJD6gd9cJ50T+MfVPCYwEw9er85/3oNL8d6loIzb6IQ309tG
	mtT1EAIy/VM2u99QTbcRlD2ZjSQps/I2xJZJPBCy5iOQNIIc1cMPMCH3Qspaz1tG
	QThfjA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf1j7u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:30:01 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77e7808cf4bso481116b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:30:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758781801; x=1759386601;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zftByufi9VJbnQvCiyTLuLuPz4flDxNwxk0G+B2C3oY=;
        b=GCmSI5t6YhrmQIjw8XpbMdRpG1EFd6nwvlrSOD9DsErU5d8zEAeRKn6jR+vmL0HjNf
         Uh3aCWa4i2BQ+4Ed13/7RhVhe2n1aD0OcknxpfOEJHTRXIMocMon0lcJwtbS4oQVpmBL
         Npow9uGpFg9D+yDbRgGLbFMEt7mNsnSqReiCANy2093gl7lAC8v5INQMjfvkLFHoQsIT
         SxYsOAoNPX3DsPekYOLGo0daD5xGE03QDjeM9hfY2tjsm0GzjvdFQ8ePHZZTGS7J308c
         Gz6bTu+5WjX76/WXuEh17SCK9xnwmaij9wyb6Ye51kJNL+7r9L6CERkkccf0F6XICYrK
         DNXw==
X-Forwarded-Encrypted: i=1; AJvYcCW680O2GXjjOagwWoYs8oK/lVYHtiuKA0M07SSFf0mhIa13l+10WFE8xIllliMjUnoOyzGNzrfhlyLW@vger.kernel.org
X-Gm-Message-State: AOJu0YwSKtKObwmb6mg7QlRHnVHzmBk2dmq46qnIJ0hFlkBSpvqP5ssT
	rLTgWuPVdJGhmgDCcFt7q36Wq4h2FQE2kRH8DS/ItDrX10N57OvEb8Q2nhZHqZzMcCBHCVxGGq/
	EET15rLpX9icIySoXcmqyYp+TksaTrmPAIlno8+mDheUHZhR89aiJwEj78GO0Adjh
X-Gm-Gg: ASbGncueW+lH2mMuPmbh6xAJfLb2ZAkky9/YNsO6QOeH6WaQolQeBabLhI0BQ7DV4vZ
	Uk4BmiVXtXINyQgeGKv1YlqEMNny6+6mXVadokpLm00eOgLtDuok5Eq9Nz6VBWYl2caAvyLRut6
	+wETtklJUffHowIffSLaTSpIW41Po4uqb2wyFh3bOrsDI0JXn1+opRgT/McTkF7bTXeqp5kZrI5
	gu5iVRkWHKwiR7EACmZfGzvXcGFBHfC/AVwM1lWkyYZcQU3jinxM0CYWvXdSNUU9IWolXWU+td6
	A+7iTU0224iY59uhYZqoraOUu8zLAdxq7o1wP5LpmiPhq4diehzs/TRp1x5s/RuiuwdXiE6MYNK
	EzK/G8M8PjVXzjRKO2VftIQa8CptWavLVN9ZZ3ZNRgAAJHqpOEvdlII7lu65M
X-Received: by 2002:a05:6a00:1256:b0:77f:2e13:881f with SMTP id d2e1a72fcca58-780fced6785mr2460537b3a.16.1758781800839;
        Wed, 24 Sep 2025 23:30:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEtKuPqYPs0rpJIaV/lU9v2Ir+AV/cpNnsB88W5tKKmvbbiS62gRC5l8wjgPNKYU510Xm2LAw==
X-Received: by 2002:a05:6a00:1256:b0:77f:2e13:881f with SMTP id d2e1a72fcca58-780fced6785mr2460507b3a.16.1758781800429;
        Wed, 24 Sep 2025 23:30:00 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810239136dsm952962b3a.5.2025.09.24.23.29.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:30:00 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 11:58:26 +0530
Subject: [PATCH v2 20/24] arm64: dts: qcom: glymur-crd: Add power supply
 and sideband signal for pcie5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v2-20-8e1533a58d2d@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v2-0-8e1533a58d2d@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: 2HxwNepwZO-mBFRQSE0hkTDPlenMm2Xt
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4e169 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=p3KB_V4m9cBtC7zP5zwA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX08IOcZEgbjkF
 CwtFoRslrO1ALK+Wnk6CnHYKCV3bKzO5PJUCDgbBMYNwZk5bOEvsQVeaHYMzYhWU9vL7+4Lf8SD
 XNkWbmo5/69bEr3eXJjGU+2/CnzWrRwEJE2sMztAmhipwB4TvGp3I+S1VCV3IGv3sje3VTIsDuI
 Qw3XYJOXkmQ8ucBnHgl+Gi38k4P9RCaiGxSMibtZwRalGRfkih1Qy02HALJzxc3hjlH2fPTzFob
 /p7Bj2WbU4dopQxuZZJgQ0GcA/s8Io5z7kLl7BcbOfQUX2ijinXFgRLGqMiteVVsLItnvVJt9Vo
 8Ho1EOKcM3d85H4GwltGL3iR5mbQDaiQLBS8l838d+V+9PkupqvbtS1e4eHtlpwlc+JcTb5RL4D
 +2U7r+Ld
X-Proofpoint-ORIG-GUID: 2HxwNepwZO-mBFRQSE0hkTDPlenMm2Xt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

From: Qiang Yu <qiang.yu@oss.qualcomm.com>

Add perst, wake and clkreq sideband signals and required regulators in
PCIe5 controller and PHY device tree node.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/glymur-crd.dts | 68 +++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
index 3f94bdf8b3ccfdff182005d67b8b3f84f956a430..03aacdb1dd7e2354fe31e63183519e53fa022829 100644
--- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
+++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
@@ -107,6 +107,20 @@ port@1 {
 			};
 		};
 	};
+
+	vreg_nvme: regulator-nvme {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VREG_NVME_3P3";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+
+		gpio = <&pmh0101_gpios 14 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-0 = <&nvme_reg_en>;
+		pinctrl-names = "default";
+	};
 };
 
 &tlmm {
@@ -461,3 +475,57 @@ vreg_l4h_e0_1p2: ldo4 {
 &pmk8850_rtc {
 	no-alarm;
 };
+
+&pmh0101_gpios {
+	nvme_reg_en: nvme-reg-en-state {
+		pins = "gpio14";
+		function = "normal";
+		bias-disable;
+	};
+};
+
+&tlmm {
+	pcie5_default: pcie5-default-state {
+		clkreq-n-pins {
+			pins = "gpio153";
+			function = "pcie5_clk_req_n";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-n-pins {
+			pins = "gpio152";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-disable;
+		};
+
+		wake-n-pins {
+			pins = "gpio154";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
+&pcie5 {
+	vddpe-3v3-supply = <&vreg_nvme>;
+
+	pinctrl-0 = <&pcie5_default>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie5_phy {
+	vdda-phy-supply = <&vreg_l2f_e0_0p82>;
+	vdda-pll-supply = <&vreg_l4h_e0_1p2>;
+
+	status = "okay";
+};
+
+&pcie5port0 {
+	perst-gpios = <&tlmm 152 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 154 GPIO_ACTIVE_LOW>;
+};

-- 
2.34.1


