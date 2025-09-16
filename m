Return-Path: <devicetree+bounces-217804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A413B59429
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:49:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 218DF2A76DA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:49:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C48702D46B3;
	Tue, 16 Sep 2025 10:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oTsjFy81"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2908A2C21C3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019653; cv=none; b=pQYY4TZJ+n7V56iJA/ZLbKE1pgjP9hem0U/aC2+WXNUjQpl5s07XVfprXTiUzDjfVxEupvEkKzdS9xGCxmkdy+1Xze8DLEoH5XTOlZLGbYj+iHx3618bCTEbkREd3oyHCdeLJEgZynLIuvf3JUeSrud1siysit1RGC/jXDNwxHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019653; c=relaxed/simple;
	bh=mlexqF5SSClorJ9LQ+lArQE+dRzsOnHZdcxeoekZzOs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NkZQSrrlrJ21OBA9MNcXOAyo3d2TnpBmFIuSlqJZq6OyFIUhF96SD2iGDFBaMJMb4gZR+zhcvD6lvANxTyXgDYExiV5/0aqHa4KZbyKnXpa8frrc6wDfkkJyqM14bfZwDC+i0Mt02Hf7GuSZZNBXspHJEUkIZD7YklqabCY7xZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oTsjFy81; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAUfP9014551
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	W5bbMVfAsGi/zGFdo/a7XkorWRKiev2Csg4UoorEa2g=; b=oTsjFy81xm+HPvNt
	w2pIvpVxiMQ+GuscYQ7vxIu5D/67hjvqM07N295JbWEDJqxsl19nVgONz+FLP/V+
	MUIXer6QxX028/vU6rxPn8va1QNycpZ95Z7rOK6yL7EE0v55WBq6IuCPszpIOrk4
	Uvh0ejxVg4z6QlOw5hwHoltsU6C2/EilPMGMWxhSwxsjvakZi9uTlKvjs7ZmwZdh
	dB2LeB7+SoDYyWXvmrs6FQxK6+hciTq/H0yRSXAzi48/7d+JsEd7b7908S+C7pH+
	JNG3yfvzVeWrtiuWhn1lpscy96QGmgEojkxiyNlHYcfVzdXLtR7erZNjZBaTUEif
	6skKbg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072rjdk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:30 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5242b0f450so3694192a12.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019650; x=1758624450;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W5bbMVfAsGi/zGFdo/a7XkorWRKiev2Csg4UoorEa2g=;
        b=Jj4tRobm1BQrh89hxAG3DPTxDmE8Kk5cxfzKtjIuC8fo+q+WMOkgYyhvjMEV55Kv5C
         vlvTMA1HScoLUwtN/iLypAja49X+ZtLa82PKpQEltBTRzFXTTF8mkF19umW1w1psl2vj
         S3aYe2l+o46Y+ACBluwr/tYxFsiGcPwJFXqM4vR8Lg8eC17UkR6TKcRcWIs2HU5UG6Cw
         6kHEWT1CQWnEX/jVZVVnwVDYQbvEkq68N/g0tm/75ypswB/sSnvtJ+0UEkvgPj1F2Sdr
         KjcnOY5lUs8+kmMTw/URGWM8b2NVmGfqKJKavDq1BIRvy+U3/5STSQN8upfEmck8U0rS
         Vb0A==
X-Forwarded-Encrypted: i=1; AJvYcCXPoUQuMg1HMsfu+oWwCUvJKFXfOg518ctSiqjPp6qHF8RGprGAQoH6KBI+c6GWXg7HGWgYyGbPH533@vger.kernel.org
X-Gm-Message-State: AOJu0YwuxztteYiNbRAUEAQh5UYE/aYmisbuzxvIZG1OISMBJYIchnPL
	zTw0StVx8V8KcVavBsmvFK/IgaIJfWsX+86WtY88gUfuSHGMfIA7wvZttJ9CdOA3zpRr5gtj3/H
	milcijiRV8u1x6MLX8152LAxcnUAMy+FKEkedDRrcM85p8XL/9Hof15GU3IdgC99J
X-Gm-Gg: ASbGncud0rux3/F0QbPvQ3KmdNvibDwpR/Nl3IcHt1PJTGEzG0X6MHKDLjujdribIW9
	UaDFLvRVLYRkJMhDVdgHPYmuNYnjTVXW6w3e3tA7NBu8dmVdnxRN5zV9TX/EHQ2tna50vy/eXwk
	C7g/k18XcdFA0qHiYwxSsUfS6jXcLXf/U+i0SwujwEqSoSeEompcxb9WvOskfroPD/8j1uWOokZ
	ow6GPmcGZBdBKtOo5pIP7YfFKv2So1mYzujCYX6N0mheu2/PDP44FAxuwqZlJKL1anLzy2r9PE1
	VUoyONG/gvkqfihin6epHf/7r720fEfLr7ZHPIZdE1ovv7Wqkvou0gBhIxJS5Id2Ff1O
