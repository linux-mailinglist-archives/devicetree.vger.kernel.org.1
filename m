Return-Path: <devicetree+bounces-212127-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ED5B41D85
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:52:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4DD571BA6A01
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:51:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6C3301006;
	Wed,  3 Sep 2025 11:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Di6ovHwc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCA92FC894
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756900103; cv=none; b=sZjf8k0IqeoHdHIWcowc9IRash/XTm1FEUoEvy3AaXAlL/DralWe303O1UcPGL104523WEt0qUqlkqs00R0qWFOZPlXAexKODH88froA7LBoNLFoLzh3u4ITXN8Vd11x8FV6oQTWTewNau/Qsg/hHQO8QMq0dsRXhjkwANF2YeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756900103; c=relaxed/simple;
	bh=vgKvMK6y/VPKyttLGSjpHqgq/bQ7Y/dk0CJOwFyaiAc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uCitDzwcNK8D3YLK1eNS9QwHPO2JUyvfpROTv3eveNEc3/CRzZfUDrT0ag6oHlvV3OKVXy5CDfZ/lZTdFr1jfBe7PilfzMoVECMsQMig2aeLIkULN9KiRbLRr+O/M5R2MeABkS7S2wed6KW5fVwTCpCQt1nk3+8n6PYHXS/d1Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Di6ovHwc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BEva7022939
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:48:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mjZ3r1HUnM84qXtwvypQUlVDZydeq+NJjZUSJGbaimY=; b=Di6ovHwco6mWZuEN
	LZnaHk93AeeNNy227jX6WcjYLsCOyKRnXIZNIzi7eXNGVSIPkJSSQ3tAIkVXq16K
	w7AoikW9qQOCXH/cIfZm1TbaULKV5lrMzCy2CajBVwzrGqYBhE5FFCg/cHB7sS3k
	98zzsuVLcrvJ1wvDKEe7T18UIZsmgE4wVJ5bOGNXAd0a6sfET50G3mhCLeARVYmR
	vaEICHcsExrZR4bpvw2wMTKQsG9tpZnndI04PHFp5olYpZDCrn6hmU+xgqqOdRXh
	X+GAQsuuN+PI5zkrg4oLPf1FTmbYM8n7LRuh51M/fY2qJ1e1LaYLZpUyOWIW/vmZ
	MIfbDg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ekmmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:48:21 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7722ef6c864so4477946b3a.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:48:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756900100; x=1757504900;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mjZ3r1HUnM84qXtwvypQUlVDZydeq+NJjZUSJGbaimY=;
        b=kyVYAz9XvDWJQQgXmrS0QBzEKKhzMad6VbSI4KAx1bBMdtp7S1wKLLk+JXAQw5yRoJ
         FW1ND9pkLIgOqDMwvo1auE6JciFNvK9WxXQib2Vs0GiraIX8m6aAY3n0NP7LMz04Ihd4
         ax5db1YgK0kjZLQsWL6PS55vZCFu3CepqfNN0iJd0vfaCf3k7OvdO4cyjoBm9/JetsOQ
         GN2W17shJjuow/pSp2vv+OKgoaaV0vpy+EYRheh/nsJoUVrJHLDcAAmVWESGVtT2aOeL
         lDoFQbGbBgG/BBMkIJThDdVSXFcS98/SqZKdsxbUBLjGAWJQzzR5yLZT8N4uRlDkTBbT
         AREw==
X-Forwarded-Encrypted: i=1; AJvYcCVtcrEvtsp/EP9mzpb+dODflnQqYGColIlR0DwQ/YVugqqsVldOgBTXJ7YOHS2T8hmeGiRg1m5w6Ob8@vger.kernel.org
X-Gm-Message-State: AOJu0YxHL3L7qnwB5x2XMQs7yh9MhA4om69xK5gFiNBVa/WCJBlUvIg1
	HYxNygb2y5CS5iYH0KWalbHAmG1ItF5VGQRgFTKBdsWyOXCv9tr7NnaU9qwoiWWZAHV/LWo1w3f
	3g504hqNmk5GSj8Xe8GCepYIUY7nOFIIx341OYrcyMPHbwQ8HV7rnbqSbTfvfruhQ
