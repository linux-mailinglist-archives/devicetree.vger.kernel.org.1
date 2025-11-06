Return-Path: <devicetree+bounces-235491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 21019C395D3
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 08:16:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6313F3BE4EA
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 07:14:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 062972DE6E5;
	Thu,  6 Nov 2025 07:13:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i/RXZj1D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KLnV5JWy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 455782DCF71
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 07:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762413204; cv=none; b=F6oJ+d72S5H7VQJfsmN/csAmBTNGmn6vb97WMmZl2pzCbGJj9ptkh2n0qy/ahVsaY2RQsigw/QPdp2LGT1I759YocpeyPdc6146GeKt6cL4dFtFZcrPCi4lRhVzDzsysTCW8gCRxwzi3q+s1hN30l7XLdHU0AaqvbdB9EKROyXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762413204; c=relaxed/simple;
	bh=MUGcFi8GfLNzzEBwGZDoyqGOApQoP636XmrpJ5mjW6k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=B3MULwLgpU1ICprs8AwUAvbZURonvmQIE2TW2hImKTDWJr309IjuCY0n+0gO7Ta/eIFt3rWe4nsWszqRr96zc+bvOZTWol3m6/naaE3xd50LhQ61nznvDXqhUFP8vNtchW8yV9yZevanWv3n/LtVKR3WVWpz3BkPkp7dL78L7Cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i/RXZj1D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KLnV5JWy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A60bBZX2389043
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 07:13:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=znZSjjZAL2HfRIU8aaSNx0
	qfDJdY6dUmHrDxE+rc1Cs=; b=i/RXZj1D6AhwiIm/bZPbnaKhmlIr+7ljE4mV24
	PMUcatQUDswwDxQkZN9zl4gz/HeCiP7KNZl9jHHM2TiWw5LaApy9ylF2RlKZa+NV
	kcR1zxUxB7LVQyUw1p6BhuOlisQdHxhVXFvzPrMHhztaI9WKybuxBg76jUVxEohS
	0mxPs4OzsNzvtGYSslQsaLM2aLGH0sNAMb8N7758hafx1Eaz3Vw4HP4U5PzrH+zM
	WZ1KnVzGhGyZySQVbhQ/DC/AgGtvlju10wBDZAkC732lEAB98vkL9E9A9T86UHIp
	MIgrFEcHapjyGGnzUPbqiHzRe0EF0SioCGPbvmQH/KvTEA+A==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8h9ury2d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:13:22 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29085106b99so709005ad.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 23:13:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762413201; x=1763018001; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=znZSjjZAL2HfRIU8aaSNx0qfDJdY6dUmHrDxE+rc1Cs=;
        b=KLnV5JWy8+BYPFMDrUWFG4fYcPPstPoIJnGkFAnegQrmoGvTiszvmnhMfEvwUDG3pb
         gDI2djkAjQ9hOdgOtyjsEDMbz8PSnHjomvQOJggqSi0KxinWweKJS5H4ALaAfzCj48jc
         k3xhRnsRfcFMw9ybNIw7RfGnw7mAMK68dFGqBax2rZLEqOJYs+4tt6Z/YyvhXbPexBdt
         c3reR8FqP291dXTT29cTjvs4RH5FHqRmBHWfTKLYy34qQdRIlUoB2EO7ypa6l4oOiwH4
         zxNfghbZOFkxb/VTmFCX3hVodNN7/MCOCicO45NAYJD+V3qESpv+gjX3kfhzj0PV+rZy
         42Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762413201; x=1763018001;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=znZSjjZAL2HfRIU8aaSNx0qfDJdY6dUmHrDxE+rc1Cs=;
        b=b2QgbYqQxCjy807Bdc0ZZ+vlyVzWaGSB2rtGmCZpUR3at2aVZhlrKVrfm6NgCYTMNI
         d1JJBMavwME/u6ZxG9YTX/6rgyBGl37f13eXWs5wjKbkrNk2jJ6l2zFK1vo/jffsxb0E
         8GA5E0f+S5q5rFTVsBm7kJ/5rHDzex5Bqn/oxxUz27yokUMT3I8RqHsSavMuVg4syS3Y
         JLUoaW8bKJnC1zgGF2z6a2UmPhMHNRbfSgwhPYrSqI4lNyH8ekopdTQrJJajz/u8vAtE
         dYCCSx00sipmYlIdiGstfnU0SY4PygAJXJWYXbto3qv6wDRkd14JlmJvyKK/J8+Ht1vk
         JlUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZiHPxRvM+X1NsvaQqO743k/tKyG4gsiuhSYeEEldV1BaM2D8Q9gF5tNZLRyU9ulLCHB6K7oNooRHN@vger.kernel.org
X-Gm-Message-State: AOJu0YwFOR0sl7pBXMnQ50XQNUvfRZUOE+7+5EWTBFmF3Ua/Hhi/nLJe
	gvLd4SkNsVBlKIl/Zx0rgb+Jd1bmU5wBw9WJflYBsPb6bb6q+qaXCNE4O8EPk3KQMPHSctO1cXK
	mLe0ygl283IF3zwJO7dokWMF7FBUo6QizV5oMCCtY1yLaAIb5YjGYMHdX+yqjRjf9
