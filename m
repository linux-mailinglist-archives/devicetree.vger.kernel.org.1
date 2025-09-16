Return-Path: <devicetree+bounces-217807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3600EB59441
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:50:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A0961BC7684
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E5C9306D40;
	Tue, 16 Sep 2025 10:47:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DfFCn4Zz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 051B2305E26
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019671; cv=none; b=sbP2g9s3jfXcemVZfEp4mRk1cbLAwyE/8Uwy5AOIU52lNyOhiPh0z6cOoZz7krHXuDQOIrvrKI3bKdNI3x32U22bxNyIthwvKuOxiRknkaUrtiH1xLlVbUARdsiaNd7NJJEDwCYfMep3vzA0V4836Taur68fWZcji9iMPuHw9i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019671; c=relaxed/simple;
	bh=Xh3bCDxRPGdeUMg7ftYORU7Dc0rcHwejwIfGZEV/a1w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=En0C2zMFnriD+ivkNwhJEvAADcltB1FoMXehUm+MlGwz5rrUCP+ArC0bRqn9nmFcmpjuXfIrqMZZq/701kFmDtoH1yel6y/yx5WYeQx84sm3kGVd+Eef4E2hFrJk4a0UfIVscw1rJul4bZhbAT4mLyloNPPF79Yq+p8OSop1cME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DfFCn4Zz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GAUfPB014551
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ODqQ/K/dAfyPRXOmmZNlsOn5jkquIIDh1zp616ZCCw8=; b=DfFCn4ZzI/aPlBSy
	NIUEkWrOQ493AvFLqjo96+4cFQ7Kyoc8fBJr0K2BjMQFPkEq4th7CLFzN3A2jce+
	NaxMwYI0cEBIbBNuvV1SAZT7bTA7/AQtJGoH0hv6rBR589geAwoyvtMKn/cOl1Wy
	SoKFkF41ihmQaWL3RPkUyJYPECmMQSx1PlLS2EjrbyAQ8cpmTEDY4vCwc0J1buxo
	BxWkV2vU4G8CLm9anDGYPExp9Bd0V6W/EfWfBoZM0co4Fs8IPgoVj5wutl+NWI/Q
	DkiVnk3yQQPlBtBXoKxFskt9rS1YJwc+3EyUG2y1SNPZkWpOJyfD4Dlv7wT/FnVZ
	L0Ysbw==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072rjen-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:47:46 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b47630f9aa7so3867042a12.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:47:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019665; x=1758624465;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ODqQ/K/dAfyPRXOmmZNlsOn5jkquIIDh1zp616ZCCw8=;
        b=SmnTijnj6NGb0TJRORtwJN8qsEjnvbq3JBe2GQAIjI5OluadIPJXc2z2K+fzr2o2l1
         1P/w2kSdCGRI+Alc8kGLtN469Z7o561+QL8Zu7DEgwa6Urv3AxnKYuejpY5a6GaN5ttD
         UUz2TqNn2eNEIxrT2BSXb/ZHrvBkICFCSP3GzZcG9vL4AZItd0K5Igv+wNANKp/N4GT4
         wOnRvJRsjIlpn0EPMOCvtk0ihfgUtCHuhPN4y/Gobe14yrdLgJ1igaH4xgPRwkypHOcq
         9M0ySUwSR5PJDdBlizIkVZQCVQMrL0TymM4wzXgar4aNcA063795851V4JAF/XW1MLVd
         NkVA==
X-Forwarded-Encrypted: i=1; AJvYcCVqOCOkQeWYKHHrp8CaEg86o2+ZoZsOTyaO9ybJNFioCYINdf9gwGx2SQKb/BHjxINveTJCn4MVmVM0@vger.kernel.org
X-Gm-Message-State: AOJu0YxQGb6sYAqLYvb5RDo4iW3S5UbpqsIOl1aAY1M2rTUmj/qxMawG
	QaHpu7IwH7yDC4ojjOeBURJKHxJfovNUx2+zHFyBM/m/CYDWhnq7Tv45Vh3SMoUAAMnvhnizjWF
	OPO2WG4NTeWgGkatatP2CZk2qzDc8zOW55nPTYaR9mjOIj5ke2KT5BeGwCGLiu4Aj
X-Gm-Gg: ASbGncuxOGQOQAZSUouuzKqWfYJ0eECgkUTUlLvha0OhyjXWsXdkMmWCW46hLg2ozi3
	/kQrg55tZCERF6gqnv6UKuXVuAyR9Su0z/9yIO4zWU8eRMasaQm2eNUksW1zNVdTNaVJK4f/iFp
	QXe753nCiXxUZTA4xrP+vLiFBE8sfTL6o+JhjkxuiLrvjxkzHpMBNEC95ga/j9kVGr+o9jbLzho
	ps0PgLSM6K3DK3kBIqKHHE2iKTBtLeOzj2axodEjIe1xpGL8bEhEJqR3sTMtsUyBy/rRxLKW36K
	KrJaOa9qrQ07DMb8iTLqRtGPENyL201fqDBrRQNC9+rxedm+gBewgFdFjluqfl0taJgZ
