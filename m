Return-Path: <devicetree+bounces-217913-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2727CB59B64
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 17:07:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7957617D865
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:02:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4492C34321A;
	Tue, 16 Sep 2025 15:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dn+F4eCw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A235C340D9C
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758034830; cv=none; b=SN2i5sDChlnAd8FAYfWetVtq1NWSYpAEE1/lL56GcZhYKOW+pZMaONcQtJSg9+8if+HIEwDH/cQDN7p1JEcHk9gfbFq0mFwrdn9soEwb9qMeEBPZiSJ9sZw66SPSMHzyuNbMgmDhqDMUEHLl+2x0zCP/C/GNYg7l/xGAGFHTTaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758034830; c=relaxed/simple;
	bh=D+MI1yBSPD0wfaK64wdrIx16i0xhge1W8zq7BamNICI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cxdm3ELzLYS44jlD8PtHPUIJvUvxkNiO2ebRHPc4+htqhPPtXgpJtf6ItDGmXP2r2goQ1odt53F2ShhVqVpPYQddl4rh8hCsT3m6Oo4a7y0lZNfyS4ZjGhBfBxQPFAnbsAK5DGYkuUZUw4CiUef+piKC8eUrWXV6V1LyTeLUj6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dn+F4eCw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA49TN005233
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	c2Wl9Ei/DIdqaCb3FT29b9bLmkPceZ9goQF1SjIPoN8=; b=Dn+F4eCw6jihG5yr
	pMwLMbSQkJ2EoH4uunNiOUHS7/ns8U/ttw0h0VsHsXDxIpJc05bxDMEWL/R7CQkV
	lAYGz3FWgwTmFasHMhppKtHrN+d6+bIcLoEMhrF8KcDNL4agkOa0BRVHjOja4d/j
	hXdUTU5rx3/6VjHUkEntJaopwOr5ITtV8BFfXVJANvBrl1bX1BzwMnaE6XXiZJTi
	QsdaGOqicNAIjSlTt2upu6MiAPdUIwiBKJn3ePeYvaREmcWMK5xg3n1hTUQNV9MI
	enn6G0oSDws+h2B3r6GmtTpPGKkAstpJNFzlKdGLdYb8FNQ06RCQjZj+Y0TvuIBl
	1wP+FA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496g5n4x3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 15:00:28 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-25bdf8126ceso97520955ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 08:00:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758034826; x=1758639626;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=c2Wl9Ei/DIdqaCb3FT29b9bLmkPceZ9goQF1SjIPoN8=;
        b=iO6tJqjDSw/oVjUsmeGIFbjMOHzBpCb3Y4tgdN4sfEdyTbYHTUaYpiWzufUlXzwRNX
         5EMwSdYUGwWRodGgIM6SfRLO+mutJUgMCfe0TzPw8oMD1Wa+pKXQDMu76UvXYUMuLrQr
         22lcaKyE20u9PelCkZvtBYge433iVBqzxtUJswTv8AWINPSbjHk+oQarg2RuoMZy3WOJ
         LcOpCLo9BuyYm5mCjP1J+8Gaf4IqRlrvzJPuzeZ6/xIHwQgyOcV+z4nhsPTr79PrfaS/
         URpc+X534ja9a5r6GIKhhTZMALyo4EHzbsxokF1Ym8IslKFOy4fnMmQZjbDMT8xvaE1/
         V5Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVKaku2qaSNXy+6Tffnlm21gr4geUCuTwvpSR3s5psMsWc5AlX6UfPJaW+Bv6r0kgUAyomLtzDsrUFd@vger.kernel.org
X-Gm-Message-State: AOJu0YzRNd2orJpl+P/B/zW3CKxBKLMLsjNbzDpdQ6H4txD9B2T2OxAg
	5PsxTwU+GNUKW3mS7WQ35+hZO7RaN92+HMrGP69ATs3b5f1+V7TAtssvwTUAF9e0epBKvrojOZv
	KFRDcFxWMhizlgwveuOxSRXldKAwZdeoj+TGC8TqwuE552Q0Z5zrtjFFe6wZ40/a7
X-Gm-Gg: ASbGnctixx2+sIAEKyDMgLiYAjpFD+HeXmKz+E2MQiie+3jfL6RiWqSnbEyjbgZ6k8N
	QPcVkBGJi/NpQtHN3kZ2FeRXtFUdcqFBWyntBZsVQmc9bLRilony55NXGILU0qm6WyA3Fh7ApIu
	6NaTT+GQ806GEfMApT4oPCN7gfiPAg/KWN+B/5pi+2fCwYye5XqLYq/gM4bxIjxOSCb0sFVq5x4
	fEHM1cI0Ll/f/0S7IUX6UvpT43ny4wT6AWpI1W9SCxpUXNB1D2l7LUxdkdvBcXgc68Jjlp/qI4e
	Mpgx7tMUCO1pRb95m0OxprNBHHujPkswlGvvQaAKZ/jcCoj5nhF0Fz2nP+o2OxAIWZY7
