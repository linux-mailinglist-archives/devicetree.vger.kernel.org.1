Return-Path: <devicetree+bounces-214223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CF77B486BA
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 10:23:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 021731B21B10
	for <lists+devicetree@lfdr.de>; Mon,  8 Sep 2025 08:24:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D9132FB09C;
	Mon,  8 Sep 2025 08:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XZbStJ3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB22FB0A6
	for <devicetree@vger.kernel.org>; Mon,  8 Sep 2025 08:21:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757319668; cv=none; b=E4fQ3GeS670Zow3aPnKT+49SrzRlqTuBf5vOkXyyR/NxQRqoSkA4uLfM/wnnjerykZruwcu1Q2EBOTLoTr1fHXi+0SFcUXabYoXDFiS4J7p9qY0zcj8CjCPg/W9gWtxONTA+8SD6hZAziG7a/EtAw/TSzITdv1KyiqbZpV3pK3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757319668; c=relaxed/simple;
	bh=uT1RQTZ8HcdDiPZOvVJtf44HkHxuTXRz/oiN9/qCASg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=cX3s8wR6Y77lsTimgFeOREsQFmJ9iZDQg+bZz0dd81XoiyYWzD8Uhe2QQXiiGkmSUe6IeL7wPup9GnyN9HNIqrRa0opO/hRVhyqc1DWtj3+nNTVHU6QJc2hPuftwJZz8E15yoiY/+ApxcxwxeYbDKaNz3bb8zhIbyU9LjriLGko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XZbStJ3e; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5886g1IR005771
	for <devicetree@vger.kernel.org>; Mon, 8 Sep 2025 08:21:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MzF3Foo3tIflXdtMvnJY/IPP1JEHUdPK3n0iEo31wt0=; b=XZbStJ3eSGPBUDMN
	88HUUu+ve2w24Yc3pl4aXO9fi0zOwwhGT7XZ9Rsf5e4CKGn+kkfullrWpPc4bPQl
	IsIme+7CQL5ZVbQVChzJMixULRaF5KzTJaj+k7JQlKolToadcQQsE8eSPt6SMYNE
	WcrxXfdGs9ErxnufjVLVPYNZ1QDpjzKL2hqV1qWUM9D2wB4PKNDqvIKnO3KP70zD
	/HNnEcZi86UiP7OcxK+nMPV6XAk8OvBKIbEhioxKl3vj4XxR8/8APj7j+bQnYJ9F
	tdk43cCDQZPqnDSnq0IKDGYkeoEJIwuHXi+t6GGjurk/h5z+GyakOyFo/PHcAe3Y
	21H3BA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37r95h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 08:21:06 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-24b4aa90c20so52339105ad.2
        for <devicetree@vger.kernel.org>; Mon, 08 Sep 2025 01:21:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757319665; x=1757924465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MzF3Foo3tIflXdtMvnJY/IPP1JEHUdPK3n0iEo31wt0=;
        b=k0icjXS5VZKiAu+ypMHtD8VqT8szfWMxSi7NXOY9JXdOQpHuN+JRCbfwXj5gxJEC/c
         fN+Kr+m/V8tUG46ig5xd6bqHUtDM5uiGUF/sDAWyhM2XOy+NV3oGj2Ithmep4hYwpYDO
         MTp2Wg3gQ61lFcdhTTYoMGO5gUAlkVdatxc+RUIcIO9Buw0kWEOyGHrlrKIIiX8nliSB
         fZE74kjoA2TqmPhlKP0ThtwrDx080mJcfrabdzyeeTFxTgXC7X8PC38IOvGwryC0yNbG
         4769sq3GPTa6Qevqv84dIDahMeT0iNFygpvL+KuHzWMqiEjtPMPVoBy5yAwOlGE6sfsF
         Tkig==
X-Forwarded-Encrypted: i=1; AJvYcCW1fXnVAYGOsy5oSyI3/yy6xzdtR2dVpbI+8t/xo5kbHtyvkKstqbKm0SPGfwnr1xDGtEMXIjFnPPIw@vger.kernel.org
X-Gm-Message-State: AOJu0YzZCQZIEumh2fWsd0EB8YLFAihab5D484t/n/EN5y/hCbcWtDwN
	a5PKHlHfy2muncf9hbfQ9ftFkL4fieU+VsSIQDtvgvcGA9xpoDZhggrBeEWaEoNDrRz/oh8N4F9
	PbYJHH+zlusTb0clOIyNeKfowhh609xSjnW6VdI0tozuuw2hhTbhyXu4TaQx7iwL+