X-Gm-Gg: ASbGnctT2cT+4FsKz91JWBeVOFFmWSxylP9edMPN5XoEct8jEQvVVoPwNnR7FQd+GW4
	uWBshBd0sjF80siBeodLI+pGqJwXSghGOhVGT5u4bUif1B9bBMpnskKfoy9YZqCBEPT4cADyStl
	BQSTlT9NMNJgFdI/nlXqy4pj8jnh8tS1RumlqYDLXdzyuvJrl59gvd5/KVT4QXo4Abj6sApoTXc
	D1E+VlZryoIHn2u9bunqVDp6rS9zrInRQPoAjcYjEqSrhN6e2kjHF6/LNNNusqwogYTW9WB0MGz
	fdlv+V4rf6mbTe7f0/3krDRUdHGHg894j6VTrjv3wWl4XtnuilsaV7C77SR2PfoLA1+CnjOo9Mi
	4IXXahMXKexRhCklODWPiRLBW0AM/9k5iI64ayBtCDh58wx4Ff+YqR4aLN/vAGJWA/FLC
X-Received: by 2002:a17:903:1247:b0:290:dc5d:c0d0 with SMTP id d9443c01a7336-2962adb293bmr82518755ad.49.1762413201081;
        Wed, 05 Nov 2025 23:13:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG98/DJlkUkYzeeGj7g55hc9OSw60NHQU02P1tNEonDHlN/Oc0x/3QUMDOzmeriv820I/ALJw==
X-Received: by 2002:a17:903:1247:b0:290:dc5d:c0d0 with SMTP id d9443c01a7336-2962adb293bmr82518375ad.49.1762413200570;
        Wed, 05 Nov 2025 23:13:20 -0800 (PST)
Received: from yongmou2.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29650c5caf1sm17227635ad.34.2025.11.05.23.13.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 23:13:20 -0800 (PST)
From: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Date: Thu, 06 Nov 2025 15:12:06 +0800
Subject: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add backlight support
 for eDP panel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAEVKDGkC/32O0Y7CIBBFf6WZ58UALYX6tP+xMYYOgyVrRQEbj
 em/L9b3fbnJucmcuS/IlAJl2DcvSLSEHOKlgvxqACd7ORELrjJILpXg0rDJztEe3VKOo8Xfczh
 NhbW6VdKMGkkT1MtrIh8em/Xn8OFEt3uVl08Jo83EMM5zKPvGaydbY4gIZTf0vcfOKfStdJr3n
 ivReTlYVPB2TSGXmJ7b4EVssn+3LYIJNmjC0ThuHRffMefd7W7P7/e7GnBY1/UPwFLfVQkBAAA
 =
X-Change-ID: 20251028-hamoa_dvt_backlight-373528b7ce7e
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762413197; l=2985;
 i=yongxing.mou@oss.qualcomm.com; s=20250910; h=from:subject:message-id;
 bh=MUGcFi8GfLNzzEBwGZDoyqGOApQoP636XmrpJ5mjW6k=;
 b=gLgELKm9Dyy46SmXQCftAwpgJOnBc2lYZua+NCpJ1uPluUUQSs8Rh7fMHqda0ItNlQl2bW3P/
 KBtJTcTbUMOBiZi1Jr20l5pGusNbyWAvQvwMJn8DfGg4fmq3vI5/5r+
X-Developer-Key: i=yongxing.mou@oss.qualcomm.com; a=ed25519;
 pk=rAy5J1eP+V7OXqH5FJ7ngMCtUrnHhut30ZTldOj52UM=
X-Authority-Analysis: v=2.4 cv=R5UO2NRX c=1 sm=1 tr=0 ts=690c4a92 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=I4knr0C1cHqesIZZmIQA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: NXEh5qeHdap6HvD_EhasgilnajBANWDI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDA1NyBTYWx0ZWRfX2oPnAPImbr6V
 Bh5Zc0OFketlCzHWu0UlDwGBEUL7F+TnG0Jbu2Y/dIpTgYjNTupg/NDlOGuyH1Dy/uFjLZPfTcV
 6UJKsz6XVLj9xVPw/Bi9rX/GZUMMX97qR/thwEWF0z/K8WKGunBaXjxJ1RAr3WwmDXbpZHFkH74
 zJORoUUH0ieqcH+/pbd+G7Ond5xuU2iIDG81E7K/LdUA+ahP4vn9rFH0sTdjsOV8Lb7jFqWXqyp
 RrM+KALN7JEfAd2DX+ycSoka+RPQU4Vylzlx/TIk/hIsS5qzISdLd8xHtSRpJ9ij7eNBBtjAJSV
 YuzuEuxxtsL6W942+e/IVRbXmluZuSIJJUuy71zenXXWqO4VUYdSBvle+5OHGHil4iNhVEX0U2O
 DbBBAcH4hXzBSt3WCwazWJPSKsKDEg==
X-Proofpoint-GUID: NXEh5qeHdap6HvD_EhasgilnajBANWDI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-06_01,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511060057

Previously, the eDP panel backlight was enabled via UEFI. Added backlight
control node in kernel DTS due to some meta may not enable the backlight.

Aligned with other x1e80100-based platforms: the PWM signal is controlled
by PMK8550, and the backlight enable signal is handled by PMC8380.

Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
---
Changes in v2:
- Add hamoa-iot-evk to the commit subject. [Konrad]
- Correct the property order in the vreg_edp_bl node. [Konrad]
- Link to v1: https://lore.kernel.org/r/20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 36dd6599402b..454aad40de34 100644
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
+		pinctrl-0 = <&edp_bl_reg_en>;
+		pinctrl-names = "default";
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


