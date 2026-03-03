Return-Path: <devicetree+bounces-270362-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIkmHqibpmnfRgAAu9opvQ
	(envelope-from <devicetree+bounces-270362-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:28:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B039B1EAC66
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 09:28:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9A3A531356E9
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 08:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6116388370;
	Tue,  3 Mar 2026 08:22:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOUU2Ew+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="c2vf8z0Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5401386546
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 08:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772526137; cv=none; b=DRb2LDZHDzq3l2hsh+uNEsaYO+w6TVbfEUqHcjqB2v56Rf8jCegX0sVjNPmoH9yohadSh55n9SOwSuaA1LTj3ZE/sQ9ICRwGAKDeuPuWLxfQlAbC0zRwlRt/uT6T/xs6VvcwjTMyReowd1Mqo3jkCOQEujJtAUux70uuG3szvFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772526137; c=relaxed/simple;
	bh=xE27GKOEZNSjN+Feisa6XAswTITuHEQyfmXjp3fQCp0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=pp/FSkWoz+N4XTl5qGdj7IvqRNiSicF2IlCd/SWjRQhV9oV+t/D2Clo0DyPpUm6OIvTVwElsTx3CneLB5pakjXGNejoSEM0znuQhiy4RTJgIGfufKqn1JdMxoZYQLpHiG9DFZWLP9qN9oWNq/6V2yT5UIDQraq9vyXW82gf0oGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOUU2Ew+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=c2vf8z0Y; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6237x7U92855495
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 08:22:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=iHkM4RGWTav
	hWaI9jNKz7pqeCJ9VcReMw352uYGKac8=; b=hOUU2Ew+I2A2AFUAgKHznZCkAgX
	d5K8bntcm2+OlEav/coAlExv496Flcgi/+svb1OWl3jfs1c4W/7LUxL/LCsXhMtF
	Pk9NTMMl9VEbXBx5ql0wQYSEgrL6HKZmZX7d2n9ks3dv5pejaaQSixHYItr4ifwd
	uAsjNfri0ZXbvpBIk3+IOWg/HBxkw7mJ+SWeOI7VBnVSl5F9MkUMPixNM9kJo7Mt
	Gua7Ylf01nwUBS1uMspQpZrnNOJi1CB33h2d88e90dkXrXpidzx2fCXz6J02x9/H
	+iIHcA47J6hXXVLIMuO5OB3Rl3R78eC8kLWXhjq6LL5WFatQlEwnM29aQew==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnuqu02xv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 08:22:11 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3595485abbbso4032022a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 00:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772526130; x=1773130930; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iHkM4RGWTavhWaI9jNKz7pqeCJ9VcReMw352uYGKac8=;
        b=c2vf8z0Ylp9GHXfZL8esPMM8aD8oIJESEg8hTFVIE1kK0IfWTbOP9BPh30LBlEedhD
         TnmAQygIwzL7cqtq9m4zBxL0w8Pu79Lh9SoJQrc2ml4mVyuU1VTXIgT/RQcX72AB+yNz
         d7Fnx6DwRljsEeFB2l2K476t2Y7pOvaFDU/TsxFfTPLJUjd34MEWwkmbJCDIAM2YaN+M
         QuZYSZ2iuYg+TfRS6K0DJMX71shdCaXjYw+n6IZz/BRt7nyTlOg76i4WSOHrhuu8+3h2
         ZigRgqFa68Oja9b5+4Usy71pNj4vRyxFKZrAfl0xlTTjYdweskUfXbkI50lMHEVaiV9V
         lY+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772526130; x=1773130930;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=iHkM4RGWTavhWaI9jNKz7pqeCJ9VcReMw352uYGKac8=;
        b=lMGDLUv5DqQMj4ytPHKa/VbNzy3/ULEE5RcCOpaoqMiXLmv7PjhQXlmPrBN7PAgcKS
         amzsXA0OOXfvABAszkls1VCrDEznrofKw0JhKN82ewfjmmy4bgkuR66Z4zFBff8QeLyB
         eO8jLJ5vIkxk8r+QUZSvJD0DcN9V558eCSyLcJIqk7LBDPiCUjfofgf06prE6iiTVi6C
         b6vZ2cYe46icOmm1K5WLM8srZeM91rOMp0WKytWuHwwP6jiETMHBCu1oYlea+MABXanJ
         q6WUBWepunxYjkeq03oUCnyx+JZWlCCV0Eb23mTJC8ipZH2sVtOsvuwe8BmlEBRPujgI
         WR9g==
X-Forwarded-Encrypted: i=1; AJvYcCXA1UTxF4Yn0D6RwtD9QzgzWx1OUzTRzu473aoU/pIPjcDjH10GXi4hkxYLH/H6B8u1fc45lhQNRa33@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+1NkeYySAo0ZYS2rmkMzlUG2q+9BTGwh7d/l//6uUUei0cBzV
	SNZNLvwkn5v+HMx/f4cYZNJ3lf33fwmI9g011Nj/7mo/cTp4Udh8lU9l4ih65Ko17jB/0keHrmn
	R9Vk+xPAaNMFLVrBaJWkzzKdhSWY50lmpsyERbH81/w4L5fGxj1fsLLkFSuAzEXMA
X-Gm-Gg: ATEYQzyokp9Q39VsLwMCDSGWxwu27J/UrwsOSaIe8xZpCnBbxaeaUoVvrvIUEwtvgxe
	7BJiNNAHCVmRy18Pjq6QKgeuRpvdW+d+vXHjnA4rWILj/Ju7EGww62jLmTsbwBk5ihvdUMz5Sl6
	6I2ZXdGb3Hl8wRNDRkS2sgzpYmjIEz1njCQEs41QdOBuMgdTtTwgUxQCTwJadr2jGTyiEN/Dba3
	Gma4uaJp1YToLee+xM2u532ArAhxmfhAIZOnNadPLq/HC60bZIYFoHZq7Qz9b7ulAPYzJ7oBt6k
	OWUevxHBumH2ju6+e/i8+jYnZ81ThEY6E/0bt7pFrURRTjUAFNXNWbxUcycU8urKf5RkDoOWGBs
	e9daqmWBoxeu3HXhyPKR5RQlUrCa32CscigO2BLKiZAifB6g8Wl9v0FE=
X-Received: by 2002:a17:90b:5288:b0:359:8e5e:43ee with SMTP id 98e67ed59e1d1-3598e5e46cfmr4703864a91.19.1772526130440;
        Tue, 03 Mar 2026 00:22:10 -0800 (PST)
X-Received: by 2002:a17:90b:5288:b0:359:8e5e:43ee with SMTP id 98e67ed59e1d1-3598e5e46cfmr4703849a91.19.1772526129992;
        Tue, 03 Mar 2026 00:22:09 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599c4e2f85sm1797214a91.17.2026.03.03.00.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 00:22:09 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v2 1/3] arm64: dts: qcom: monaco-evk: Enable GPIO expander interrupt for Monaco EVK
