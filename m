Return-Path: <devicetree+bounces-236412-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 616D6C440C4
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3504C4E60FF
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E692FFDD6;
	Sun,  9 Nov 2025 14:39:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PY0hDFBG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="StsmIab+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E762FD7D0
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:39:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699158; cv=none; b=A3T6+MjDTETkczVDgkXtRQ4pv8HJGBKvDpP7EdiJtxIcCvBrY4DMnQp0KTdMl9fT8gddmfBKV0+Qn/UcLtkB26z6+4+auIUlb6ezv5pELxvmQSTdEJA3fHAkFFMd8b5XSy47UZjCvgm9vOvBuZOeJJni6xO32wqr4wNoSv2t+S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699158; c=relaxed/simple;
	bh=UMYfdnFcEDl//CBNfVhkReoHQvijQL74vM5MXpvs8vA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DjmNSnIA/2cZTg0yJq22rXYQ/+AOCs9KbYBHe76ItjtsXiffHoPONMERLlEphwKQlQcwUl0F0fN5Rm77VivkfE1/is0rvCbSizCKc6fhxo7GpBKTaO5rtV7Ps+UAQIxAw0fFm/wA8C8hcy8GwO5BX37hu0jwrHbuO7fVumjETtI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PY0hDFBG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=StsmIab+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9EXsdn822212
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 14:39:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9xzsLq6x8zujM+mSWgjjGh8I+QpYkRNwwRETPEDP6/Q=; b=PY0hDFBGvwSC/Zwi
	eQZoP7MaJFNlvAN82OowVKLHEzV8+xZVYpiffL5WlL0Nxs2NFBYkGvGJXUpIKKUs
	6FaAtf5VqcPX2TbrYmq9U1JSvr1225VP/huhWBvQkIxjPy3GKfz1A/V9fzYR4B5J
	E78Tcc772JXXsVgdVjboP+R7uxLcJq5GmMpKdH+Ca5YfxN3wowd1cZi/WaoXS6Wg
	ZHgsiGko8Jp35Vea3xz2lvUH9xMYdC5gF+Ed2812Qh9vjBEncXHOJ7Icue4ijvUD
	7v08VXreRAwwCdi2stgO3bfRQQtOmHbTY2cUxflaZU0pPEdVh1J6uUoRwD0wKFg3
	pBEU5g==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aaue0g3fe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 14:39:15 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b99763210e5so2040548a12.3
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762699154; x=1763303954; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9xzsLq6x8zujM+mSWgjjGh8I+QpYkRNwwRETPEDP6/Q=;
        b=StsmIab+MQbvCKmKPe7/w4w8g/z9pUxNWTbmy5Jcr7p5tfzDsau0J/Ks3XPq7J3bwi
         t00R5gFm9k7gSp4v8kGBlSHRGhfP0c+LTR6OCun2qKOkDnssXsO3WwdRNGLwrxXm3sO5
         d/Js8Xngf0VrziqntGVocxA5vQDCX+K7r92jsZyyj1t8Do4ubl1npkPYkozCAJnEFHe/
         NwuLa8kPKKqDXbnGlpPGyCaIAq+/VGD6vVjB3uS2mUYrz61uD+ePEuaPXyGhu4FJDwtk
         8IeqF8GP4B2rEdCb0fBpvgccvL0iqoYZRtrnhXRudTl6Lru3V3UPBOo5lueuQtI5PJEY
         gCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762699154; x=1763303954;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=9xzsLq6x8zujM+mSWgjjGh8I+QpYkRNwwRETPEDP6/Q=;
        b=TO2pIbWGhFDJTCQwrgv938pdO2fkEFlZrukIN3HwqkaKhhSGel6HXIl6Vq3f1S7TEz
         RXkPzijIJpP7cyGvkm+r/qwYBHuQUuWvXfWHWstimYpoyQCJSsWdunF3aSXbMhX8cMZS
         Jh0xt5fZIxo3idvN+NFEuXS7LjFU5Co7sgdDBmzinh32wtubHZquIqFAfK9QQq69MXET
         3dSpxTIFf1MxpZNzq7jaySdQ2DKQZDHNq+DotCTIRdLam/OqjmKqO12Z45eWgtb0wBsZ
         xFPQLxZ779ejfehy+0+zlqeQotGEvOGUMiU4VERWCHg3EiHDUXx10JqNOIkuhOQF9F2l
         ovFA==
X-Forwarded-Encrypted: i=1; AJvYcCUXXGVeeVFXNv/auVYqlhJkc7Gby0xOYc5lnPBOBS2rHEqiqHu1yJ1l7uXsmB4caqwGlvfWU9Iy+3Ib@vger.kernel.org
X-Gm-Message-State: AOJu0YxKuArPPafFUCSXeAGAjn4dQtzOEPLwoSt9nll7duiW1beZRxZR
	/r3HW57d+nmIr+zT3SERTXNcdKyvP4n1G6wpqrXgl+IqQaGPdZRYefxElNC5c4y5fl1aI2+mpk9
	06kJgvOOEEIgMphA1hjhgUm0L0hqLddBID6fOxDjIGPKL/ijdEtDIa6yKxOBSnv0M
