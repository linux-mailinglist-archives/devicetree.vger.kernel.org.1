Return-Path: <devicetree+bounces-180360-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3391EAC3591
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 17:55:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E5E23B69BA
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 15:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2F1B1FE45B;
	Sun, 25 May 2025 15:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LUVdNVu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DBF1FDE0E
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748188482; cv=none; b=Q1El+Yvz+l8nNelfe2Zuma8YuXVbwxgfOfbENUBKo+QXB6SW0+h3by0iOa5BmoSczFvN7bFgqQ1KjjE2eSnU1VaqGVWQrF/W08qDZghA9mfWopXAa3LLtAmZGlw6uL9ddnWo8RW+1WzVKs/L44VyKHbI20H04BcGGy/kD0g3Occ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748188482; c=relaxed/simple;
	bh=4OVsYXvm636kbBfiM8ZtZMPfRfHbcvvJiwYtG056HSo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kvMUAl7BFKK8LTSngYOz1zLwsdguJv6wUhvLIKrvKA8W7QFt4WpbOAyf8dwpYBMVijLb1fCrQXFwkzwRtEtZ6HWhEN0G+6uuch5jCrIuG/F86MyKwf7BU8KRK6n5cyA2yyPSCUqXqV90gvdQyWv8+iBb0dVD9Ycz436tVcIrIaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LUVdNVu+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PFYvcG010965
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=dzKtiHuPNOm
	ylJT7507aK6lLExsMbd+U+1mGsRH52yI=; b=LUVdNVu+uWEigsw+yKr7sOWwk0D
	W0Tcnb7IZp3mDbPHjhLpWDQzZPFa6t+a/uigR1jMM1rId6GdcWe1GULYxKhXHPPS
	8Ymn0SrrbCTC1149z3qMqcgaywIX5s0TdNbrQ3KxlyAvk1BTvZIPfgEYrNO/2GN6
	mPD/Rws+GIkYVomMj8JkVNwMbSB1ZIBF8yYFFpdVObFPcPP4myLsTW/JUIprTYU1
	KLkUcz2tAMeCg820GKE/T2gh07V9jLLHYxDhmdKvOOU73l79pBkXFhqzpsWMm7vx
	wUxT2v2sXZURYEwlOOu1yqrAvQcl3HUkz2FcEZWlFFNt7sBHIb64EJq2pxA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u5q1t4wq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 15:54:39 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7377139d8b1so1054178b3a.0
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 08:54:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748188478; x=1748793278;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzKtiHuPNOmylJT7507aK6lLExsMbd+U+1mGsRH52yI=;
        b=b0aBruiX8C/nQquYa0IuLQRb/fC/mzjDsiIUdMemfxP4eK35oJFLC90JJ0L6yeJNWZ
         ZgKY62iIxJXHP5y7xCJBrN6Hv+/2PwxmmTABk2Y6vcWryAhkSO5jM2lMDOqDrn5M+sQY
         Ixgi8nhNVBqDg13vacsxu7M7P7t+8bi5QRBcsHmme0MckmpcVG1gIZgMHN7pD+7Ao+L5
         YhaKLCCdp+/wxNqO23IXwMrra/1swJYhfrlmxm1FLH9M7LVmxpgaASeOd4sGVbhlCSwe
         908wI6Azs14GulF4+rbY6vC+kfix45Gy3X3cLOXoClby4OWJXqFlHQaYe7NVF0ctqL0J
         USBQ==
X-Forwarded-Encrypted: i=1; AJvYcCU5WsVkrMNK1nvSLrNGtS4XcO6dCGE+w0H6yzd3lrBgVnKOMj3QhgbEZ7Et8KXeWBglcDQpFnNq0lzl@vger.kernel.org
X-Gm-Message-State: AOJu0YzaOmhX45LaMXeFcS74+6XBXbq431G7kI+SSQ6ULP4rNI6RBmZd
	WyAJlUVVTRoJqQBglkvj94HRlAJ6JmGMfYB26jysR80Q+73WPgtchoU3QySlAqql4aTuZXwF4Hb
	DfW+ieeD8KTJ86dWss9wUAGFeL/H1RNZtWbE+5ukhfD1vl28NIkHDWnVZyTFIPe48
X-Gm-Gg: ASbGnctse9eGrzJmQ3LWymgfKUGyW7PZOgh9Xo4zHCsBDeVTCFMK0oFiB7f/2nymaLV
	d9W08+wo4RYn2sLkMbkEm4/kbd9E7L4J887tYYO1pfmvBwWsIlQD1QJ/oOk5mrLQPa79HLoAJ6T
	aVO0sWRoJxOSsbqtdMVs+IALgCCyJd2kjvmICc6AYo+vebOm8gb75FRaezcb1wFdp4hLrho5O/g
	Li36QVl+JrgNgrveNHmok9uTo5CknrUoMo+WaY3idVvR4b7C3sK5jVKwbJF+hVEvtbCyNNd0NkB
	hNqdShazzHQIH7JR5OquiLKqd6N6Wl3YccXqo/uIz/gyypWb
