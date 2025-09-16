Return-Path: <devicetree+bounces-217808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE746B59447
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05598188D28B
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:50:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B38A13074AE;
	Tue, 16 Sep 2025 10:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DtnSm9pv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08A32D0267
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019674; cv=none; b=vDTUzz9dI/SZAeE/x610MRX+aRCTUyWYffgSvUd4XIabwLQASLbP7lYZpTQrjWIK2y+Ts7YAT2lDq7/LxAtbRMSS5WSfwcTgxK7ux1KfJ8/A1/hABqWsLcmJk89ZMIQn4YntMtutcEWscilKhP40BOp0JK0+rWLg+K9ZdWSZdSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019674; c=relaxed/simple;
	bh=H8QwqcbzikZ9doV2z6v5RmxCk7YJMt4fL77bDu5hjC4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bOa8LK/zEJQ4ZnMbWaUMeUWAIgbI968OxFJrhBLHKXdOW6IwXMpmIOPbvukWrdaaEeBOnF/cFfRhJGdFtCyRglQ522Xh/TQzp7eP154mE2tS39xS+7ILdHcnPHEzcYRf6QVgemrHSIhHDfebC3eqDM5JKPrcUES17XgIlF9lQFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DtnSm9pv; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAe2si018499
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kbefT7A0C0BpxFO4WkUOl6TDFSMTNVjZvsErL/F9ONQ=; b=DtnSm9pvgWiQaAgX
	3K70hc1rDLKo1yBqk55BKr+e7FPZOkbS3mu10faweF5kiRtBkIQaL/5v0Xr/vYvY
	MpYNKnvzcCH6eeyHAzAfRrQjYtP9xk1SWt8huUOtzfWxsdMLxwcXH4v4QItCsn6s
	6APTKSjBlw8fdG8j2SeyTPj8T/yEOzi2QQYxEpjTtPO41K8PtLH5gZUPDuTwasgJ
	uQ/nPudEl+jdcc/YAZzX7IMeWzOFwJuuAn5rmnjqUoB87QOwOZON8k77jclrimw2
	uBK/o5VqfbKexHnMj4FYy1NequU8Nonunk841yre69sJfLC2bTOiiUdIiJYeRkmQ
	qjiaGA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 496da9cxn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:51 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2659a7488a2so43535085ad.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019670; x=1758624470;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kbefT7A0C0BpxFO4WkUOl6TDFSMTNVjZvsErL/F9ONQ=;
        b=g5dh21pbRB7eknaawNt/Msi+TKv263AEpS7RZ/ZJ6vusPA1a1H8Nq1yDofOT1clW8S
         7rEYz9W23QFne9fHfRyqbSMftRk+nv7sR82URcE+RL59+O1PPFjq8VK3IEnVdcFWPEAm
         E1YTuOp33wPIwKWNyZ+xDOeWos3An4v15wGeF+puv0+6klZDM7ewpnCknfyrd2RuAF5P
         k6IiAtSONZ02roJXZQ0YEt+vU/hvF0mxFPc3+TCoqGDBhrA5eUaEBk2aFb+0C9w0KIaH
         FLdXMRmxJqbQy5fqbHRfECe5gIrX/z+1r/AMoP/1AinTe6Pnf4QQarilDsEH7f8Hj+tc
         Gwtg==
X-Forwarded-Encrypted: i=1; AJvYcCXtXKE+C9fwd7NR5UyhoupwOVu/YZW8kV3AxMwBjNqW7CVNdQVIlJni/t8E6imhu1a0sAjR9oAV9BUh@vger.kernel.org
X-Gm-Message-State: AOJu0YxbAJOR2tFeN/a5R51ZaIS+JulHuvQ850H19mHGi88p4iNcXPXA
	KRSJ4Xh7ophRwMN9Tdd0ZmP5+T8cq7jZ1/bc4j1azBpddlgTRzmhXQ0MdwcVjkasZeL2nuaAlQb
	+u00resdEDGqwJ96EG3QGGpTO0Ktx64cwgIQ6jxKdkkujuVqjiqUV6I0LHMp0I4aR