X-Gm-Gg: ASbGncvG7gnARLKOvyBAQpdv6MlLdZkXzJaUWdk4vf6M7qpQ8BQ9fD7KkI12+pBbjPU
	8+Zl6V/QjAi64FIXUsc7OWomGj9iK8FiqNuZlMHnkCxuiEbctl3SxRN2D5f5qsC3xBzjAKqwVwm
	Qvn9+DRgD7OqRHM9maXzpidoDlfWFCOC48Rvx/yzdo5U1bxYErhUHrjOnYyO9mry77CHg3cOzA2
	hY/b/oc7U6V4W3Yzudv3e/E1vD1TYdSA5y6KyunLJ3V+/9hNpW9uTdl3NDmLm9E6nNS5fw4MBw+
	Bb+hAdAK+Yze+MFcu4Iikj3tQtmosoF53CZpMeZ3FvvDZM+ntBk1ZnJGrmO8SAuEFxVg
X-Received: by 2002:a17:902:e788:b0:249:1f6b:3268 with SMTP id d9443c01a7336-2516f520906mr101902045ad.18.1757319665514;
        Mon, 08 Sep 2025 01:21:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtEcObXeeS6q2IcvPfNPJBnf2iAPFVQ1ZO9r/1M/JfZ2eGQGxjoJQj/+y2pFDgvex94Mgosg==
X-Received: by 2002:a17:902:e788:b0:249:1f6b:3268 with SMTP id d9443c01a7336-2516f520906mr101901715ad.18.1757319664998;
        Mon, 08 Sep 2025 01:21:04 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24ccfc7f988sm104852845ad.144.2025.09.08.01.21.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Sep 2025 01:21:04 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Mon, 08 Sep 2025 13:50:01 +0530
Subject: [PATCH v4 11/14] arm64: dts: qcom: lemans-evk: Enable SDHCI for SD
 Card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-lemans-evk-bu-v4-11-5c319c696a7d@oss.qualcomm.com>
References: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
In-Reply-To: <20250908-lemans-evk-bu-v4-0-5c319c696a7d@oss.qualcomm.com>
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
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757319602; l=2103;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=MDJChDydQoup+AQ4stXZYHqRNLvdQ06UIqjeVzxFUuc=;
 b=wR7ahREHx0KuEoAte6tk5BSWjlaOXiHNgFfN4HxxkzQLWC8yORbt6Mhc908CDcr+wTYG0tDBY
 Tyb+ex5UVqTCq4C2nujd/yIBpqTGi0oLGZIpiaBFQtZBevShEWwLxaU
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-ORIG-GUID: 6dhVJRkKPg0FreBHqYfnEIh4jt-oA9iD
X-Proofpoint-GUID: 6dhVJRkKPg0FreBHqYfnEIh4jt-oA9iD
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68be91f2 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=yrLL4yFEfc0NwOpttVsA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX5bzcwGIHgAeV
 yramq5SdRrTRjOSSjuYPyySFAKsMlIzNp5xEghugYkhL1QxxS0cZ7PoJGGomHgubdsz4e/VL0NT
 cZ0RTDpBxfsjnnEC45JiIN4FicXUWRcxThMVpHy7q2pe9YoFMGo40SmJXmO7nf5ZhBVD6nVnOKD
 Oq1TzQdPBN/EkM6yNM8jyk5hX/GOY80RrEm+WjLZFb4OTeV/WPJKmZ4Lj37bV1CHjf4DQ4lmIC6
 GKzP9ceAEn8mpGlBVchA5FS4LxDnaonRLhbY6p2rcZ//QLqCUXelGii5pYO0Sg4pbMfGcgWo52c
 JoGUZqxgsOH4INCylYzRWRYrilI2nxBr1WKd7hxqdsqsm1GgcueCfeHCqU7gYqdhuS/43J5/qQy
 ElZ8Wj9/
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_02,2025-09-08_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

From: Monish Chunara <quic_mchunara@quicinc.com>

Enable the SD Host Controller Interface (SDHCI) on the lemans EVK board
to support SD card for storage. Also add the corresponding regulators.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 45 +++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 6ec6f9ed1ec9..60e365a13da3 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -16,6 +16,7 @@ / {
 	compatible = "qcom,lemans-evk", "qcom,qcs9100", "qcom,sa8775p";
 
 	aliases {
+		mmc1 = &sdhc;
 		serial0 = &uart10;
 	};
 
@@ -46,6 +47,28 @@ edp1_connector_in: endpoint {
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
@@ -461,6 +484,22 @@ &remoteproc_gpdsp1 {
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
@@ -511,6 +550,12 @@ wake-pins {
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


