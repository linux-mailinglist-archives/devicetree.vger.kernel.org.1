Return-Path: <devicetree+bounces-227968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0199EBE65AA
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 07:03:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 370B419A7A4A
	for <lists+devicetree@lfdr.de>; Fri, 17 Oct 2025 05:03:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C25D120B81B;
	Fri, 17 Oct 2025 05:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kjOnHFId"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2832F4C9D
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760677385; cv=none; b=PbB0N/cqwrbIxzkRtN0gPxvP9fkDFFwnv5omssYwJqM78RHxFzxfHp3M49NqEMo56kbl0K5X9/m4xfOik0fR+0goQIfpgxYyoqki7d8ZA4tIfs6kD26iKjB2/Nes/0lS0NtRovNl4eEToDhlkFfkr5CPX/obNhdP4i06Tu6rokQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760677385; c=relaxed/simple;
	bh=fQ+8SkOvlcoyl3hn94wEpoeG3i9B3kxg+mTOn4oSv6k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=GRpybAWrD1IZq0JicRUJ/9JgDTTRsjXXZCBo0gmsMh7kyHvF2Ggx9ZJoPshpv1/ExUP7xWkhu0/oJ/57d9kZ9vWHVYuy3vEPsPN88G0ot6317542jlPuNn73j5DrrOakWy2qVa+9OMyPBWpeMep6n3LqyxTnXqCrXTDO30lVf5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kjOnHFId; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59GKLRHN006277
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:03:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=fUiCoy4q0GKnexrafIN6QKMtaP84SBwz3xh
	i+xbnZ+U=; b=kjOnHFIdfbib5/2VqTP7F6Q5RK48uSpeFF4zY8x8rub8AgWhh8L
	3IhAvMUlEytxitZDnWBe/96zrwUjDv7Xu7S6fs8ksACxcuDjJo1bsV8yVDEI0t0F
	iEZL2q7Y4PJBWzkyPx5JhMw5kvN6so8t43ma0+51utjsE4Wz0UpBTsmKw53DqSfk
	LrRGnXeFV9LMFcjk4Wapk4RftC4Sg+1uGL4yr4RvCFULCgifWLNOpnea7Wrqgwv2
	1ic05jbc05NMZbIXF/3BFAhMHpnJd07uolKu9vbYE9KsVanGSZOU0ILXf//J1I/E
	0YjeIsVbA0MyeQlnR2ly8rswvcMYz/8azwg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49s6mww7dp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 05:03:03 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-290c2d13a01so9442945ad.0
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 22:03:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760677382; x=1761282182;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fUiCoy4q0GKnexrafIN6QKMtaP84SBwz3xhi+xbnZ+U=;
        b=KUNULY4+6YLIbQTyjYxesMBmoCN5vHVmuQ7LObg1qc8E29Ga6EyDUL3MpVrYjpyX7Z
         FAi9fmgDIXiIxQIVMMvbGbSf6URKOnrc7rBy5SLGDXCni7GlPjW2/NBOGlvN89GM/big
         JaBiWyEdhYb1GOKxhp10Ffb/LTVKfXqvyubb/g2Aq+0Gb8GphLxdLanZFLyTXpLF4UyE
         TsVVpQ3nzcAewqrGNLrVzAVSd43PiQOta3IqkLMuQhAtYJnkbeRYT/nPNfdn/cOWgBUt
         ZIkYgX4pbOV788ypxwsEsItsZooue5EcdNH74YaVVqLJY+1WGxeWMU9zQ0x+anSc5gGe
         4sGg==
X-Forwarded-Encrypted: i=1; AJvYcCWsnQTMbFeqPrBjdbE38oAdoksxHQpRzdVva7EwaiKEC7Wo4uEkiai6uGOcJZe+ZXukMVOOJL6zGmeH@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/+TAx8maQo4RkSxuoxbTk4Ph07LEm32JC025jDreEkhPaxldl
	mTUBQJaK8RR1zlcWaUDDJ+EWLpi+fDWIcYdl+Kpnlp5ACA34lOnT+cf8YKkSgffhTPYd3zYm9yG
	dtKHxbHQuo1946SYYu+FAs1GP0Ytn485GvfTXM/QtTIRfU9UMLSdapWniZz+0gqrw
