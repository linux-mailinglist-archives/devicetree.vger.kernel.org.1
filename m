Return-Path: <devicetree+bounces-213684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D486B46391
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 21:25:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A7E881890C85
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 19:25:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C65FE28640D;
	Fri,  5 Sep 2025 19:24:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TRKKAWzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF4D283FCB
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 19:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757100252; cv=none; b=AX7R4posuJyNJRaA89sa1RYREQZVYx5Sm9+/Yl522PRBUreT7HwLSKBMnkn5gjlP8li5zUxj3dcwDbq4zSQCac+2bcmQcOSp1SIgey0kALYzgPoJzt0+DrdxyqOYWHl+RCS2cT1JZzDvGq32B0RHJTEZDmFHsVgNGcsuUKQMaG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757100252; c=relaxed/simple;
	bh=ohJ8L/lmC5nzXIJdYhjD0hYmjz4xt8lZxdhQOuGx3oY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=TKcLdYN8TwlFUH9NnDJIcZp3EfOmybnbmBYWtEvVhQ6/G4Vyvq6Zh8SFyafRnvvAO7sFW8ekcdZdeQpBPj2IwjX281ZbAMFomcwR43Se8qDJUKeQ9KI7QrdGln+tkQUQXAnfch7FY0yMw8lGs0+L+7U3RIxqStDsgaSKcqqLuqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TRKKAWzV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 585HfCHI012061
	for <devicetree@vger.kernel.org>; Fri, 5 Sep 2025 19:24:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=p7mv9u0Gj/t
	Mm7VoZy3yzk7wVTi8XlrY7vzvKp2G86s=; b=TRKKAWzVEvyOfLj2A1lQbipoLMP
	UJAuAOiCUdtO1ElY1WX5CRNoGdY5ShRaAfVdpM/v1jwC9eYFJ2Vty8OUQyYqgecw
	xrjNO4a/OK64iZefrsCoFDJFdFRk5h6VzyntzmuBqa+15m9IlaaORWbUVskGxYfo
	oskJVHxjTQFWsDwO/CPrOQVcBEhmsKLFELJP4dqwEBEzfYglHUCaqDjYI/aWWs45
	0n4dK7QLe4DGqAkSTdQVUi58pFPG9wcx1tJzDAbz5lIrpKsw4pYVuctEXcaKvGEx
	zJ6Hoxtv+Hbn7zZJfQlWE+euVhatuTgaMEkD9TzXXPO0zzy77P1KCb+4beQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk9c6kd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 19:24:10 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b4717565ec5so602911a12.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 12:24:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757100249; x=1757705049;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7mv9u0Gj/tMm7VoZy3yzk7wVTi8XlrY7vzvKp2G86s=;
        b=ZvZ6xdsROrAxXW8/mEpGaCRvAivwSP79Ap6mDtYpKR0HI/yBPpJtUfagDjxtFiWMeB
         PHrOFtZarozcfF4dDauNu+Xn03sLKTk1oLadyl2TUlEjBMSWvLEiqAiTp37IHR7DFNiw
         NMykKVLc9rIJN9qeHo1SbtmEDzGWOsu5ToiwhuRKyMKK6hOhRe/z9FZ44GciYGkvTUlT
         LDE5JZsvCNcMshPzc9Fzw5f/JLwlgrwjo0LVR45b4ZvvfUP+OXmQzw52GQ1BfNQ+3AaQ
         u8s72KJXZgyKmTq1TbjzXBy/hyECh4h8fSCGin7NFkml1GT6uDUPK4ZLXvgDX2XTIxFN
         YJUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUblASMRAQu1WixwGF7OIvKuqx2nIE8+UdVgYd2g25lnUOWvE4x/D2QxRx5o9iJxriAlNzAVXBBq+wj@vger.kernel.org
X-Gm-Message-State: AOJu0YzwpAHCkUKrD/VhCL8xz9ZSE0E+Rl5jomGL26YGUH+0koMRPgIM
	0JuKFg0lJ1K0wThphUeSWFhDwvZxlzqNbjgJZgtQtbbZpp1tLZy7yMqeekSe+/oKMooHB/jZlsT
	NZ3Rk5gOkXbGs+C1g6spSOqrhROHjrNvjFgq4DYP9kwBft+Nm1OO03paXFoQN4TVINP4ByT7T
X-Gm-Gg: ASbGncuqDDq6DqtrTvVr9N48p2icRWU3O0mqoqKzoM0bqo5NNSB6mR140VGfG1eH2PG
	y7ZuspNgxQCF9zJGXWo7RHues+UHwqHGEV0ItkqtxIBj6S3ZIfaT/abyHaZwovZ+u0I4X97rbpv
	aFKkTq1bnLJ+qrYAh5z101goA89xFZi1rA1J07jbmUmv28UYVP8R8/umq0EAluxnD8HR9Dew3DZ
	CNxpSaBb8Zay0kFtD0pqU2DdhDpjP/h11iPUVP4sHY6aPy8tV+qZJowOVCT1Vsvwsuv7G8K2MXG
	92NZ3EdL5vmfOr/8I4kxaEdPRSjfQutJK4+QZsyW4KsMRlN7vzIP1e/xySoJBpJWZ8iiYWU=