X-Received: by 2002:a17:903:3804:b0:25c:ae94:f49e with SMTP id d9443c01a7336-25d268649femr185578975ad.37.1758019665514;
        Tue, 16 Sep 2025 03:47:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEE0fGMtJfLYMIEVM/pgumrWhRmlKjg0nqmbiYh0SPSOapIziq1XpGKk2RRaGMyMzlA8c++xg==
X-Received: by 2002:a17:903:3804:b0:25c:ae94:f49e with SMTP id d9443c01a7336-25d268649femr185578685ad.37.1758019665030;
        Tue, 16 Sep 2025 03:47:45 -0700 (PDT)
Received: from hu-wasimn-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-267b2246d32sm33122355ad.143.2025.09.16.03.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:47:44 -0700 (PDT)
From: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 16:16:56 +0530
Subject: [PATCH v5 08/10] arm64: dts: qcom: lemans-evk: Enable first USB
 controller in device mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250916-lemans-evk-bu-v5-8-53d7d206669d@oss.qualcomm.com>
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
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-e44bb
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758019616; l=2173;
 i=wasim.nazir@oss.qualcomm.com; s=20250807; h=from:subject:message-id;
 bh=DQii6EbbvglNpSD+FTgSUwcIcTsfuxbUAV8xpnYrhRE=;
 b=YcdxLv8Jxf5tw1xDuKv+Gv+kgAh9vtH5chpvn8bb5L5rb/KxA1L0De5TH9AERkBzj3ER0pVKu
 MtudbAK1kIpA7BAiqaB3wZJfpHazpoJ8aFKkBfV6cENd7RUNiEeRUA6
X-Developer-Key: i=wasim.nazir@oss.qualcomm.com; a=ed25519;
 pk=4ymqwKogZUOQnbcvSUHyO19kcEVTLEk3Qc4u795hiZM=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX5jZQBdykf3FX
 KaI1qfzLJXu9gzuIYpjeYvvNv9EcMgG+6hd4TVgwuHm4Z4fkurghQCnkCEjV7fAyXxPssvaOuMy
 RckW9KauyzjLHRmnQHdxdvqu0OI61El9mKOE5BHRYeG8frOxldVPiC8D7hmTMuSmlfr1o+I56U/
 Cd2V3DHTNyxIit4RG1glwYKFBAHuvyy/jE7/8bdtIjHfEviB0ZNtJA2f6h6KIWelLulzaqnv5DB
 NwO79eeInq1pYYjkwWH+iI4KC9UkTk7OsDnHSRHSD/mta08qsyCjitXfLiICiomaE8Zq9t3kK7x
 V9H4ckzAkTnSCKYNp8SeQ9K8zBsNk4WR5wrunGoIOpMK26L18q4nd4W7tNXyzaxW1SuC6z2pM/j
 9TdzdrSQ
X-Proofpoint-GUID: AdopBv2mVP7FCeMR-VvO_7r_Wkbvqd4l
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c94052 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Nk2SLWWF8xhsZ517u1EA:9
 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: AdopBv2mVP7FCeMR-VvO_7r_Wkbvqd4l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>

Enable the first USB controller in device mode on the Lemans EVK
board and configure the associated LDO regulators to power
the PHYs accordingly.

The USB port is a Type-C port controlled by HD3SS3320 port controller.
The role switch notifications would need to be routed to glue driver by
adding an appropriate usb-c-connector node in DT. However in the design,
the vbus supply that is to be provided to connected peripherals when
port is configured as an DFP, is controlled by a GPIO.

There is also one ID line going from Port controller chip to GPIO-50 of
the SoC. As per the datasheet of HD3SS3320:

"Upon detecting a UFP device, HD3SS3220 will keep ID pin high if VBUS is
not at VSafe0V. Once VBUS is at VSafe0V, the HD3SS3220 will assert ID
pin low. This is done to enforce Type-C requirement that VBUS must be
at VSafe0V before re-enabling VBUS."

The current HD3SS3220 driver doesn't have this functionality present. So,
putting the first USB controller in device mode for now. Once the vbus
control based on ID pin is implemented in hd3ss3220.c, the
usb-c-connector will be implemented and dr mode would be made OTG.

Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index 5e720074d48f..3a0376f399e0 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -590,6 +590,29 @@ &ufs_mem_phy {
 	status = "okay";
 };
 
+&usb_0 {
+	status = "okay";
+};
+
+&usb_0_dwc3 {
+	dr_mode = "peripheral";
+};
+
+&usb_0_hsphy {
+	vdda-pll-supply = <&vreg_l7a>;
+	vdda18-supply = <&vreg_l6c>;
+	vdda33-supply = <&vreg_l9a>;
+
+	status = "okay";
+};
+
+&usb_0_qmpphy {
+	vdda-phy-supply = <&vreg_l1c>;
+	vdda-pll-supply = <&vreg_l7a>;
+
+	status = "okay";
+};
+
 &xo_board_clk {
 	clock-frequency = <38400000>;
 };

-- 
2.51.0


