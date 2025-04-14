Return-Path: <devicetree+bounces-166484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B164A87778
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 07:40:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 931C81890B87
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 05:40:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D61421A4E70;
	Mon, 14 Apr 2025 05:39:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lz47ESdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BA931A725A
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744609178; cv=none; b=hyG0uiZXsuwLB7PWTL9pg+LAGaKpCrLJtkwy148obZ66UvS75Wvq4bzx42NkNuL7e2knl6HBjvSyjeCCXNy4QOQ8y/ZZUUfqLkbLPaWpo6/QQ8tGB+Wdaigv473kFO965l8LBHDkjo6mW6/mJlhhjQdywRX+di3EH6etuaQXkUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744609178; c=relaxed/simple;
	bh=eIQxpFl/4jEJYQ5b8TemHn6+N37yVxaNtRNfPvJkFrQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p66Sow/dcUq0SHmtV2AibYbBGtfEHk1obM7Dyq6C5KLRahYW8TBLnJs7KEcbzR3MWoZ2WXV6ViN2XmyUa8n3sC1NuVQXI7w1Qc98YZ85ucUDoDhVrlB4KQYy3YC4suBpKAd3wO8YHk16GhsYrU3SqpFNfkAwAZOqwu2Ud1BWsfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lz47ESdX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53DNQgNl022857
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	n8npninDD5cmC/SL7Qu5sfc1JZFcxO0jTWtoHsJdBUM=; b=Lz47ESdXD+xQ5kWD
	33oQObwZooQZVHa8ZELsWxh1hzinzbw0vnBMNwOvwZVwqSX7KUIm4DqQSkmCH5J3
	WL4Aznz8/bdjpdFN6TeiekPyeMlM4TvKRYXCadpqXH1LSFypxurlAluX8upfd8hh
	pPDMadtfsBUJi9gsP4aQWUpQb6ex6nJGZVVtXYm4KIYYdNngmuH+Z3ckUNGp2H8I
	cNRDunQ1I948ivhvfhF4hiWJtAsiXImAC9gjC8XDdxeL5smIlBEKjPbhWnu7deZD
	k9zvS7EL+6X5UhBpjuT+aUCr0fKbkXkia5uTt0gED7nQtAelfk2f//IJq4IV59Dw
	aZrg4Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhbpk9n3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:39:36 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-736bf7eb149so2902021b3a.0
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 22:39:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744609175; x=1745213975;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8npninDD5cmC/SL7Qu5sfc1JZFcxO0jTWtoHsJdBUM=;
        b=EwvVk4l5W/k09fAXSQ6LT8SgJh3PFpRezB8ngt5oaoWFKJe1UM7DBHvICJ6LNbDPsp
         Tl7MoFnDjjgKS6TAg9Y//MifC/rCpu/c1vJuYMuiuVn298QYYYJboG598gXeDPpkp+eM
         V4EI+42DXqjYg2NzYsWza3s7qN3lflYqMs1s78NT/onP5fg0/3FwKHeKYXXjFkfiN4Vl
         xRkG/HTlT7qhicwXTHK91x2u2fffhcunuAgWeahFiFlw9bVQvJIk4a/W1mz5GepUTd/L
         jiOgqCgxY41jlMI+zXAuweDdNinubODwQIhszi321H/bxddJEWKcXurEIpRRYGN+6R/J
         m8wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXm8DPXymFAbujIHrbEyRMxoUxZKhcGYirmnyktqG4nafaJTly5YfvuboDTACZCVsDj3OshE5krgXgN@vger.kernel.org
X-Gm-Message-State: AOJu0YyiuOFae7M3v7HHbFuQP4d5Mi3y8yzrjoc7vAxV1xIsrOX9lq1n
	8woic2uBVoKNvQfVLD6w/FmthZ1c1QmHSoG/3vRj0K40cefmAL12U0Wmt3iJDn4A9yYpimcXf8C
	lshf9764XzpkcL6hi2IHbka5EwLvCTwAmseE/LVsW+5kjhdDBr6UXGZ6bdkwQkca7Defy
X-Gm-Gg: ASbGnctYFyjnacAMJuyWgylIB8w24fbnNfh0Z9MsVVZkkATGnUNFPmvRLWYfqSTI6jy
	KVikEzr7PN64iXi6xPc4X9T7nWbiATdtePCzFMjl87qgs3aFAzRC9y0STpY41QD0XbtpwM7cMA+
	vcEjNsVPFtIvOc7Iu16mzbYGLw/5ynYjvo+PFCCpNDnRbUAFHRj3imDK6wVeNafhjaeXu8DCPnu
	W3Yp8H++gjP0Ffq5+0O9XuirWc1lJGMGhRYUZB3JH1HJ1FqrSdb2PVv+RwmT/l+TZNeL345Ijhe
	bU35gxkUJQeY+MlHJqv4UxZZKdK0PaqAQYVCMYlyEiI031s=
X-Received: by 2002:a05:6a00:244c:b0:736:32d2:aa8e with SMTP id d2e1a72fcca58-73bd11e2657mr12173769b3a.6.1744609174767;
        Sun, 13 Apr 2025 22:39:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn7VJ6eIeLIMm9PzLG6hpHl2iAVyV5PK5lxeLcxWcuIBZsDVM2GN9Qa3dCL9OP9GsviIFi2Q==
