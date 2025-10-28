Return-Path: <devicetree+bounces-231948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C21DC133B2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 08:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 478CD4E8106
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 07:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6484286D5C;
	Tue, 28 Oct 2025 07:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mzP4qywS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DE6246327
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 07:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761635079; cv=none; b=mq5HFtEOrgrY4V5IhacaHU0/vQYzjrxXbE729E8jyPHILHXdjpoZNcPbpiFQrkJu9dClFoYWDHxzvlhyq4CN6B0Oa7Cx2tuXwKYlCLduBYeR9wDmPrDx5sledtwD2GfK3LdyE+gGcoLqfO3KzkkPK8Mtr6bnpfY9g9E08iaUz04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761635079; c=relaxed/simple;
	bh=AYT3RVzsICMpupLHCjCVqyv7YtWQ3D8cjixobbkFe+4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=NJCh8decx/fkPUP9RlyxSEK/8GuH77PCrhs2jp/T19dN/TEMhPNMH6YjA0R2rzSAw3MdYWSAGpEzNrZ8YzRQ+dRRodBvVwOjWXyBwDGua9SYeWQPS29F6DnFqL7j6nvFyINWkXQDEdZE+Be/bIUAmIblW4ugrGGbQoPhDfBTcTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mzP4qywS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S0Zn4X2881906
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 07:04:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=FmwXGY0VP8BuzjMKMv6qvB
	O3JftdefFSQp4wgibsrNI=; b=mzP4qywSj/KO186n/qZHRJquB3qVzJy/vWtzJW
	0HFpfmdBzNUKp9ulGxRmv8sfgxV+F+cK/AeyXB4y0tY15Fp/QPVfNJJTyPFEfmSy
	aMAlh8XH50Cad7QN4xyjvdb1aJOkkGTAKB32cVEuvX5fuwgXm4N1GDS7zeHSlKYu
	45mpIV3UCtr6TKm1dCOdZIqKjxTOR6Q3niVk7fubziZ6Y6kNa4g29U7UThnc6mzE
	H2/GpTN4eTnedDtHOz0KgCJnsfAHXPxu5XxOlBiGYIZHbsqVpUb0qafqk3rIctyR
	N8k4+xXRxIL3O/OcDbY19SszC+47rbmw8tj/PLrurehq1Mvg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a29uhasah-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 07:04:37 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77f610f7325so4229264b3a.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 00:04:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761635076; x=1762239876;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FmwXGY0VP8BuzjMKMv6qvBO3JftdefFSQp4wgibsrNI=;
        b=kEi7I1HsadwAFzqV1j+mKECn6G9qck9EtfS9yIRpZc9bbkpARqBPthrTsu3WzeYlhu
         Q6/0kcOnhhPq71e84/TtZlZDFvx8FzRLa7zRhDlzWOU/sfzKXeRb6BqLev3SqzKasT0L
         6K6OKrl2rio7Up1LX4PvWKrAsrC4TNZXAK/tTHlE7MnDJATKcR3WNhyZ40GJCwOXR3yi
         8uTCYbEkfE+SF0X5nBZn+fFkfcFicIHSf1FbOp9iMqbhXscG/Lyg598g8Pm+ex8Q+lqz
         nwb9Tk3+sD2VRZZCROGTf0AeufwNz7NcjHLWJOyfkktOL2MTmsqxXt/+DRPbAruU9v8x
         7c3Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmI54yGVqGPocyzFwqgDkKV+K6uIYKLWPNY1lswQRnpa8zmsgo/0Sh+/pFjlhO7tbWkJMgVpjArmLj@vger.kernel.org
X-Gm-Message-State: AOJu0YzKPkM0Pq2BIzdralaL4wD2cP9iihedLza5hW4ROZE9JeeBmx81
	JiYPVHD/6MkyoalfMdEX6bpC2lUl2cK9qkZe05Ej1L2U8mSpzilJGA0hZ+vCcJFg8UPDjHbaRko
	GXECXNbSxLHrjFtvikTo9T9c1m7K7Sk/z2wlG+fHSgSs8/pTiNz5s/6MYnoLPeKYtXKDfrQMUaZ
	M=