X-Gm-Gg: ASbGncsunA8nzOqdbBfP90/MVvQW99EkH0+zU4seuYJvX8Kum6z2rDtVGDl57rPz0d/
	Cw3P8D4pWTePa8/lydaMA/VK8pzPNOGlb6tM+byBzSTQ3IALtkVjwbmAiWekpCrOPbZPsY+qsEH
	hf79ENCxqRGPlVLbjzpMWizUhxpbJ+4TBt+s3+GxCBsINPnFpyjhsEyU72ZF6VFi/uooOj4uv+H
	atB2prkIs9v+mUYGBWxW65ILwG5yWMDzLcpxOIFppd6UaFVAToE1qcLf6kSei1sMM2O9LApDpei
	hDGZJe5ENzdupz2uDh9pXhXFjna6E74oAbi94SskevMXe4m5LOrEC/df7kYNS48myWdLQvg38Rl
	kEtvEpHxYA9d29fTmioE4gMz5ZY3g
X-Received: by 2002:a17:902:ce07:b0:24b:270e:56d4 with SMTP id d9443c01a7336-290c66da794mr34740475ad.4.1760677382189;
        Thu, 16 Oct 2025 22:03:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFETcirbfNHKtKmLD4YuAozg7cIfcNgDOVz+Tr5CELIua6KxwYN18BR8lnJRJggZ0jymK5Kiw==
X-Received: by 2002:a17:902:ce07:b0:24b:270e:56d4 with SMTP id d9443c01a7336-290c66da794mr34740055ad.4.1760677381719;
        Thu, 16 Oct 2025 22:03:01 -0700 (PDT)
Received: from hu-gkohli-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099afde9dsm49089585ad.116.2025.10.16.22.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Oct 2025 22:03:01 -0700 (PDT)
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, gaurav.kohli@oss.qualcomm.com
Subject: [PATCH] arm64: dts: qcom: lemans-evk: Enable AMC6821 fan controller
Date: Fri, 17 Oct 2025 10:32:56 +0530
Message-Id: <20251017050256.987660-1-gaurav.kohli@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDEzMDA4MyBTYWx0ZWRfX2boj/kI6VW8E
 Zh7O3NyN1b8bSF6xRH43t7aPQATbVajutAT/JQs5cAYmJwcmuKw9AF7OrC9hRN1c6mDL2RObobP
 121e0NBZoExui7c+4pUkpfU3XL9/6K2AM9o/dcyeibtwzpUGE1qC8CEk491DY5o4yedRgx7gW9L
 xQYJawrme6YpQiMwcm2nKFQhVCyvFv2WPZE4prPZWMvg5TcP4kOqasUgPZXKEahVOvN5rN+wZKw
 Xflq0Oh5kCCTKCED5eWF6dQn47CzL9zi81m09rxB1b8Cw/UAxWSHIm5/+n7vHDv0jsaz/XqbDKA
 5iAXqXPGHWx3g7+S4lvC5EFQ0uaVyY4UlxOH8vMBAe4RP5V51DZjDAggUSvhFUF0NJZ6Ku4L/ke
 c1pYP7zDMRWsnyvo8ogLC/hLcCSBvw==
X-Authority-Analysis: v=2.4 cv=Fr4IPmrq c=1 sm=1 tr=0 ts=68f1ce07 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=7r9TfH97x59IMh4ffdIA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: 7QO9TArIU6puUewIh9zL-tpL9JU9HcK3
X-Proofpoint-ORIG-GUID: 7QO9TArIU6puUewIh9zL-tpL9JU9HcK3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-17_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 spamscore=0 phishscore=0 malwarescore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 suspectscore=0 clxscore=1011
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510130083

Enable AMC6821 fan controller for lemans-evk platform and
configure pwm polarity as inverted.

Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/lemans-evk.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
index c7dc9b8f4457..9bc3e6d4c9af 100644
--- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
+++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
@@ -6,6 +6,7 @@
 /dts-v1/;
 
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pwm/pwm.h>
 #include <dt-bindings/sound/qcom,q6afe.h>
 #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
 
@@ -501,6 +502,20 @@ mac_addr0: mac-addr@0 {
 	};
 };
 
+&i2c19 {
+	status = "okay";
+
+	fan_controller: fan@18 {
+		compatible = "ti,amc6821";
+		reg = <0x18>;
+		#pwm-cells = <2>;
+
+		fan {
+			pwms = <&fan_controller 40000 PWM_POLARITY_INVERTED>;
+		};
+	};
+};
+
 &iris {
 	firmware-name = "qcom/vpu/vpu30_p4_s6_16mb.mbn";
 
@@ -587,6 +602,11 @@ &pcie1_phy {
 	status = "okay";
 };
 
+&qup_i2c19_default {
+	drive-strength = <2>;
+	bias-pull-up;
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
-- 
2.34.1