Date: Tue,  3 Mar 2026 13:51:55 +0530
Message-Id: <20260303082157.523847-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
References: <20260303082157.523847-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=M85A6iws c=1 sm=1 tr=0 ts=69a69a33 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22 a=EUspDBNiAAAA:8
 a=eeKseBlHB-RYfX28oeEA:9 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: LrOHkoXg_i5im4ZNuKxeZsl4GVFiLvXu
X-Proofpoint-ORIG-GUID: LrOHkoXg_i5im4ZNuKxeZsl4GVFiLvXu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDA2MCBTYWx0ZWRfX61qg4KnnycS1
 QPRWTrlSYSn3a9U6d624pPKBy/bg6URzX5aPXS9uu33iCA/NNkl938fPjV3GLxc2Bb7E8ZyVig8
 mpt43H1oq/N3M9KVIl5m6tIruFCsqV+LfdVoyQhxUjC39lt0YZi1Sjoeus1V/k/Rmko4MptFDyh
 k/D4MbeYWSa2fkiNYoNKBESHudHkrh8aY/681pRKK9Xz54Qlq2UK5w33OBop9VDacqe/N8P0XUH
 1XxZmi35sTJ/OpwZ5RE3ljlFSPrpDpbd9LmXQdhegJRx0xG4lS6zVWUGdRuGTovfTeILW5/w7SC
 JF9eO8sYfbruH+Y6RPMag+sCphulMURiT4mN4lnkgkiR7CDg/+vWdIM95B9EnkZjlpJ3BPnAgoZ
 9z70vAmD4F4UNm+EkjNmdrCM/vRViL+xrgQ/HcfmMrVYH3BuGuzrLYRWPLAq/6b/qW+qoYogNgu
 Ji/I2wAmWCfs928sXdQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-02_05,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 impostorscore=0 bulkscore=0 lowpriorityscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030060