X-Gm-Gg: ASbGnctYa8AvmU9ctTExuIE/jqlooHV20Dfrk3Z+vgTikJd4p2PgXq2cjJB26yIV3kz
	ZoIaIbA3AhHhtA+Ntt97LP+l/jcpxC5SzjyQ1Acb5cVOtTredZLYN/n72PzQaC1xpT3Nlqy+cyU
	k1t9oRO9ZB9RG/fM9jhyrBRnHHyfA+miX7xgMVYv7610nmUnQ7ScpD0EVtnSrlN8W1XfVOrOt++
	J9SoEbM1iw7NUzqq97CAXPrCzYk2JQjC8YNWFII/M8d03J4FTG1Zkm76fiuNODPXg1yER6mNwWr
	5k7uLZt8J9R/1bp6M0v37Gn1Guqf2iE8doKGsTRMqPAXULbeK9KPph8LHjSDsgNxfoUM3vZJhf+
	5rokYsSckgaUpQUtfAImTUJtwKkEoQHoR1ig5D3YgZoWH47+09RBt5K716Bl2LuWKiUNaHTY=
X-Received: by 2002:a05:6a00:2b44:b0:7a2:6caa:38b6 with SMTP id d2e1a72fcca58-7a441c5feeemr2192873b3a.29.1761635076536;
        Tue, 28 Oct 2025 00:04:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFv9hWQskoOsPqVsxZXg35dKJmU8ygeh5oH20cYyBIOZftSEP3su6q91llCCVtocmFxd0LfKg==
X-Received: by 2002:a05:6a00:2b44:b0:7a2:6caa:38b6 with SMTP id d2e1a72fcca58-7a441c5feeemr2192845b3a.29.1761635076082;
        Tue, 28 Oct 2025 00:04:36 -0700 (PDT)
Received: from yongmou2.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a414065418sm10662426b3a.41.2025.10.28.00.04.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 00:04:35 -0700 (PDT)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 15:04:26 +0800
Subject: [PATCH] arm64: dts: qcom: Add backlight support for eDP panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAPlqAGkC/yXM4QqDIBSG4VsJf0+wU6Z1KyPCjseSrdrUxSC69
 8n6+XzwvQeLFDxF1hUHC7T76Lc1o7wVDGezTsS9zWYgQJYCNJ/NspnB7mkYDT6efpoTr1QlQY8
 KSRHLz1cg57//6r2/HOj9yfF0jWw0kThuy+JTVzhlodKaiBDqtmkc1laiq8Aq0Tghy9pBa1Cy/
 jx/iCzMobEAAAA=
X-Change-ID: 20251028-hamoa_dvt_backlight-373528b7ce7e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761635073; l=2798;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=AYT3RVzsICMpupLHCjCVqyv7YtWQ3D8cjixobbkFe+4=;
 b=MeacmXm4s2Vc6Tv/AqoCu1wPSkQUq+YAckqk0Y8QOTdRpiSa6cCzG6uqyC8z0iK68h42Q2fhb
 s7tosjseM7GDR+jFL0bhE+J9Gp2Qy9FqgJB2h82xNNe/QikJ4T0lN32
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Proofpoint-ORIG-GUID: IhRkPWmxF2K7TLsmRXL8liLExBEfSe4A
X-Proofpoint-GUID: IhRkPWmxF2K7TLsmRXL8liLExBEfSe4A
X-Authority-Analysis: v=2.4 cv=QuFTHFyd c=1 sm=1 tr=0 ts=69006b05 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=I4knr0C1cHqesIZZmIQA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA1OSBTYWx0ZWRfX4mSf9LMJq20l
 /CK0aA6W7CrodlyWK95B0UcUIQsGWABYLh69uh2LKrOlwruKYw2QTE3p406ly77YaCq5nUBauz7
 a+ABtVOfzTAc7NzfkenLcVbHNh2efjfWb9HsVpkCbJpbJNLwXjkpjG1rtG+Qa2vjqVePRcTpdBr
 YW2r5xRXj8BteGCygwPtEEJbrODQLz17boIjxlR1KTER3NDcmdMqfZ/0Jb1tNCAeEa42PPyuxZG
 ENO1T7lPUVyWVDjCvsUFYobnGyVszB6pbMOa6zaSeCEJJO0LeZGyvzZ4dgOY6sxHFTiAjhhz4rq
 +6dTKnHMMIwSEwE1AwLklfWv+LbH5rgFM3fugTqlJMrehgtUR4JYEqJTouzBRbxK9M43/3zrs+A
 p+JgE8vi49NMJZ+DByiOPq/bczKJqQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280059