X-Gm-Gg: ASbGncv4ZlurKdedfzpvR+Vc3AgoJYg58erDq0OMZoje6RWQbo1+rUamBu8U5+RSlhv
	miUz6JReKnS/yyR36DedsJgqR6m0QIrBVumUgl3IRz9AHoldvKUA2R4EJ6ujPk62dEeE0PaMQb9
	bMtuRMuZBeKx67LMpF4jk7SVGneZtVIvgNWF3sng52dSnNEyjGsC5c9HX6xSB+ZClnvrDhmsITq
	OWyFTo0fPWBKIRuXRhH7c7A1hstSAKhI/TVFpEqfqvlm0VMWsrFrZtcO6CyGfdssGzgp6q4QGQq
	i+1R+/o0zUeumeINPh5cIIeSNMGMhYM//4C4SwUsSnwBxXKK/IbRORX9abzCJbtV0kbqVjgke3H
	iNaVcJtXhEiLMwT6FrGjUf9Sm0LGx8856hAE=
X-Received: by 2002:a17:903:244a:b0:295:59ef:809e with SMTP id d9443c01a7336-297e564e380mr69725385ad.24.1762699154343;
        Sun, 09 Nov 2025 06:39:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJIVsonHu4pNwPE+f7/331weZTNenlkh2Ar1ZXefNCwpSl91W0SITTJGiPOzgc2bETvAUx0w==
X-Received: by 2002:a17:903:244a:b0:295:59ef:809e with SMTP id d9443c01a7336-297e564e380mr69724875ad.24.1762699153810;
        Sun, 09 Nov 2025 06:39:13 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68a68e6sm14845401a91.4.2025.11.09.06.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:39:13 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 09 Nov 2025 20:07:21 +0530
Subject: [PATCH v17 08/12] arm64: dts: qcom: qcm6490-idp: Add PSCI
 SYSTEM_RESET2 types
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251109-arm-psci-system_reset2-vendor-reboots-v17-8-46e085bca4cc@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762699073; l=1628;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=wPevfrKI7oCQBZ67FuK+Z4QMbgrqZ9zLXyhCmM5o3U8=;
 b=KRVfr1hd7m7qekk11hcXPHqyUxRtzdmozZcKhdaIrFvqaMzJOpK7PwGxYGG/pI/c4lZoafU+D
 C1C+I5ZDulcC10A5XnRAERkFZgYaryxMEbXGezaQxwhe1NO0r20BiqE
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: EUlZWZF35xCLY1cG_hrdKHjMX-DXSDW0
X-Authority-Analysis: v=2.4 cv=BfDVE7t2 c=1 sm=1 tr=0 ts=6910a793 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=w06kbW2hXDg5FjFnD0gA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: EUlZWZF35xCLY1cG_hrdKHjMX-DXSDW0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfX4K2HTGQtVsdY
 870mrdSiJKw8zEKmfUQQERqdSmuEerX69RD+Q2gOuB27PD/2Jo7yDYMjt2BS9TGrpk8n5iQP8He
 NkkSCtH151KcZtNvkmQ4A6+OsSc8sLNoJxiabACq6k3qejDEj9lQIU6riqHnGXOEF6zdnqvAVEI
 W9PcmDdhUKAW0gbAPYNKfDHdkktM1gzq7QIVa3T+aBKv6+otuRZoBWK0kq1nNN4KAcRRxish9Kf
 t+Jpau0dwTGCUVC0Z1ifk+emptqT9HGxomUqEMEgoJ4eGqdRSYGzgBcQDBnTcAYaVKGPAOh8W3Y
 IAMrS2JGbrxHNT79dwD0DD+khDTy/3d3CQhuCKmTTC/Z++cXzC3lnBXCYY6pyH8agh2yhdTEviq
 F3F28WSvZ29YfsNqSeYzB6bA97Dd1w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 impostorscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511090129

From: Elliot Berman <elliot.berman@oss.qualcomm.com>

Add support for SYSTEM_RESET2 vendor-specific resets in
qcm6490-idp as reboot-modes.  Describe the resets: "bootloader"
will cause device to reboot and stop in the bootloader's fastboot
mode. "edl" will cause device to reboot into "emergency download
mode", which permits loading images via the Firehose protocol.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Elliot Berman <elliot.berman@oss.qualcomm.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 7 +++++++
 arch/arm64/boot/dts/qcom/sc7280.dtsi     | 2 +-
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
index 73fce639370cd356687f14a3091848b8f422e36c..84322b74917f3a70adce5a4182adfa5d787ab11c 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
@@ -695,6 +695,13 @@ &pon_resin {
 	status = "okay";
 };
 
+&psci {
+	reboot-mode {
+		mode-bootloader = <0x10001 0x2>;
+		mode-edl = <0 0x1>;
+	};
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
index 3ef61af2ed8a87d03e82131fcd8848f0a1bc509c..5fe7a2220e1dec3b5cffdf151e09553d54e27960 100644
--- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
@@ -858,7 +858,7 @@ pmu-a78 {
 		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-	psci {
+	psci: psci {
 		compatible = "arm,psci-1.0";
 		method = "smc";
 

-- 
2.34.1