X-Received: by 2002:a17:902:e845:b0:24c:c445:87c2 with SMTP id d9443c01a7336-24cc4458d54mr53201805ad.4.1757100249096;
        Fri, 05 Sep 2025 12:24:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHtqgC6cdjTbQhRBJgUbOadjdZwxr3fa6EVM+jgxs96DkcvY+d36XAEwF+upIFEVCbnKEnoNw==
X-Received: by 2002:a17:902:e845:b0:24c:c445:87c2 with SMTP id d9443c01a7336-24cc4458d54mr53201555ad.4.1757100248610;
        Fri, 05 Sep 2025 12:24:08 -0700 (PDT)
Received: from hu-uchheda-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24cc1a82a34sm52397055ad.151.2025.09.05.12.24.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 12:24:08 -0700 (PDT)
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Umang Chheda <umang.chheda@oss.qualcomm.com>
Subject: [PATCH v4 4/4] arm64: dts: qcom: monaco-evk: Add sound card
Date: Sat,  6 Sep 2025 00:53:50 +0530
Message-Id: <20250905192350.1223812-5-umang.chheda@oss.qualcomm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
References: <20250905192350.1223812-1-umang.chheda@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: XL6Emdk2QJZdT4uZd17AL55i9IzmMjJs
X-Proofpoint-ORIG-GUID: XL6Emdk2QJZdT4uZd17AL55i9IzmMjJs
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68bb38da cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LbBNwnm3mIGQqbDd4NkA:9
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX1nb+ObE3UZb6
 L7qjt3S2CPGmNfgxvx2I21WOwgh0YpqVDbLdCEtBw/o2e9+Ir74lLADrr16iTmtanxP1fZF+JDX
 xfWL1aEN3u2iEhEL3gSTzK5QClX631iH6u33oo95vEGaQwYpdwOvHARnHLz3DgK0Tr0jNGyX0iF
 MYMXOQ7oyfvxgXFk+eK52tpLcbylHgivoQISm2XLxKmIg1cECpwUAdGlcPL+lO0tJNcumP7efOY
 Zjv2H4tK8oL2D/3lZA/9gPS8qdymPWMkxTw28pCMgbWHXxZQiRjwpNA6t8ZK6RoLH/5rcD8/IBd
 Br+gXrhfDmV5F8mL1Sg5ygs0HI3EHYJHFpioXEbQAcnYuO/HBMnlPlJkSMX5knhWGf1o34t5GAv
 fIdHkqNG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-05_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042

From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

Add the sound card for monaco-evk board and verified playback
functionality using the max98357a I2S speaker amplifier and I2S
microphones. The max98357a speaker amplifier is connected via
High-Speed MI2S HS0 interface, while the microphones utilize the
Secondary MI2S interface and also enable required pin controller
gpios for audio.

Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 52 +++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/qcs8300.dtsi   | 37 ++++++++++++++++++
 2 files changed, 89 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 93e9e5322a39..f3c5d363921e 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;

 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>

 #include "qcs8300.dtsi"
@@ -24,6 +25,57 @@ aliases {
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
+
+	dmic: audio-codec-0 {
+		compatible = "dmic-codec";
+		#sound-dai-cells = <0>;
+		num-channels = <1>;
+	};
+
+	max98357a: audio-codec-1 {
+		compatible = "maxim,max98357a";
+		#sound-dai-cells = <0>;
+	};
+
+	sound {
+		compatible = "qcom,qcs8275-sndcard";
+		model = "MONACO-EVK";
+
+		pinctrl-0 = <&hs0_mi2s_active>, <&mi2s1_active>;
+		pinctrl-names = "default";
+
+		hs0-mi2s-playback-dai-link {
+			link-name = "HS0 MI2S Playback";
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
+		sec-mi2s-capture-dai-link {
+			link-name = "Secondary MI2S Capture";
+
+			codec {
+				sound-dai = <&dmic>;
+			};
+
+			cpu {
+				sound-dai = <&q6apmbedai SECONDARY_MI2S_TX>;
+			};
+
+			platform {
+				sound-dai = <&q6apm>;
+			};
+		};
+	};
 };

 &apps_rsc {
diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
index 8ae843567ea4..8afd77a2d737 100644
--- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
+++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
@@ -4804,6 +4804,43 @@ tlmm: pinctrl@f100000 {
 			#interrupt-cells = <2>;
 			wakeup-parent = <&pdc>;

+			hs0_mi2s_active: hs0-mi2s-active-state {
+				pins = "gpio106", "gpio107", "gpio108", "gpio109";
+				function = "hs0_mi2s";
+				drive-strength = <8>;
+				bias-disable;
+			};
+
+			mi2s1_active: mi2s1-active-state {
+				data0-pins {
+					pins = "gpio100";
+					function = "mi2s1_data0";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				data1-pins {
+					pins = "gpio101";
+					function = "mi2s1_data1";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				sclk-pins {
+					pins = "gpio98";
+					function = "mi2s1_sck";
+					drive-strength = <8>;
+					bias-disable;
+				};
+
+				ws-pins {
+					pins = "gpio99";
+					function = "mi2s1_ws";
+					drive-strength = <8>;
+					bias-disable;
+				};
+			};
+
 			qup_i2c0_data_clk: qup-i2c0-data-clk-state {
 				pins = "gpio17", "gpio18";
 				function = "qup0_se0";
--
2.34.1


