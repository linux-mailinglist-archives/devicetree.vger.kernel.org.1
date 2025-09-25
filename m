Return-Path: <devicetree+bounces-221199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7123CB9DB3B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:41:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 451F7383FBB
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 06:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B276A2FB633;
	Thu, 25 Sep 2025 06:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f+4nF7Fu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 075F72F2614
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758782068; cv=none; b=RHSAXp9v10XbFVleAP5D8+qmyKPbNPsVw73fot2725RuC5tTBNxIOtFevHs45o4kCsWNBIbSHBfHrOkrV4An7qidiFgw/4JUS/yTaAHS6wXq1D173gLrrBAx0VCkSAvvpNdokWpLaNC/wFaueeCgyn4SZH2lG3uB/BFc8AGV3Qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758782068; c=relaxed/simple;
	bh=TpwtaDCgHlivPpLqL9/Qjhh1d5fBRL34j4LQ0tY0CRw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pV8aNOQRPwKbYmAgfjo/NMYs6VabiJb1MjkfLMl9lRTdUqlpMK7FqlRKtpyCCY8dhpl9kNuc09b+BxpXzcXYmrvNKsCXkeYkMJ9HD3vwuGOCepjRcw1js7ZJD3XflMH2AGngxj1xvc+CJotzlVw1ucZRUCiPFeW4qwob/Org+VE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f+4nF7Fu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONvBU2023770
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zftByufi9VJbnQvCiyTLuLuPz4flDxNwxk0G+B2C3oY=; b=f+4nF7FulxMp9fms
	/UvKus+RY6t8j6CExvUwlojxdnYsCC7H4/0zRr/3zXZHfZzpbtSHiE6rgrw0kHgT
	L/nPeabl9/59ukJvxXWMUhG+0ge5bvTyKma9Z1kGLzMZD82xO11ed04DICuBPeET
	ORp2+PW7ieZZuTKwDz25amqhJhWssegVN+CqDUdpgFdAwRyWizRnP1y5k3ZCA9JV
	pLIPC/gBj2HqP9zSVQlM0+hJ323XCCiOLn93shUf3EVTBZBGkzDZc38jUAo+bW5P
	ENzQmfrn/pTw8WCoL8rqhJCUW8Tar6g6XHAnR8YNmAn3xFMPguXfeQ1sEIbzxGgB
	Zm506w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0e2hy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 06:34:25 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26983c4d708so6175775ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:34:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758782064; x=1759386864;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zftByufi9VJbnQvCiyTLuLuPz4flDxNwxk0G+B2C3oY=;
        b=rt+wIShcwszuHq+ExAp6MHacVf9BPJXcdP4tfaJO2BT98jT4z/SK+XDowlSP8tEUn/
         OgiJifJUVAmpfDW6ZwBC4HTNnb7xt9HGX8E9IwItHg+kgVwNLbSdtK9ZGfXiZQmz5541
         5AAeaw9Yb6l0RGDKgRNO5lxWuaMyi9jADBDubm78hjtPzpAIgM+6Btk3zcQ7CxrcLS/2
         JXptoEs0KJUv9XGOr0Ia2Uzh4IuAW6560ZUjuZEHWJOOzoOi8s1K6BwJplnmufpgZqBa
         GJKk8RoI5G64DfOECkZ3/35majOgqtqf+/aFXuAd7zneWOeF04Rb3rGNM0JttVB51ec3
         gA1w==
X-Forwarded-Encrypted: i=1; AJvYcCWcS/jMRZF9x9SyQcw1Rn/3qvHhNB7LoezhMksZSUtFjn/Khk1ELRz1vi4U+OABdPMqtaNAFOWFXpCE@vger.kernel.org
X-Gm-Message-State: AOJu0YyabMJtiA7y6Mk3AzF2DSfdBMKxffmxMeXG+oBGmJD3xcrwITcj
	Z+OX3qJCVBa+jFLFLWkyegaOnV7z+JCPASoAtFsYuppI/5SZw0vz2bG1ROy5ygXnLpemGjqzIo8
	TWAGMXDshCyYtMV/Q26LkcOOHVswTwLtQIkC4sPzx2MryiyymD8DOV51N2vincreHlDf0hrVA
X-Gm-Gg: ASbGncvGOOzS/pqjiXly7WePgfp4pyiQeeVDvVN2Q+qpmw5MUT+BbeZHISilvcOuQGn
	0sJeKJ5n6PyGOymrnQDQzMtW6ETfwdGTs0J1xUR1AIXzK9K1ZvIlekQ+NQLm2a9X44W2CgoSUkm
	3vJ4DioPHUBiyolESpid8P7aRgL8WIz3HJE555jhOq3iFFjqxWiAO4/gFBLdB3iaaFy5qd7aXRl
	Vm5ZQToSWLTXf3CkZahI/RReYWs/m5kuY9/Pel7lCZgsp0FqMBm5pWUo448mGWqZlahUIi88d5b
	RYPrAp0T8HXsQvL5TjLMqlPeJZD1HYNMHiFn6gF0eLn2OAqGNcCieq+qn1Ck67D4LAo6Bxrjrjc
	Y/4NsVlhoaeI/CAYVZiVufHquhZ/tzWZkIKP720mWpHbg47SmqFAPfkc/XLtq
X-Received: by 2002:a17:902:f64d:b0:259:5284:f87b with SMTP id d9443c01a7336-27ed49d0965mr28733525ad.16.1758782064486;
        Wed, 24 Sep 2025 23:34:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRMrtfbUYMmvipJcaZAjG/PAf36/y1JXJmZcKD4A+f+AbJNuyywZoka5EsJsGc4UHDgbii5Q==
X-Received: by 2002:a17:902:f64d:b0:259:5284:f87b with SMTP id d9443c01a7336-27ed49d0965mr28733295ad.16.1758782064078;
        Wed, 24 Sep 2025 23:34:24 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed671732asm13793515ad.49.2025.09.24.23.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 23:34:23 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 12:02:28 +0530
Subject: [PATCH 20/24] arm64: dts: qcom: glymur-crd: Add power supply and
 sideband signal for pcie5
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
In-Reply-To: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d4e271 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=p3KB_V4m9cBtC7zP5zwA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: SRaV30nD3RVFL5yCy3sA7mReM_-6EDcu
X-Proofpoint-ORIG-GUID: SRaV30nD3RVFL5yCy3sA7mReM_-6EDcu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX2eP90ghrLLAo
 J7/0fuGelSwAI09ROaLQDd+KcPp77YupK+KN4bID7fWF+2VsYlG1mpXid6kbkKeIQziQQmXw3z/
 L8jZ9S581lR4Xa6cxhBiANqNQWVEautXXpygJyqabJIHX6Q8DcXKyma9Bq+AdSyd1J8EtYH23U7
 W2X5cPgB9WJ9hTWUfqPegJh9kc0VyQls6Pst0HL5cn3G5gVJ/oPQdNQ9mmIbFGrfLEMeG0JXHRY
 uEdFYu92l5WYXWTv6kXwICLje401t25aRD/tCYPR7AZuQDblFGHlanOuSnpxAmXs+5UpPGh5C0Z
 bdKFNTwot4ICD1pX2Vi74TSnGJ3TEB57sG9GYQDfEfaVCq/2B0Vn/QRE7nxTjmuaXBSQ39c/Rmx
 rUF/p9RQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

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