X-Received: by 2002:a05:6a20:2d29:b0:1fe:5921:44f2 with SMTP id adf61e73a8af0-2188c299622mr7316872637.20.1748188478502;
        Sun, 25 May 2025 08:54:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFbB1JBHwonHEw+3UCejVEIzTnXDTtiBR04Gpp+fm7aF1mb/Tj2DYxKtm9QrJvSgbPFF7PUA==
X-Received: by 2002:a05:6a20:2d29:b0:1fe:5921:44f2 with SMTP id adf61e73a8af0-2188c299622mr7316856637.20.1748188478066;
        Sun, 25 May 2025 08:54:38 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-742a96de11csm15634488b3a.31.2025.05.25.08.54.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 May 2025 08:54:37 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
Subject: [PATCH v1 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
Date: Sun, 25 May 2025 21:23:56 +0530
Message-Id: <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: K5t-Gvi8Hu5DqdR1Y2Ie0zMgGNn877rv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDE0NyBTYWx0ZWRfX9mOSPnV+ZdM4
 DtnPgYanQ0QrxLjgezR/vfASjUG0O+lzPOzFYXLxuavxZeJKVIQVnYpyyFqoT6W3pmb1vcquuNT
 jAGE0DvtlqyrZyTZUpIrDCLHn73m/OPPq17N+g8+PCybiDMaXez2WAGXwaOEJpnvkG7nA3YZJkQ
 7EGUfsVTY8WLQZYZV/Q1h51fufFiTZorN8E1p8Qj3OQl51zkdWuSIHdVROXoiYWMuVaxR/iioMD
 cM8SJQL/ypQHt/qKhEqF9I529xn9+ZpKjVCe65CFSczhGbtkXP8fCRtTB/KphXy7uiM3mY/D0k6
 JIjqzRP8moAsem3a67eiE+7/JbkdoNx1dts41JTvIwBao30xDNrX7woFJWnulltPC1SWR9GaBS+
 sc+uCaP8DGza8v59XfScmLp2FH3b5uK2Gd91eI4Pfv3zQiY4O0nE/I2MZvl3ZunvYHyBIhfu
X-Proofpoint-ORIG-GUID: K5t-Gvi8Hu5DqdR1Y2Ie0zMgGNn877rv
X-Authority-Analysis: v=2.4 cv=FLcbx/os c=1 sm=1 tr=0 ts=68333d3f cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=mKn8UeLdGVDd1___hkMA:9
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_06,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 phishscore=0 suspectscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=999 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505250147

Add the sound card node with tested playback over max98357a
i2s speakers and i2s mic.

Introduce HS (High-Speed) MI2S pin control support.
The I2S max98357a speaker is connected via HS0 and I2S
microphones utilize the HS2 interface.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
---
 .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
 2 files changed, 66 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
index 0e44e0e6dbd4..1ebf42b0b10e 100644
--- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
+++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
@@ -6,6 +6,7 @@
 
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
 
 #include "qcs9075-som.dtsi"
 
@@ -20,6 +21,57 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	max98357a: audio-codec-0 {
+		compatible = "maxim,max98357a";
+		#sound-dai-cells = <0>;
+	};
+
+	dmic_codec: dmic-codec {
+		compatible = "dmic-codec";
+		#sound-dai-cells = <0>;
+		num-channels = <1>;
+	};
+
+	sound {
+		compatible = "qcom,qcs9075-sndcard";
+		model = "qcs9075-rb8-snd-card";
+
+		pinctrl-0 = <&hs0_mi2s_active>, <&hs2_mi2s_active>;
+		pinctrl-names = "default";
+
+		hs0-mi2s-playback-dai-link {
+			link-name = "HS0 mi2s playback";
+
+			codec {
+				sound-dai = <&max98357a>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+
+		hs2-mi2s-capture-dai-link {
+			link-name = "HS2 mi2s capture";
+
+			codec {
+				sound-dai = <&dmic_codec>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai TERTIARY_MI2S_TX>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
 };
 
 &apps_rsc {
diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 187a59e29f59..23dad329cd74 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -4536,6 +4536,20 @@ tlmm: pinctrl@f000000 {
 			gpio-ranges = <&tlmm 0 0 149>;
 			wakeup-parent = <&pdc>;
 
+			hs0_mi2s_active: hs0-mi2s-active-state {
+				pins = "gpio114", "gpio115", "gpio116", "gpio117";
+				function = "hs0_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+			};
+
+			hs2_mi2s_active: hs2-mi2s-active-state {
+				pins = "gpio122", "gpio123", "gpio124", "gpio125";
+				function = "hs2_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+			};
+
 			qup_i2c0_default: qup-i2c0-state {
 				pins = "gpio20", "gpio21";
 				function = "qup0_se0";
-- 
2.34.1