X-Received: by 2002:a17:903:246:b0:246:a543:199 with SMTP id d9443c01a7336-25d278282edmr238524965ad.54.1758019649689;
        Tue, 16 Sep 2025 03:47:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6jGFWjqTWuORsJ51aFQBu3B1Av+UTVa/XXCZyM6ScHFCNT1dEfSNNMB/0PbuYoQ0RIVbYKg==
X-Received: by 2002:a17:903:246:b0:246:a543:199 with SMTP id d9443c01a7336-25d278282edmr238524595ad.54.1758019649219;
        Tue, 16 Sep 2025 03:47:29 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:28 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:53 +0530
Subject: [PATCH v5 05/10] arm64: dts: qcom: lemans-evk: Enable PCIe support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-5-53d7d206669d@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v5-0-53d7d206669d@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        linux-i2c@vger.kernel.org,
        Sushrut Shree Trivedi <quic_sushruts@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=2441;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=1dTSMAUVpK/VA6UxCdymUCA481jMMWAbBqXExIY/bUA=;
 b=6aEz+wYvfbehYZRkVuSrVm+wQVlYKa5gmR/lChw2IGqZTd8TurAXb6u6Q5pQuxQ0yLfVHZKFI
 7WNGyaaBMLNB42PRhxPqFE89L+mNTiDa7AHV/52GdWwx8IkbUUPuyQu
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX3dbaDbRsy/gA
 +Li3j6ZA0xUiMWCVCXaNWk+3ZfX0EVoBxLJ6aWJuUVOuB1UmapK1OiDxgDvMem4JbEIl/EJRI+I
 NiS7Cm2Es+0e3ptN7kEyCckznF8+/aMNAPkpwtv4l5bS7kL2EIJM6VC+doHmBOsZ6/4X1zrmAC9
 kUs2+JLHmk1s3EpQju9C8MUEpxKZLC6C7/fmqQ9nrfG4uqqmZiHnIFW+/4XfrdAfoWh7csfcIkE
 2YlrNhfqKVg6cNi27hKpNLyogeIuJJFJG6jdHWNX/v4B9P91b9IQVebipuvSRm0cJH+DFXG8JuM
 s+tSM+6T7Z+PUsDdF6FDpGbyyROW1acVuFdvVZRx0udTglwKJx9LcS084CaFc/WIVv8HtLL66M8
 sUzTYqTB
X-Proofpoint-GUID: s3hno4jTwz0AZ1YIB1YmeU4gfPLCQZqa
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c94043 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=y_IpLqVBJp9He2uYrA4A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: s3hno4jTwz0AZ1YIB1YmeU4gfPLCQZqa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

From: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>

Enable PCIe0 and PCIe1 along with the respective phy-nodes.

PCIe0 is routed to an m.2 E key connector on the mainboard for wifi
attaches while PCIe1 routes to a standard PCIe x4 expansion slot.

Signed-off-by: Sushrut Shree Trivedi <quic_sushruts@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 82 +++++++++++++++++++++++++++++++++
 1 file changed, 82 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 97428d9e3e41..99400ff12cfd 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -431,6 +431,40 @@ &mdss0_dp1_phy {
 	status = "okay";
 };
 
+&pcie0 {
+	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 0 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie0_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie0_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
+&pcie1 {
+	perst-gpios = <&tlmm 4 GPIO_ACTIVE_LOW>;
+	wake-gpios = <&tlmm 5 GPIO_ACTIVE_HIGH>;
+
+	pinctrl-0 = <&pcie1_default_state>;
+	pinctrl-names = "default";
+
+	status = "okay";
+};
+
+&pcie1_phy {
+	vdda-phy-supply = <&vreg_l5a>;
+	vdda-pll-supply = <&vreg_l1c>;
+
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
@@ -447,6 +481,54 @@ &sleep_clk {
 	clock-frequency = <32768>;
 };
 
+&tlmm {
+	pcie0_default_state: pcie0-default-state {
+		clkreq-pins {
+			pins = "gpio1";
+			function = "pcie0_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio2";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio0";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+
+	pcie1_default_state: pcie1-default-state {
+		clkreq-pins {
+			pins = "gpio3";
+			function = "pcie1_clkreq";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		perst-pins {
+			pins = "gpio4";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+
+		wake-pins {
+			pins = "gpio5";
+			function = "gpio";
+			drive-strength = <2>;
+			bias-pull-up;
+		};
+	};
+};
+
 &uart10 {
 	compatible = "qcom,geni-debug-uart";
 	pinctrl-0 = <&qup_uart10_default>;

-- 
2.51.0