X-Gm-Gg: ASbGncsjru4INEUg/1zNB6bOWasymqNSXey3JWcTT4MM7fV7T1wy8UTZOosaSsLkxcR
	9A34gcbJW9vGX0vrVRWaiCccaszMTtU0bRMwAn3Lm5fDolK6pb+KaqcU6w3DR1NVBV8gPPIafiZ
	3crqEZ4+ApFo29T120dtLv7q9ukd4ijmOrgO/cCBbwuwuCpgH+iCaSztfVUdhSh3r5Saspjs+Vs
	JJAoMP3NDSngdg/8UqeF+eBCUtoEf9zvyzGCzMKj2D3/NuGGB5NESckEU9KIuRX1o03kagH02Qw
	pfPBKU1aAR6lndJofDxo9Xi1QNGKkSJd71JK+druhgUySLigvtE5R1AwNrNXkHDc4nVY
X-Received: by 2002:a05:6a20:431a:b0:243:a682:9d1f with SMTP id adf61e73a8af0-243d6dff535mr20746139637.19.1756900100361;
        Wed, 03 Sep 2025 04:48:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKlZFAPXjo11ONNgyjTG4Em+10bWJ4qImiiRsEKou0DfbxCAQ12ZIlEmIHEIKkikQaarj5YA==
X-Received: by 2002:a05:6a20:431a:b0:243:a682:9d1f with SMTP id adf61e73a8af0-243d6dff535mr20746109637.19.1756900099859;
        Wed, 03 Sep 2025 04:48:19 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4f8a0a2851sm6584074a12.37.2025.09.03.04.48.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 04:48:19 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Wed, 03 Sep 2025 17:17:11 +0530
Subject: [PATCH v2 10/13] arm64: dts: qcom: lemans-evk: Enable SDHCI for SD
 Card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-lemans-evk-bu-v2-10-bfa381bf8ba2@oss.qualcomm.com>
References: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
In-Reply-To: <20250903-lemans-evk-bu-v2-0-bfa381bf8ba2@oss.qualcomm.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: kernel@oss.qualcomm.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, netdev@vger.kernel.org,
        Monish Chunara <quic_mchunara@quicinc.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756900050; l=2019;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=e4UGRGci1o4NHHD8fAyrLZlNVC7z+j0/9/IXHZK3Mrw=;
 b=ICtwKqzBUI8DnoAfdFtTbF6z6xI87ochkmdFtCaZRSqZ8SnbpmEpFlk+xVEDBMsw3mOSDvp0p
 oNtX60FlEzkCc1SQZqvnOPWma3bB5PuPmot87BngWv/hwS3Y3ThiO7X
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-GUID: ZzQ14jBbktBO1j3N3lh3lmOUpHHZlkUN
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfXztyVSME0HX99
 rlgvmvc9vH+kAOjNaydtnLdSchaqZy5W4GFfgHAUAFzqzZxKzhjqRslimCBGzmyQntSf9XhGqqs
 A48vpMlK4JYRx4Fe7L2Pkv0R7qBpae7h43kUCy5oT/qbxl4EOrSjbxgpSaqh8SCioiPVKt3VJsW
 zcqY7StXXDRg1p8PH++hHchIs+GKexvYGAZZzkAz8QNJjO0Yw9mTC0g+6pnOiQ8IKTB/6t/p7AW
 prwjbu4jAjuX2wF/7PeIvy5ntzcUMvp8Nvylj3FLpBLKDSQPh18m2pa48h2C0piNl4XRLlZkE9f
 UD4QjAtTdAspYusAAETacX/aCdGdtxmeik3J5Erli4FzJLqQYmjHkr8TnSBmhzFHkqwohNAi/qI
 CI81IhqK
X-Proofpoint-ORIG-GUID: ZzQ14jBbktBO1j3N3lh3lmOUpHHZlkUN
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b82b05 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=JaNxBooIv5ZhbLa6QxEA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

From: Monish Chunara <quic_mchunara@quicinc.com>

Enable the SD Host Controller Interface (SDHCI) on the lemans EVK board
to support SD card for storage. Also add the corresponding regulators.

Signed-off-by: Monish Chunara <quic_mchunara@quicinc.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 43 +++++++++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index b67b909fb97f..c9e7977466b3 100644
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
@@ -461,6 +484,20 @@ &remoteproc_gpdsp1 {
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
+
+	status = "okay";
+};
+
 &sleep_clk {
 	clock-frequency = <32768>;
 };
@@ -511,6 +548,12 @@ wake-pins {
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