X-Received: by 2002:a17:903:240d:b0:267:ba92:4d3a with SMTP id d9443c01a7336-267ba924f53mr55752015ad.6.1758034826293;
        Tue, 16 Sep 2025 08:00:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzVwiO2rpg+4Oduh271gIE5EJgVxIPETHc/7YFjqcVMjYk69yT8M6FE0sDePh7YrEWkPJSxg==
X-Received: by 2002:a17:903:240d:b0:267:ba92:4d3a with SMTP id d9443c01a7336-267ba924f53mr55750955ad.6.1758034825496;
        Tue, 16 Sep 2025 08:00:25 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2651d2df15esm74232615ad.45.2025.09.16.08.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 08:00:25 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 20:29:31 +0530
Subject: [PATCH v6 09/10] arm64: dts: qcom: lemans-evk: Enable SDHCI for SD
 Card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v6-9-62e6a9018df4@oss.qualcomm.com>
References: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
In-Reply-To: <20250916-lemans-evk-bu-v6-0-62e6a9018df4@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758034770; l=2151;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=wTUKv5iuUm44oYSXkoHnDdPei2RDohsGfjquUCYOO7w=;
 b=1NB1AhnzEB/9+2GIL0JUL6Q8Ie0ZvVJAQ//XKFFLSSQ4J0ZdEwVGBVLskYVRXlR8Q9J5Q/0YP
 nJfTAVZr+x1DdWQr7wl7aqjhYCYat5eQOrhBeh7tdXNL83zicUM8UKG
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: MXZwTBYYluUbSU0hFjB0l1fk8rtiJoGZ
X-Proofpoint-ORIG-GUID: MXZwTBYYluUbSU0hFjB0l1fk8rtiJoGZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA4NyBTYWx0ZWRfX7qpzVUZWfu3T
 OPyeoyh2y7bbTIgeeDa0O+RBCPDka72ZzfQ8IX2BnMrYlMaagk7mPOLiuPAwbpa9IrRtrQEmbv9
 EBaBS+P/ao1H8Hbv7sSky5efbP8YCc6vx8UKg6JWcF5Eo1CekKHQMx7eth7vrY3t7fZNKEgIzfu
 MItFJstVm0BQQICEWPTSiO4jnA3GPoFCfkb9YG0b06Jfdey/qY6AjC9H1kZMVsxDHnAQ39U80HP
 XMGUpxlqfw/Gvl0rCt1/s/MAdsq0ybXHkB/6Jb7VggrB/q+vDr2J8ipvwndxvYoFFCdIZqQuR2a
 FdUfXYyTNEo3FSho9oPn0J1VCf6fabJQpFm6L4BKv7sXdFJQacpG4u8Jk7V6KFq2KzdWEjbsRN/
 Mz92fkVG
X-Authority-Analysis: v=2.4 cv=SaD3duRu c=1 sm=1 tr=0 ts=68c97b8c cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ZiJiVGjlRZjjTBZS6bkA:9 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 malwarescore=0 phishscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509150087

From: Monish Chunara <quic_mchunara@quicinc.com>

Enable the SD Host Controller Interface (SDHCI) on the lemans EVK board
to support SD card for storage. Also add the corresponding regulators.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 45 +++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 3a0376f399e0..0170da9362ae 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -17,6 +17,7 @@ / {
 	compatible = "qcom,lemans-evk", "qcom,qcs9100", "qcom,sa8775p";
 
 	aliases {
+		mmc1 = &sdhc;
 		serial0 = &uart10;
 	};
 
@@ -98,6 +99,28 @@ platform {
 			};
 		};
 	};
+
+	vmmc_sdc: regulator-vmmc-sdc {
+		compatible = "regulator-fixed";
+
+		regulator-name = "vmmc_sdc";
+		regulator-min-microvolt = <2950000>;
+		regulator-max-microvolt = <2950000>;
+	};
+
+	vreg_sdc: regulator-vreg-sdc {
+		compatible = "regulator-gpio";
+
+		regulator-name = "vreg_sdc";
+		regulator-type = "voltage";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <2950000>;
+
+		gpios = <&expander1 7 GPIO_ACTIVE_HIGH>;
+		states = <1800000 1>, <2950000 0>;
+
+		startup-delay-us = <100>;
+	};
 };
 
 &apps_rsc {
@@ -513,6 +536,22 @@ &remoteproc_gpdsp1 {
 	status = "okay";
 };
 
+&sdhc {
+	vmmc-supply = <&vmmc_sdc>;
+	vqmmc-supply = <&vreg_sdc>;
+
+	pinctrl-0 = <&sdc_default>, <&sd_cd>;
+	pinctrl-1 = <&sdc_sleep>, <&sd_cd>;
+	pinctrl-names = "default", "sleep";
+
+	bus-width = <4>;
+	cd-gpios = <&tlmm 36 GPIO_ACTIVE_LOW>;
+	no-mmc;
+	no-sdio;
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };
@@ -563,6 +602,12 @@ wake-pins {
 			bias-pull-up;
 		};
 	};
+
+	sd_cd: sd-cd-state {
+		pins = "gpio36";
+		function = "gpio";
+		bias-pull-up;
+	};
 };
 
 &uart10 {

-- 
2.51.0