Previously, the eDP panel backlight was enabled via UEFI. Added backlight
control node in kernel DTS due to some meta may not enable the backlight.

Aligned with other x1e80100-based platforms: the PWM signal is controlled
by PMK8550, and the backlight enable signal is handled by PMC8380.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..fda1b3a3c7673be74832c27849231cba4bc1f25f 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -17,6 +17,16 @@ aliases {
 		serial1 = &uart14;
 	};
 
+	backlight: backlight {
+		compatible = "pwm-backlight";
+		pwms = <&pmk8550_pwm 0 5000000>;
+		enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
+		power-supply = <&vreg_edp_bl>;
+
+		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
+		pinctrl-names = "default";
+	};
+
 	wcd938x: audio-codec {
 		compatible = "qcom,wcd9385-codec";
 
@@ -183,6 +193,22 @@ vreg_edp_3p3: regulator-edp-3p3 {
 		regulator-boot-on;
 	};
 
+	vreg_edp_bl: regulator-edp-bl {
+		compatible = "regulator-fixed";
+
+		regulator-name = "VBL9";
+		regulator-min-microvolt = <3600000>;
+		regulator-max-microvolt = <3600000>;
+
+		gpio = <&pmc8380_3_gpios 10 GPIO_ACTIVE_HIGH>;
+		enable-active-high;
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&edp_bl_reg_en>;
+
+		regulator-boot-on;
+	};
+
 	vreg_nvme: regulator-nvme {
 		compatible = "regulator-fixed";
 
@@ -819,6 +845,8 @@ &mdss_dp3 {
 	aux-bus {
 		panel {
 			compatible = "edp-panel";
+
+			backlight = <&backlight>;
 			power-supply = <&vreg_edp_3p3>;
 
 			port {
@@ -879,6 +907,22 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
 	};
 };
 
+&pmc8380_3_gpios {
+	edp_bl_en: edp-bl-en-state {
+		pins = "gpio4";
+		function = "normal";
+		power-source = <1>;
+		input-disable;
+		output-enable;
+	};
+
+	edp_bl_reg_en: edp-bl-reg-en-state {
+		pins = "gpio10";
+		function = "normal";
+	};
+
+};
+
 &pmc8380_5_gpios {
 	usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
 		pins = "gpio8";
@@ -890,6 +934,17 @@ usb0_pwr_1p15_reg_en: usb0-pwr-1p15-reg-en-state {
 	};
 };
 
+&pmk8550_gpios {
+	edp_bl_pwm: edp-bl-pwm-state {
+		pins = "gpio5";
+		function = "func3";
+	};
+};
+
+&pmk8550_pwm {
+	status = "okay";
+};
+
 &smb2360_0 {
 	status = "okay";
 };

---
base-commit: f7d2388eeec24966fc4d5cf32d706f0514f29ac5
change-id: 20251028-hamoa_dvt_backlight-373528b7ce7e

Best regards,
-- 
Yongxing Mou <yongxing.mou@oss.qualcomm.com>