X-Gm-Gg: ASbGncvKGeo0G8yoIM3X9Rr4blU8OWwZd9aZnhuiC3mgeosd3yvRfRQS3PhvftQKrrC
	PGdq2y5G5fBlI+PgyKw+SGi8F+tG3IJbXmEO6RQJZNlu8uEkVX5IcS89+4hGiWBJMClZK3Ipf7Z
	C0chU8uTyWx7i4023Qf9oTuCWjdV5I5w+g1tp7aETcqJNREWhaSir8EJsIn/Nw9NMBysNOhhCUH
	/gsr5TRvumDrDSGY5voLJVWDUI/orf2K6x2es8zGkbhHITN//KQUSRHqmMqEUyk58hrymOFjtQK
	1BNOEN6ZmfRrumtXUrx07pTcBmlZ7VZT+rvP/Z3dQ2hihxMcUp3/fVyectazL53b+XiE
X-Received: by 2002:a17:902:ccca:b0:25d:f26d:3b9e with SMTP id d9443c01a7336-25df26d3c13mr191532405ad.11.1758019670600;
        Tue, 16 Sep 2025 03:47:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIwlPFkFrF0A23fYEzT2xF+R+svZM56yfsGO8ZANDLvL6HFROJPYSPUG1fzKuQzM3uWNZfCg==
X-Received: by 2002:a17:902:ccca:b0:25d:f26d:3b9e with SMTP id d9443c01a7336-25df26d3c13mr191531955ad.11.1758019670152;
        Tue, 16 Sep 2025 03:47:50 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:49 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:57 +0530
Subject: [PATCH v5 09/10] arm64: dts: qcom: lemans-evk: Enable SDHCI for SD
 Card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-9-53d7d206669d@oss.qualcomm.com>
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
        linux-i2c@vger.kernel.org, Monish Chunara <quic_mchunara@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=2084;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=4ciQ96Zx1ayEnFBiXoRdRMoUhFOeRBAJsPy/zaYTqMk=;
 b=1lbihZixVOcWdOgKnh3BrHdupvH3C5+p1uNconNaGX3lNvSOxT2I2HO30GwrMv6+GXVUWNboO
 5iHoTSAox+DCQu4J7JDgdiBbMDIJmQQOU82d1T/ayjvhjHurE3gAiVT
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Authority-Analysis: v=2.4 cv=M+5NKzws c=1 sm=1 tr=0 ts=68c94057 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=ZiJiVGjlRZjjTBZS6bkA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: rhr_Fi9sLG1Tujhob33T8G6kzfAa8YD4
X-Proofpoint-ORIG-GUID: rhr_Fi9sLG1Tujhob33T8G6kzfAa8YD4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE1MDA1NiBTYWx0ZWRfXx1zwtn0FcdLq
 p17xSFuDFn0BUx95SXN86kQNd5YxaJSl8H+fCDx1MfSux7RdvB0jUhQDry/zOUGOzRbH2MyZyBv
 QGpuJuGJG8eAGadWa/BhHhJLXrsxOenRK1KFb0o2dch+vnKVY5L0yqPKyVt4nCkzLbp+5EidRey
 OLTxyEa32rDI9dB/JcDAuL9o9FI4QJ/1PhvC/KOQBaZdw3qGjojcvZld9YhQgrhkphQPqqjCjB9
 v5YCo9q8wg9E3liVVjWeCTMWw+ie7lghYrMze1E2nJG9i1FySp/7Y1+RuUHi7H5xm8WMf0gzG+/
 V/6Vupgkmw8tqJHnOmRXdz3roSRCQ7jFby2sljmKUHXLJtrzHe8YUPK0tYOb2cxvuLvhVpHNyk1
 wZa/mRqf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509150056

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