X-Received: by 2002:a05:6a00:244c:b0:736:32d2:aa8e with SMTP id d2e1a72fcca58-73bd11e2657mr12173725b3a.6.1744609174056;
        Sun, 13 Apr 2025 22:39:34 -0700 (PDT)
Received: from hu-krichai-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd23332d2sm5824559b3a.159.2025.04.13.22.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 22:39:33 -0700 (PDT)
From: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 11:09:13 +0530
Subject: [PATCH v2 2/3] arm64: qcom: sc7280: Move phy, perst to root port
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250414-perst-v2-2-89247746d755@oss.qualcomm.com>
References: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
In-Reply-To: <20250414-perst-v2-0-89247746d755@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744609160; l=3200;
 i=krishna.chundru@oss.qualcomm.com; s=20230907; h=from:subject:message-id;
 bh=eIQxpFl/4jEJYQ5b8TemHn6+N37yVxaNtRNfPvJkFrQ=;
 b=TmOVOGQHnW1iB/u3l2guQlBAN+RZnXJw5PDlGeZ/pDJX5oCW3/ej9dGrZUxKMqJIoLUQBllrW
 VkZqirJ5H29DJ+NPbOrskMI6D8Wevk9qhM+SMu736Uhrj7O11LcONO4
X-Developer-Key: i=krishna.chundru@oss.qualcomm.com; a=ed25519;
 pk=10CL2pdAKFyzyOHbfSWHCD0X0my7CXxj8gJScmn1FAg=
X-Proofpoint-ORIG-GUID: iv4Cea4OLyEfkZleoeIk1FzT93b8AVje
X-Proofpoint-GUID: iv4Cea4OLyEfkZleoeIk1FzT93b8AVje
X-Authority-Analysis: v=2.4 cv=I+plRMgg c=1 sm=1 tr=0 ts=67fc9f98 cx=c_pps a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=qQkGquXN9PvF_GGjQ98A:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 phishscore=0 adultscore=0 priorityscore=1501 mlxscore=0 lowpriorityscore=0
 bulkscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140039

Move phy, perst, to root port from the controller node.

Rename perst-gpios to reset-gpios to align with the expected naming
convention of pci-bus-common.yaml.

Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts   | 5 ++++-
 arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi | 5 ++++-
 arch/arm64/boot/dts/qcom/sc7280-idp.dtsi       | 5 ++++-
 arch/arm64/boot/dts/qcom/sc7280.dtsi           | 6 ++----
 4 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
index 7a36c90ad4ec8b52f30b22b1621404857d6ef336..3dd58986ad5da0f898537a51715bb5d0fecbe100 100644
--- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
+++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
@@ -709,8 +709,11 @@ &mdss_edp_phy {
 	status = "okay";
 };
 
+&pcie1_port0 {
+	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+};
+
 &pcie1 {
-	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
 
 	pinctrl-0 = <&pcie1_reset_n>, <&pcie1_wake_n>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
index 2ba4ea60cb14736c9cfbf9f4a9048f20a4c921f2..ff11d85d015bdab6a90bd8a0eb9113a339866953 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine.dtsi
@@ -472,10 +472,13 @@ &pcie1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie1_clkreq_n>, <&ssd_rst_l>, <&pe_wake_odl>;
 
-	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
 	vddpe-3v3-supply = <&pp3300_ssd>;
 };
 
+&pcie1_port0 {
+	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+};
+
 &pm8350c_pwm {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
index 7370aa0dbf0e3f9e7a3e38c3f00686e1d3dcbc9f..3209bb15dfec36299cabae07d34f3dc82db6de77 100644
--- a/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280-idp.dtsi
@@ -414,9 +414,12 @@ &lpass_va_macro {
 	vdd-micb-supply = <&vreg_bob>;
 };
 
+&pcie1_port0 {
+	reset-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
+};
+
 &pcie1 {
 	status = "okay";
-	perst-gpios = <&tlmm 2 GPIO_ACTIVE_LOW>;
 
 	vddpe-3v3-supply = <&nvme_3v3_regulator>;
 
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 0f2caf36910b65c398c9e03800a8ce0a8a1f8fc7..376fabf3b4eac34d75bb79ef902c9d83490c45f7 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -2271,9 +2271,6 @@ pcie1: pcie@1c08000 {
 
 			power-domains = <&gcc GCC_PCIE_1_GDSC>;
 
-			phys = <&pcie1_phy>;
-			phy-names = "pciephy";
-
 			pinctrl-names = "default";
 			pinctrl-0 = <&pcie1_clkreq_n>;
 
@@ -2284,7 +2281,7 @@ pcie1: pcie@1c08000 {
 
 			status = "disabled";
 
-			pcie@0 {
+			pcie1_port0: pcie@0 {
 				device_type = "pci";
 				reg = <0x0 0x0 0x0 0x0 0x0>;
 				bus-range = <0x01 0xff>;
@@ -2292,6 +2289,7 @@ pcie@0 {
 				#address-cells = <3>;
 				#size-cells = <2>;
 				ranges;
+				phys = <&pcie1_phy>;
 			};
 		};
 

-- 
2.34.1