X-Rspamd-Queue-Id: B039B1EAC66
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270362-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[swati.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,3c:email,0.0.0.0:email];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Enable PCA9538 expander as interrupt controller on Monaco EVK and configure
the corresponding TLMM pins via pinctrl to operate as GPIO inputs with
internal pull-ups.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/monaco-evk.dts | 77 +++++++++++++++++++++++++
 1 file changed, 77 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/monaco-evk.dts b/arch/arm64/boot/dts/qcom/monaco-evk.dts
index 565418b86b2a..03af9bbcacc9 100644
--- a/arch/arm64/boot/dts/qcom/monaco-evk.dts
+++ b/arch/arm64/boot/dts/qcom/monaco-evk.dts
@@ -362,6 +362,11 @@ expander0: gpio@38 {
 		reg = <0x38>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 56 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander0_int>;
+		pinctrl-names = "default";
 	};
 
 	expander1: gpio@39 {
@@ -369,6 +374,11 @@ expander1: gpio@39 {
 		reg = <0x39>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 16 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander1_int>;
+		pinctrl-names = "default";
 	};
 
 	expander2: gpio@3a {
@@ -376,6 +386,11 @@ expander2: gpio@3a {
 		reg = <0x3a>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 95 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander2_int>;
+		pinctrl-names = "default";
 	};
 
 	expander3: gpio@3b {
@@ -383,6 +398,11 @@ expander3: gpio@3b {
 		reg = <0x3b>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 24 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander3_int>;
+		pinctrl-names = "default";
 	};
 
 	expander4: gpio@3c {
@@ -390,6 +410,11 @@ expander4: gpio@3c {
 		reg = <0x3c>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 96 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander4_int>;
+		pinctrl-names = "default";
 	};
 
 	expander5: gpio@3d {
@@ -397,6 +422,11 @@ expander5: gpio@3d {
 		reg = <0x3d>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander5_int>;
+		pinctrl-names = "default";
 	};
 
 	expander6: gpio@3e {
@@ -404,6 +434,11 @@ expander6: gpio@3e {
 		reg = <0x3e>;
 		#gpio-cells = <2>;
 		gpio-controller;
+		#interrupt-cells = <2>;
+		interrupt-controller;
+		interrupts-extended = <&tlmm 52 IRQ_TYPE_LEVEL_LOW>;
+		pinctrl-0 = <&expander6_int>;
+		pinctrl-names = "default";
 	};
 };
 
@@ -495,6 +530,48 @@ tpm@0 {
 
 &tlmm {
 
+	expander0_int: expander0-int-state {
+		pins = "gpio56";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander1_int: expander1-int-state {
+		pins = "gpio16";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander2_int: expander2-int-state {
+		pins = "gpio95";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander3_int: expander3-int-state {
+		pins = "gpio24";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander4_int: expander4-int-state {
+		pins = "gpio96";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander5_int: expander5-int-state {
+		pins = "gpio3";
+		function = "gpio";
+		bias-pull-up;
+	};
+
+	expander6_int:  expander6-int-state {
+		pins = "gpio52";
+		function = "gpio";
+		bias-pull-up;
+	};
+
 	pcie0_default_state: pcie0-default-state {
 		wake-pins {
 			pins = "gpio0";
-- 
2.34.1


